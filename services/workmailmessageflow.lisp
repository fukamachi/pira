(uiop/package:define-package #:pira/workmailmessageflow (:use)
                             (:export #:get-raw-message-content
                              #:giraffe-message-in-transit-service
                              #:put-raw-message-content #:raw-message-content
                              #:s3reference #:error-message
                              #:message-content-blob #:message-id-type
                              #:s3bucket-id-type #:s3key-id-type
                              #:s3version-type))
(common-lisp:in-package #:pira/workmailmessageflow)

(smithy/sdk/service:define-service giraffe-message-in-transit-service
                                   :shape-name "GiraffeMessageInTransitService"
                                   :version "2019-05-01" :title
                                   "Amazon WorkMail Message Flow" :operations
                                   '(get-raw-message-content
                                     put-raw-message-content)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "WorkMailMessageFlow")
                                      ("arnNamespace" . "workmailmessageflow")
                                      ("cloudFormationName"
                                       . "WorkMailMessageFlow")
                                      ("cloudTrailEventSource"
                                       . "workmailmessageflow.amazonaws.com")
                                      ("endpointPrefix"
                                       . "workmailmessageflow"))
                                     ("aws.auth#sigv4"
                                      ("name" . "workmailmessageflow"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input get-raw-message-content-request common-lisp:nil
                                ((message-id :target-type message-id-type
                                  :required common-lisp:t :member-name
                                  "messageId" :http-label common-lisp:t))
                                (:shape-name "GetRawMessageContentRequest"))

(smithy/sdk/shapes:define-output get-raw-message-content-response
                                 common-lisp:nil
                                 ((message-content :target-type
                                   message-content-blob :required common-lisp:t
                                   :member-name "messageContent" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetRawMessageContentResponse"))

(smithy/sdk/shapes:define-error invalid-content-location common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidContentLocation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error message-frozen common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MessageFrozen") (:error-code 400))

(smithy/sdk/shapes:define-error message-rejected common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MessageRejected")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-raw-message-content-request common-lisp:nil
                                ((message-id :target-type message-id-type
                                  :required common-lisp:t :member-name
                                  "messageId" :http-label common-lisp:t)
                                 (content :target-type raw-message-content
                                  :required common-lisp:t :member-name
                                  "content"))
                                (:shape-name "PutRawMessageContentRequest"))

(smithy/sdk/shapes:define-output put-raw-message-content-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutRawMessageContentResponse"))

(smithy/sdk/shapes:define-structure raw-message-content common-lisp:nil
                                    ((s3reference :target-type s3reference
                                      :required common-lisp:t :member-name
                                      "s3Reference"))
                                    (:shape-name "RawMessageContent"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure s3reference common-lisp:nil
                                    ((bucket :target-type s3bucket-id-type
                                      :required common-lisp:t :member-name
                                      "bucket")
                                     (key :target-type s3key-id-type :required
                                      common-lisp:t :member-name "key")
                                     (object-version :target-type
                                      s3version-type :member-name
                                      "objectVersion"))
                                    (:shape-name "S3Reference"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-content-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-type message-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3version-type smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-raw-message-content :shape-name
                                       "GetRawMessageContent" :input
                                       get-raw-message-content-request :output
                                       get-raw-message-content-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/messages/{messageId}" :code
                                       200)

(smithy/sdk/operation:define-operation put-raw-message-content :shape-name
                                       "PutRawMessageContent" :input
                                       put-raw-message-content-request :output
                                       put-raw-message-content-response :errors
                                       (invalid-content-location message-frozen
                                        message-rejected
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/messages/{messageId}" :code 200)
