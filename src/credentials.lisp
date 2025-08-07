(defpackage #:pira/credentials
  (:use #:cl)
  (:import-from #:pira/credentials/base
                #:make-credentials
                #:credentials
                #:retrieve
                #:credentials-keys
                #:credentials-headers)
  (:import-from #:pira/credentials/env
                #:env-provider)
  (:import-from #:pira/credentials/shared
                #:shared-provider)
  (:import-from #:pira/credentials/ec2role
                #:ec2role-provider)
  (:export #:credentials
           #:make-credentials
           #:default-aws-credentials
           #:credentials-keys
           #:credentials-headers))
(in-package #:pira/credentials)

(defvar *chained-providers*
  (list (make-instance 'env-provider)
        (make-instance 'shared-provider)
        (make-instance 'ec2role-provider)))

(defun default-aws-credentials ()
  (loop for provider in *chained-providers*
        for credentials = (retrieve provider)
        when credentials
          do (return credentials)))
