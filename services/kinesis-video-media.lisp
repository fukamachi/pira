(uiop/package:define-package #:pira/kinesis-video-media (:use)
                             (:export #:awsacuity-inlet-service #:content-type
                              #:continuation-token #:error-message
                              #:fragment-number-string #:get-media #:payload
                              #:resource-arn #:start-selector
                              #:start-selector-type #:stream-name #:timestamp))
(common-lisp:in-package #:pira/kinesis-video-media)

(smithy/sdk/service:define-service awsacuity-inlet-service :shape-name
                                   "AWSAcuityInletService" :version
                                   "2017-09-30" :title
                                   "Amazon Kinesis Video Streams Media" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kinesis Video Media")
                                      ("arnNamespace" . "kinesisvideo")
                                      ("cloudFormationName"
                                       . "KinesisVideoMedia")
                                      ("cloudTrailEventSource"
                                       . "kinesisvideomedia.amazonaws.com")
                                      ("endpointPrefix" . "kinesisvideo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisvideo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error client-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ClientLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error connection-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ConnectionLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type continuation-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fragment-number-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-media-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (start-selector :target-type start-selector
                                  :required common-lisp:t :member-name
                                  "StartSelector"))
                                (:shape-name "GetMediaInput"))

(smithy/sdk/shapes:define-output get-media-output common-lisp:nil
                                 ((content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (payload :target-type payload :member-name
                                   "Payload" :http-payload common-lisp:t))
                                 (:shape-name "GetMediaOutput"))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-endpoint-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidEndpointException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure start-selector common-lisp:nil
                                    ((start-selector-type :target-type
                                      start-selector-type :required
                                      common-lisp:t :member-name
                                      "StartSelectorType")
                                     (after-fragment-number :target-type
                                      fragment-number-string :member-name
                                      "AfterFragmentNumber")
                                     (start-timestamp :target-type timestamp
                                      :member-name "StartTimestamp")
                                     (continuation-token :target-type
                                      continuation-token :member-name
                                      "ContinuationToken"))
                                    (:shape-name "StartSelector"))

(smithy/sdk/shapes:define-enum start-selector-type
    common-lisp:nil
  (:fragment-number "FRAGMENT_NUMBER")
  (:server-timestamp "SERVER_TIMESTAMP")
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:now "NOW")
  (:earliest "EARLIEST")
  (:continuation-token "CONTINUATION_TOKEN"))

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation get-media :shape-name "GetMedia" :input
                                       get-media-input :output get-media-output
                                       :errors
                                       (client-limit-exceeded-exception
                                        connection-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-endpoint-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/getMedia" :code
                                       200)
