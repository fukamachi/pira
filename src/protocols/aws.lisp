(defpackage #:pira/protocols/aws
  (:use #:cl)
  (:local-nicknames
   (#:protocols #:smithy/sdk/protocols)
   (#:pira #:pira/api))
  (:export #:aws-protocol))
(in-package #:pira/protocols/aws)

(defclass aws-protocol (protocols:protocol) ())

(defmethod protocols:send-request ((protocol aws-protocol) request)
  (pira:aws-request request))
