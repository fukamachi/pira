(defpackage #:pira/protocols/aws-query
  (:use #:cl)
  (:import-from #:alexandria
                #:mappend
                #:ends-with-subseq)
  (:local-nicknames
   (#:pira #:pira/protocols/aws)
   (#:rest-xml #:pira/protocols/rest-xml)
   (#:protocols #:smithy/sdk/protocols)
   (#:shape #:smithy/sdk/shapes)
   (#:operation #:smithy/sdk/operation)
   (#:service #:smithy/sdk/service)
   (#:xml #:smithy/sdk/protocols/xml)
   (#:http #:smithy/sdk/http))
  (:export #:aws-query))
(in-package #:pira/protocols/aws-query)

(defclass aws-query (protocols:xml pira:aws-protocol)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :aws-query))

(defmethod protocols:make-request-with-protocol ((query aws-query) service operation input)
  (let ((req (call-next-method)))
    (setf (http:request-method req) "POST")
    req))

(defmethod protocols:serialize-input ((query aws-query) service operation input)
  (let ((input (call-next-method)))
    (check-type input xml::xml-structure)
    (list*
     (xml::make-xml-tag "Action"
                        (operation:operation-shape-name operation))
     (xml::make-xml-tag "Version"
                        (service:service-version service))

     (xml:xml-tag-body input))))

;; payload is xml-tag
(defmethod protocols:encode-payload ((query aws-query) content-type payload)
  (declare (ignore content-type))
  (labels ((to-query (elem)
             (etypecase elem
               (null nil)
               (xml::xml-list
                (loop for i from 1
                      for child in (xml:xml-tag-body elem)
                      collect
                      (cons
                       (format nil "~A~@[.~A~].~D"
                               (xml:xml-tag-name elem)
                               (if (xml::xml-list-flattened-p elem)
                                   nil
                                   (xml::xml-list-member-xml-name elem))
                               i)
                       (to-query child))))
               (xml::xml-map
                (loop for i from 1
                      for (key . val) in (xml:xml-tag-body elem)
                      for prefix = (format nil "~A~@[.~A~].~D"
                                           (xml:xml-tag-name elem)
                                           (if (xml::xml-map-flattened-p elem)
                                               nil
                                               "entry")
                                           i)
                      append
                      (list
                       (cons
                        (format nil "~A.~A"
                                prefix
                                (xml::xml-map-key-xml-name elem))
                        key)
                       (cons
                        (format nil "~A.~A"
                                prefix
                                (xml::xml-map-value-xml-name elem))
                        (to-query val)))))
               ((or xml::xml-structure xml:xml-tag)
                (let ((body (xml::xml-tag-body elem)))
                  (etypecase body
                    (list
                     (loop for child in body
                           append
                           (mapcar (lambda (child-elem)
                                     (setf (car child-elem)
                                           (format nil "~A.~A"
                                                   (xml:xml-tag-name elem)
                                                   (car child-elem)))
                                     child-elem)
                                   (to-query child))))
                    (string
                     `((,(xml:xml-tag-name elem) . ,body)))))))))
    (quri:url-encode-params (mappend #'to-query payload))))

(defmethod protocols:additional-headers ((query aws-query) service operation input)
  (let ((slots (shape:http-payload-slots input)))
    (when slots
      (list
       (cons :content-type
             "application/x-www-form-urlencoded")))))

(defmethod protocols:deserialize-output-payload ((query aws-query) output-class payload)
  (when (equal (shape:structure-shape-name output-class) (xml:xml-tag-name payload))
    (let ((result-tag
            (find-if (lambda (tag)
                       (and (typep tag 'xml:xml-tag)
                            (ends-with-subseq "Result" (xml:xml-tag-name tag))))
                     (xml:xml-tag-body payload))))
      (when result-tag
        (append (call-next-method query output-class result-tag)
                (let* ((metadata (find-if (lambda (tag)
                                            (and (typep tag 'xml:xml-tag)
                                                 (equal "ResponseMetadata" (xml:xml-tag-name tag))))
                                          (xml:xml-tag-body payload)))
                       (request-id (find-if (lambda (child-tag)
                                              (and (typep child-tag 'xml:xml-tag)
                                                   (equal "RequestId" (xml:xml-tag-name child-tag))))
                                            (xml:xml-tag-body metadata))))
                  (when request-id
                    (list (cons "RequestId" (first (xml:xml-tag-body request-id)))))))))))

(defmethod protocols:find-error-shape ((query aws-query) operation status headers payload)
  (assert (equal "ErrorResponse" (xml:xml-tag-name payload)))
  (multiple-value-bind (code message)
      (rest-xml:get-error-info (rest-xml:find-error-tag payload))
    (when code
      (or (find-if (lambda (error-class-name)
                     (equal code (shape:error-name (find-class error-class-name))))
                   (operation:operation-errors operation))
          (error "~A: ~A (Code: ~A)"
                 (operation:operation-name operation)
                 message
                 code)))))

(defmethod protocols:deserialize-output-payload ((query aws-query) (output-class shape:smithy-error) payload)
  (assert (equal "ErrorResponse" (xml:xml-tag-name payload)))
  (append
   (call-next-method query
                     output-class
                     (rest-xml:find-error-tag payload))
   (let ((request-id (rest-xml:get-tag-value payload "RequestId")))
     (when request-id
       (list (cons "RequestId" request-id))))))
