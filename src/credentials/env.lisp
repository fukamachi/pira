(defpackage #:aws/credentials/env
  (:use #:cl)
  (:import-from #:aws/credentials/base
                #:make-credentials
                #:provider
                #:retrieve
                #:expiredp)
  (:export #:env-provider))
(in-package #:aws/credentials/env)

(defclass env-provider (provider)
  ((retrievedp :initform nil)))

(defmethod retrieve ((provider env-provider))
  (setf (slot-value provider 'retrievedp) nil)
  (let ((access-key-id (or (uiop:getenvp "AWS_ACCESS_KEY_ID")
                           (uiop:getenvp "AWS_ACCESS_KEY")))
        (secret-access-key (or (uiop:getenvp "AWS_SECRET_ACCESS_KEY")
                               (uiop:getenvp "AWS_SECRET_KEY"))))
    (when (and access-key-id
               secret-access-key)
      (setf (slot-value provider 'retrievedp) t)
      (make-credentials
       :access-key-id access-key-id
       :secret-access-key secret-access-key
       :session-token (uiop:getenvp "AWS_SESSION_TOKEN")
       :provider-name "env-provider"))))

(defmethod expiredp ((provider env-provider))
  (not (slot-value provider 'retrievedp)))
