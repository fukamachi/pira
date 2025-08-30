(uiop/package:define-package #:pira/kinesis-video-signaling (:use)
                             (:export #:awsacuity-signaling-service #:answer
                              #:client-id #:client-limit-exceeded-exception
                              #:error-message #:get-ice-server-config
                              #:ice-server #:ice-server-list
                              #:invalid-argument-exception
                              #:invalid-client-exception #:message-payload
                              #:not-authorized-exception #:password
                              #:resource-arn #:resource-not-found-exception
                              #:send-alexa-offer-to-master #:service
                              #:session-expired-exception #:ttl #:uri #:uris
                              #:username #:kinesis-video-signaling-error))
(common-lisp:in-package #:pira/kinesis-video-signaling)

(common-lisp:define-condition kinesis-video-signaling-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsacuity-signaling-service :shape-name
                                   "AWSAcuitySignalingService" :version
                                   "2019-12-04" :title
                                   "Amazon Kinesis Video Signaling Channels"
                                   :operations
                                   '(get-ice-server-config
                                     send-alexa-offer-to-master)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kinesis Video Signaling")
                                      ("arnNamespace" . "kinesisvideo")
                                      ("cloudFormationName"
                                       . "KinesisVideoSignaling")
                                      ("cloudTrailEventSource"
                                       . "kinesisvideosignaling.amazonaws.com")
                                      ("endpointPrefix" . "kinesisvideo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisvideo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type answer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error client-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ClientLimitExceededException")
                                (:error-code 400)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-ice-server-config-request common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (client-id :target-type client-id :member-name
                                  "ClientId")
                                 (service :target-type service :member-name
                                  "Service")
                                 (username :target-type username :member-name
                                  "Username"))
                                (:shape-name "GetIceServerConfigRequest"))

(smithy/sdk/shapes:define-output get-ice-server-config-response common-lisp:nil
                                 ((ice-server-list :target-type ice-server-list
                                   :member-name "IceServerList"))
                                 (:shape-name "GetIceServerConfigResponse"))

(smithy/sdk/shapes:define-structure ice-server common-lisp:nil
                                    ((uris :target-type uris :member-name
                                      "Uris")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password")
                                     (ttl :target-type ttl :member-name "Ttl"))
                                    (:shape-name "IceServer"))

(smithy/sdk/shapes:define-list ice-server-list :member ice-server)

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-error invalid-client-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidClientException")
                                (:error-code 400)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-type message-payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 401)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-input send-alexa-offer-to-master-request
                                common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (sender-client-id :target-type client-id
                                  :required common-lisp:t :member-name
                                  "SenderClientId")
                                 (message-payload :target-type message-payload
                                  :required common-lisp:t :member-name
                                  "MessagePayload"))
                                (:shape-name "SendAlexaOfferToMasterRequest"))

(smithy/sdk/shapes:define-output send-alexa-offer-to-master-response
                                 common-lisp:nil
                                 ((answer :target-type answer :member-name
                                   "Answer"))
                                 (:shape-name "SendAlexaOfferToMasterResponse"))

(smithy/sdk/shapes:define-enum service
    common-lisp:nil
  (:turn "TURN"))

(smithy/sdk/shapes:define-error session-expired-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SessionExpiredException")
                                (:error-code 400)
                                (:base-class kinesis-video-signaling-error))

(smithy/sdk/shapes:define-type ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list uris :member uri)

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-ice-server-config :shape-name
                                       "GetIceServerConfig" :input
                                       get-ice-server-config-request :output
                                       get-ice-server-config-response :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-client-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        session-expired-exception)
                                       :method "POST" :uri
                                       "/v1/get-ice-server-config" :code 200)

(smithy/sdk/operation:define-operation send-alexa-offer-to-master :shape-name
                                       "SendAlexaOfferToMaster" :input
                                       send-alexa-offer-to-master-request
                                       :output
                                       send-alexa-offer-to-master-response
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/v1/send-alexa-offer-to-master" :code
                                       200)
