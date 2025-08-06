(uiop:define-package #:aws
  (:use #:cl)
  (:use-reexport #:aws/session
                 #:aws/make-session
                 #:aws/credentials
                 #:aws/api)
  (:import-from #:aws/config
                #:*aws-profile*)
  (:export #:*aws-profile*))
(in-package #:aws)
