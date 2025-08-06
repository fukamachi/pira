(defpackage #:aws/protocols/aws
  (:use #:cl)
  (:local-nicknames
   (#:protocols #:smithy/sdk/protocols)
   (#:aws #:aws/api))
  (:export #:aws-protocol))
(in-package #:aws/protocols/aws)

(defclass aws-protocol (protocols:protocol) ())

(defmethod protocols:send-request ((protocol aws-protocol) request)
  (aws:aws-request request))
