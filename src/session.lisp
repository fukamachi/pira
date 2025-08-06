(defpackage #:aws/session
  (:use #:cl)
  (:export #:*session*
           #:session
           #:session-credentials
           #:session-region))
(in-package #:aws/session)

(defvar *session* nil)

(defstruct (session (:constructor %make-session))
  (credentials nil)
  (region nil :type (or string null)))
