(uiop/package:define-package #:pira/lex-runtime-v2 (:use)
                             (:export #:awsdeep-sense-run-time-service-api2-0
                              #:active-context #:active-context-name
                              #:active-context-parameters-map
                              #:active-context-time-to-live
                              #:active-context-time-to-live-in-seconds
                              #:active-context-turns-to-live
                              #:active-contexts-list #:attachment-title
                              #:attachment-url #:audio-chunk
                              #:audio-input-event #:audio-response-event
                              #:blob-stream #:boolean #:bot-alias-identifier
                              #:bot-identifier #:button #:button-text
                              #:button-value #:buttons-list #:confidence-score
                              #:configuration-event #:confirmation-state
                              #:conversation-mode #:dtmfinput-event #:dtmfregex
                              #:delete-session #:dialog-action
                              #:dialog-action-type #:disconnection-event
                              #:double #:elicit-sub-slot #:epoch-millis
                              #:event-id #:get-session #:heartbeat-event
                              #:image-response-card #:input-mode #:intent
                              #:intent-result-event #:intent-state
                              #:interpretation #:interpretation-source
                              #:interpretations #:locale-id #:message
                              #:message-content-type #:messages #:name
                              #:non-empty-string #:parameter-name
                              #:playback-completion-event
                              #:playback-interruption-event
                              #:playback-interruption-reason #:put-session
                              #:recognize-text #:recognize-utterance
                              #:recognized-bot-member #:runtime-hint-details
                              #:runtime-hint-phrase #:runtime-hint-value
                              #:runtime-hint-values-list #:runtime-hints
                              #:sensitive-non-empty-string #:sentiment-response
                              #:sentiment-score #:sentiment-type #:session-id
                              #:session-state #:shape #:slot
                              #:slot-hints-intent-map #:slot-hints-slot-map
                              #:slots #:start-conversation
                              #:start-conversation-request-event-stream
                              #:start-conversation-response-event-stream
                              #:string #:string-list #:string-map #:style-type
                              #:text #:text-input-event #:text-response-event
                              #:transcript-event #:value #:values))
(common-lisp:in-package #:pira/lex-runtime-v2)

(smithy/sdk/service:define-service awsdeep-sense-run-time-service-api2-0
                                   :shape-name
                                   "AWSDeepSenseRunTimeServiceApi2_0" :version
                                   "2020-08-07" :title "Amazon Lex Runtime V2"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Lex Runtime V2")
                                      ("arnNamespace" . "lex")
                                      ("cloudFormationName" . "LexRuntimeV2")
                                      ("cloudTrailEventSource"
                                       . "lexruntimev2.amazonaws.com")
                                      ("docId" . "runtime.lex.v2-2020-08-07")
                                      ("endpointPrefix" . "runtime-v2-lex"))
                                     ("aws.auth#sigv4" ("name" . "lex"))
                                     ("aws.protocols#restJson1"
                                      ("http" . #("http/1.1" "h2"))
                                      ("eventStreamHttp" . #("h2")))))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure active-context common-lisp:nil
                                    ((name :target-type active-context-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (time-to-live :target-type
                                      active-context-time-to-live :required
                                      common-lisp:t :member-name "timeToLive")
                                     (context-attributes :target-type
                                      active-context-parameters-map :required
                                      common-lisp:t :member-name
                                      "contextAttributes"))
                                    (:shape-name "ActiveContext"))

(smithy/sdk/shapes:define-type active-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map active-context-parameters-map :key parameter-name
                              :value text)

(smithy/sdk/shapes:define-structure active-context-time-to-live common-lisp:nil
                                    ((time-to-live-in-seconds :target-type
                                      active-context-time-to-live-in-seconds
                                      :required common-lisp:t :member-name
                                      "timeToLiveInSeconds")
                                     (turns-to-live :target-type
                                      active-context-turns-to-live :required
                                      common-lisp:t :member-name
                                      "turnsToLive"))
                                    (:shape-name "ActiveContextTimeToLive"))

(smithy/sdk/shapes:define-type active-context-time-to-live-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type active-context-turns-to-live
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list active-contexts-list :member active-context)

(smithy/sdk/shapes:define-type attachment-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-chunk smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure audio-input-event common-lisp:nil
                                    ((audio-chunk :target-type audio-chunk
                                      :member-name "audioChunk")
                                     (content-type :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "contentType")
                                     (event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "AudioInputEvent"))

(smithy/sdk/shapes:define-structure audio-response-event common-lisp:nil
                                    ((audio-chunk :target-type audio-chunk
                                      :member-name "audioChunk")
                                     (content-type :target-type
                                      non-empty-string :member-name
                                      "contentType")
                                     (event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "AudioResponseEvent"))

(smithy/sdk/shapes:define-error bad-gateway-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "BadGatewayException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type blob-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bot-alias-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bot-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure button common-lisp:nil
                                    ((text :target-type button-text :required
                                      common-lisp:t :member-name "text")
                                     (value :target-type button-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Button"))

(smithy/sdk/shapes:define-type button-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type button-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list buttons-list :member button)

(smithy/sdk/shapes:define-structure confidence-score common-lisp:nil
                                    ((score :target-type double :member-name
                                      "score"))
                                    (:shape-name "ConfidenceScore"))

(smithy/sdk/shapes:define-structure configuration-event common-lisp:nil
                                    ((request-attributes :target-type
                                      string-map :member-name
                                      "requestAttributes")
                                     (response-content-type :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "responseContentType")
                                     (session-state :target-type session-state
                                      :member-name "sessionState")
                                     (welcome-messages :target-type messages
                                      :member-name "welcomeMessages")
                                     (disable-playback :target-type boolean
                                      :member-name "disablePlayback")
                                     (event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "ConfigurationEvent"))

(smithy/sdk/shapes:define-enum confirmation-state
    common-lisp:nil
  (:confirmed "Confirmed")
  (:denied "Denied")
  (:none "None"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conversation-mode
    common-lisp:nil
  (:audio "AUDIO")
  (:text "TEXT"))

(smithy/sdk/shapes:define-structure dtmfinput-event common-lisp:nil
                                    ((input-character :target-type dtmfregex
                                      :required common-lisp:t :member-name
                                      "inputCharacter")
                                     (event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "DTMFInputEvent"))

(smithy/sdk/shapes:define-type dtmfregex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-session-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSessionRequest"))

(smithy/sdk/shapes:define-output delete-session-response common-lisp:nil
                                 ((bot-id :target-type bot-identifier
                                   :member-name "botId")
                                  (bot-alias-id :target-type
                                   bot-alias-identifier :member-name
                                   "botAliasId")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (session-id :target-type session-id
                                   :member-name "sessionId"))
                                 (:shape-name "DeleteSessionResponse"))

(smithy/sdk/shapes:define-error dependency-failed-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "DependencyFailedException")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure dialog-action common-lisp:nil
                                    ((type :target-type dialog-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (slot-to-elicit :target-type
                                      non-empty-string :member-name
                                      "slotToElicit")
                                     (slot-elicitation-style :target-type
                                      style-type :member-name
                                      "slotElicitationStyle")
                                     (sub-slot-to-elicit :target-type
                                      elicit-sub-slot :member-name
                                      "subSlotToElicit"))
                                    (:shape-name "DialogAction"))

(smithy/sdk/shapes:define-enum dialog-action-type
    common-lisp:nil
  (:close "Close")
  (:confirm-intent "ConfirmIntent")
  (:delegate "Delegate")
  (:elicit-intent "ElicitIntent")
  (:elicit-slot "ElicitSlot")
  (:none "None"))

(smithy/sdk/shapes:define-structure disconnection-event common-lisp:nil
                                    ((event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "DisconnectionEvent"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure elicit-sub-slot common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (sub-slot-to-elicit :target-type
                                      elicit-sub-slot :member-name
                                      "subSlotToElicit"))
                                    (:shape-name "ElicitSubSlot"))

(smithy/sdk/shapes:define-type epoch-millis smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session-id :target-type non-empty-string
                                   :member-name "sessionId")
                                  (messages :target-type messages :member-name
                                   "messages")
                                  (interpretations :target-type interpretations
                                   :member-name "interpretations")
                                  (session-state :target-type session-state
                                   :member-name "sessionState"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-structure heartbeat-event common-lisp:nil
                                    ((event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "HeartbeatEvent"))

(smithy/sdk/shapes:define-structure image-response-card common-lisp:nil
                                    ((title :target-type attachment-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (subtitle :target-type attachment-title
                                      :member-name "subtitle")
                                     (image-url :target-type attachment-url
                                      :member-name "imageUrl")
                                     (buttons :target-type buttons-list
                                      :member-name "buttons"))
                                    (:shape-name "ImageResponseCard"))

(smithy/sdk/shapes:define-enum input-mode
    common-lisp:nil
  (:text "Text")
  (:speech "Speech")
  (:dtmf "DTMF"))

(smithy/sdk/shapes:define-structure intent common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (slots :target-type slots :member-name
                                      "slots")
                                     (state :target-type intent-state
                                      :member-name "state")
                                     (confirmation-state :target-type
                                      confirmation-state :member-name
                                      "confirmationState"))
                                    (:shape-name "Intent"))

(smithy/sdk/shapes:define-structure intent-result-event common-lisp:nil
                                    ((input-mode :target-type input-mode
                                      :member-name "inputMode")
                                     (interpretations :target-type
                                      interpretations :member-name
                                      "interpretations")
                                     (session-state :target-type session-state
                                      :member-name "sessionState")
                                     (request-attributes :target-type
                                      string-map :member-name
                                      "requestAttributes")
                                     (session-id :target-type session-id
                                      :member-name "sessionId")
                                     (event-id :target-type event-id
                                      :member-name "eventId")
                                     (recognized-bot-member :target-type
                                      recognized-bot-member :member-name
                                      "recognizedBotMember"))
                                    (:shape-name "IntentResultEvent"))

(smithy/sdk/shapes:define-enum intent-state
    common-lisp:nil
  (:failed "Failed")
  (:fulfilled "Fulfilled")
  (:in-progress "InProgress")
  (:ready-for-fulfillment "ReadyForFulfillment")
  (:waiting "Waiting")
  (:fulfillment-in-progress "FulfillmentInProgress"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure interpretation common-lisp:nil
                                    ((nlu-confidence :target-type
                                      confidence-score :member-name
                                      "nluConfidence")
                                     (sentiment-response :target-type
                                      sentiment-response :member-name
                                      "sentimentResponse")
                                     (intent :target-type intent :member-name
                                      "intent")
                                     (interpretation-source :target-type
                                      interpretation-source :member-name
                                      "interpretationSource"))
                                    (:shape-name "Interpretation"))

(smithy/sdk/shapes:define-enum interpretation-source
    common-lisp:nil
  (:bedrock "Bedrock")
  (:lex "Lex"))

(smithy/sdk/shapes:define-list interpretations :member interpretation)

(smithy/sdk/shapes:define-type locale-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((content :target-type text :member-name
                                      "content")
                                     (content-type :target-type
                                      message-content-type :required
                                      common-lisp:t :member-name "contentType")
                                     (image-response-card :target-type
                                      image-response-card :member-name
                                      "imageResponseCard"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-enum message-content-type
    common-lisp:nil
  (:custom-payload "CustomPayload")
  (:image-response-card "ImageResponseCard")
  (:plain-text "PlainText")
  (:ssml "SSML"))

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure playback-completion-event common-lisp:nil
                                    ((event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "PlaybackCompletionEvent"))

(smithy/sdk/shapes:define-structure playback-interruption-event common-lisp:nil
                                    ((event-reason :target-type
                                      playback-interruption-reason :member-name
                                      "eventReason")
                                     (caused-by-event-id :target-type event-id
                                      :member-name "causedByEventId")
                                     (event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "PlaybackInterruptionEvent"))

(smithy/sdk/shapes:define-enum playback-interruption-reason
    common-lisp:nil
  (:dtmf-start-detected "DTMF_START_DETECTED")
  (:text-detected "TEXT_DETECTED")
  (:voice-start-detected "VOICE_START_DETECTED"))

(smithy/sdk/shapes:define-input put-session-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (messages :target-type messages :member-name
                                  "messages")
                                 (session-state :target-type session-state
                                  :required common-lisp:t :member-name
                                  "sessionState")
                                 (request-attributes :target-type string-map
                                  :member-name "requestAttributes")
                                 (response-content-type :target-type
                                  non-empty-string :member-name
                                  "responseContentType" :http-header
                                  "ResponseContentType"))
                                (:shape-name "PutSessionRequest"))

(smithy/sdk/shapes:define-output put-session-response common-lisp:nil
                                 ((content-type :target-type non-empty-string
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (messages :target-type non-empty-string
                                   :member-name "messages" :http-header
                                   "x-amz-lex-messages")
                                  (session-state :target-type non-empty-string
                                   :member-name "sessionState" :http-header
                                   "x-amz-lex-session-state")
                                  (request-attributes :target-type
                                   non-empty-string :member-name
                                   "requestAttributes" :http-header
                                   "x-amz-lex-request-attributes")
                                  (session-id :target-type session-id
                                   :member-name "sessionId" :http-header
                                   "x-amz-lex-session-id")
                                  (audio-stream :target-type blob-stream
                                   :member-name "audioStream" :http-payload
                                   common-lisp:t))
                                 (:shape-name "PutSessionResponse"))

(smithy/sdk/shapes:define-input recognize-text-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (text :target-type text :required
                                  common-lisp:t :member-name "text")
                                 (session-state :target-type session-state
                                  :member-name "sessionState")
                                 (request-attributes :target-type string-map
                                  :member-name "requestAttributes"))
                                (:shape-name "RecognizeTextRequest"))

(smithy/sdk/shapes:define-output recognize-text-response common-lisp:nil
                                 ((messages :target-type messages :member-name
                                   "messages")
                                  (session-state :target-type session-state
                                   :member-name "sessionState")
                                  (interpretations :target-type interpretations
                                   :member-name "interpretations")
                                  (request-attributes :target-type string-map
                                   :member-name "requestAttributes")
                                  (session-id :target-type session-id
                                   :member-name "sessionId")
                                  (recognized-bot-member :target-type
                                   recognized-bot-member :member-name
                                   "recognizedBotMember"))
                                 (:shape-name "RecognizeTextResponse"))

(smithy/sdk/shapes:define-input recognize-utterance-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (session-state :target-type
                                  sensitive-non-empty-string :member-name
                                  "sessionState" :http-header
                                  "x-amz-lex-session-state")
                                 (request-attributes :target-type
                                  sensitive-non-empty-string :member-name
                                  "requestAttributes" :http-header
                                  "x-amz-lex-request-attributes")
                                 (request-content-type :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "requestContentType"
                                  :http-header "Content-Type")
                                 (response-content-type :target-type
                                  non-empty-string :member-name
                                  "responseContentType" :http-header
                                  "Response-Content-Type")
                                 (input-stream :target-type blob-stream
                                  :member-name "inputStream" :http-payload
                                  common-lisp:t))
                                (:shape-name "RecognizeUtteranceRequest"))

(smithy/sdk/shapes:define-output recognize-utterance-response common-lisp:nil
                                 ((input-mode :target-type non-empty-string
                                   :member-name "inputMode" :http-header
                                   "x-amz-lex-input-mode")
                                  (content-type :target-type non-empty-string
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (messages :target-type non-empty-string
                                   :member-name "messages" :http-header
                                   "x-amz-lex-messages")
                                  (interpretations :target-type
                                   non-empty-string :member-name
                                   "interpretations" :http-header
                                   "x-amz-lex-interpretations")
                                  (session-state :target-type non-empty-string
                                   :member-name "sessionState" :http-header
                                   "x-amz-lex-session-state")
                                  (request-attributes :target-type
                                   non-empty-string :member-name
                                   "requestAttributes" :http-header
                                   "x-amz-lex-request-attributes")
                                  (session-id :target-type session-id
                                   :member-name "sessionId" :http-header
                                   "x-amz-lex-session-id")
                                  (input-transcript :target-type
                                   non-empty-string :member-name
                                   "inputTranscript" :http-header
                                   "x-amz-lex-input-transcript")
                                  (audio-stream :target-type blob-stream
                                   :member-name "audioStream" :http-payload
                                   common-lisp:t)
                                  (recognized-bot-member :target-type
                                   non-empty-string :member-name
                                   "recognizedBotMember" :http-header
                                   "x-amz-lex-recognized-bot-member"))
                                 (:shape-name "RecognizeUtteranceResponse"))

(smithy/sdk/shapes:define-structure recognized-bot-member common-lisp:nil
                                    ((bot-id :target-type bot-identifier
                                      :required common-lisp:t :member-name
                                      "botId")
                                     (bot-name :target-type name :member-name
                                      "botName"))
                                    (:shape-name "RecognizedBotMember"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure runtime-hint-details common-lisp:nil
                                    ((runtime-hint-values :target-type
                                      runtime-hint-values-list :member-name
                                      "runtimeHintValues")
                                     (sub-slot-hints :target-type
                                      slot-hints-slot-map :member-name
                                      "subSlotHints"))
                                    (:shape-name "RuntimeHintDetails"))

(smithy/sdk/shapes:define-type runtime-hint-phrase
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure runtime-hint-value common-lisp:nil
                                    ((phrase :target-type runtime-hint-phrase
                                      :required common-lisp:t :member-name
                                      "phrase"))
                                    (:shape-name "RuntimeHintValue"))

(smithy/sdk/shapes:define-list runtime-hint-values-list :member
                               runtime-hint-value)

(smithy/sdk/shapes:define-structure runtime-hints common-lisp:nil
                                    ((slot-hints :target-type
                                      slot-hints-intent-map :member-name
                                      "slotHints"))
                                    (:shape-name "RuntimeHints"))

(smithy/sdk/shapes:define-type sensitive-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sentiment-response common-lisp:nil
                                    ((sentiment :target-type sentiment-type
                                      :member-name "sentiment")
                                     (sentiment-score :target-type
                                      sentiment-score :member-name
                                      "sentimentScore"))
                                    (:shape-name "SentimentResponse"))

(smithy/sdk/shapes:define-structure sentiment-score common-lisp:nil
                                    ((positive :target-type double :member-name
                                      "positive")
                                     (negative :target-type double :member-name
                                      "negative")
                                     (neutral :target-type double :member-name
                                      "neutral")
                                     (mixed :target-type double :member-name
                                      "mixed"))
                                    (:shape-name "SentimentScore"))

(smithy/sdk/shapes:define-enum sentiment-type
    common-lisp:nil
  (:mixed "MIXED")
  (:negative "NEGATIVE")
  (:neutral "NEUTRAL")
  (:positive "POSITIVE"))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-state common-lisp:nil
                                    ((dialog-action :target-type dialog-action
                                      :member-name "dialogAction")
                                     (intent :target-type intent :member-name
                                      "intent")
                                     (active-contexts :target-type
                                      active-contexts-list :member-name
                                      "activeContexts")
                                     (session-attributes :target-type
                                      string-map :member-name
                                      "sessionAttributes")
                                     (originating-request-id :target-type
                                      non-empty-string :member-name
                                      "originatingRequestId")
                                     (runtime-hints :target-type runtime-hints
                                      :member-name "runtimeHints"))
                                    (:shape-name "SessionState"))

(smithy/sdk/shapes:define-enum shape
    common-lisp:nil
  (:scalar "Scalar")
  (:list "List")
  (:composite "Composite"))

(smithy/sdk/shapes:define-structure slot common-lisp:nil
                                    ((value :target-type value :member-name
                                      "value")
                                     (shape :target-type shape :member-name
                                      "shape")
                                     (values :target-type values :member-name
                                      "values")
                                     (sub-slots :target-type slots :member-name
                                      "subSlots"))
                                    (:shape-name "Slot"))

(smithy/sdk/shapes:define-map slot-hints-intent-map :key name :value
                              slot-hints-slot-map)

(smithy/sdk/shapes:define-map slot-hints-slot-map :key name :value
                              runtime-hint-details)

(smithy/sdk/shapes:define-map slots :key non-empty-string :value slot)

(smithy/sdk/shapes:define-input start-conversation-request common-lisp:nil
                                ((bot-id :target-type bot-identifier :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type
                                  bot-alias-identifier :required common-lisp:t
                                  :member-name "botAliasId" :http-label
                                  common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (conversation-mode :target-type
                                  conversation-mode :member-name
                                  "conversationMode" :http-header
                                  "x-amz-lex-conversation-mode")
                                 (request-event-stream :target-type
                                  start-conversation-request-event-stream
                                  :required common-lisp:t :member-name
                                  "requestEventStream" :http-payload
                                  common-lisp:t))
                                (:shape-name "StartConversationRequest"))

(smithy/sdk/shapes:define-union start-conversation-request-event-stream
                                common-lisp:nil
                                ((configuration-event :target-type
                                  configuration-event :member-name
                                  "ConfigurationEvent")
                                 (audio-input-event :target-type
                                  audio-input-event :member-name
                                  "AudioInputEvent")
                                 (dtmfinput-event :target-type dtmfinput-event
                                  :member-name "DTMFInputEvent")
                                 (text-input-event :target-type
                                  text-input-event :member-name
                                  "TextInputEvent")
                                 (playback-completion-event :target-type
                                  playback-completion-event :member-name
                                  "PlaybackCompletionEvent")
                                 (disconnection-event :target-type
                                  disconnection-event :member-name
                                  "DisconnectionEvent"))
                                (:shape-name
                                 "StartConversationRequestEventStream"))

(smithy/sdk/shapes:define-output start-conversation-response common-lisp:nil
                                 ((response-event-stream :target-type
                                   start-conversation-response-event-stream
                                   :member-name "responseEventStream"
                                   :http-payload common-lisp:t))
                                 (:shape-name "StartConversationResponse"))

(smithy/sdk/shapes:define-union start-conversation-response-event-stream
                                common-lisp:nil
                                ((playback-interruption-event :target-type
                                  playback-interruption-event :member-name
                                  "PlaybackInterruptionEvent")
                                 (transcript-event :target-type
                                  transcript-event :member-name
                                  "TranscriptEvent")
                                 (intent-result-event :target-type
                                  intent-result-event :member-name
                                  "IntentResultEvent")
                                 (text-response-event :target-type
                                  text-response-event :member-name
                                  "TextResponseEvent")
                                 (audio-response-event :target-type
                                  audio-response-event :member-name
                                  "AudioResponseEvent")
                                 (heartbeat-event :target-type heartbeat-event
                                  :member-name "HeartbeatEvent")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "AccessDeniedException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "ResourceNotFoundException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "ValidationException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "ThrottlingException")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "InternalServerException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "ConflictException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "DependencyFailedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "BadGatewayException"))
                                (:shape-name
                                 "StartConversationResponseEventStream"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member non-empty-string)

(smithy/sdk/shapes:define-map string-map :key non-empty-string :value string)

(smithy/sdk/shapes:define-enum style-type
    common-lisp:nil
  (:default "Default")
  (:spell-by-letter "SpellByLetter")
  (:spell-by-word "SpellByWord"))

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-input-event common-lisp:nil
                                    ((text :target-type text :required
                                      common-lisp:t :member-name "text")
                                     (event-id :target-type event-id
                                      :member-name "eventId")
                                     (client-timestamp-millis :target-type
                                      epoch-millis :member-name
                                      "clientTimestampMillis"))
                                    (:shape-name "TextInputEvent"))

(smithy/sdk/shapes:define-structure text-response-event common-lisp:nil
                                    ((messages :target-type messages
                                      :member-name "messages")
                                     (event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "TextResponseEvent"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure transcript-event common-lisp:nil
                                    ((transcript :target-type string
                                      :member-name "transcript")
                                     (event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "TranscriptEvent"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure value common-lisp:nil
                                    ((original-value :target-type
                                      non-empty-string :member-name
                                      "originalValue")
                                     (interpreted-value :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "interpretedValue")
                                     (resolved-values :target-type string-list
                                      :member-name "resolvedValues"))
                                    (:shape-name "Value"))

(smithy/sdk/shapes:define-list values :member slot)

(smithy/sdk/operation:define-operation delete-session :shape-name
                                       "DeleteSession" :input
                                       delete-session-request :output
                                       delete-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-session :shape-name "PutSession"
                                       :input put-session-request :output
                                       put-session-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation recognize-text :shape-name
                                       "RecognizeText" :input
                                       recognize-text-request :output
                                       recognize-text-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text"
                                       :code 200)

(smithy/sdk/operation:define-operation recognize-utterance :shape-name
                                       "RecognizeUtterance" :input
                                       recognize-utterance-request :output
                                       recognize-utterance-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance"
                                       :code 200)

(smithy/sdk/operation:define-operation start-conversation :shape-name
                                       "StartConversation" :input
                                       start-conversation-request :output
                                       start-conversation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/conversation"
                                       :code 200)
