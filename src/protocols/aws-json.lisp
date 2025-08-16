(defpackage #:pira/protocols/aws-json
  (:use #:cl)
  (:import-from #:alexandria
                #:ensure-car)
  (:import-from #:pira/protocols/rest-json1
                #:find-aws-json-error-type)
  (:local-nicknames
   (#:pira #:pira/protocols/aws)
   (#:protocols #:smithy/sdk/protocols)
   (#:operation #:smithy/sdk/operation)
   (#:http #:smithy/sdk/http)
   (#:service #:smithy/sdk/service))
  (:export #:aws-json1-0
           #:aws-json1-1))
(in-package #:pira/protocols/aws-json)

(defclass aws-json (protocols:json pira:aws-protocol)
  ())

(defclass aws-json1-0 (aws-json)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :aws-json1-0))

(defclass aws-json1-1 (aws-json)
  ()
  (:metaclass protocols:protocol-metaclass)
  (:protocol-id :aws-json1-1))

(defmethod protocols:encode-payload ((json aws-json) payload)
  (typecase payload
    (null "{}")
    ((or string
         (vector (unsigned-byte 8)))
     payload)
    (otherwise
     (call-next-method))))

(defmethod protocols:additional-headers ((json aws-json1-0) service operation input)
  `((:content-type . "application/x-amz-json-1.0")
    (:x-amz-target . ,(format nil "~A.~A"
                              (service:service-shape-name service)
                              (operation:operation-shape-name operation)))))

(defmethod protocols:additional-headers ((json aws-json1-1) service operation input)
  `((:content-type . "application/x-amz-json-1.1")
    (:x-amz-target . ,(format nil "~A.~A"
                              (service:service-shape-name service)
                              (operation:operation-shape-name operation)))))

(defmethod protocols:make-request ((protocol aws-json) service operation input)
  (let ((req (call-next-method)))
    (setf (http:request-method req)
          "POST")
    req))

(defmethod protocols:decode-payload ((protocol aws-json1-0) content-type payload)
  (cond
    ((equal content-type "application/x-amz-json-1.0")
     (protocols:parse-payload-as-json payload))
    (t payload)))

(defmethod protocols:decode-payload ((protocol aws-json1-1) content-type payload)
  (cond
    ((equal content-type "application/x-amz-json-1.1")
     (protocols:parse-payload-as-json payload))
    (t payload)))

(defmethod protocols:find-error-shape ((json aws-json) operation status headers payload)
  (find-aws-json-error-type operation status headers payload))
