(uiop/package:define-package #:pira/lex-runtime-service (:use)
                             (:export #:awsdeep-sense-run-time-service #:accept
                              #:active-context #:active-context-name
                              #:active-context-parameters-map
                              #:active-context-time-to-live
                              #:active-context-time-to-live-in-seconds
                              #:active-context-turns-to-live
                              #:active-contexts-list #:blob-stream #:bot-alias
                              #:bot-name #:bot-version #:button
                              #:button-text-string-with-length
                              #:button-value-string-with-length
                              #:confirmation-status #:content-type
                              #:delete-session #:dialog-action
                              #:dialog-action-type #:dialog-state #:double
                              #:error-message #:fulfillment-state
                              #:generic-attachment #:get-session
                              #:http-content-type #:intent-confidence
                              #:intent-list #:intent-name #:intent-summary
                              #:intent-summary-checkpoint-label
                              #:intent-summary-list #:message-format-type
                              #:parameter-name #:post-content #:post-text
                              #:predicted-intent #:put-session #:response-card
                              #:sensitive-string #:sensitive-string-unbounded
                              #:sentiment-label #:sentiment-response
                              #:sentiment-score #:string #:string-map
                              #:string-url-with-length #:string-with-length
                              #:synthesized-json-active-contexts-string
                              #:synthesized-json-attributes-string
                              #:synthesized-json-string #:text #:user-id
                              #:generic-attachment-list #:list-of-buttons))
(common-lisp:in-package #:pira/lex-runtime-service)

(smithy/sdk/service:define-service awsdeep-sense-run-time-service :shape-name
                                   "AWSDeepSenseRunTimeService" :version
                                   "2016-11-28" :title
                                   "Amazon Lex Runtime Service" :operations
                                   '(delete-session get-session post-content
                                     post-text put-session)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Lex Runtime Service")
                                      ("arnNamespace" . "lex")
                                      ("cloudFormationName"
                                       . "LexRuntimeService")
                                      ("cloudTrailEventSource"
                                       . "lexruntimeservice.amazonaws.com")
                                      ("docId" . "runtime.lex-2016-11-28")
                                      ("endpointPrefix" . "runtime.lex"))
                                     ("aws.auth#sigv4" ("name" . "lex"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type accept smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure active-context common-lisp:nil
                                    ((name :target-type active-context-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (time-to-live :target-type
                                      active-context-time-to-live :required
                                      common-lisp:t :member-name "timeToLive")
                                     (parameters :target-type
                                      active-context-parameters-map :required
                                      common-lisp:t :member-name "parameters"))
                                    (:shape-name "ActiveContext"))

(smithy/sdk/shapes:define-type active-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map active-context-parameters-map :key parameter-name
                              :value text)

(smithy/sdk/shapes:define-structure active-context-time-to-live common-lisp:nil
                                    ((time-to-live-in-seconds :target-type
                                      active-context-time-to-live-in-seconds
                                      :member-name "timeToLiveInSeconds")
                                     (turns-to-live :target-type
                                      active-context-turns-to-live :member-name
                                      "turnsToLive"))
                                    (:shape-name "ActiveContextTimeToLive"))

(smithy/sdk/shapes:define-type active-context-time-to-live-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type active-context-turns-to-live
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list active-contexts-list :member active-context)

(smithy/sdk/shapes:define-error bad-gateway-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BadGatewayException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type blob-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type bot-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bot-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure button common-lisp:nil
                                    ((text :target-type
                                      button-text-string-with-length :required
                                      common-lisp:t :member-name "text")
                                     (value :target-type
                                      button-value-string-with-length :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Button"))

(smithy/sdk/shapes:define-type button-text-string-with-length
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type button-value-string-with-length
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum confirmation-status
    common-lisp:nil
  (:none "None")
  (:confirmed "Confirmed")
  (:denied "Denied"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:generic "application/vnd.amazonaws.card.generic"))

(smithy/sdk/shapes:define-input delete-session-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type bot-alias :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSessionRequest"))

(smithy/sdk/shapes:define-output delete-session-response common-lisp:nil
                                 ((bot-name :target-type bot-name :member-name
                                   "botName")
                                  (bot-alias :target-type bot-alias
                                   :member-name "botAlias")
                                  (user-id :target-type user-id :member-name
                                   "userId")
                                  (session-id :target-type string :member-name
                                   "sessionId"))
                                 (:shape-name "DeleteSessionResponse"))

(smithy/sdk/shapes:define-error dependency-failed-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DependencyFailedException")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure dialog-action common-lisp:nil
                                    ((type :target-type dialog-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (intent-name :target-type intent-name
                                      :member-name "intentName")
                                     (slots :target-type string-map
                                      :member-name "slots")
                                     (slot-to-elicit :target-type string
                                      :member-name "slotToElicit")
                                     (fulfillment-state :target-type
                                      fulfillment-state :member-name
                                      "fulfillmentState")
                                     (message :target-type text :member-name
                                      "message")
                                     (message-format :target-type
                                      message-format-type :member-name
                                      "messageFormat"))
                                    (:shape-name "DialogAction"))

(smithy/sdk/shapes:define-enum dialog-action-type
    common-lisp:nil
  (:elicit-intent "ElicitIntent")
  (:confirm-intent "ConfirmIntent")
  (:elicit-slot "ElicitSlot")
  (:close "Close")
  (:delegate "Delegate"))

(smithy/sdk/shapes:define-enum dialog-state
    common-lisp:nil
  (:elicit-intent "ElicitIntent")
  (:confirm-intent "ConfirmIntent")
  (:elicit-slot "ElicitSlot")
  (:fulfilled "Fulfilled")
  (:ready-for-fulfillment "ReadyForFulfillment")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum fulfillment-state
    common-lisp:nil
  (:fulfilled "Fulfilled")
  (:failed "Failed")
  (:ready-for-fulfillment "ReadyForFulfillment"))

(smithy/sdk/shapes:define-structure generic-attachment common-lisp:nil
                                    ((title :target-type string-with-length
                                      :member-name "title")
                                     (sub-title :target-type string-with-length
                                      :member-name "subTitle")
                                     (attachment-link-url :target-type
                                      string-url-with-length :member-name
                                      "attachmentLinkUrl")
                                     (image-url :target-type
                                      string-url-with-length :member-name
                                      "imageUrl")
                                     (buttons :target-type list-of-buttons
                                      :member-name "buttons"))
                                    (:shape-name "GenericAttachment"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type bot-alias :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (checkpoint-label-filter :target-type
                                  intent-summary-checkpoint-label :member-name
                                  "checkpointLabelFilter" :http-query
                                  "checkpointLabelFilter"))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((recent-intent-summary-view :target-type
                                   intent-summary-list :member-name
                                   "recentIntentSummaryView")
                                  (session-attributes :target-type string-map
                                   :member-name "sessionAttributes")
                                  (session-id :target-type string :member-name
                                   "sessionId")
                                  (dialog-action :target-type dialog-action
                                   :member-name "dialogAction")
                                  (active-contexts :target-type
                                   active-contexts-list :member-name
                                   "activeContexts"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-type http-content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure intent-confidence common-lisp:nil
                                    ((score :target-type double :member-name
                                      "score"))
                                    (:shape-name "IntentConfidence"))

(smithy/sdk/shapes:define-list intent-list :member predicted-intent)

(smithy/sdk/shapes:define-type intent-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure intent-summary common-lisp:nil
                                    ((intent-name :target-type intent-name
                                      :member-name "intentName")
                                     (checkpoint-label :target-type
                                      intent-summary-checkpoint-label
                                      :member-name "checkpointLabel")
                                     (slots :target-type string-map
                                      :member-name "slots")
                                     (confirmation-status :target-type
                                      confirmation-status :member-name
                                      "confirmationStatus")
                                     (dialog-action-type :target-type
                                      dialog-action-type :required
                                      common-lisp:t :member-name
                                      "dialogActionType")
                                     (fulfillment-state :target-type
                                      fulfillment-state :member-name
                                      "fulfillmentState")
                                     (slot-to-elicit :target-type string
                                      :member-name "slotToElicit"))
                                    (:shape-name "IntentSummary"))

(smithy/sdk/shapes:define-type intent-summary-checkpoint-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list intent-summary-list :member intent-summary)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error loop-detected-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LoopDetectedException")
                                (:error-code 508))

(smithy/sdk/shapes:define-enum message-format-type
    common-lisp:nil
  (:plain-text "PlainText")
  (:custom-payload "CustomPayload")
  (:ssml "SSML")
  (:composite "Composite"))

(smithy/sdk/shapes:define-error not-acceptable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotAcceptableException")
                                (:error-code 406))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input post-content-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type bot-alias :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (session-attributes :target-type
                                  synthesized-json-attributes-string
                                  :member-name "sessionAttributes" :http-header
                                  "x-amz-lex-session-attributes")
                                 (request-attributes :target-type
                                  synthesized-json-attributes-string
                                  :member-name "requestAttributes" :http-header
                                  "x-amz-lex-request-attributes")
                                 (content-type :target-type http-content-type
                                  :required common-lisp:t :member-name
                                  "contentType" :http-header "Content-Type")
                                 (accept :target-type accept :member-name
                                  "accept" :http-header "Accept")
                                 (input-stream :target-type blob-stream
                                  :required common-lisp:t :member-name
                                  "inputStream" :http-payload common-lisp:t)
                                 (active-contexts :target-type
                                  synthesized-json-active-contexts-string
                                  :member-name "activeContexts" :http-header
                                  "x-amz-lex-active-contexts"))
                                (:shape-name "PostContentRequest"))

(smithy/sdk/shapes:define-output post-content-response common-lisp:nil
                                 ((content-type :target-type http-content-type
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (intent-name :target-type intent-name
                                   :member-name "intentName" :http-header
                                   "x-amz-lex-intent-name")
                                  (nlu-intent-confidence :target-type
                                   synthesized-json-string :member-name
                                   "nluIntentConfidence" :http-header
                                   "x-amz-lex-nlu-intent-confidence")
                                  (alternative-intents :target-type
                                   synthesized-json-string :member-name
                                   "alternativeIntents" :http-header
                                   "x-amz-lex-alternative-intents")
                                  (slots :target-type synthesized-json-string
                                   :member-name "slots" :http-header
                                   "x-amz-lex-slots")
                                  (session-attributes :target-type
                                   synthesized-json-string :member-name
                                   "sessionAttributes" :http-header
                                   "x-amz-lex-session-attributes")
                                  (sentiment-response :target-type string
                                   :member-name "sentimentResponse"
                                   :http-header "x-amz-lex-sentiment")
                                  (message :target-type text :member-name
                                   "message" :http-header "x-amz-lex-message")
                                  (encoded-message :target-type
                                   sensitive-string :member-name
                                   "encodedMessage" :http-header
                                   "x-amz-lex-encoded-message")
                                  (message-format :target-type
                                   message-format-type :member-name
                                   "messageFormat" :http-header
                                   "x-amz-lex-message-format")
                                  (dialog-state :target-type dialog-state
                                   :member-name "dialogState" :http-header
                                   "x-amz-lex-dialog-state")
                                  (slot-to-elicit :target-type string
                                   :member-name "slotToElicit" :http-header
                                   "x-amz-lex-slot-to-elicit")
                                  (input-transcript :target-type string
                                   :member-name "inputTranscript" :http-header
                                   "x-amz-lex-input-transcript")
                                  (encoded-input-transcript :target-type
                                   sensitive-string-unbounded :member-name
                                   "encodedInputTranscript" :http-header
                                   "x-amz-lex-encoded-input-transcript")
                                  (audio-stream :target-type blob-stream
                                   :member-name "audioStream" :http-payload
                                   common-lisp:t)
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion" :http-header
                                   "x-amz-lex-bot-version")
                                  (session-id :target-type string :member-name
                                   "sessionId" :http-header
                                   "x-amz-lex-session-id")
                                  (active-contexts :target-type
                                   synthesized-json-active-contexts-string
                                   :member-name "activeContexts" :http-header
                                   "x-amz-lex-active-contexts"))
                                 (:shape-name "PostContentResponse"))

(smithy/sdk/shapes:define-input post-text-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type bot-alias :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (session-attributes :target-type string-map
                                  :member-name "sessionAttributes")
                                 (request-attributes :target-type string-map
                                  :member-name "requestAttributes")
                                 (input-text :target-type text :required
                                  common-lisp:t :member-name "inputText")
                                 (active-contexts :target-type
                                  active-contexts-list :member-name
                                  "activeContexts"))
                                (:shape-name "PostTextRequest"))

(smithy/sdk/shapes:define-output post-text-response common-lisp:nil
                                 ((intent-name :target-type intent-name
                                   :member-name "intentName")
                                  (nlu-intent-confidence :target-type
                                   intent-confidence :member-name
                                   "nluIntentConfidence")
                                  (alternative-intents :target-type intent-list
                                   :member-name "alternativeIntents")
                                  (slots :target-type string-map :member-name
                                   "slots")
                                  (session-attributes :target-type string-map
                                   :member-name "sessionAttributes")
                                  (message :target-type text :member-name
                                   "message")
                                  (sentiment-response :target-type
                                   sentiment-response :member-name
                                   "sentimentResponse")
                                  (message-format :target-type
                                   message-format-type :member-name
                                   "messageFormat")
                                  (dialog-state :target-type dialog-state
                                   :member-name "dialogState")
                                  (slot-to-elicit :target-type string
                                   :member-name "slotToElicit")
                                  (response-card :target-type response-card
                                   :member-name "responseCard")
                                  (session-id :target-type string :member-name
                                   "sessionId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (active-contexts :target-type
                                   active-contexts-list :member-name
                                   "activeContexts"))
                                 (:shape-name "PostTextResponse"))

(smithy/sdk/shapes:define-structure predicted-intent common-lisp:nil
                                    ((intent-name :target-type intent-name
                                      :member-name "intentName")
                                     (nlu-intent-confidence :target-type
                                      intent-confidence :member-name
                                      "nluIntentConfidence")
                                     (slots :target-type string-map
                                      :member-name "slots"))
                                    (:shape-name "PredictedIntent"))

(smithy/sdk/shapes:define-input put-session-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type bot-alias :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (session-attributes :target-type string-map
                                  :member-name "sessionAttributes")
                                 (dialog-action :target-type dialog-action
                                  :member-name "dialogAction")
                                 (recent-intent-summary-view :target-type
                                  intent-summary-list :member-name
                                  "recentIntentSummaryView")
                                 (accept :target-type accept :member-name
                                  "accept" :http-header "Accept")
                                 (active-contexts :target-type
                                  active-contexts-list :member-name
                                  "activeContexts"))
                                (:shape-name "PutSessionRequest"))

(smithy/sdk/shapes:define-output put-session-response common-lisp:nil
                                 ((content-type :target-type http-content-type
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (intent-name :target-type intent-name
                                   :member-name "intentName" :http-header
                                   "x-amz-lex-intent-name")
                                  (slots :target-type synthesized-json-string
                                   :member-name "slots" :http-header
                                   "x-amz-lex-slots")
                                  (session-attributes :target-type
                                   synthesized-json-string :member-name
                                   "sessionAttributes" :http-header
                                   "x-amz-lex-session-attributes")
                                  (message :target-type text :member-name
                                   "message" :http-header "x-amz-lex-message")
                                  (encoded-message :target-type
                                   sensitive-string :member-name
                                   "encodedMessage" :http-header
                                   "x-amz-lex-encoded-message")
                                  (message-format :target-type
                                   message-format-type :member-name
                                   "messageFormat" :http-header
                                   "x-amz-lex-message-format")
                                  (dialog-state :target-type dialog-state
                                   :member-name "dialogState" :http-header
                                   "x-amz-lex-dialog-state")
                                  (slot-to-elicit :target-type string
                                   :member-name "slotToElicit" :http-header
                                   "x-amz-lex-slot-to-elicit")
                                  (audio-stream :target-type blob-stream
                                   :member-name "audioStream" :http-payload
                                   common-lisp:t)
                                  (session-id :target-type string :member-name
                                   "sessionId" :http-header
                                   "x-amz-lex-session-id")
                                  (active-contexts :target-type
                                   synthesized-json-active-contexts-string
                                   :member-name "activeContexts" :http-header
                                   "x-amz-lex-active-contexts"))
                                 (:shape-name "PutSessionResponse"))

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-structure response-card common-lisp:nil
                                    ((version :target-type string :member-name
                                      "version")
                                     (content-type :target-type content-type
                                      :member-name "contentType")
                                     (generic-attachments :target-type
                                      generic-attachment-list :member-name
                                      "genericAttachments"))
                                    (:shape-name "ResponseCard"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string-unbounded
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sentiment-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sentiment-response common-lisp:nil
                                    ((sentiment-label :target-type
                                      sentiment-label :member-name
                                      "sentimentLabel")
                                     (sentiment-score :target-type
                                      sentiment-score :member-name
                                      "sentimentScore"))
                                    (:shape-name "SentimentResponse"))

(smithy/sdk/shapes:define-type sentiment-score smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-type string-url-with-length
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type synthesized-json-active-contexts-string
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-attributes-string
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-string
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-media-type-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnsupportedMediaTypeException")
                                (:error-code 415))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list generic-attachment-list :member
                               generic-attachment)

(smithy/sdk/shapes:define-list list-of-buttons :member button)

(smithy/sdk/operation:define-operation delete-session :shape-name
                                       "DeleteSession" :input
                                       delete-session-request :output
                                       delete-session-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/bot/{botName}/alias/{botAlias}/user/{userId}/session"
                                       :code 200)

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/bot/{botName}/alias/{botAlias}/user/{userId}/session"
                                       :code 200)

(smithy/sdk/operation:define-operation post-content :shape-name "PostContent"
                                       :input post-content-request :output
                                       post-content-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        loop-detected-exception
                                        not-acceptable-exception
                                        not-found-exception
                                        request-timeout-exception
                                        unsupported-media-type-exception)
                                       :method "POST" :uri
                                       "/bot/{botName}/alias/{botAlias}/user/{userId}/content"
                                       :code 200)

(smithy/sdk/operation:define-operation post-text :shape-name "PostText" :input
                                       post-text-request :output
                                       post-text-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        loop-detected-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/bot/{botName}/alias/{botAlias}/user/{userId}/text"
                                       :code 200)

(smithy/sdk/operation:define-operation put-session :shape-name "PutSession"
                                       :input put-session-request :output
                                       put-session-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-acceptable-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/bot/{botName}/alias/{botAlias}/user/{userId}/session"
                                       :code 200)
