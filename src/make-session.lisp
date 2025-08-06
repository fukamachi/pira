(defpackage #:aws/make-session
  (:use #:cl)
  (:import-from #:aws/session
                #:%make-session)
  (:import-from #:aws/credentials
                #:credentials
                #:make-credentials)
  (:import-from #:aws/shared-config
                #:make-shared-config
                #:shared-config-credentials
                #:shared-config-assume-role
                #:shared-config-region
                #:assume-role-role-arn
                #:assume-role-source-profile
                #:assume-role-credential-source
                #:assume-role-external-id
                #:assume-role-serial-number
                #:assume-role-role-session-name)
  (:import-from #:aws/credentials/assume-role
                #:assume-role-provider)
  (:import-from #:aws/config
                #:*aws-profile*)
  (:import-from #:assoc-utils
                #:aget)
  (:export #:make-session))
(in-package #:aws/make-session)

(defun make-session (&key credentials region (profile *aws-profile*))
  (let ((shared-config (make-shared-config :profile profile)))
    (%make-session
     :credentials
     (or credentials
         (cond
           ((shared-config-assume-role shared-config)
            (let* ((assume-role (shared-config-assume-role shared-config))
                   (assume-role-shared-config
                     (make-shared-config :profile
                                         (assume-role-source-profile assume-role))))
              (make-credentials
               :provider
               (make-instance 'assume-role-provider
                              :shared-credentials (shared-config-credentials assume-role-shared-config)
                              :role-arn (assume-role-role-arn assume-role)
                              :external-id (assume-role-external-id assume-role)
                              :serial-number (assume-role-serial-number assume-role)
                              :role-session-name (assume-role-role-session-name assume-role)))))
           ((shared-config-credentials shared-config))
           (t nil)))
     :region (or region
                 (shared-config-region shared-config)
                 (uiop:getenvp "AWS_REGION")))))
