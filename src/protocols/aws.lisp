(defpackage #:pira/protocols/aws
  (:use #:cl)
  (:local-nicknames
   (#:protocols #:smithy/sdk/protocols)
   (#:service #:smithy/sdk/service)
   (#:operation #:smithy/sdk/operation)
   (#:shape #:smithy/sdk/shapes)
   (#:http #:smithy/sdk/http)
   (#:pira #:pira/api))
  (:export #:aws-protocol))
(in-package #:pira/protocols/aws)

(defclass aws-protocol (protocols:protocol) ())

(defmethod protocols:send-request ((protocol aws-protocol) request)
  (pira:aws-request request))

(defmethod protocols:make-request ((protocol aws-protocol) (service service:aws-service) operation input)
  (let ((req (call-next-method)))
    (setf (http:request-service-name req)
          (service:aws-service-arn-namespace service))
    (setf (http:request-streaming-p req)
          (and (operation:operation-output operation)
               (shape:interface-streaming-p (find-class (operation:operation-output operation)))))
    req))
