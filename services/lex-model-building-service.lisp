(uiop/package:define-package #:pira/lex-model-building-service (:use)
                             (:export #:awsdeep-sense-model-building-service
                              #:access-denied-exception #:alias-name
                              #:alias-name-or-list-all #:amazon-resource-name
                              #:bad-request-exception #:blob #:boolean
                              #:bot-alias-metadata #:bot-alias-metadata-list
                              #:bot-channel-association
                              #:bot-channel-association-list #:bot-channel-name
                              #:bot-metadata #:bot-metadata-list #:bot-name
                              #:bot-versions #:builtin-intent-metadata
                              #:builtin-intent-metadata-list
                              #:builtin-intent-signature #:builtin-intent-slot
                              #:builtin-intent-slot-list
                              #:builtin-slot-type-metadata
                              #:builtin-slot-type-metadata-list
                              #:builtin-slot-type-signature
                              #:channel-configuration-map #:channel-status
                              #:channel-type #:code-hook #:confidence-threshold
                              #:conflict-exception #:content-string
                              #:content-type #:context-time-to-live-in-seconds
                              #:context-turns-to-live
                              #:conversation-logs-request
                              #:conversation-logs-response #:count
                              #:create-bot-version #:create-intent-version
                              #:create-slot-type-version
                              #:custom-or-builtin-slot-type-name #:delete-bot
                              #:delete-bot-alias
                              #:delete-bot-channel-association
                              #:delete-bot-version #:delete-intent
                              #:delete-intent-version #:delete-slot-type
                              #:delete-slot-type-version #:delete-utterances
                              #:description #:destination #:enumeration-value
                              #:enumeration-values #:export-status
                              #:export-type #:follow-up-prompt
                              #:fulfillment-activity
                              #:fulfillment-activity-type #:get-bot
                              #:get-bot-alias #:get-bot-aliases
                              #:get-bot-channel-association
                              #:get-bot-channel-associations #:get-bot-versions
                              #:get-bots #:get-builtin-intent
                              #:get-builtin-intents #:get-builtin-slot-types
                              #:get-export #:get-import #:get-intent
                              #:get-intent-versions #:get-intents
                              #:get-migration #:get-migrations #:get-slot-type
                              #:get-slot-type-versions #:get-slot-types
                              #:get-utterances-view #:group-number
                              #:iam-role-arn #:import-status #:input-context
                              #:input-context-list #:input-context-name
                              #:intent #:intent-list #:intent-metadata
                              #:intent-metadata-list #:intent-name
                              #:intent-utterance-list
                              #:internal-failure-exception
                              #:kendra-configuration #:kendra-index-arn
                              #:kms-key-arn #:lambda-arn
                              #:limit-exceeded-exception #:list-of-utterance
                              #:list-tags-for-resource #:lists-of-utterances
                              #:locale #:locale-list #:log-settings-request
                              #:log-settings-request-list
                              #:log-settings-response
                              #:log-settings-response-list #:log-type
                              #:max-results #:merge-strategy #:message
                              #:message-list #:message-version
                              #:migration-alert #:migration-alert-detail
                              #:migration-alert-details
                              #:migration-alert-message
                              #:migration-alert-reference-url
                              #:migration-alert-reference-urls
                              #:migration-alert-type #:migration-alerts
                              #:migration-id #:migration-sort-attribute
                              #:migration-status #:migration-strategy
                              #:migration-summary #:migration-summary-list
                              #:name #:next-token #:not-found-exception
                              #:numerical-version #:obfuscation-setting
                              #:output-context #:output-context-list
                              #:output-context-name
                              #:precondition-failed-exception #:priority
                              #:process-behavior #:prompt #:prompt-max-attempts
                              #:put-bot #:put-bot-alias #:put-intent
                              #:put-slot-type #:query-filter-string
                              #:reference-type #:regex-pattern #:resource-arn
                              #:resource-in-use-exception #:resource-prefix
                              #:resource-reference #:resource-type
                              #:response-card #:session-ttl #:slot
                              #:slot-constraint #:slot-default-value
                              #:slot-default-value-list
                              #:slot-default-value-spec
                              #:slot-default-value-string #:slot-list
                              #:slot-name #:slot-type-configuration
                              #:slot-type-configurations #:slot-type-metadata
                              #:slot-type-metadata-list #:slot-type-name
                              #:slot-type-regex-configuration
                              #:slot-utterance-list
                              #:slot-value-selection-strategy #:sort-order
                              #:start-import #:start-migration #:statement
                              #:status #:status-type #:string #:string-list
                              #:synonym-list #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value #:timestamp
                              #:untag-resource #:user-id #:utterance
                              #:utterance-data #:utterance-list
                              #:utterance-string #:v2bot-id #:v2bot-name
                              #:value #:version #:role-arn
                              #:lex-model-building-service-error))
(common-lisp:in-package #:pira/lex-model-building-service)

(common-lisp:define-condition lex-model-building-service-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsdeep-sense-model-building-service
                                   :shape-name
                                   "AWSDeepSenseModelBuildingService" :version
                                   "2017-04-19" :title
                                   "Amazon Lex Model Building Service"
                                   :operations
                                   '(create-bot-version create-intent-version
                                     create-slot-type-version delete-bot
                                     delete-bot-alias
                                     delete-bot-channel-association
                                     delete-bot-version delete-intent
                                     delete-intent-version delete-slot-type
                                     delete-slot-type-version delete-utterances
                                     get-bot get-bot-alias get-bot-aliases
                                     get-bot-channel-association
                                     get-bot-channel-associations get-bots
                                     get-bot-versions get-builtin-intent
                                     get-builtin-intents get-builtin-slot-types
                                     get-export get-import get-intent
                                     get-intents get-intent-versions
                                     get-migration get-migrations get-slot-type
                                     get-slot-types get-slot-type-versions
                                     get-utterances-view list-tags-for-resource
                                     put-bot put-bot-alias put-intent
                                     put-slot-type start-import start-migration
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Lex Model Building Service")
                                      ("arnNamespace" . "lex")
                                      ("cloudFormationName"
                                       . "LexModelBuildingService")
                                      ("cloudTrailEventSource"
                                       . "lexmodelbuildingservice.amazonaws.com")
                                      ("docId" . "lex-models-2017-04-19")
                                      ("endpointPrefix" . "models.lex"))
                                     ("aws.auth#sigv4" ("name" . "lex"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type alias-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias-name-or-list-all
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bot-alias-metadata common-lisp:nil
                                    ((name :target-type alias-name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-version :target-type version
                                      :member-name "botVersion")
                                     (bot-name :target-type bot-name
                                      :member-name "botName")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (checksum :target-type string :member-name
                                      "checksum")
                                     (conversation-logs :target-type
                                      conversation-logs-response :member-name
                                      "conversationLogs"))
                                    (:shape-name "BotAliasMetadata"))

(smithy/sdk/shapes:define-list bot-alias-metadata-list :member
                               bot-alias-metadata)

(smithy/sdk/shapes:define-structure bot-channel-association common-lisp:nil
                                    ((name :target-type bot-channel-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-alias :target-type alias-name
                                      :member-name "botAlias")
                                     (bot-name :target-type bot-name
                                      :member-name "botName")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (type :target-type channel-type
                                      :member-name "type")
                                     (bot-configuration :target-type
                                      channel-configuration-map :member-name
                                      "botConfiguration")
                                     (status :target-type channel-status
                                      :member-name "status")
                                     (failure-reason :target-type string
                                      :member-name "failureReason"))
                                    (:shape-name "BotChannelAssociation"))

(smithy/sdk/shapes:define-list bot-channel-association-list :member
                               bot-channel-association)

(smithy/sdk/shapes:define-type bot-channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bot-metadata common-lisp:nil
                                    ((name :target-type bot-name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "BotMetadata"))

(smithy/sdk/shapes:define-list bot-metadata-list :member bot-metadata)

(smithy/sdk/shapes:define-type bot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list bot-versions :member version)

(smithy/sdk/shapes:define-structure builtin-intent-metadata common-lisp:nil
                                    ((signature :target-type
                                      builtin-intent-signature :member-name
                                      "signature")
                                     (supported-locales :target-type
                                      locale-list :member-name
                                      "supportedLocales"))
                                    (:shape-name "BuiltinIntentMetadata"))

(smithy/sdk/shapes:define-list builtin-intent-metadata-list :member
                               builtin-intent-metadata)

(smithy/sdk/shapes:define-type builtin-intent-signature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure builtin-intent-slot common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name"))
                                    (:shape-name "BuiltinIntentSlot"))

(smithy/sdk/shapes:define-list builtin-intent-slot-list :member
                               builtin-intent-slot)

(smithy/sdk/shapes:define-structure builtin-slot-type-metadata common-lisp:nil
                                    ((signature :target-type
                                      builtin-slot-type-signature :member-name
                                      "signature")
                                     (supported-locales :target-type
                                      locale-list :member-name
                                      "supportedLocales"))
                                    (:shape-name "BuiltinSlotTypeMetadata"))

(smithy/sdk/shapes:define-list builtin-slot-type-metadata-list :member
                               builtin-slot-type-metadata)

(smithy/sdk/shapes:define-type builtin-slot-type-signature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map channel-configuration-map :key string :value
                              string)

(smithy/sdk/shapes:define-enum channel-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:created "CREATED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum channel-type
    common-lisp:nil
  (:facebook "Facebook")
  (:slack "Slack")
  (:twilio-sms "Twilio-Sms")
  (:kik "Kik"))

(smithy/sdk/shapes:define-structure code-hook common-lisp:nil
                                    ((uri :target-type lambda-arn :required
                                      common-lisp:t :member-name "uri")
                                     (message-version :target-type
                                      message-version :required common-lisp:t
                                      :member-name "messageVersion"))
                                    (:shape-name "CodeHook"))

(smithy/sdk/shapes:define-type confidence-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type content-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:plain-text "PlainText")
  (:ssml "SSML")
  (:custom-payload "CustomPayload"))

(smithy/sdk/shapes:define-type context-time-to-live-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type context-turns-to-live
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure conversation-logs-request common-lisp:nil
                                    ((log-settings :target-type
                                      log-settings-request-list :required
                                      common-lisp:t :member-name "logSettings")
                                     (iam-role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "iamRoleArn"))
                                    (:shape-name "ConversationLogsRequest"))

(smithy/sdk/shapes:define-structure conversation-logs-response common-lisp:nil
                                    ((log-settings :target-type
                                      log-settings-response-list :member-name
                                      "logSettings")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "iamRoleArn"))
                                    (:shape-name "ConversationLogsResponse"))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-bot-version-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum"))
                                (:shape-name "CreateBotVersionRequest"))

(smithy/sdk/shapes:define-output create-bot-version-response common-lisp:nil
                                 ((name :target-type bot-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (intents :target-type intent-list
                                   :member-name "intents")
                                  (clarification-prompt :target-type prompt
                                   :member-name "clarificationPrompt")
                                  (abort-statement :target-type statement
                                   :member-name "abortStatement")
                                  (status :target-type status :member-name
                                   "status")
                                  (failure-reason :target-type string
                                   :member-name "failureReason")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (voice-id :target-type string :member-name
                                   "voiceId")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (version :target-type version :member-name
                                   "version")
                                  (locale :target-type locale :member-name
                                   "locale")
                                  (child-directed :target-type boolean
                                   :member-name "childDirected")
                                  (enable-model-improvements :target-type
                                   boolean :member-name
                                   "enableModelImprovements")
                                  (detect-sentiment :target-type boolean
                                   :member-name "detectSentiment"))
                                 (:shape-name "CreateBotVersionResponse"))

(smithy/sdk/shapes:define-input create-intent-version-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum"))
                                (:shape-name "CreateIntentVersionRequest"))

(smithy/sdk/shapes:define-output create-intent-version-response common-lisp:nil
                                 ((name :target-type intent-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (slots :target-type slot-list :member-name
                                   "slots")
                                  (sample-utterances :target-type
                                   intent-utterance-list :member-name
                                   "sampleUtterances")
                                  (confirmation-prompt :target-type prompt
                                   :member-name "confirmationPrompt")
                                  (rejection-statement :target-type statement
                                   :member-name "rejectionStatement")
                                  (follow-up-prompt :target-type
                                   follow-up-prompt :member-name
                                   "followUpPrompt")
                                  (conclusion-statement :target-type statement
                                   :member-name "conclusionStatement")
                                  (dialog-code-hook :target-type code-hook
                                   :member-name "dialogCodeHook")
                                  (fulfillment-activity :target-type
                                   fulfillment-activity :member-name
                                   "fulfillmentActivity")
                                  (parent-intent-signature :target-type
                                   builtin-intent-signature :member-name
                                   "parentIntentSignature")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (input-contexts :target-type
                                   input-context-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-context-list :member-name
                                   "outputContexts"))
                                 (:shape-name "CreateIntentVersionResponse"))

(smithy/sdk/shapes:define-input create-slot-type-version-request
                                common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum"))
                                (:shape-name "CreateSlotTypeVersionRequest"))

(smithy/sdk/shapes:define-output create-slot-type-version-response
                                 common-lisp:nil
                                 ((name :target-type slot-type-name
                                   :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (enumeration-values :target-type
                                   enumeration-values :member-name
                                   "enumerationValues")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (value-selection-strategy :target-type
                                   slot-value-selection-strategy :member-name
                                   "valueSelectionStrategy")
                                  (parent-slot-type-signature :target-type
                                   custom-or-builtin-slot-type-name
                                   :member-name "parentSlotTypeSignature")
                                  (slot-type-configurations :target-type
                                   slot-type-configurations :member-name
                                   "slotTypeConfigurations"))
                                 (:shape-name "CreateSlotTypeVersionResponse"))

(smithy/sdk/shapes:define-type custom-or-builtin-slot-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-bot-alias-request common-lisp:nil
                                ((name :target-type alias-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBotAliasRequest"))

(smithy/sdk/shapes:define-input delete-bot-channel-association-request
                                common-lisp:nil
                                ((name :target-type bot-channel-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type alias-name :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteBotChannelAssociationRequest"))

(smithy/sdk/shapes:define-input delete-bot-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteBotRequest"))

(smithy/sdk/shapes:define-input delete-bot-version-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "version" :http-label common-lisp:t))
                                (:shape-name "DeleteBotVersionRequest"))

(smithy/sdk/shapes:define-input delete-intent-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteIntentRequest"))

(smithy/sdk/shapes:define-input delete-intent-version-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "version" :http-label common-lisp:t))
                                (:shape-name "DeleteIntentVersionRequest"))

(smithy/sdk/shapes:define-input delete-slot-type-request common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSlotTypeRequest"))

(smithy/sdk/shapes:define-input delete-slot-type-version-request
                                common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "version" :http-label common-lisp:t))
                                (:shape-name "DeleteSlotTypeVersionRequest"))

(smithy/sdk/shapes:define-input delete-utterances-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUtterancesRequest"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum destination
    common-lisp:nil
  (:cloudwatch-logs "CLOUDWATCH_LOGS")
  (:s3 "S3"))

(smithy/sdk/shapes:define-structure enumeration-value common-lisp:nil
                                    ((value :target-type value :required
                                      common-lisp:t :member-name "value")
                                     (synonyms :target-type synonym-list
                                      :member-name "synonyms"))
                                    (:shape-name "EnumerationValue"))

(smithy/sdk/shapes:define-list enumeration-values :member enumeration-value)

(smithy/sdk/shapes:define-enum export-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum export-type
    common-lisp:nil
  (:alexa-skills-kit "ALEXA_SKILLS_KIT")
  (:lex "LEX"))

(smithy/sdk/shapes:define-structure follow-up-prompt common-lisp:nil
                                    ((prompt :target-type prompt :required
                                      common-lisp:t :member-name "prompt")
                                     (rejection-statement :target-type
                                      statement :required common-lisp:t
                                      :member-name "rejectionStatement"))
                                    (:shape-name "FollowUpPrompt"))

(smithy/sdk/shapes:define-structure fulfillment-activity common-lisp:nil
                                    ((type :target-type
                                      fulfillment-activity-type :required
                                      common-lisp:t :member-name "type")
                                     (code-hook :target-type code-hook
                                      :member-name "codeHook"))
                                    (:shape-name "FulfillmentActivity"))

(smithy/sdk/shapes:define-enum fulfillment-activity-type
    common-lisp:nil
  (:return-intent "ReturnIntent")
  (:code-hook "CodeHook"))

(smithy/sdk/shapes:define-input get-bot-alias-request common-lisp:nil
                                ((name :target-type alias-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBotAliasRequest"))

(smithy/sdk/shapes:define-output get-bot-alias-response common-lisp:nil
                                 ((name :target-type alias-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type version
                                   :member-name "botVersion")
                                  (bot-name :target-type bot-name :member-name
                                   "botName")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (conversation-logs :target-type
                                   conversation-logs-response :member-name
                                   "conversationLogs"))
                                 (:shape-name "GetBotAliasResponse"))

(smithy/sdk/shapes:define-input get-bot-aliases-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-contains :target-type alias-name
                                  :member-name "nameContains" :http-query
                                  "nameContains"))
                                (:shape-name "GetBotAliasesRequest"))

(smithy/sdk/shapes:define-output get-bot-aliases-response common-lisp:nil
                                 ((bot-aliases :target-type
                                   bot-alias-metadata-list :member-name
                                   "BotAliases")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetBotAliasesResponse"))

(smithy/sdk/shapes:define-input get-bot-channel-association-request
                                common-lisp:nil
                                ((name :target-type bot-channel-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type alias-name :required
                                  common-lisp:t :member-name "botAlias"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBotChannelAssociationRequest"))

(smithy/sdk/shapes:define-output get-bot-channel-association-response
                                 common-lisp:nil
                                 ((name :target-type bot-channel-name
                                   :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-alias :target-type alias-name
                                   :member-name "botAlias")
                                  (bot-name :target-type bot-name :member-name
                                   "botName")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (type :target-type channel-type :member-name
                                   "type")
                                  (bot-configuration :target-type
                                   channel-configuration-map :member-name
                                   "botConfiguration")
                                  (status :target-type channel-status
                                   :member-name "status")
                                  (failure-reason :target-type string
                                   :member-name "failureReason"))
                                 (:shape-name
                                  "GetBotChannelAssociationResponse"))

(smithy/sdk/shapes:define-input get-bot-channel-associations-request
                                common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-alias :target-type alias-name-or-list-all
                                  :required common-lisp:t :member-name
                                  "botAlias" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-contains :target-type bot-channel-name
                                  :member-name "nameContains" :http-query
                                  "nameContains"))
                                (:shape-name
                                 "GetBotChannelAssociationsRequest"))

(smithy/sdk/shapes:define-output get-bot-channel-associations-response
                                 common-lisp:nil
                                 ((bot-channel-associations :target-type
                                   bot-channel-association-list :member-name
                                   "botChannelAssociations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetBotChannelAssociationsResponse"))

(smithy/sdk/shapes:define-input get-bot-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-or-alias :target-type string
                                  :required common-lisp:t :member-name
                                  "versionOrAlias" :http-label common-lisp:t))
                                (:shape-name "GetBotRequest"))

(smithy/sdk/shapes:define-output get-bot-response common-lisp:nil
                                 ((name :target-type bot-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (intents :target-type intent-list
                                   :member-name "intents")
                                  (enable-model-improvements :target-type
                                   boolean :member-name
                                   "enableModelImprovements")
                                  (nlu-intent-confidence-threshold :target-type
                                   confidence-threshold :member-name
                                   "nluIntentConfidenceThreshold")
                                  (clarification-prompt :target-type prompt
                                   :member-name "clarificationPrompt")
                                  (abort-statement :target-type statement
                                   :member-name "abortStatement")
                                  (status :target-type status :member-name
                                   "status")
                                  (failure-reason :target-type string
                                   :member-name "failureReason")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (voice-id :target-type string :member-name
                                   "voiceId")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (version :target-type version :member-name
                                   "version")
                                  (locale :target-type locale :member-name
                                   "locale")
                                  (child-directed :target-type boolean
                                   :member-name "childDirected")
                                  (detect-sentiment :target-type boolean
                                   :member-name "detectSentiment"))
                                 (:shape-name "GetBotResponse"))

(smithy/sdk/shapes:define-input get-bot-versions-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetBotVersionsRequest"))

(smithy/sdk/shapes:define-output get-bot-versions-response common-lisp:nil
                                 ((bots :target-type bot-metadata-list
                                   :member-name "bots")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetBotVersionsResponse"))

(smithy/sdk/shapes:define-input get-bots-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-contains :target-type bot-name
                                  :member-name "nameContains" :http-query
                                  "nameContains"))
                                (:shape-name "GetBotsRequest"))

(smithy/sdk/shapes:define-output get-bots-response common-lisp:nil
                                 ((bots :target-type bot-metadata-list
                                   :member-name "bots")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetBotsResponse"))

(smithy/sdk/shapes:define-input get-builtin-intent-request common-lisp:nil
                                ((signature :target-type
                                  builtin-intent-signature :required
                                  common-lisp:t :member-name "signature"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBuiltinIntentRequest"))

(smithy/sdk/shapes:define-output get-builtin-intent-response common-lisp:nil
                                 ((signature :target-type
                                   builtin-intent-signature :member-name
                                   "signature")
                                  (supported-locales :target-type locale-list
                                   :member-name "supportedLocales")
                                  (slots :target-type builtin-intent-slot-list
                                   :member-name "slots"))
                                 (:shape-name "GetBuiltinIntentResponse"))

(smithy/sdk/shapes:define-input get-builtin-intents-request common-lisp:nil
                                ((locale :target-type locale :member-name
                                  "locale" :http-query "locale")
                                 (signature-contains :target-type string
                                  :member-name "signatureContains" :http-query
                                  "signatureContains")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetBuiltinIntentsRequest"))

(smithy/sdk/shapes:define-output get-builtin-intents-response common-lisp:nil
                                 ((intents :target-type
                                   builtin-intent-metadata-list :member-name
                                   "intents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetBuiltinIntentsResponse"))

(smithy/sdk/shapes:define-input get-builtin-slot-types-request common-lisp:nil
                                ((locale :target-type locale :member-name
                                  "locale" :http-query "locale")
                                 (signature-contains :target-type string
                                  :member-name "signatureContains" :http-query
                                  "signatureContains")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetBuiltinSlotTypesRequest"))

(smithy/sdk/shapes:define-output get-builtin-slot-types-response
                                 common-lisp:nil
                                 ((slot-types :target-type
                                   builtin-slot-type-metadata-list :member-name
                                   "slotTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetBuiltinSlotTypesResponse"))

(smithy/sdk/shapes:define-input get-export-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name" :http-query
                                  "name")
                                 (version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "version" :http-query "version")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-query "resourceType")
                                 (export-type :target-type export-type
                                  :required common-lisp:t :member-name
                                  "exportType" :http-query "exportType"))
                                (:shape-name "GetExportRequest"))

(smithy/sdk/shapes:define-output get-export-response common-lisp:nil
                                 ((name :target-type name :member-name "name")
                                  (version :target-type numerical-version
                                   :member-name "version")
                                  (resource-type :target-type resource-type
                                   :member-name "resourceType")
                                  (export-type :target-type export-type
                                   :member-name "exportType")
                                  (export-status :target-type export-status
                                   :member-name "exportStatus")
                                  (failure-reason :target-type string
                                   :member-name "failureReason")
                                  (url :target-type string :member-name "url"))
                                 (:shape-name "GetExportResponse"))

(smithy/sdk/shapes:define-input get-import-request common-lisp:nil
                                ((import-id :target-type string :required
                                  common-lisp:t :member-name "importId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetImportRequest"))

(smithy/sdk/shapes:define-output get-import-response common-lisp:nil
                                 ((name :target-type name :member-name "name")
                                  (resource-type :target-type resource-type
                                   :member-name "resourceType")
                                  (merge-strategy :target-type merge-strategy
                                   :member-name "mergeStrategy")
                                  (import-id :target-type string :member-name
                                   "importId")
                                  (import-status :target-type import-status
                                   :member-name "importStatus")
                                  (failure-reason :target-type string-list
                                   :member-name "failureReason")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate"))
                                 (:shape-name "GetImportResponse"))

(smithy/sdk/shapes:define-input get-intent-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIntentRequest"))

(smithy/sdk/shapes:define-output get-intent-response common-lisp:nil
                                 ((name :target-type intent-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (slots :target-type slot-list :member-name
                                   "slots")
                                  (sample-utterances :target-type
                                   intent-utterance-list :member-name
                                   "sampleUtterances")
                                  (confirmation-prompt :target-type prompt
                                   :member-name "confirmationPrompt")
                                  (rejection-statement :target-type statement
                                   :member-name "rejectionStatement")
                                  (follow-up-prompt :target-type
                                   follow-up-prompt :member-name
                                   "followUpPrompt")
                                  (conclusion-statement :target-type statement
                                   :member-name "conclusionStatement")
                                  (dialog-code-hook :target-type code-hook
                                   :member-name "dialogCodeHook")
                                  (fulfillment-activity :target-type
                                   fulfillment-activity :member-name
                                   "fulfillmentActivity")
                                  (parent-intent-signature :target-type
                                   builtin-intent-signature :member-name
                                   "parentIntentSignature")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (input-contexts :target-type
                                   input-context-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-context-list :member-name
                                   "outputContexts"))
                                 (:shape-name "GetIntentResponse"))

(smithy/sdk/shapes:define-input get-intent-versions-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetIntentVersionsRequest"))

(smithy/sdk/shapes:define-output get-intent-versions-response common-lisp:nil
                                 ((intents :target-type intent-metadata-list
                                   :member-name "intents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetIntentVersionsResponse"))

(smithy/sdk/shapes:define-input get-intents-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-contains :target-type intent-name
                                  :member-name "nameContains" :http-query
                                  "nameContains"))
                                (:shape-name "GetIntentsRequest"))

(smithy/sdk/shapes:define-output get-intents-response common-lisp:nil
                                 ((intents :target-type intent-metadata-list
                                   :member-name "intents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetIntentsResponse"))

(smithy/sdk/shapes:define-input get-migration-request common-lisp:nil
                                ((migration-id :target-type migration-id
                                  :required common-lisp:t :member-name
                                  "migrationId" :http-label common-lisp:t))
                                (:shape-name "GetMigrationRequest"))

(smithy/sdk/shapes:define-output get-migration-response common-lisp:nil
                                 ((migration-id :target-type migration-id
                                   :member-name "migrationId")
                                  (v1bot-name :target-type bot-name
                                   :member-name "v1BotName")
                                  (v1bot-version :target-type version
                                   :member-name "v1BotVersion")
                                  (v1bot-locale :target-type locale
                                   :member-name "v1BotLocale")
                                  (v2bot-id :target-type v2bot-id :member-name
                                   "v2BotId")
                                  (v2bot-role :target-type iam-role-arn
                                   :member-name "v2BotRole")
                                  (migration-status :target-type
                                   migration-status :member-name
                                   "migrationStatus")
                                  (migration-strategy :target-type
                                   migration-strategy :member-name
                                   "migrationStrategy")
                                  (migration-timestamp :target-type timestamp
                                   :member-name "migrationTimestamp")
                                  (alerts :target-type migration-alerts
                                   :member-name "alerts"))
                                 (:shape-name "GetMigrationResponse"))

(smithy/sdk/shapes:define-input get-migrations-request common-lisp:nil
                                ((sort-by-attribute :target-type
                                  migration-sort-attribute :member-name
                                  "sortByAttribute" :http-query
                                  "sortByAttribute")
                                 (sort-by-order :target-type sort-order
                                  :member-name "sortByOrder" :http-query
                                  "sortByOrder")
                                 (v1bot-name-contains :target-type bot-name
                                  :member-name "v1BotNameContains" :http-query
                                  "v1BotNameContains")
                                 (migration-status-equals :target-type
                                  migration-status :member-name
                                  "migrationStatusEquals" :http-query
                                  "migrationStatusEquals")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetMigrationsRequest"))

(smithy/sdk/shapes:define-output get-migrations-response common-lisp:nil
                                 ((migration-summaries :target-type
                                   migration-summary-list :member-name
                                   "migrationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetMigrationsResponse"))

(smithy/sdk/shapes:define-input get-slot-type-request common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSlotTypeRequest"))

(smithy/sdk/shapes:define-output get-slot-type-response common-lisp:nil
                                 ((name :target-type slot-type-name
                                   :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (enumeration-values :target-type
                                   enumeration-values :member-name
                                   "enumerationValues")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (value-selection-strategy :target-type
                                   slot-value-selection-strategy :member-name
                                   "valueSelectionStrategy")
                                  (parent-slot-type-signature :target-type
                                   custom-or-builtin-slot-type-name
                                   :member-name "parentSlotTypeSignature")
                                  (slot-type-configurations :target-type
                                   slot-type-configurations :member-name
                                   "slotTypeConfigurations"))
                                 (:shape-name "GetSlotTypeResponse"))

(smithy/sdk/shapes:define-input get-slot-type-versions-request common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetSlotTypeVersionsRequest"))

(smithy/sdk/shapes:define-output get-slot-type-versions-response
                                 common-lisp:nil
                                 ((slot-types :target-type
                                   slot-type-metadata-list :member-name
                                   "slotTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetSlotTypeVersionsResponse"))

(smithy/sdk/shapes:define-input get-slot-types-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-contains :target-type slot-type-name
                                  :member-name "nameContains" :http-query
                                  "nameContains"))
                                (:shape-name "GetSlotTypesRequest"))

(smithy/sdk/shapes:define-output get-slot-types-response common-lisp:nil
                                 ((slot-types :target-type
                                   slot-type-metadata-list :member-name
                                   "slotTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetSlotTypesResponse"))

(smithy/sdk/shapes:define-input get-utterances-view-request common-lisp:nil
                                ((bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (bot-versions :target-type bot-versions
                                  :required common-lisp:t :member-name
                                  "botVersions" :http-query "bot_versions")
                                 (status-type :target-type status-type
                                  :required common-lisp:t :member-name
                                  "statusType" :http-query "status_type"))
                                (:shape-name "GetUtterancesViewRequest"))

(smithy/sdk/shapes:define-output get-utterances-view-response common-lisp:nil
                                 ((bot-name :target-type bot-name :member-name
                                   "botName")
                                  (utterances :target-type lists-of-utterances
                                   :member-name "utterances"))
                                 (:shape-name "GetUtterancesViewResponse"))

(smithy/sdk/shapes:define-type group-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum import-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure input-context common-lisp:nil
                                    ((name :target-type input-context-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "InputContext"))

(smithy/sdk/shapes:define-list input-context-list :member input-context)

(smithy/sdk/shapes:define-type input-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure intent common-lisp:nil
                                    ((intent-name :target-type intent-name
                                      :required common-lisp:t :member-name
                                      "intentName")
                                     (intent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "intentVersion"))
                                    (:shape-name "Intent"))

(smithy/sdk/shapes:define-list intent-list :member intent)

(smithy/sdk/shapes:define-structure intent-metadata common-lisp:nil
                                    ((name :target-type intent-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "IntentMetadata"))

(smithy/sdk/shapes:define-list intent-metadata-list :member intent-metadata)

(smithy/sdk/shapes:define-type intent-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list intent-utterance-list :member utterance)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-structure kendra-configuration common-lisp:nil
                                    ((kendra-index :target-type
                                      kendra-index-arn :required common-lisp:t
                                      :member-name "kendraIndex")
                                     (query-filter-string :target-type
                                      query-filter-string :member-name
                                      "queryFilterString")
                                     (role :target-type role-arn :required
                                      common-lisp:t :member-name "role"))
                                    (:shape-name "KendraConfiguration"))

(smithy/sdk/shapes:define-type kendra-index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-list list-of-utterance :member utterance-data)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-list lists-of-utterances :member utterance-list)

(smithy/sdk/shapes:define-enum locale
    common-lisp:nil
  (:de-de "de-DE")
  (:en-au "en-AU")
  (:en-gb "en-GB")
  (:en-in "en-IN")
  (:en-us "en-US")
  (:es-419 "es-419")
  (:es-es "es-ES")
  (:es-us "es-US")
  (:fr-fr "fr-FR")
  (:fr-ca "fr-CA")
  (:it-it "it-IT")
  (:ja-jp "ja-JP")
  (:ko-kr "ko-KR"))

(smithy/sdk/shapes:define-list locale-list :member locale)

(smithy/sdk/shapes:define-structure log-settings-request common-lisp:nil
                                    ((log-type :target-type log-type :required
                                      common-lisp:t :member-name "logType")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "LogSettingsRequest"))

(smithy/sdk/shapes:define-list log-settings-request-list :member
                               log-settings-request)

(smithy/sdk/shapes:define-structure log-settings-response common-lisp:nil
                                    ((log-type :target-type log-type
                                      :member-name "logType")
                                     (destination :target-type destination
                                      :member-name "destination")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (resource-prefix :target-type
                                      resource-prefix :member-name
                                      "resourcePrefix"))
                                    (:shape-name "LogSettingsResponse"))

(smithy/sdk/shapes:define-list log-settings-response-list :member
                               log-settings-response)

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:audio "AUDIO")
  (:text "TEXT"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum merge-strategy
    common-lisp:nil
  (:overwrite-latest "OVERWRITE_LATEST")
  (:fail-on-conflict "FAIL_ON_CONFLICT"))

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "contentType")
                                     (content :target-type content-string
                                      :required common-lisp:t :member-name
                                      "content")
                                     (group-number :target-type group-number
                                      :member-name "groupNumber"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-list message-list :member message)

(smithy/sdk/shapes:define-type message-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure migration-alert common-lisp:nil
                                    ((type :target-type migration-alert-type
                                      :member-name "type")
                                     (message :target-type
                                      migration-alert-message :member-name
                                      "message")
                                     (details :target-type
                                      migration-alert-details :member-name
                                      "details")
                                     (reference-urls :target-type
                                      migration-alert-reference-urls
                                      :member-name "referenceURLs"))
                                    (:shape-name "MigrationAlert"))

(smithy/sdk/shapes:define-type migration-alert-detail
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list migration-alert-details :member
                               migration-alert-detail)

(smithy/sdk/shapes:define-type migration-alert-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type migration-alert-reference-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list migration-alert-reference-urls :member
                               migration-alert-reference-url)

(smithy/sdk/shapes:define-enum migration-alert-type
    common-lisp:nil
  (:error "ERROR")
  (:warn "WARN"))

(smithy/sdk/shapes:define-list migration-alerts :member migration-alert)

(smithy/sdk/shapes:define-type migration-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum migration-sort-attribute
    common-lisp:nil
  (:v1-bot-name "V1_BOT_NAME")
  (:migration-date-time "MIGRATION_DATE_TIME"))

(smithy/sdk/shapes:define-enum migration-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum migration-strategy
    common-lisp:nil
  (:create-new "CREATE_NEW")
  (:update-existing "UPDATE_EXISTING"))

(smithy/sdk/shapes:define-structure migration-summary common-lisp:nil
                                    ((migration-id :target-type migration-id
                                      :member-name "migrationId")
                                     (v1bot-name :target-type bot-name
                                      :member-name "v1BotName")
                                     (v1bot-version :target-type version
                                      :member-name "v1BotVersion")
                                     (v1bot-locale :target-type locale
                                      :member-name "v1BotLocale")
                                     (v2bot-id :target-type v2bot-id
                                      :member-name "v2BotId")
                                     (v2bot-role :target-type iam-role-arn
                                      :member-name "v2BotRole")
                                     (migration-status :target-type
                                      migration-status :member-name
                                      "migrationStatus")
                                     (migration-strategy :target-type
                                      migration-strategy :member-name
                                      "migrationStrategy")
                                     (migration-timestamp :target-type
                                      timestamp :member-name
                                      "migrationTimestamp"))
                                    (:shape-name "MigrationSummary"))

(smithy/sdk/shapes:define-list migration-summary-list :member migration-summary)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type numerical-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum obfuscation-setting
    common-lisp:nil
  (:none "NONE")
  (:default-obfuscation "DEFAULT_OBFUSCATION"))

(smithy/sdk/shapes:define-structure output-context common-lisp:nil
                                    ((name :target-type output-context-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (time-to-live-in-seconds :target-type
                                      context-time-to-live-in-seconds :required
                                      common-lisp:t :member-name
                                      "timeToLiveInSeconds")
                                     (turns-to-live :target-type
                                      context-turns-to-live :required
                                      common-lisp:t :member-name
                                      "turnsToLive"))
                                    (:shape-name "OutputContext"))

(smithy/sdk/shapes:define-list output-context-list :member output-context)

(smithy/sdk/shapes:define-type output-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum process-behavior
    common-lisp:nil
  (:save "SAVE")
  (:build "BUILD"))

(smithy/sdk/shapes:define-structure prompt common-lisp:nil
                                    ((messages :target-type message-list
                                      :required common-lisp:t :member-name
                                      "messages")
                                     (max-attempts :target-type
                                      prompt-max-attempts :required
                                      common-lisp:t :member-name "maxAttempts")
                                     (response-card :target-type response-card
                                      :member-name "responseCard"))
                                    (:shape-name "Prompt"))

(smithy/sdk/shapes:define-type prompt-max-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-bot-alias-request common-lisp:nil
                                ((name :target-type alias-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (bot-version :target-type version :required
                                  common-lisp:t :member-name "botVersion")
                                 (bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "botName"
                                  :http-label common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum")
                                 (conversation-logs :target-type
                                  conversation-logs-request :member-name
                                  "conversationLogs")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutBotAliasRequest"))

(smithy/sdk/shapes:define-output put-bot-alias-response common-lisp:nil
                                 ((name :target-type alias-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type version
                                   :member-name "botVersion")
                                  (bot-name :target-type bot-name :member-name
                                   "botName")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (conversation-logs :target-type
                                   conversation-logs-response :member-name
                                   "conversationLogs")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "PutBotAliasResponse"))

(smithy/sdk/shapes:define-input put-bot-request common-lisp:nil
                                ((name :target-type bot-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (intents :target-type intent-list :member-name
                                  "intents")
                                 (enable-model-improvements :target-type
                                  boolean :member-name
                                  "enableModelImprovements")
                                 (nlu-intent-confidence-threshold :target-type
                                  confidence-threshold :member-name
                                  "nluIntentConfidenceThreshold")
                                 (clarification-prompt :target-type prompt
                                  :member-name "clarificationPrompt")
                                 (abort-statement :target-type statement
                                  :member-name "abortStatement")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :member-name
                                  "idleSessionTTLInSeconds")
                                 (voice-id :target-type string :member-name
                                  "voiceId")
                                 (checksum :target-type string :member-name
                                  "checksum")
                                 (process-behavior :target-type
                                  process-behavior :member-name
                                  "processBehavior")
                                 (locale :target-type locale :required
                                  common-lisp:t :member-name "locale")
                                 (child-directed :target-type boolean :required
                                  common-lisp:t :member-name "childDirected")
                                 (detect-sentiment :target-type boolean
                                  :member-name "detectSentiment")
                                 (create-version :target-type boolean
                                  :member-name "createVersion")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutBotRequest"))

(smithy/sdk/shapes:define-output put-bot-response common-lisp:nil
                                 ((name :target-type bot-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (intents :target-type intent-list
                                   :member-name "intents")
                                  (enable-model-improvements :target-type
                                   boolean :member-name
                                   "enableModelImprovements")
                                  (nlu-intent-confidence-threshold :target-type
                                   confidence-threshold :member-name
                                   "nluIntentConfidenceThreshold")
                                  (clarification-prompt :target-type prompt
                                   :member-name "clarificationPrompt")
                                  (abort-statement :target-type statement
                                   :member-name "abortStatement")
                                  (status :target-type status :member-name
                                   "status")
                                  (failure-reason :target-type string
                                   :member-name "failureReason")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (voice-id :target-type string :member-name
                                   "voiceId")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (version :target-type version :member-name
                                   "version")
                                  (locale :target-type locale :member-name
                                   "locale")
                                  (child-directed :target-type boolean
                                   :member-name "childDirected")
                                  (create-version :target-type boolean
                                   :member-name "createVersion")
                                  (detect-sentiment :target-type boolean
                                   :member-name "detectSentiment")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "PutBotResponse"))

(smithy/sdk/shapes:define-input put-intent-request common-lisp:nil
                                ((name :target-type intent-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (slots :target-type slot-list :member-name
                                  "slots")
                                 (sample-utterances :target-type
                                  intent-utterance-list :member-name
                                  "sampleUtterances")
                                 (confirmation-prompt :target-type prompt
                                  :member-name "confirmationPrompt")
                                 (rejection-statement :target-type statement
                                  :member-name "rejectionStatement")
                                 (follow-up-prompt :target-type
                                  follow-up-prompt :member-name
                                  "followUpPrompt")
                                 (conclusion-statement :target-type statement
                                  :member-name "conclusionStatement")
                                 (dialog-code-hook :target-type code-hook
                                  :member-name "dialogCodeHook")
                                 (fulfillment-activity :target-type
                                  fulfillment-activity :member-name
                                  "fulfillmentActivity")
                                 (parent-intent-signature :target-type
                                  builtin-intent-signature :member-name
                                  "parentIntentSignature")
                                 (checksum :target-type string :member-name
                                  "checksum")
                                 (create-version :target-type boolean
                                  :member-name "createVersion")
                                 (kendra-configuration :target-type
                                  kendra-configuration :member-name
                                  "kendraConfiguration")
                                 (input-contexts :target-type
                                  input-context-list :member-name
                                  "inputContexts")
                                 (output-contexts :target-type
                                  output-context-list :member-name
                                  "outputContexts"))
                                (:shape-name "PutIntentRequest"))

(smithy/sdk/shapes:define-output put-intent-response common-lisp:nil
                                 ((name :target-type intent-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (slots :target-type slot-list :member-name
                                   "slots")
                                  (sample-utterances :target-type
                                   intent-utterance-list :member-name
                                   "sampleUtterances")
                                  (confirmation-prompt :target-type prompt
                                   :member-name "confirmationPrompt")
                                  (rejection-statement :target-type statement
                                   :member-name "rejectionStatement")
                                  (follow-up-prompt :target-type
                                   follow-up-prompt :member-name
                                   "followUpPrompt")
                                  (conclusion-statement :target-type statement
                                   :member-name "conclusionStatement")
                                  (dialog-code-hook :target-type code-hook
                                   :member-name "dialogCodeHook")
                                  (fulfillment-activity :target-type
                                   fulfillment-activity :member-name
                                   "fulfillmentActivity")
                                  (parent-intent-signature :target-type
                                   builtin-intent-signature :member-name
                                   "parentIntentSignature")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (create-version :target-type boolean
                                   :member-name "createVersion")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (input-contexts :target-type
                                   input-context-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-context-list :member-name
                                   "outputContexts"))
                                 (:shape-name "PutIntentResponse"))

(smithy/sdk/shapes:define-input put-slot-type-request common-lisp:nil
                                ((name :target-type slot-type-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (enumeration-values :target-type
                                  enumeration-values :member-name
                                  "enumerationValues")
                                 (checksum :target-type string :member-name
                                  "checksum")
                                 (value-selection-strategy :target-type
                                  slot-value-selection-strategy :member-name
                                  "valueSelectionStrategy")
                                 (create-version :target-type boolean
                                  :member-name "createVersion")
                                 (parent-slot-type-signature :target-type
                                  custom-or-builtin-slot-type-name :member-name
                                  "parentSlotTypeSignature")
                                 (slot-type-configurations :target-type
                                  slot-type-configurations :member-name
                                  "slotTypeConfigurations"))
                                (:shape-name "PutSlotTypeRequest"))

(smithy/sdk/shapes:define-output put-slot-type-response common-lisp:nil
                                 ((name :target-type slot-type-name
                                   :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (enumeration-values :target-type
                                   enumeration-values :member-name
                                   "enumerationValues")
                                  (last-updated-date :target-type timestamp
                                   :member-name "lastUpdatedDate")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate")
                                  (version :target-type version :member-name
                                   "version")
                                  (checksum :target-type string :member-name
                                   "checksum")
                                  (value-selection-strategy :target-type
                                   slot-value-selection-strategy :member-name
                                   "valueSelectionStrategy")
                                  (create-version :target-type boolean
                                   :member-name "createVersion")
                                  (parent-slot-type-signature :target-type
                                   custom-or-builtin-slot-type-name
                                   :member-name "parentSlotTypeSignature")
                                  (slot-type-configurations :target-type
                                   slot-type-configurations :member-name
                                   "slotTypeConfigurations"))
                                 (:shape-name "PutSlotTypeResponse"))

(smithy/sdk/shapes:define-type query-filter-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reference-type
    common-lisp:nil
  (:intent "Intent")
  (:bot "Bot")
  (:botalias "BotAlias")
  (:botchannel "BotChannel"))

(smithy/sdk/shapes:define-type regex-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((reference-type :target-type reference-type
                                  :member-name "referenceType")
                                 (example-reference :target-type
                                  resource-reference :member-name
                                  "exampleReference"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400)
                                (:base-class lex-model-building-service-error))

(smithy/sdk/shapes:define-type resource-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-reference common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "ResourceReference"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:bot "BOT")
  (:intent "INTENT")
  (:slot-type "SLOT_TYPE"))

(smithy/sdk/shapes:define-type response-card smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure slot common-lisp:nil
                                    ((name :target-type slot-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (slot-constraint :target-type
                                      slot-constraint :required common-lisp:t
                                      :member-name "slotConstraint")
                                     (slot-type :target-type
                                      custom-or-builtin-slot-type-name
                                      :member-name "slotType")
                                     (slot-type-version :target-type version
                                      :member-name "slotTypeVersion")
                                     (value-elicitation-prompt :target-type
                                      prompt :member-name
                                      "valueElicitationPrompt")
                                     (priority :target-type priority
                                      :member-name "priority")
                                     (sample-utterances :target-type
                                      slot-utterance-list :member-name
                                      "sampleUtterances")
                                     (response-card :target-type response-card
                                      :member-name "responseCard")
                                     (obfuscation-setting :target-type
                                      obfuscation-setting :member-name
                                      "obfuscationSetting")
                                     (default-value-spec :target-type
                                      slot-default-value-spec :member-name
                                      "defaultValueSpec"))
                                    (:shape-name "Slot"))

(smithy/sdk/shapes:define-enum slot-constraint
    common-lisp:nil
  (:required "Required")
  (:optional "Optional"))

(smithy/sdk/shapes:define-structure slot-default-value common-lisp:nil
                                    ((default-value :target-type
                                      slot-default-value-string :required
                                      common-lisp:t :member-name
                                      "defaultValue"))
                                    (:shape-name "SlotDefaultValue"))

(smithy/sdk/shapes:define-list slot-default-value-list :member
                               slot-default-value)

(smithy/sdk/shapes:define-structure slot-default-value-spec common-lisp:nil
                                    ((default-value-list :target-type
                                      slot-default-value-list :required
                                      common-lisp:t :member-name
                                      "defaultValueList"))
                                    (:shape-name "SlotDefaultValueSpec"))

(smithy/sdk/shapes:define-type slot-default-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list slot-list :member slot)

(smithy/sdk/shapes:define-type slot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure slot-type-configuration common-lisp:nil
                                    ((regex-configuration :target-type
                                      slot-type-regex-configuration
                                      :member-name "regexConfiguration"))
                                    (:shape-name "SlotTypeConfiguration"))

(smithy/sdk/shapes:define-list slot-type-configurations :member
                               slot-type-configuration)

(smithy/sdk/shapes:define-structure slot-type-metadata common-lisp:nil
                                    ((name :target-type slot-type-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "SlotTypeMetadata"))

(smithy/sdk/shapes:define-list slot-type-metadata-list :member
                               slot-type-metadata)

(smithy/sdk/shapes:define-type slot-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure slot-type-regex-configuration
                                    common-lisp:nil
                                    ((pattern :target-type regex-pattern
                                      :required common-lisp:t :member-name
                                      "pattern"))
                                    (:shape-name "SlotTypeRegexConfiguration"))

(smithy/sdk/shapes:define-list slot-utterance-list :member utterance)

(smithy/sdk/shapes:define-enum slot-value-selection-strategy
    common-lisp:nil
  (:original-value "ORIGINAL_VALUE")
  (:top-resolution "TOP_RESOLUTION"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-input start-import-request common-lisp:nil
                                ((payload :target-type blob :required
                                  common-lisp:t :member-name "payload")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (merge-strategy :target-type merge-strategy
                                  :required common-lisp:t :member-name
                                  "mergeStrategy")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "StartImportRequest"))

(smithy/sdk/shapes:define-output start-import-response common-lisp:nil
                                 ((name :target-type name :member-name "name")
                                  (resource-type :target-type resource-type
                                   :member-name "resourceType")
                                  (merge-strategy :target-type merge-strategy
                                   :member-name "mergeStrategy")
                                  (import-id :target-type string :member-name
                                   "importId")
                                  (import-status :target-type import-status
                                   :member-name "importStatus")
                                  (tags :target-type tag-list :member-name
                                   "tags")
                                  (created-date :target-type timestamp
                                   :member-name "createdDate"))
                                 (:shape-name "StartImportResponse"))

(smithy/sdk/shapes:define-input start-migration-request common-lisp:nil
                                ((v1bot-name :target-type bot-name :required
                                  common-lisp:t :member-name "v1BotName")
                                 (v1bot-version :target-type version :required
                                  common-lisp:t :member-name "v1BotVersion")
                                 (v2bot-name :target-type v2bot-name :required
                                  common-lisp:t :member-name "v2BotName")
                                 (v2bot-role :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "v2BotRole")
                                 (migration-strategy :target-type
                                  migration-strategy :required common-lisp:t
                                  :member-name "migrationStrategy"))
                                (:shape-name "StartMigrationRequest"))

(smithy/sdk/shapes:define-output start-migration-response common-lisp:nil
                                 ((v1bot-name :target-type bot-name
                                   :member-name "v1BotName")
                                  (v1bot-version :target-type version
                                   :member-name "v1BotVersion")
                                  (v1bot-locale :target-type locale
                                   :member-name "v1BotLocale")
                                  (v2bot-id :target-type v2bot-id :member-name
                                   "v2BotId")
                                  (v2bot-role :target-type iam-role-arn
                                   :member-name "v2BotRole")
                                  (migration-id :target-type migration-id
                                   :member-name "migrationId")
                                  (migration-strategy :target-type
                                   migration-strategy :member-name
                                   "migrationStrategy")
                                  (migration-timestamp :target-type timestamp
                                   :member-name "migrationTimestamp"))
                                 (:shape-name "StartMigrationResponse"))

(smithy/sdk/shapes:define-structure statement common-lisp:nil
                                    ((messages :target-type message-list
                                      :required common-lisp:t :member-name
                                      "messages")
                                     (response-card :target-type response-card
                                      :member-name "responseCard"))
                                    (:shape-name "Statement"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:building "BUILDING")
  (:ready "READY")
  (:ready-basic-testing "READY_BASIC_TESTING")
  (:failed "FAILED")
  (:not-built "NOT_BUILT"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:detected "Detected")
  (:missed "Missed"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-list synonym-list :member value)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type utterance smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure utterance-data common-lisp:nil
                                    ((utterance-string :target-type
                                      utterance-string :member-name
                                      "utteranceString")
                                     (count :target-type count :member-name
                                      "count")
                                     (distinct-users :target-type count
                                      :member-name "distinctUsers")
                                     (first-uttered-date :target-type timestamp
                                      :member-name "firstUtteredDate")
                                     (last-uttered-date :target-type timestamp
                                      :member-name "lastUtteredDate"))
                                    (:shape-name "UtteranceData"))

(smithy/sdk/shapes:define-structure utterance-list common-lisp:nil
                                    ((bot-version :target-type version
                                      :member-name "botVersion")
                                     (utterances :target-type list-of-utterance
                                      :member-name "utterances"))
                                    (:shape-name "UtteranceList"))

(smithy/sdk/shapes:define-type utterance-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type v2bot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type v2bot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-bot-version :shape-name
                                       "CreateBotVersion" :input
                                       create-bot-version-request :output
                                       create-bot-version-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        precondition-failed-exception)
                                       :method "POST" :uri
                                       "/bots/{name}/versions" :code 201)

(smithy/sdk/operation:define-operation create-intent-version :shape-name
                                       "CreateIntentVersion" :input
                                       create-intent-version-request :output
                                       create-intent-version-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        precondition-failed-exception)
                                       :method "POST" :uri
                                       "/intents/{name}/versions" :code 201)

(smithy/sdk/operation:define-operation create-slot-type-version :shape-name
                                       "CreateSlotTypeVersion" :input
                                       create-slot-type-version-request :output
                                       create-slot-type-version-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        precondition-failed-exception)
                                       :method "POST" :uri
                                       "/slottypes/{name}/versions" :code 201)

(smithy/sdk/operation:define-operation delete-bot :shape-name "DeleteBot"
                                       :input delete-bot-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri "/bots/{name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-bot-alias :shape-name
                                       "DeleteBotAlias" :input
                                       delete-bot-alias-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botName}/aliases/{name}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-bot-channel-association
                                       :shape-name
                                       "DeleteBotChannelAssociation" :input
                                       delete-bot-channel-association-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botName}/aliases/{botAlias}/channels/{name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-bot-version :shape-name
                                       "DeleteBotVersion" :input
                                       delete-bot-version-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri
                                       "/bots/{name}/versions/{version}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-intent :shape-name "DeleteIntent"
                                       :input delete-intent-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri "/intents/{name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-intent-version :shape-name
                                       "DeleteIntentVersion" :input
                                       delete-intent-version-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri
                                       "/intents/{name}/versions/{version}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-slot-type :shape-name
                                       "DeleteSlotType" :input
                                       delete-slot-type-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri
                                       "/slottypes/{name}" :code 204)

(smithy/sdk/operation:define-operation delete-slot-type-version :shape-name
                                       "DeleteSlotTypeVersion" :input
                                       delete-slot-type-version-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        resource-in-use-exception)
                                       :method "DELETE" :uri
                                       "/slottypes/{name}/version/{version}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-utterances :shape-name
                                       "DeleteUtterances" :input
                                       delete-utterances-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botName}/utterances/{userId}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-bot :shape-name "GetBot" :input
                                       get-bot-request :output get-bot-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/bots/{name}/versions/{versionOrAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bot-alias :shape-name "GetBotAlias"
                                       :input get-bot-alias-request :output
                                       get-bot-alias-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/bots/{botName}/aliases/{name}" :code
                                       200)

(smithy/sdk/operation:define-operation get-bot-aliases :shape-name
                                       "GetBotAliases" :input
                                       get-bot-aliases-request :output
                                       get-bot-aliases-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/bots/{botName}/aliases" :code 200)

(smithy/sdk/operation:define-operation get-bot-channel-association :shape-name
                                       "GetBotChannelAssociation" :input
                                       get-bot-channel-association-request
                                       :output
                                       get-bot-channel-association-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/bots/{botName}/aliases/{botAlias}/channels/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bot-channel-associations :shape-name
                                       "GetBotChannelAssociations" :input
                                       get-bot-channel-associations-request
                                       :output
                                       get-bot-channel-associations-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/bots/{botName}/aliases/{botAlias}/channels"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bot-versions :shape-name
                                       "GetBotVersions" :input
                                       get-bot-versions-request :output
                                       get-bot-versions-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/bots/{name}/versions" :code 200)

(smithy/sdk/operation:define-operation get-bots :shape-name "GetBots" :input
                                       get-bots-request :output
                                       get-bots-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/bots" :code 200)

(smithy/sdk/operation:define-operation get-builtin-intent :shape-name
                                       "GetBuiltinIntent" :input
                                       get-builtin-intent-request :output
                                       get-builtin-intent-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/builtins/intents/{signature}" :code
                                       200)

(smithy/sdk/operation:define-operation get-builtin-intents :shape-name
                                       "GetBuiltinIntents" :input
                                       get-builtin-intents-request :output
                                       get-builtin-intents-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/builtins/intents"
                                       :code 200)

(smithy/sdk/operation:define-operation get-builtin-slot-types :shape-name
                                       "GetBuiltinSlotTypes" :input
                                       get-builtin-slot-types-request :output
                                       get-builtin-slot-types-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/builtins/slottypes"
                                       :code 200)

(smithy/sdk/operation:define-operation get-export :shape-name "GetExport"
                                       :input get-export-request :output
                                       get-export-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/exports" :code 200)

(smithy/sdk/operation:define-operation get-import :shape-name "GetImport"
                                       :input get-import-request :output
                                       get-import-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/imports/{importId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-intent :shape-name "GetIntent"
                                       :input get-intent-request :output
                                       get-intent-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/intents/{name}/versions/{version}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-intent-versions :shape-name
                                       "GetIntentVersions" :input
                                       get-intent-versions-request :output
                                       get-intent-versions-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/intents/{name}/versions" :code 200)

(smithy/sdk/operation:define-operation get-intents :shape-name "GetIntents"
                                       :input get-intents-request :output
                                       get-intents-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/intents" :code 200)

(smithy/sdk/operation:define-operation get-migration :shape-name "GetMigration"
                                       :input get-migration-request :output
                                       get-migration-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/migrations/{migrationId}" :code 200)

(smithy/sdk/operation:define-operation get-migrations :shape-name
                                       "GetMigrations" :input
                                       get-migrations-request :output
                                       get-migrations-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri "/migrations" :code
                                       200)

(smithy/sdk/operation:define-operation get-slot-type :shape-name "GetSlotType"
                                       :input get-slot-type-request :output
                                       get-slot-type-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/slottypes/{name}/versions/{version}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-slot-type-versions :shape-name
                                       "GetSlotTypeVersions" :input
                                       get-slot-type-versions-request :output
                                       get-slot-type-versions-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/slottypes/{name}/versions" :code 200)

(smithy/sdk/operation:define-operation get-slot-types :shape-name
                                       "GetSlotTypes" :input
                                       get-slot-types-request :output
                                       get-slot-types-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/slottypes" :code
                                       200)

(smithy/sdk/operation:define-operation get-utterances-view :shape-name
                                       "GetUtterancesView" :input
                                       get-utterances-view-request :output
                                       get-utterances-view-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/bots/{botName}/utterances?view=aggregation"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-bot :shape-name "PutBot" :input
                                       put-bot-request :output put-bot-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception)
                                       :method "PUT" :uri
                                       "/bots/{name}/versions/$LATEST" :code
                                       200)

(smithy/sdk/operation:define-operation put-bot-alias :shape-name "PutBotAlias"
                                       :input put-bot-alias-request :output
                                       put-bot-alias-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception)
                                       :method "PUT" :uri
                                       "/bots/{botName}/aliases/{name}" :code
                                       200)

(smithy/sdk/operation:define-operation put-intent :shape-name "PutIntent"
                                       :input put-intent-request :output
                                       put-intent-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception)
                                       :method "PUT" :uri
                                       "/intents/{name}/versions/$LATEST" :code
                                       200)

(smithy/sdk/operation:define-operation put-slot-type :shape-name "PutSlotType"
                                       :input put-slot-type-request :output
                                       put-slot-type-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception)
                                       :method "PUT" :uri
                                       "/slottypes/{name}/versions/$LATEST"
                                       :code 200)

(smithy/sdk/operation:define-operation start-import :shape-name "StartImport"
                                       :input start-import-request :output
                                       start-import-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception)
                                       :method "POST" :uri "/imports" :code 201)

(smithy/sdk/operation:define-operation start-migration :shape-name
                                       "StartMigration" :input
                                       start-migration-request :output
                                       start-migration-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "POST" :uri "/migrations" :code
                                       202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)
