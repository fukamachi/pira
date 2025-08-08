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
  (:export #:rest-xml))
(in-package #:pira/protocols/rest-xml)

(defclass rest-xml (protocols:xml pira:aws-protocol)
  ()
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

(defmethod protocols:find-error-shape ((xml rest-xml) operation status headers payload)
  (let* ((code-node
           (find-if (lambda (node)
                      (equal (xml:xml-tag-name node) "Code"))
                    (xml:xml-tag-body payload)))
         (error-shape-name (and code-node
                                (first (xml:xml-tag-body code-node)))))
    (or (and error-shape-name
             (find (util:shape-name->symbol error-shape-name
                                            (symbol-package (operation:operation-name operation)))
                   (operation:operation-errors operation)))
        (error "~A: ~A (Code: ~A)"
               (operation:operation-name operation)
               (first
                (xml:xml-tag-body
                 (find-if (lambda (node)
                            (equal (xml:xml-tag-name node) "Message"))
                          (xml:xml-tag-body payload))))
               (first (xml:xml-tag-body code-node))))))
