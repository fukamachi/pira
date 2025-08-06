(defpackage #:aws/credentials/ec2role
  (:use #:cl)
  (:import-from #:aws/credentials/base
                #:make-credentials
                #:provider
                #:retrieve
                #:provider-expiration)
  (:import-from #:aws/ec2metadata
                #:ec2metadata
                #:ec2token)
  (:import-from #:trivial-timeout
                #:timeout-error)
  (:import-from #:cl-ppcre)
  (:import-from #:yason)
  (:import-from #:local-time)
  (:export #:ec2role-provider))
(in-package #:aws/credentials/ec2role)

(defclass ec2role-provider (provider)
  ())

(defvar *default-token-ttl* 21600)
(defvar *token* nil)
(defvar *use-imds-v2* t)

(defstruct token
  (ttl *default-token-ttl* :type integer)
  (value nil :type string)
  (created-at (get-universal-time) :type integer))

(defun token-alive-p (token)
  (and (token-p token)
       (<= (get-universal-time)
           (+ (token-created-at token) (token-ttl token)))))

(defun fetch-token ()
  (when *use-imds-v2*
    (if (token-alive-p *token*)
        (token-value *token*)
        (handler-case
            (let ((new-token (ec2token *default-token-ttl*)))
              (setf *token* (make-token :value new-token))
              new-token)
          ((or dex:http-request-forbidden
               dex:http-request-not-found
               dex:http-request-method-not-allowed) ()
            (setf *use-imds-v2* nil)
            nil)))))

(defmethod retrieve ((provider ec2role-provider))
  (handler-case
      (let* ((token (fetch-token))
             (role (ppcre:scan-to-strings "^.+?(?=(?:[\\r\\n]|$))"
                                          (ec2metadata "/iam/security-credentials/"
                                                       :token token))))
        (when role
          (let ((res (yason:parse
                      (ec2metadata (format nil "/iam/security-credentials/~A" role)
                                   :token token))))
            (setf (provider-expiration provider)
                  (local-time:parse-timestring (gethash "Expiration" res)))
            (make-credentials
             :access-key-id (gethash "AccessKeyId" res)
             :secret-access-key (gethash "SecretAccessKey" res)
             :session-token (gethash "Token" res)
             :provider-name "ec2role-provider"))))
    ((or usocket:socket-error timeout-error) () nil)))
