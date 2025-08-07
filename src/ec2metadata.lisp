(defpackage #:pira/ec2metadata
  (:use #:cl)
  (:import-from #:dexador)
  (:import-from #:trivial-timeout
                #:with-timeout
                #:timeout-error)
  (:export #:ec2metadata
           #:ec2token
           #:ec2-region))
(in-package #:pira/ec2metadata)

(defun ec2metadata (path &key token)
  (with-timeout (5)
    (dex:get (format nil "http://169.254.169.254/latest/meta-data~A"
                     (or path "/"))
             :headers `(,@(and token `(("x-aws-ec2-metadata-token" . ,token))))
             :keep-alive nil)))

(defun ec2token (ttl)
  (check-type ttl (integer 1))
  (with-timeout (5)
    (dex:put "http://169.254.169.254/latest/api/token"
             :headers `(("x-aws-ec2-metadata-token-ttl-seconds" . ,ttl))
             :keep-alive nil)))

(defun ec2-region ()
  (handler-case
      (let ((res (ec2metadata "/placement/availability-zone")))
        (subseq res 0 (1- (length res))))
    (timeout-error () nil)))
