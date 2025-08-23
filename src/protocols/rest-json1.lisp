(defpackage #:pira/protocols/rest-json1
  (:use #:cl)
  (:import-from #:alexandria
                #:ensure-car)
  (:local-nicknames
   (#:pira #:pira/protocols/aws)
   (#:protocols #:smithy/sdk/protocols)
   (#:shape #:smithy/sdk/shapes)
   (#:type #:smithy/sdk/smithy-types)
   (#:operation #:smithy/sdk/operation)
   (#:assoc #:assoc-utils)
   (#:util #:smithy/utils))
  (:export #:rest-json1
           #:find-aws-json-error-type))
(in-package #:pira/protocols/rest-json1)

(defclass rest-json1 (protocols:json pira:aws-protocol)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :rest-json1))

(defmethod protocols:additional-headers ((json rest-json1) service operation input)
  (declare (ignore service operation))
  (let ((slots (shape:http-payload-slots input)))
    (when slots
      (list
       (cons :content-type
             (cond
               ((consp slots)
                "application/json")
               (t
                (let ((slot slots))
                  (or (get (shape:member-target-type slot) :media-type)
                      (case (ensure-car (shape:member-smithy-type slot))
                        ((type:string type:enum shape:smithy-union) "text/plain")
                        (type:blob "application/octet-stream")
                        (type:document "application/json")
                        (shape:smithy-structure "application/json")
                        (otherwise "application/json")))))))))))

(defun sanitize-error-code (value)
  (check-type value string)
  (flet ((take-after-sharp (value)
           (let ((pos (position #\# value)))
             (if pos
                 (subseq value (1+ pos))
                 value)))
         (take-before-colon (value)
           (let ((pos (position #\: value)))
             (if pos
                 (subseq value 0 pos)
                 value))))
    (take-before-colon (take-after-sharp value))))

(defun find-aws-json-error-type (operation status headers payload)
  (declare (ignore status))
  (let* ((error-shape-name
           (or (gethash "x-amzn-errortype" headers)
               (assoc:aget payload "__type")
               (assoc:aget payload "code")))
         (error-shape-name
           (and error-shape-name
                (sanitize-error-code error-shape-name))))
    (and error-shape-name
         (find (util:shape-name->symbol error-shape-name
                                        (symbol-package (operation:operation-name operation)))
               (operation:operation-errors operation)))))

(defmethod protocols:find-error-shape ((json rest-json1) operation status headers payload)
  (find-aws-json-error-type operation status headers payload))
