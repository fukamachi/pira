(defpackage #:aws/protocols/rest-json1
  (:use #:cl)
  (:import-from #:alexandria
                #:ensure-car)
  (:local-nicknames
   (#:aws #:aws/protocols/aws)
   (#:protocols #:smithy/sdk/protocols)
   (#:shape #:smithy/sdk/shapes)
   (#:type #:smithy/sdk/smithy-types)
   (#:operation #:smithy/sdk/operation)
   (#:assoc #:assoc-utils)
   (#:util #:smithy/utils))
  (:export #:rest-json1))
(in-package #:aws/protocols/rest-json1)

(defclass rest-json1 (protocols:json aws:aws-protocol)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :rest-json1))

(defmethod protocols:send-request ((protocol rest-json1) request))

(defmethod protocols:encode-payload ((json rest-json1) payload)
  (typecase payload
    ((or string
         (vector (unsigned-byte 8)))
     payload)
    (otherwise
     (call-next-method))))

(defmethod protocols:additional-headers ((json rest-json1) input)
  (list
   (cons :content-type
         (let ((slots (shape:http-payload-slots input)))
           (cond
             ((consp slots)
              "application/json")
             (t
              (let ((slot slots))
                (or (get (shape:member-target-type slot) :media-type)
                    (case (ensure-car (shape:member-smithy-type slot))
                      ((type:string type:enum) "text/plain")
                      (type:blob "application/octet-stream")
                      (type:document "application/json")
                      (shape:smithy-structure "application/json")
                      (shape:smithy-union "application/json")
                      (otherwise "application/json"))))))))))

(defmethod protocols:find-error-shape ((json rest-json1) operation status headers payload)
  (let ((error-shape-name
          (or (gethash "x-amzn-errortype" headers)
              (assoc:aget payload "__type")
              (assoc:aget payload "code"))))
    (or (and error-shape-name
             (find (util:shape-name->symbol error-shape-name
                                            (symbol-package (operation:operation-name operation)))
                   (operation:operation-errors operation)))
        (error "Undefined error class for ~A" status))))
