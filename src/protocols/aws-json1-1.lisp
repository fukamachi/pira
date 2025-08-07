(defpackage #:pira/protocols/aws-json1-1
  (:use #:cl)
  (:import-from #:alexandria
                #:ensure-car)
  (:local-nicknames
   (#:pira #:pira/protocols/aws)
   (#:protocols #:smithy/sdk/protocols)
   (#:operation #:smithy/sdk/operation)
   (#:http #:smithy/sdk/http)
   (#:service #:smithy/sdk/service))
  (:export #:aws-json1-1))
(in-package #:pira/protocols/aws-json1-1)

(defclass aws-json1-1 (protocols:json pira:aws-protocol)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :aws-json1-1))

(defmethod protocols:encode-payload ((json aws-json1-1) payload)
  (typecase payload
    (null "{}")
    ((or string
         (vector (unsigned-byte 8)))
     payload)
    (otherwise
     (call-next-method))))

(defmethod protocols:additional-headers ((json aws-json1-1) service operation input)
  `((:content-type . "application/x-amz-json-1.1")
    (:x-amz-target . ,(format nil "~A.~A"
                              (service:service-shape-name service)
                              (operation:operation-shape-name operation)))))

(defmethod protocols:make-request ((protocol aws-json1-1) service operation input)
  (let ((req (call-next-method)))
    (setf (http:request-method req)
          "POST")
    req))
