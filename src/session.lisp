(defpackage #:pira/session
  (:use #:cl)
  (:export #:*session*
           #:session
           #:session-credentials
           #:session-region
           #:session-endpoint))
(in-package #:pira/session)

(defvar *session* nil)

(defstruct (session (:constructor %make-session))
  (credentials nil)
  (region nil :type (or string null))
  (endpoint nil :type (or string null)))
