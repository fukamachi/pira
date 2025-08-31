(defpackage #:pira/protocols/ec2-query
  (:use #:cl)
  (:import-from #:alexandria
                #:ends-with-subseq)
  (:local-nicknames
   (#:aws-query #:pira/protocols/aws-query)
   (#:xml #:smithy/sdk/protocols/xml)
   (#:pira #:pira/protocols/aws)
   (#:protocols #:smithy/sdk/protocols))
  (:export #:ec2-query))
(in-package #:pira/protocols/ec2-query)

(defclass ec2-query (aws-query:aws-query pira:aws-protocol)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :ec2-query))

(defmethod protocols:deserialize-output-payload ((query ec2-query) output-class payload)
  (when (and (typep payload 'xml:xml-tag)
             (ends-with-subseq "Response" (xml:xml-tag-name payload)))
    (append (xml:deserialize-payload-as-xml output-class payload)
            (let* ((request-id (find-if (lambda (child-tag)
                                          (and (typep child-tag 'xml:xml-tag)
                                               (equalp "RequestId" (xml:xml-tag-name child-tag))))
                                        (xml:xml-tag-body payload))))
              (when request-id
                (list (cons "RequestId" (first (xml:xml-tag-body request-id)))))))))
