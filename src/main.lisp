(uiop:define-package #:pira
  (:use #:cl)
  (:use-reexport #:pira/session
                 #:pira/make-session
                 #:pira/credentials
                 #:pira/api
                 #:pira/error)
  (:import-from #:pira/config
                #:*aws-profile*)
  (:export #:*aws-profile*))
(in-package #:pira)
