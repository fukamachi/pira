(defpackage #:pira/protocols/rest-xml
  (:use #:cl)
  (:import-from #:alexandria
                #:ensure-car)
  (:local-nicknames
   (#:pira #:pira/protocols/aws)
   (#:shape #:smithy/sdk/shapes)
   (#:type #:smithy/sdk/smithy-types)
   (#:protocols #:smithy/sdk/protocols)
   (#:operation #:smithy/sdk/operation)
   (#:xml #:smithy/sdk/protocols/xml)
   (#:util #:smithy/utils))
  (:export #:rest-xml
           #:find-error-tag
           #:get-tag-value
           #:get-error-info))
(in-package #:pira/protocols/rest-xml)

(defclass rest-xml (protocols:xml pira:aws-protocol)
  ((no-error-wrapping :initarg :no-error-wrapping
                      :initform nil
                      :reader rest-xml-no-error-wrapping-p))
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :rest-xml))

(defmethod protocols:additional-headers ((json rest-xml) service operation input)
  (declare (ignore service operation))
  (let ((slots (shape:http-payload-slots input)))
    (when slots
      (list
       (cons :content-type
             (cond
               ((consp slots)
                "application/xml")
               (t
                (let ((slot slots))
                  (or (get (shape:member-target-type slot) :media-type)
                      (case (ensure-car (shape:member-smithy-type slot))
                        ((type:string type:enum) "text/plain")
                        (type:blob "application/octet-stream")
                        (type:document (error "document is not supported"))
                        (shape:smithy-structure "application/xml")
                        (shape:smithy-union "application/xml")
                        (otherwise "application/xml")))))))))))

(defun find-error-tag (payload)
  (find-if (lambda (tag)
             (and (typep tag 'xml:xml-tag)
                  (equal "Error" (xml:xml-tag-name tag))))
           (xml:xml-tag-body payload)))

(defun get-tag-value (parent tag-name)
  (let ((child (find-if (lambda (node)
                          (equal (xml:xml-tag-name node) tag-name))
                        (xml:xml-tag-body parent))))
    (when child
      (first (xml:xml-tag-body child)))))

(defun get-error-info (error-tag)
  (when error-tag
    (values (get-tag-value error-tag "Code")
            (get-tag-value error-tag "Message"))))

(defmethod protocols:find-error-shape ((xml rest-xml) operation status headers payload)
  (multiple-value-bind (code message)
      (cond
        ((rest-xml-no-error-wrapping-p xml)
         (assert (equal "Error" (xml:xml-tag-name payload)))
         (get-error-info payload))
        (t
         (assert (equal "ErrorResponse" (xml:xml-tag-name payload)))
         (get-error-info (find-error-tag payload))))
    (when code
      (or (find (util:shape-name->symbol code
                                         (symbol-package (operation:operation-name operation)))
                (operation:operation-errors operation))
          (error "~A: ~A (Code: ~A)"
                 (operation:operation-name operation)
                 message
                 code)))))

(defmethod protocols:deserialize-output-payload ((xml rest-xml) (output-class shape:smithy-error) payload)
  (append
   (call-next-method xml
                     output-class
                     (find-error-tag payload))
   (let ((request-id (get-tag-value payload "RequestId")))
     (when request-id
       (list (cons "RequestId" request-id))))))
