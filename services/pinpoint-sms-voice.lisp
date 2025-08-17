(uiop/package:define-package #:pira/pinpoint-sms-voice (:use)
                             (:export #:boolean
                              #:call-instructions-message-type
                              #:cloud-watch-logs-destination
                              #:configuration-sets #:create-configuration-set
                              #:create-configuration-set-event-destination
                              #:delete-configuration-set
                              #:delete-configuration-set-event-destination
                              #:event-destination
                              #:event-destination-definition
                              #:event-destinations #:event-type #:event-types
                              #:get-configuration-set-event-destinations
                              #:kinesis-firehose-destination
                              #:list-configuration-sets #:next-token-string
                              #:non-empty-string #:pinpoint-smsvoice
                              #:plain-text-message-type #:ssmlmessage-type
                              #:send-voice-message #:sns-destination #:string
                              #:update-configuration-set-event-destination
                              #:voice-message-content
                              #:word-characters-with-delimiters #:string))
(common-lisp:in-package #:pira/pinpoint-sms-voice)

(smithy/sdk/service:define-service pinpoint-smsvoice :shape-name
                                   "PinpointSMSVoice" :version "2018-09-05"
                                   :title
                                   "Amazon Pinpoint SMS and Voice Service"
                                   :operations
                                   '(create-configuration-set
                                     create-configuration-set-event-destination
                                     delete-configuration-set
                                     delete-configuration-set-event-destination
                                     get-configuration-set-event-destinations
                                     list-configuration-sets send-voice-message
                                     update-configuration-set-event-destination)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Pinpoint SMS Voice")
                                      ("arnNamespace" . "sms-voice")
                                      ("cloudFormationName"
                                       . "PinpointSMSVoice")
                                      ("cloudTrailEventSource"
                                       . "pinpointsmsvoice.amazonaws.com")
                                      ("endpointPrefix"
                                       . "sms-voice.pinpoint"))
                                     ("aws.auth#sigv4" ("name" . "sms-voice"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure call-instructions-message-type
                                    common-lisp:nil
                                    ((text :target-type non-empty-string
                                      :member-name "Text"))
                                    (:shape-name "CallInstructionsMessageType"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination
                                    common-lisp:nil
                                    ((iam-role-arn :target-type string
                                      :member-name "IamRoleArn")
                                     (log-group-arn :target-type string
                                      :member-name "LogGroupArn"))
                                    (:shape-name "CloudWatchLogsDestination"))

(smithy/sdk/shapes:define-list configuration-sets :member
                               word-characters-with-delimiters)

(smithy/sdk/shapes:define-input
 create-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type string :required common-lisp:t
   :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination :target-type event-destination-definition :member-name
   "EventDestination")
  (event-destination-name :target-type non-empty-string :member-name
   "EventDestinationName"))
 (:shape-name "CreateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 create-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input create-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  word-characters-with-delimiters :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "CreateConfigurationSetRequest"))

(smithy/sdk/shapes:define-output create-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateConfigurationSetResponse"))

(smithy/sdk/shapes:define-input
 delete-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type string :required common-lisp:t
   :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type string :required common-lisp:t
   :member-name "EventDestinationName" :http-label common-lisp:t))
 (:shape-name "DeleteConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 delete-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input delete-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteConfigurationSetRequest"))

(smithy/sdk/shapes:define-output delete-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConfigurationSetResponse"))

(smithy/sdk/shapes:define-structure event-destination common-lisp:nil
                                    ((cloud-watch-logs-destination :target-type
                                      cloud-watch-logs-destination :member-name
                                      "CloudWatchLogsDestination")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (matching-event-types :target-type
                                      event-types :member-name
                                      "MatchingEventTypes")
                                     (name :target-type string :member-name
                                      "Name")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination"))
                                    (:shape-name "EventDestination"))

(smithy/sdk/shapes:define-structure event-destination-definition
                                    common-lisp:nil
                                    ((cloud-watch-logs-destination :target-type
                                      cloud-watch-logs-destination :member-name
                                      "CloudWatchLogsDestination")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (matching-event-types :target-type
                                      event-types :member-name
                                      "MatchingEventTypes")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination"))
                                    (:shape-name "EventDestinationDefinition"))

(smithy/sdk/shapes:define-list event-destinations :member event-destination)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:initiated-call "INITIATED_CALL")
  (:ringing "RINGING")
  (:answered "ANSWERED")
  (:completed-call "COMPLETED_CALL")
  (:busy "BUSY")
  (:failed "FAILED")
  (:no-answer "NO_ANSWER"))

(smithy/sdk/shapes:define-list event-types :member event-type)

(smithy/sdk/shapes:define-input
 get-configuration-set-event-destinations-request common-lisp:nil
 ((configuration-set-name :target-type string :required common-lisp:t
   :member-name "ConfigurationSetName" :http-label common-lisp:t))
 (:shape-name "GetConfigurationSetEventDestinationsRequest"))

(smithy/sdk/shapes:define-output
 get-configuration-set-event-destinations-response common-lisp:nil
 ((event-destinations :target-type event-destinations :member-name
   "EventDestinations"))
 (:shape-name "GetConfigurationSetEventDestinationsResponse"))

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure kinesis-firehose-destination
                                    common-lisp:nil
                                    ((delivery-stream-arn :target-type string
                                      :member-name "DeliveryStreamArn")
                                     (iam-role-arn :target-type string
                                      :member-name "IamRoleArn"))
                                    (:shape-name "KinesisFirehoseDestination"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 412))

(smithy/sdk/shapes:define-input list-configuration-sets-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListConfigurationSetsRequest"))

(smithy/sdk/shapes:define-output list-configuration-sets-response
                                 common-lisp:nil
                                 ((configuration-sets :target-type
                                   configuration-sets :member-name
                                   "ConfigurationSets")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListConfigurationSetsResponse"))

(smithy/sdk/shapes:define-type next-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure plain-text-message-type common-lisp:nil
                                    ((language-code :target-type string
                                      :member-name "LanguageCode")
                                     (text :target-type non-empty-string
                                      :member-name "Text")
                                     (voice-id :target-type string :member-name
                                      "VoiceId"))
                                    (:shape-name "PlainTextMessageType"))

(smithy/sdk/shapes:define-structure ssmlmessage-type common-lisp:nil
                                    ((language-code :target-type string
                                      :member-name "LanguageCode")
                                     (text :target-type non-empty-string
                                      :member-name "Text")
                                     (voice-id :target-type string :member-name
                                      "VoiceId"))
                                    (:shape-name "SSMLMessageType"))

(smithy/sdk/shapes:define-input send-voice-message-request common-lisp:nil
                                ((caller-id :target-type string :member-name
                                  "CallerId")
                                 (configuration-set-name :target-type
                                  word-characters-with-delimiters :member-name
                                  "ConfigurationSetName")
                                 (content :target-type voice-message-content
                                  :member-name "Content")
                                 (destination-phone-number :target-type
                                  non-empty-string :member-name
                                  "DestinationPhoneNumber")
                                 (origination-phone-number :target-type
                                  non-empty-string :member-name
                                  "OriginationPhoneNumber"))
                                (:shape-name "SendVoiceMessageRequest"))

(smithy/sdk/shapes:define-output send-voice-message-response common-lisp:nil
                                 ((message-id :target-type string :member-name
                                   "MessageId"))
                                 (:shape-name "SendVoiceMessageResponse"))

(smithy/sdk/shapes:define-structure sns-destination common-lisp:nil
                                    ((topic-arn :target-type string
                                      :member-name "TopicArn"))
                                    (:shape-name "SnsDestination"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input
 update-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type string :required common-lisp:t
   :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination :target-type event-destination-definition :member-name
   "EventDestination")
  (event-destination-name :target-type string :required common-lisp:t
   :member-name "EventDestinationName" :http-label common-lisp:t))
 (:shape-name "UpdateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 update-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-structure voice-message-content common-lisp:nil
                                    ((call-instructions-message :target-type
                                      call-instructions-message-type
                                      :member-name "CallInstructionsMessage")
                                     (plain-text-message :target-type
                                      plain-text-message-type :member-name
                                      "PlainTextMessage")
                                     (ssmlmessage :target-type ssmlmessage-type
                                      :member-name "SSMLMessage"))
                                    (:shape-name "VoiceMessageContent"))

(smithy/sdk/shapes:define-type word-characters-with-delimiters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-configuration-set :shape-name
                                       "CreateConfigurationSet" :input
                                       create-configuration-set-request :output
                                       create-configuration-set-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/sms-voice/configuration-sets" :code
                                       200)

(smithy/sdk/operation:define-operation
 create-configuration-set-event-destination :shape-name
 "CreateConfigurationSetEventDestination" :input
 create-configuration-set-event-destination-request :output
 create-configuration-set-event-destination-response :errors
 (already-exists-exception bad-request-exception
  internal-service-error-exception limit-exceeded-exception not-found-exception
  too-many-requests-exception)
 :method "POST" :uri
 "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations"
 :code 200)

(smithy/sdk/operation:define-operation delete-configuration-set :shape-name
                                       "DeleteConfigurationSet" :input
                                       delete-configuration-set-request :output
                                       delete-configuration-set-response
                                       :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/sms-voice/configuration-sets/{ConfigurationSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-configuration-set-event-destination :shape-name
 "DeleteConfigurationSetEventDestination" :input
 delete-configuration-set-event-destination-request :output
 delete-configuration-set-event-destination-response :errors
 (bad-request-exception internal-service-error-exception not-found-exception
  too-many-requests-exception)
 :method "DELETE" :uri
 "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)

(smithy/sdk/operation:define-operation get-configuration-set-event-destinations
                                       :shape-name
                                       "GetConfigurationSetEventDestinations"
                                       :input
                                       get-configuration-set-event-destinations-request
                                       :output
                                       get-configuration-set-event-destinations-response
                                       :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configuration-sets :shape-name
                                       "ListConfigurationSets" :input
                                       list-configuration-sets-request :output
                                       list-configuration-sets-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/sms-voice/configuration-sets" :code
                                       200)

(smithy/sdk/operation:define-operation send-voice-message :shape-name
                                       "SendVoiceMessage" :input
                                       send-voice-message-request :output
                                       send-voice-message-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/sms-voice/voice/message" :code 200)

(smithy/sdk/operation:define-operation
 update-configuration-set-event-destination :shape-name
 "UpdateConfigurationSetEventDestination" :input
 update-configuration-set-event-destination-request :output
 update-configuration-set-event-destination-response :errors
 (bad-request-exception internal-service-error-exception not-found-exception
  too-many-requests-exception)
 :method "PUT" :uri
 "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)
