(defpackage #:aws/credentials
  (:use #:cl)
  (:import-from #:aws/credentials/base
                #:make-credentials
                #:credentials
                #:retrieve
                #:credentials-keys
                #:credentials-headers)
  (:import-from #:aws/credentials/env
                #:env-provider)
  (:import-from #:aws/credentials/shared
                #:shared-provider)
  (:import-from #:aws/credentials/ec2role
                #:ec2role-provider)
  (:export #:credentials
           #:make-credentials
           #:default-aws-credentials
           #:credentials-keys
           #:credentials-headers))
(in-package #:aws/credentials)

(defvar *chained-providers*
  (list (make-instance 'env-provider)
        (make-instance 'shared-provider)
        (make-instance 'ec2role-provider)))

(defun default-aws-credentials ()
  (loop for provider in *chained-providers*
        for credentials = (retrieve provider)
        when credentials
          do (return credentials)))
