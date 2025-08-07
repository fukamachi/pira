(defpackage #:pira/api
  (:use #:cl)
  (:local-nicknames
   (#:http #:smithy/sdk/http)
   (#:session #:pira/session)
   (#:credentials #:pira/credentials))
  (:export #:aws-request))
(in-package #:pira/api)

(defparameter *global-service-endpoints* '("iam"
                                           "globalaccelerator"
                                           "cloudfront"
                                           "networkmanager"
                                           "organizations"
                                           "route53"
                                           "shield"
                                           "waf"))

(defun request-host (request region)
  (let ((service-name (http:request-service-name request))
        (host-prefix (http:request-host-prefix request)))
    (if (member service-name *global-service-endpoints* :test #'string=)
        (format nil "~(~A~).amazonaws.com" service-name)
        (format nil "~@[~(~A~).~]~(~A~).~(~A~).amazonaws.com" host-prefix service-name region))))

(defun request-uri (request region)
  (quri:make-uri :scheme "https"
                 :host (request-host request region)
                 :path (http:request-path-info request)
                 :query (http:request-query request)))

(defun sha-256 (value)
  (ironclad:byte-array-to-hex-string
    (etypecase value
      (string
       (ironclad:digest-sequence :sha256
                                 (ironclad:ascii-string-to-byte-array value)))
      ((simple-array (unsigned-byte 8) (*))
       (ironclad:digest-sequence :sha256 value))
      (pathname
       (ironclad:digest-file :sha256 value)))))

(defun aws-request (req)
  (check-type req http:request)
  (let* ((session session:*session*)
         (credentials (or (session:session-credentials session)
                          (credentials:default-aws-credentials)))
         (region (session:session-region session)))
    (unless credentials
      (error "No credentials are found"))
    (unless region
      (error "AWS region is not configured"))
    (let ((aws-sign4:*aws-credentials* (lambda () (credentials:credentials-keys credentials)))
          (headers (append (credentials:credentials-headers credentials)
                           (http:request-headers req)))
          (payload (http:request-payload req)))
      (multiple-value-bind (authorization x-amz-date)
          (aws-sign4:aws-sign4 :region region
                               :service (http:request-service-name req)
                               :method (http:request-method req)
                               :host (request-host req region)
                               :path (http:request-path-info req)
                               :params (http:request-query req)
                               :headers headers
                               :payload (or payload ""))
        (multiple-value-bind (body status headers)
            (handler-bind ((dex:http-request-failed #'dex:ignore-and-continue))
              (dex:request (request-uri req region)
                           :method (http:request-method req)
                           :headers `(("Authorization" . ,authorization)
                                      ("X-Amz-Date" . ,x-amz-date)
                                      ("X-Amz-Content-Sha256" . ,(sha-256 (or payload "")))
                                      ,@headers)
                           :content payload))
          (http:make-response
           :status status
           :headers headers
           :payload body))))))
