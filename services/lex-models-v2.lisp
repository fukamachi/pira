(uiop/package:define-package #:pira/lex-models-v2 (:use)
                             (:export #:active-context #:active-context-list
                              #:active-context-name
                              #:advanced-recognition-setting
                              #:agent-turn-result #:agent-turn-specification
                              #:aggregated-utterances-filter
                              #:aggregated-utterances-filter-name
                              #:aggregated-utterances-filter-operator
                              #:aggregated-utterances-filters
                              #:aggregated-utterances-sort-attribute
                              #:aggregated-utterances-sort-by
                              #:aggregated-utterances-summary
                              #:aggregated-utterances-summary-list
                              #:allowed-input-types #:amazon-resource-name
                              #:analytics-bin-by-list #:analytics-bin-by-name
                              #:analytics-bin-by-specification
                              #:analytics-bin-key #:analytics-bin-keys
                              #:analytics-bin-value #:analytics-channel
                              #:analytics-common-filter-name
                              #:analytics-filter-operator
                              #:analytics-filter-value
                              #:analytics-filter-values
                              #:analytics-group-by-value
                              #:analytics-intent-field
                              #:analytics-intent-filter
                              #:analytics-intent-filter-name
                              #:analytics-intent-filters
                              #:analytics-intent-group-by-key
                              #:analytics-intent-group-by-keys
                              #:analytics-intent-group-by-list
                              #:analytics-intent-group-by-specification
                              #:analytics-intent-metric
                              #:analytics-intent-metric-name
                              #:analytics-intent-metric-result
                              #:analytics-intent-metric-results
                              #:analytics-intent-metrics
                              #:analytics-intent-node-summaries
                              #:analytics-intent-node-summary
                              #:analytics-intent-result
                              #:analytics-intent-results
                              #:analytics-intent-stage-field
                              #:analytics-intent-stage-filter
                              #:analytics-intent-stage-filter-name
                              #:analytics-intent-stage-filters
                              #:analytics-intent-stage-group-by-key
                              #:analytics-intent-stage-group-by-keys
                              #:analytics-intent-stage-group-by-list
                              #:analytics-intent-stage-group-by-specification
                              #:analytics-intent-stage-metric
                              #:analytics-intent-stage-metric-name
                              #:analytics-intent-stage-metric-result
                              #:analytics-intent-stage-metric-results
                              #:analytics-intent-stage-metrics
                              #:analytics-intent-stage-result
                              #:analytics-intent-stage-results
                              #:analytics-interval #:analytics-long-value
                              #:analytics-metric-statistic
                              #:analytics-metric-value #:analytics-modality
                              #:analytics-node-count #:analytics-node-level
                              #:analytics-node-type
                              #:analytics-originating-request-id
                              #:analytics-path #:analytics-path-filter
                              #:analytics-path-filters
                              #:analytics-session-field
                              #:analytics-session-filter
                              #:analytics-session-filter-name
                              #:analytics-session-filters
                              #:analytics-session-group-by-key
                              #:analytics-session-group-by-keys
                              #:analytics-session-group-by-list
                              #:analytics-session-group-by-specification
                              #:analytics-session-id #:analytics-session-metric
                              #:analytics-session-metric-name
                              #:analytics-session-metric-result
                              #:analytics-session-metric-results
                              #:analytics-session-metrics
                              #:analytics-session-result
                              #:analytics-session-results
                              #:analytics-session-sort-by-name
                              #:analytics-sort-order
                              #:analytics-utterance-attribute
                              #:analytics-utterance-attribute-name
                              #:analytics-utterance-attribute-result
                              #:analytics-utterance-attribute-results
                              #:analytics-utterance-attributes
                              #:analytics-utterance-field
                              #:analytics-utterance-filter
                              #:analytics-utterance-filter-name
                              #:analytics-utterance-filters
                              #:analytics-utterance-group-by-key
                              #:analytics-utterance-group-by-keys
                              #:analytics-utterance-group-by-list
                              #:analytics-utterance-group-by-specification
                              #:analytics-utterance-metric
                              #:analytics-utterance-metric-name
                              #:analytics-utterance-metric-result
                              #:analytics-utterance-metric-results
                              #:analytics-utterance-metrics
                              #:analytics-utterance-result
                              #:analytics-utterance-results
                              #:analytics-utterance-sort-by-name #:answer-field
                              #:associated-transcript
                              #:associated-transcript-filter
                              #:associated-transcript-filter-name
                              #:associated-transcript-filters
                              #:associated-transcript-list #:attachment-title
                              #:attachment-url
                              #:audio-and-dtmfinput-specification
                              #:audio-file-s3location #:audio-log-destination
                              #:audio-log-setting #:audio-log-settings-list
                              #:audio-recognition-strategy
                              #:audio-specification
                              #:batch-create-custom-vocabulary-item
                              #:batch-delete-custom-vocabulary-item
                              #:batch-update-custom-vocabulary-item
                              #:bedrock-guardrail-configuration
                              #:bedrock-guardrail-identifier
                              #:bedrock-guardrail-version
                              #:bedrock-knowledge-base-arn
                              #:bedrock-knowledge-store-configuration
                              #:bedrock-knowledge-store-exact-response-fields
                              #:bedrock-model-arn #:bedrock-model-custom-prompt
                              #:bedrock-model-specification
                              #:bedrock-trace-status #:boolean
                              #:bot-alias-history-event
                              #:bot-alias-history-events-list #:bot-alias-id
                              #:bot-alias-locale-settings
                              #:bot-alias-locale-settings-map #:bot-alias-name
                              #:bot-alias-replica-summary
                              #:bot-alias-replica-summary-list
                              #:bot-alias-replication-status #:bot-alias-status
                              #:bot-alias-summary #:bot-alias-summary-list
                              #:bot-alias-test-execution-target
                              #:bot-export-specification #:bot-filter
                              #:bot-filter-name #:bot-filter-operator
                              #:bot-filters #:bot-import-specification
                              #:bot-locale-export-specification
                              #:bot-locale-filter #:bot-locale-filter-name
                              #:bot-locale-filter-operator #:bot-locale-filters
                              #:bot-locale-history-event
                              #:bot-locale-history-event-description
                              #:bot-locale-history-events-list
                              #:bot-locale-import-specification
                              #:bot-locale-sort-attribute #:bot-locale-sort-by
                              #:bot-locale-status #:bot-locale-summary
                              #:bot-locale-summary-list #:bot-member
                              #:bot-members
                              #:bot-recommendation-result-statistics
                              #:bot-recommendation-results
                              #:bot-recommendation-status
                              #:bot-recommendation-summary
                              #:bot-recommendation-summary-list
                              #:bot-replica-status #:bot-replica-summary
                              #:bot-replica-summary-list #:bot-sort-attribute
                              #:bot-sort-by #:bot-status #:bot-summary
                              #:bot-summary-list #:bot-type #:bot-version
                              #:bot-version-locale-details
                              #:bot-version-locale-specification
                              #:bot-version-replica-sort-attribute
                              #:bot-version-replica-sort-by
                              #:bot-version-replica-summary
                              #:bot-version-replica-summary-list
                              #:bot-version-replication-status
                              #:bot-version-sort-attribute
                              #:bot-version-sort-by #:bot-version-summary
                              #:bot-version-summary-list #:boxed-boolean
                              #:build-bot-locale #:buildtime-settings
                              #:built-in-intent-sort-attribute
                              #:built-in-intent-sort-by
                              #:built-in-intent-summary
                              #:built-in-intent-summary-list
                              #:built-in-or-custom-slot-type-id
                              #:built-in-slot-type-sort-attribute
                              #:built-in-slot-type-sort-by
                              #:built-in-slot-type-summary
                              #:built-in-slot-type-summary-list
                              #:built-ins-max-results #:button #:button-text
                              #:button-value #:buttons-list #:child-directed
                              #:cloud-watch-log-group-arn
                              #:cloud-watch-log-group-log-destination
                              #:code-hook-interface-version
                              #:code-hook-specification
                              #:composite-slot-type-setting #:condition
                              #:condition-expression #:condition-key
                              #:condition-key-value-map #:condition-map
                              #:condition-operator #:condition-value
                              #:conditional-branch #:conditional-branches
                              #:conditional-specification
                              #:confidence-threshold
                              #:context-time-to-live-in-seconds
                              #:context-turns-to-live #:conversation-end-state
                              #:conversation-level-intent-classification-result-item
                              #:conversation-level-intent-classification-results
                              #:conversation-level-result-detail
                              #:conversation-level-slot-resolution-result-item
                              #:conversation-level-slot-resolution-results
                              #:conversation-level-test-result-item
                              #:conversation-level-test-result-item-list
                              #:conversation-level-test-results
                              #:conversation-level-test-results-filter-by
                              #:conversation-log-settings
                              #:conversation-logs-data-source
                              #:conversation-logs-data-source-filter-by
                              #:conversation-logs-input-mode-filter #:count
                              #:create-bot #:create-bot-alias
                              #:create-bot-locale #:create-bot-replica
                              #:create-bot-version
                              #:create-custom-vocabulary-items-list
                              #:create-export #:create-intent
                              #:create-resource-policy
                              #:create-resource-policy-statement #:create-slot
                              #:create-slot-type
                              #:create-test-set-discrepancy-report
                              #:create-upload-url #:custom-payload
                              #:custom-payload-value
                              #:custom-vocabulary-entry-id
                              #:custom-vocabulary-export-specification
                              #:custom-vocabulary-import-specification
                              #:custom-vocabulary-item
                              #:custom-vocabulary-items
                              #:custom-vocabulary-status #:dtmfcharacter
                              #:dtmfspecification #:data-privacy
                              #:data-source-configuration #:date-range-filter
                              #:default-conditional-branch #:delete-bot
                              #:delete-bot-alias #:delete-bot-locale
                              #:delete-bot-replica #:delete-bot-version
                              #:delete-custom-vocabulary
                              #:delete-custom-vocabulary-items-list
                              #:delete-export #:delete-import #:delete-intent
                              #:delete-resource-policy
                              #:delete-resource-policy-statement #:delete-slot
                              #:delete-slot-type #:delete-test-set
                              #:delete-utterances #:describe-bot
                              #:describe-bot-alias #:describe-bot-locale
                              #:describe-bot-recommendation
                              #:describe-bot-replica
                              #:describe-bot-resource-generation
                              #:describe-bot-version
                              #:describe-custom-vocabulary-metadata
                              #:describe-export #:describe-import
                              #:describe-intent #:describe-resource-policy
                              #:describe-slot #:describe-slot-type
                              #:describe-test-execution #:describe-test-set
                              #:describe-test-set-discrepancy-report
                              #:describe-test-set-generation #:description
                              #:descriptive-bot-builder-specification
                              #:dialog-action #:dialog-action-type
                              #:dialog-code-hook-invocation-setting
                              #:dialog-code-hook-settings #:dialog-state
                              #:domain-endpoint #:draft-bot-version #:effect
                              #:elicitation-code-hook-invocation-setting
                              #:enabled #:encryption-setting #:error-code
                              #:error-log-settings #:error-message
                              #:exact-response-fields #:exception-message
                              #:execution-error-details #:export-filter
                              #:export-filter-name #:export-filter-operator
                              #:export-filters #:export-resource-specification
                              #:export-sort-attribute #:export-sort-by
                              #:export-status #:export-summary
                              #:export-summary-list #:external-source-setting
                              #:failed-custom-vocabulary-item
                              #:failed-custom-vocabulary-items #:failure-reason
                              #:failure-reasons #:file-password #:filter-value
                              #:filter-values #:fulfillment-code-hook-settings
                              #:fulfillment-start-response-delay
                              #:fulfillment-start-response-specification
                              #:fulfillment-timeout
                              #:fulfillment-update-response-frequency
                              #:fulfillment-update-response-specification
                              #:fulfillment-updates-specification
                              #:generate-bot-element #:generation-input
                              #:generation-sort-by
                              #:generation-sort-by-attribute
                              #:generation-status #:generation-summary
                              #:generation-summary-list #:generative-aisettings
                              #:get-test-execution-artifacts-url
                              #:grammar-slot-type-setting
                              #:grammar-slot-type-source #:hit-count #:id
                              #:image-response-card #:import-export-file-format
                              #:import-export-file-password #:import-filter
                              #:import-filter-name #:import-filter-operator
                              #:import-filters #:import-resource-specification
                              #:import-resource-type #:import-sort-attribute
                              #:import-sort-by #:import-status #:import-summary
                              #:import-summary-list #:imported-resource-id
                              #:include-field #:initial-response-setting
                              #:input-context #:input-contexts-list
                              #:input-session-state-specification
                              #:intent-classification-test-result-item
                              #:intent-classification-test-result-item-counts
                              #:intent-classification-test-result-item-list
                              #:intent-classification-test-results
                              #:intent-closing-setting
                              #:intent-confirmation-setting #:intent-filter
                              #:intent-filter-name #:intent-filter-operator
                              #:intent-filters
                              #:intent-level-slot-resolution-test-result-item
                              #:intent-level-slot-resolution-test-result-item-list
                              #:intent-level-slot-resolution-test-results
                              #:intent-override #:intent-signature
                              #:intent-sort-attribute #:intent-sort-by
                              #:intent-state #:intent-statistics
                              #:intent-summary #:intent-summary-list
                              #:invoked-intent-sample #:invoked-intent-samples
                              #:item-id #:kendra-configuration
                              #:kendra-index-arn #:kms-key-arn #:lambda-arn
                              #:lambda-code-hook
                              #:lex-model-building-service-v2
                              #:lex-transcript-filter
                              #:list-aggregated-utterances
                              #:list-bot-alias-replicas #:list-bot-aliases
                              #:list-bot-locales #:list-bot-recommendations
                              #:list-bot-replicas
                              #:list-bot-resource-generations
                              #:list-bot-version-replicas #:list-bot-versions
                              #:list-bots #:list-built-in-intents
                              #:list-built-in-slot-types
                              #:list-custom-vocabulary-items #:list-exports
                              #:list-imports #:list-intent-metrics
                              #:list-intent-paths #:list-intent-stage-metrics
                              #:list-intents #:list-recommended-intents
                              #:list-session-analytics-data
                              #:list-session-metrics #:list-slot-types
                              #:list-slots #:list-tags-for-resource
                              #:list-test-execution-result-items
                              #:list-test-executions #:list-test-set-records
                              #:list-test-sets #:list-utterance-analytics-data
                              #:list-utterance-metrics #:locale-id
                              #:locale-name #:log-prefix #:max-results
                              #:max-utterance-digits #:merge-strategy #:message
                              #:message-group #:message-groups-list
                              #:message-selection-strategy
                              #:message-variations-list #:missed-count
                              #:multiple-values-setting #:name
                              #:new-custom-vocabulary-item #:next-index
                              #:next-token #:nlu-improvement-specification
                              #:non-empty-string #:numerical-bot-version
                              #:osinclude-fields #:osindex-name
                              #:obfuscation-setting #:obfuscation-setting-type
                              #:object-prefix #:object-prefixes
                              #:opensearch-configuration #:operation
                              #:operation-list #:output-context
                              #:output-contexts-list #:overall-test-result-item
                              #:overall-test-result-item-list
                              #:overall-test-results #:parent-bot-network
                              #:parent-bot-networks #:path-format #:phrase
                              #:plain-text-message #:plain-text-message-value
                              #:policy
                              #:post-dialog-code-hook-invocation-specification
                              #:post-fulfillment-status-specification
                              #:presigned-s3url #:principal #:principal-arn
                              #:principal-list #:priority-value
                              #:prompt-attempt #:prompt-attempt-specification
                              #:prompt-attempts-specification-map
                              #:prompt-max-retries #:prompt-specification
                              #:qin-connect-assistant-arn
                              #:qin-connect-assistant-configuration
                              #:qin-connect-intent-configuration
                              #:qn-aintent-configuration
                              #:qn-akendra-configuration #:query-filter-string
                              #:question-field #:recommended-action
                              #:recommended-actions
                              #:recommended-intent-summary
                              #:recommended-intent-summary-list #:record-number
                              #:regex-pattern #:relative-aggregation-duration
                              #:replica-region #:resource-count
                              #:response-specification #:retry-after-seconds
                              #:revision-id #:role-arn #:runtime-hint-details
                              #:runtime-hint-phrase #:runtime-hint-value
                              #:runtime-hint-values-list #:runtime-hints
                              #:runtime-settings #:s3bucket-arn
                              #:s3bucket-log-destination #:s3bucket-name
                              #:s3bucket-transcript-source #:s3object-path
                              #:ssmlmessage #:ssmlmessage-value
                              #:sample-utterance
                              #:sample-utterance-generation-specification
                              #:sample-utterances-count
                              #:sample-utterances-list #:sample-value
                              #:search-associated-transcripts #:search-order
                              #:sentiment-analysis-settings #:service-principal
                              #:session-data-sort-by #:session-id
                              #:session-specification #:session-specifications
                              #:session-ttl #:skip-resource-in-use-check
                              #:slot-capture-setting #:slot-constraint
                              #:slot-default-value #:slot-default-value-list
                              #:slot-default-value-specification
                              #:slot-default-value-string #:slot-filter
                              #:slot-filter-name #:slot-filter-operator
                              #:slot-filters #:slot-hints-intent-map
                              #:slot-hints-slot-map #:slot-priorities-list
                              #:slot-priority
                              #:slot-resolution-improvement-specification
                              #:slot-resolution-setting
                              #:slot-resolution-strategy
                              #:slot-resolution-test-result-item
                              #:slot-resolution-test-result-item-counts
                              #:slot-resolution-test-result-items #:slot-shape
                              #:slot-sort-attribute #:slot-sort-by
                              #:slot-summary #:slot-summary-list
                              #:slot-type-category #:slot-type-filter
                              #:slot-type-filter-name
                              #:slot-type-filter-operator #:slot-type-filters
                              #:slot-type-signature #:slot-type-sort-attribute
                              #:slot-type-sort-by #:slot-type-statistics
                              #:slot-type-summary #:slot-type-summary-list
                              #:slot-type-value #:slot-type-values #:slot-value
                              #:slot-value-elicitation-setting
                              #:slot-value-override #:slot-value-override-map
                              #:slot-value-regex-filter
                              #:slot-value-resolution-strategy
                              #:slot-value-selection-setting #:slot-values
                              #:sort-order #:specifications
                              #:start-bot-recommendation
                              #:start-bot-resource-generation #:start-import
                              #:start-test-execution
                              #:start-test-set-generation
                              #:still-waiting-response-frequency
                              #:still-waiting-response-specification
                              #:still-waiting-response-timeout
                              #:stop-bot-recommendation #:string #:string-map
                              #:sub-slot-expression #:sub-slot-setting
                              #:sub-slot-specification-map
                              #:sub-slot-type-composition #:sub-slot-type-list
                              #:sub-slot-value-elicitation-setting
                              #:synonym-list #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-value
                              #:test-execution-api-mode
                              #:test-execution-modality
                              #:test-execution-result-filter-by
                              #:test-execution-result-items
                              #:test-execution-sort-attribute
                              #:test-execution-sort-by #:test-execution-status
                              #:test-execution-summary
                              #:test-execution-summary-list
                              #:test-execution-target
                              #:test-result-match-status
                              #:test-result-match-status-count-map
                              #:test-result-slot-name #:test-result-type-filter
                              #:test-set-agent-prompt
                              #:test-set-conversation-id
                              #:test-set-discrepancy-errors
                              #:test-set-discrepancy-report-bot-alias-target
                              #:test-set-discrepancy-report-resource-target
                              #:test-set-discrepancy-report-status
                              #:test-set-export-specification
                              #:test-set-generation-data-source
                              #:test-set-generation-status
                              #:test-set-import-input-location
                              #:test-set-import-resource-specification
                              #:test-set-intent-discrepancy-item
                              #:test-set-intent-discrepancy-list
                              #:test-set-modality
                              #:test-set-slot-discrepancy-item
                              #:test-set-slot-discrepancy-list
                              #:test-set-sort-attribute #:test-set-sort-by
                              #:test-set-status #:test-set-storage-location
                              #:test-set-summary #:test-set-summary-list
                              #:test-set-turn-record
                              #:test-set-turn-record-list
                              #:test-set-turn-result #:test-set-utterance-text
                              #:text-input-specification #:text-log-destination
                              #:text-log-setting #:text-log-settings-list
                              #:time-dimension #:time-in-milli-seconds
                              #:time-value #:timestamp #:transcript
                              #:transcript-filter #:transcript-format
                              #:transcript-source-setting #:turn-number
                              #:turn-specification #:untag-resource
                              #:update-bot #:update-bot-alias
                              #:update-bot-locale #:update-bot-recommendation
                              #:update-custom-vocabulary-items-list
                              #:update-export #:update-intent
                              #:update-resource-policy #:update-slot
                              #:update-slot-type #:update-test-set
                              #:user-turn-input-specification
                              #:user-turn-intent-output
                              #:user-turn-output-specification
                              #:user-turn-result #:user-turn-slot-output
                              #:user-turn-slot-output-list
                              #:user-turn-slot-output-map
                              #:user-turn-specification #:utterance
                              #:utterance-aggregation-duration
                              #:utterance-audio-input-specification
                              #:utterance-bot-response
                              #:utterance-bot-responses
                              #:utterance-content-type #:utterance-data-sort-by
                              #:utterance-input-specification
                              #:utterance-level-test-result-item
                              #:utterance-level-test-result-item-list
                              #:utterance-level-test-results
                              #:utterance-specification
                              #:utterance-specifications #:utterance-understood
                              #:value #:voice-engine #:voice-id
                              #:voice-settings
                              #:wait-and-continue-specification #:weight))
(common-lisp:in-package #:pira/lex-models-v2)

(smithy/sdk/service:define-service lex-model-building-service-v2 :shape-name
                                   "LexModelBuildingServiceV2" :version
                                   "2020-08-07" :title
                                   "Amazon Lex Model Building V2" :operations
                                   '(batch-create-custom-vocabulary-item
                                     batch-delete-custom-vocabulary-item
                                     batch-update-custom-vocabulary-item
                                     build-bot-locale create-bot
                                     create-bot-alias create-bot-locale
                                     create-bot-replica create-bot-version
                                     create-export create-intent
                                     create-resource-policy
                                     create-resource-policy-statement
                                     create-slot create-slot-type
                                     create-test-set-discrepancy-report
                                     create-upload-url delete-bot
                                     delete-bot-alias delete-bot-locale
                                     delete-bot-replica delete-bot-version
                                     delete-custom-vocabulary delete-export
                                     delete-import delete-intent
                                     delete-resource-policy
                                     delete-resource-policy-statement
                                     delete-slot delete-slot-type
                                     delete-test-set delete-utterances
                                     describe-bot describe-bot-alias
                                     describe-bot-locale
                                     describe-bot-recommendation
                                     describe-bot-replica
                                     describe-bot-resource-generation
                                     describe-bot-version
                                     describe-custom-vocabulary-metadata
                                     describe-export describe-import
                                     describe-intent describe-resource-policy
                                     describe-slot describe-slot-type
                                     describe-test-execution describe-test-set
                                     describe-test-set-discrepancy-report
                                     describe-test-set-generation
                                     generate-bot-element
                                     get-test-execution-artifacts-url
                                     list-aggregated-utterances
                                     list-bot-aliases list-bot-alias-replicas
                                     list-bot-locales list-bot-recommendations
                                     list-bot-replicas
                                     list-bot-resource-generations list-bots
                                     list-bot-version-replicas
                                     list-bot-versions list-built-in-intents
                                     list-built-in-slot-types
                                     list-custom-vocabulary-items list-exports
                                     list-imports list-intent-metrics
                                     list-intent-paths list-intents
                                     list-intent-stage-metrics
                                     list-recommended-intents
                                     list-session-analytics-data
                                     list-session-metrics list-slots
                                     list-slot-types list-tags-for-resource
                                     list-test-execution-result-items
                                     list-test-executions list-test-set-records
                                     list-test-sets
                                     list-utterance-analytics-data
                                     list-utterance-metrics
                                     search-associated-transcripts
                                     start-bot-recommendation
                                     start-bot-resource-generation start-import
                                     start-test-execution
                                     start-test-set-generation
                                     stop-bot-recommendation tag-resource
                                     untag-resource update-bot update-bot-alias
                                     update-bot-locale
                                     update-bot-recommendation update-export
                                     update-intent update-resource-policy
                                     update-slot update-slot-type
                                     update-test-set)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Lex Models V2")
                                      ("arnNamespace" . "lex")
                                      ("cloudFormationName" . "LexModelsV2")
                                      ("cloudTrailEventSource"
                                       . "lexmodelsv2.amazonaws.com")
                                      ("docId" . "models.lex.v2-2020-08-07")
                                      ("endpointPrefix" . "models-v2-lex"))
                                     ("aws.auth#sigv4" ("name" . "lex"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure active-context common-lisp:nil
                                    ((name :target-type active-context-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "ActiveContext"))

(smithy/sdk/shapes:define-list active-context-list :member active-context)

(smithy/sdk/shapes:define-type active-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure advanced-recognition-setting
                                    common-lisp:nil
                                    ((audio-recognition-strategy :target-type
                                      audio-recognition-strategy :member-name
                                      "audioRecognitionStrategy"))
                                    (:shape-name "AdvancedRecognitionSetting"))

(smithy/sdk/shapes:define-structure agent-turn-result common-lisp:nil
                                    ((expected-agent-prompt :target-type
                                      test-set-agent-prompt :required
                                      common-lisp:t :member-name
                                      "expectedAgentPrompt")
                                     (actual-agent-prompt :target-type
                                      test-set-agent-prompt :member-name
                                      "actualAgentPrompt")
                                     (error-details :target-type
                                      execution-error-details :member-name
                                      "errorDetails")
                                     (actual-elicited-slot :target-type
                                      test-result-slot-name :member-name
                                      "actualElicitedSlot")
                                     (actual-intent :target-type name
                                      :member-name "actualIntent"))
                                    (:shape-name "AgentTurnResult"))

(smithy/sdk/shapes:define-structure agent-turn-specification common-lisp:nil
                                    ((agent-prompt :target-type
                                      test-set-agent-prompt :required
                                      common-lisp:t :member-name
                                      "agentPrompt"))
                                    (:shape-name "AgentTurnSpecification"))

(smithy/sdk/shapes:define-structure aggregated-utterances-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      aggregated-utterances-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      aggregated-utterances-filter-operator
                                      :required common-lisp:t :member-name
                                      "operator"))
                                    (:shape-name "AggregatedUtterancesFilter"))

(smithy/sdk/shapes:define-enum aggregated-utterances-filter-name
    common-lisp:nil
  (:utterance "Utterance"))

(smithy/sdk/shapes:define-enum aggregated-utterances-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list aggregated-utterances-filters :member
                               aggregated-utterances-filter)

(smithy/sdk/shapes:define-enum aggregated-utterances-sort-attribute
    common-lisp:nil
  (:hit-count "HitCount")
  (:missed-count "MissedCount"))

(smithy/sdk/shapes:define-structure aggregated-utterances-sort-by
                                    common-lisp:nil
                                    ((attribute :target-type
                                      aggregated-utterances-sort-attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "AggregatedUtterancesSortBy"))

(smithy/sdk/shapes:define-structure aggregated-utterances-summary
                                    common-lisp:nil
                                    ((utterance :target-type utterance
                                      :member-name "utterance")
                                     (hit-count :target-type hit-count
                                      :member-name "hitCount")
                                     (missed-count :target-type missed-count
                                      :member-name "missedCount")
                                     (utterance-first-recorded-in-aggregation-duration
                                      :target-type timestamp :member-name
                                      "utteranceFirstRecordedInAggregationDuration")
                                     (utterance-last-recorded-in-aggregation-duration
                                      :target-type timestamp :member-name
                                      "utteranceLastRecordedInAggregationDuration")
                                     (contains-data-from-deleted-resources
                                      :target-type boxed-boolean :member-name
                                      "containsDataFromDeletedResources"))
                                    (:shape-name "AggregatedUtterancesSummary"))

(smithy/sdk/shapes:define-list aggregated-utterances-summary-list :member
                               aggregated-utterances-summary)

(smithy/sdk/shapes:define-structure allowed-input-types common-lisp:nil
                                    ((allow-audio-input :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "allowAudioInput")
                                     (allow-dtmfinput :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "allowDTMFInput"))
                                    (:shape-name "AllowedInputTypes"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analytics-bin-by-list :member
                               analytics-bin-by-specification)

(smithy/sdk/shapes:define-enum analytics-bin-by-name
    common-lisp:nil
  (:conversation-start-time "ConversationStartTime")
  (:utterance-timestamp "UtteranceTimestamp"))

(smithy/sdk/shapes:define-structure analytics-bin-by-specification
                                    common-lisp:nil
                                    ((name :target-type analytics-bin-by-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (interval :target-type analytics-interval
                                      :required common-lisp:t :member-name
                                      "interval")
                                     (order :target-type analytics-sort-order
                                      :member-name "order"))
                                    (:shape-name "AnalyticsBinBySpecification"))

(smithy/sdk/shapes:define-structure analytics-bin-key common-lisp:nil
                                    ((name :target-type analytics-bin-by-name
                                      :member-name "name")
                                     (value :target-type analytics-bin-value
                                      :member-name "value"))
                                    (:shape-name "AnalyticsBinKey"))

(smithy/sdk/shapes:define-list analytics-bin-keys :member analytics-bin-key)

(smithy/sdk/shapes:define-type analytics-bin-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type analytics-channel smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum analytics-common-filter-name
    common-lisp:nil
  (:bot-alias-id "BotAliasId")
  (:bot-version "BotVersion")
  (:locale-id "LocaleId")
  (:modality "Modality")
  (:channel "Channel"))

(smithy/sdk/shapes:define-enum analytics-filter-operator
    common-lisp:nil
  (:equals "EQ")
  (:greater-than "GT")
  (:less-than "LT"))

(smithy/sdk/shapes:define-type analytics-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analytics-filter-values :member
                               analytics-filter-value)

(smithy/sdk/shapes:define-type analytics-group-by-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum analytics-intent-field
    common-lisp:nil
  (:intent-name "IntentName")
  (:intent-end-state "IntentEndState")
  (:intent-level "IntentLevel"))

(smithy/sdk/shapes:define-structure analytics-intent-filter common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type
                                      analytics-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      analytics-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AnalyticsIntentFilter"))

(smithy/sdk/shapes:define-enum analytics-intent-filter-name
    common-lisp:nil
  (:bot-alias-id "BotAliasId")
  (:bot-version "BotVersion")
  (:locale-id "LocaleId")
  (:modality "Modality")
  (:channel "Channel")
  (:session-id "SessionId")
  (:originating-request-id "OriginatingRequestId")
  (:intent-name "IntentName")
  (:intent-end-state "IntentEndState"))

(smithy/sdk/shapes:define-list analytics-intent-filters :member
                               analytics-intent-filter)

(smithy/sdk/shapes:define-structure analytics-intent-group-by-key
                                    common-lisp:nil
                                    ((name :target-type analytics-intent-field
                                      :member-name "name")
                                     (value :target-type
                                      analytics-group-by-value :member-name
                                      "value"))
                                    (:shape-name "AnalyticsIntentGroupByKey"))

(smithy/sdk/shapes:define-list analytics-intent-group-by-keys :member
                               analytics-intent-group-by-key)

(smithy/sdk/shapes:define-list analytics-intent-group-by-list :member
                               analytics-intent-group-by-specification)

(smithy/sdk/shapes:define-structure analytics-intent-group-by-specification
                                    common-lisp:nil
                                    ((name :target-type analytics-intent-field
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name
                                     "AnalyticsIntentGroupBySpecification"))

(smithy/sdk/shapes:define-structure analytics-intent-metric common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-metric-name :required
                                      common-lisp:t :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :required
                                      common-lisp:t :member-name "statistic")
                                     (order :target-type analytics-sort-order
                                      :member-name "order"))
                                    (:shape-name "AnalyticsIntentMetric"))

(smithy/sdk/shapes:define-enum analytics-intent-metric-name
    common-lisp:nil
  (:count "Count")
  (:success "Success")
  (:failure "Failure")
  (:switched "Switched")
  (:dropped "Dropped"))

(smithy/sdk/shapes:define-structure analytics-intent-metric-result
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-metric-name :member-name
                                      "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :member-name
                                      "statistic")
                                     (value :target-type analytics-metric-value
                                      :member-name "value"))
                                    (:shape-name "AnalyticsIntentMetricResult"))

(smithy/sdk/shapes:define-list analytics-intent-metric-results :member
                               analytics-intent-metric-result)

(smithy/sdk/shapes:define-list analytics-intent-metrics :member
                               analytics-intent-metric)

(smithy/sdk/shapes:define-list analytics-intent-node-summaries :member
                               analytics-intent-node-summary)

(smithy/sdk/shapes:define-structure analytics-intent-node-summary
                                    common-lisp:nil
                                    ((intent-name :target-type name
                                      :member-name "intentName")
                                     (intent-path :target-type analytics-path
                                      :member-name "intentPath")
                                     (intent-count :target-type
                                      analytics-node-count :member-name
                                      "intentCount")
                                     (intent-level :target-type
                                      analytics-node-level :member-name
                                      "intentLevel")
                                     (node-type :target-type
                                      analytics-node-type :member-name
                                      "nodeType"))
                                    (:shape-name "AnalyticsIntentNodeSummary"))

(smithy/sdk/shapes:define-structure analytics-intent-result common-lisp:nil
                                    ((bin-keys :target-type analytics-bin-keys
                                      :member-name "binKeys")
                                     (group-by-keys :target-type
                                      analytics-intent-group-by-keys
                                      :member-name "groupByKeys")
                                     (metrics-results :target-type
                                      analytics-intent-metric-results
                                      :member-name "metricsResults"))
                                    (:shape-name "AnalyticsIntentResult"))

(smithy/sdk/shapes:define-list analytics-intent-results :member
                               analytics-intent-result)

(smithy/sdk/shapes:define-enum analytics-intent-stage-field
    common-lisp:nil
  (:intent-stage-name "IntentStageName")
  (:switched-to-intent "SwitchedToIntent"))

(smithy/sdk/shapes:define-structure analytics-intent-stage-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-stage-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (operator :target-type
                                      analytics-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      analytics-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AnalyticsIntentStageFilter"))

(smithy/sdk/shapes:define-enum analytics-intent-stage-filter-name
    common-lisp:nil
  (:bot-alias-id "BotAliasId")
  (:bot-version "BotVersion")
  (:locale-id "LocaleId")
  (:modality "Modality")
  (:channel "Channel")
  (:session-id "SessionId")
  (:originating-request-id "OriginatingRequestId")
  (:intent-name "IntentName")
  (:intent-stage-name "IntentStageName"))

(smithy/sdk/shapes:define-list analytics-intent-stage-filters :member
                               analytics-intent-stage-filter)

(smithy/sdk/shapes:define-structure analytics-intent-stage-group-by-key
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-stage-field :member-name
                                      "name")
                                     (value :target-type
                                      analytics-group-by-value :member-name
                                      "value"))
                                    (:shape-name
                                     "AnalyticsIntentStageGroupByKey"))

(smithy/sdk/shapes:define-list analytics-intent-stage-group-by-keys :member
                               analytics-intent-stage-group-by-key)

(smithy/sdk/shapes:define-list analytics-intent-stage-group-by-list :member
                               analytics-intent-stage-group-by-specification)

(smithy/sdk/shapes:define-structure
 analytics-intent-stage-group-by-specification common-lisp:nil
 ((name :target-type analytics-intent-stage-field :required common-lisp:t
   :member-name "name"))
 (:shape-name "AnalyticsIntentStageGroupBySpecification"))

(smithy/sdk/shapes:define-structure analytics-intent-stage-metric
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-stage-metric-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :required
                                      common-lisp:t :member-name "statistic")
                                     (order :target-type analytics-sort-order
                                      :member-name "order"))
                                    (:shape-name "AnalyticsIntentStageMetric"))

(smithy/sdk/shapes:define-enum analytics-intent-stage-metric-name
    common-lisp:nil
  (:count "Count")
  (:success "Success")
  (:failed "Failed")
  (:dropped "Dropped")
  (:retry "Retry"))

(smithy/sdk/shapes:define-structure analytics-intent-stage-metric-result
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-intent-stage-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :member-name
                                      "statistic")
                                     (value :target-type analytics-metric-value
                                      :member-name "value"))
                                    (:shape-name
                                     "AnalyticsIntentStageMetricResult"))

(smithy/sdk/shapes:define-list analytics-intent-stage-metric-results :member
                               analytics-intent-stage-metric-result)

(smithy/sdk/shapes:define-list analytics-intent-stage-metrics :member
                               analytics-intent-stage-metric)

(smithy/sdk/shapes:define-structure analytics-intent-stage-result
                                    common-lisp:nil
                                    ((bin-keys :target-type analytics-bin-keys
                                      :member-name "binKeys")
                                     (group-by-keys :target-type
                                      analytics-intent-stage-group-by-keys
                                      :member-name "groupByKeys")
                                     (metrics-results :target-type
                                      analytics-intent-stage-metric-results
                                      :member-name "metricsResults"))
                                    (:shape-name "AnalyticsIntentStageResult"))

(smithy/sdk/shapes:define-list analytics-intent-stage-results :member
                               analytics-intent-stage-result)

(smithy/sdk/shapes:define-enum analytics-interval
    common-lisp:nil
  (:one-hour "OneHour")
  (:one-day "OneDay"))

(smithy/sdk/shapes:define-type analytics-long-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum analytics-metric-statistic
    common-lisp:nil
  (:sum "Sum")
  (:avg "Avg")
  (:max "Max"))

(smithy/sdk/shapes:define-type analytics-metric-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum analytics-modality
    common-lisp:nil
  (:speech "Speech")
  (:text "Text")
  (:dtmf "DTMF")
  (:multi-mode "MultiMode"))

(smithy/sdk/shapes:define-type analytics-node-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type analytics-node-level
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum analytics-node-type
    common-lisp:nil
  (:inner "Inner")
  (:exit "Exit"))

(smithy/sdk/shapes:define-type analytics-originating-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type analytics-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analytics-path-filter common-lisp:nil
                                    ((name :target-type
                                      analytics-common-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type
                                      analytics-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      analytics-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AnalyticsPathFilter"))

(smithy/sdk/shapes:define-list analytics-path-filters :member
                               analytics-path-filter)

(smithy/sdk/shapes:define-enum analytics-session-field
    common-lisp:nil
  (:conversation-end-state "ConversationEndState")
  (:locale-id "LocaleId"))

(smithy/sdk/shapes:define-structure analytics-session-filter common-lisp:nil
                                    ((name :target-type
                                      analytics-session-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type
                                      analytics-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      analytics-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AnalyticsSessionFilter"))

(smithy/sdk/shapes:define-enum analytics-session-filter-name
    common-lisp:nil
  (:bot-alias-id "BotAliasId")
  (:bot-version "BotVersion")
  (:locale-id "LocaleId")
  (:modality "Modality")
  (:channel "Channel")
  (:duration "Duration")
  (:conversation-end-state "ConversationEndState")
  (:session-id "SessionId")
  (:originating-request-id "OriginatingRequestId")
  (:intent-path "IntentPath"))

(smithy/sdk/shapes:define-list analytics-session-filters :member
                               analytics-session-filter)

(smithy/sdk/shapes:define-structure analytics-session-group-by-key
                                    common-lisp:nil
                                    ((name :target-type analytics-session-field
                                      :member-name "name")
                                     (value :target-type
                                      analytics-group-by-value :member-name
                                      "value"))
                                    (:shape-name "AnalyticsSessionGroupByKey"))

(smithy/sdk/shapes:define-list analytics-session-group-by-keys :member
                               analytics-session-group-by-key)

(smithy/sdk/shapes:define-list analytics-session-group-by-list :member
                               analytics-session-group-by-specification)

(smithy/sdk/shapes:define-structure analytics-session-group-by-specification
                                    common-lisp:nil
                                    ((name :target-type analytics-session-field
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name
                                     "AnalyticsSessionGroupBySpecification"))

(smithy/sdk/shapes:define-type analytics-session-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analytics-session-metric common-lisp:nil
                                    ((name :target-type
                                      analytics-session-metric-name :required
                                      common-lisp:t :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :required
                                      common-lisp:t :member-name "statistic")
                                     (order :target-type analytics-sort-order
                                      :member-name "order"))
                                    (:shape-name "AnalyticsSessionMetric"))

(smithy/sdk/shapes:define-enum analytics-session-metric-name
    common-lisp:nil
  (:count "Count")
  (:success "Success")
  (:failure "Failure")
  (:dropped "Dropped")
  (:duration "Duration")
  (:turns-per-conversation "TurnsPerConversation")
  (:concurrency "Concurrency"))

(smithy/sdk/shapes:define-structure analytics-session-metric-result
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-session-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :member-name
                                      "statistic")
                                     (value :target-type analytics-metric-value
                                      :member-name "value"))
                                    (:shape-name
                                     "AnalyticsSessionMetricResult"))

(smithy/sdk/shapes:define-list analytics-session-metric-results :member
                               analytics-session-metric-result)

(smithy/sdk/shapes:define-list analytics-session-metrics :member
                               analytics-session-metric)

(smithy/sdk/shapes:define-structure analytics-session-result common-lisp:nil
                                    ((bin-keys :target-type analytics-bin-keys
                                      :member-name "binKeys")
                                     (group-by-keys :target-type
                                      analytics-session-group-by-keys
                                      :member-name "groupByKeys")
                                     (metrics-results :target-type
                                      analytics-session-metric-results
                                      :member-name "metricsResults"))
                                    (:shape-name "AnalyticsSessionResult"))

(smithy/sdk/shapes:define-list analytics-session-results :member
                               analytics-session-result)

(smithy/sdk/shapes:define-enum analytics-session-sort-by-name
    common-lisp:nil
  (:conversation-start-time "ConversationStartTime")
  (:number-of-turns "NumberOfTurns")
  (:duration "Duration"))

(smithy/sdk/shapes:define-enum analytics-sort-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-structure analytics-utterance-attribute
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-attribute-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "AnalyticsUtteranceAttribute"))

(smithy/sdk/shapes:define-enum analytics-utterance-attribute-name
    common-lisp:nil
  (:last-used-intent "LastUsedIntent"))

(smithy/sdk/shapes:define-structure analytics-utterance-attribute-result
                                    common-lisp:nil
                                    ((last-used-intent :target-type name
                                      :member-name "lastUsedIntent"))
                                    (:shape-name
                                     "AnalyticsUtteranceAttributeResult"))

(smithy/sdk/shapes:define-list analytics-utterance-attribute-results :member
                               analytics-utterance-attribute-result)

(smithy/sdk/shapes:define-list analytics-utterance-attributes :member
                               analytics-utterance-attribute)

(smithy/sdk/shapes:define-enum analytics-utterance-field
    common-lisp:nil
  (:utterance-text "UtteranceText")
  (:utterance-state "UtteranceState"))

(smithy/sdk/shapes:define-structure analytics-utterance-filter common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type
                                      analytics-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      analytics-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AnalyticsUtteranceFilter"))

(smithy/sdk/shapes:define-enum analytics-utterance-filter-name
    common-lisp:nil
  (:bot-alias-id "BotAliasId")
  (:bot-version "BotVersion")
  (:locale-id "LocaleId")
  (:modality "Modality")
  (:channel "Channel")
  (:session-id "SessionId")
  (:originating-request-id "OriginatingRequestId")
  (:utterance-state "UtteranceState")
  (:utterance-text "UtteranceText"))

(smithy/sdk/shapes:define-list analytics-utterance-filters :member
                               analytics-utterance-filter)

(smithy/sdk/shapes:define-structure analytics-utterance-group-by-key
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-field :member-name
                                      "name")
                                     (value :target-type
                                      analytics-group-by-value :member-name
                                      "value"))
                                    (:shape-name
                                     "AnalyticsUtteranceGroupByKey"))

(smithy/sdk/shapes:define-list analytics-utterance-group-by-keys :member
                               analytics-utterance-group-by-key)

(smithy/sdk/shapes:define-list analytics-utterance-group-by-list :member
                               analytics-utterance-group-by-specification)

(smithy/sdk/shapes:define-structure analytics-utterance-group-by-specification
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-field :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name
                                     "AnalyticsUtteranceGroupBySpecification"))

(smithy/sdk/shapes:define-structure analytics-utterance-metric common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-metric-name :required
                                      common-lisp:t :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :required
                                      common-lisp:t :member-name "statistic")
                                     (order :target-type analytics-sort-order
                                      :member-name "order"))
                                    (:shape-name "AnalyticsUtteranceMetric"))

(smithy/sdk/shapes:define-enum analytics-utterance-metric-name
    common-lisp:nil
  (:count "Count")
  (:missed "Missed")
  (:detected "Detected")
  (:utterance-timestamp "UtteranceTimestamp"))

(smithy/sdk/shapes:define-structure analytics-utterance-metric-result
                                    common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      analytics-metric-statistic :member-name
                                      "statistic")
                                     (value :target-type analytics-metric-value
                                      :member-name "value"))
                                    (:shape-name
                                     "AnalyticsUtteranceMetricResult"))

(smithy/sdk/shapes:define-list analytics-utterance-metric-results :member
                               analytics-utterance-metric-result)

(smithy/sdk/shapes:define-list analytics-utterance-metrics :member
                               analytics-utterance-metric)

(smithy/sdk/shapes:define-structure analytics-utterance-result common-lisp:nil
                                    ((bin-keys :target-type analytics-bin-keys
                                      :member-name "binKeys")
                                     (group-by-keys :target-type
                                      analytics-utterance-group-by-keys
                                      :member-name "groupByKeys")
                                     (metrics-results :target-type
                                      analytics-utterance-metric-results
                                      :member-name "metricsResults")
                                     (attribute-results :target-type
                                      analytics-utterance-attribute-results
                                      :member-name "attributeResults"))
                                    (:shape-name "AnalyticsUtteranceResult"))

(smithy/sdk/shapes:define-list analytics-utterance-results :member
                               analytics-utterance-result)

(smithy/sdk/shapes:define-enum analytics-utterance-sort-by-name
    common-lisp:nil
  (:utterance-timestamp "UtteranceTimestamp"))

(smithy/sdk/shapes:define-type answer-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associated-transcript common-lisp:nil
                                    ((transcript :target-type transcript
                                      :member-name "transcript"))
                                    (:shape-name "AssociatedTranscript"))

(smithy/sdk/shapes:define-structure associated-transcript-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      associated-transcript-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "AssociatedTranscriptFilter"))

(smithy/sdk/shapes:define-enum associated-transcript-filter-name
    common-lisp:nil
  (:intent-id "IntentId")
  (:slot-type-id "SlotTypeId"))

(smithy/sdk/shapes:define-list associated-transcript-filters :member
                               associated-transcript-filter)

(smithy/sdk/shapes:define-list associated-transcript-list :member
                               associated-transcript)

(smithy/sdk/shapes:define-type attachment-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audio-and-dtmfinput-specification
                                    common-lisp:nil
                                    ((start-timeout-ms :target-type
                                      time-in-milli-seconds :required
                                      common-lisp:t :member-name
                                      "startTimeoutMs")
                                     (audio-specification :target-type
                                      audio-specification :member-name
                                      "audioSpecification")
                                     (dtmf-specification :target-type
                                      dtmfspecification :member-name
                                      "dtmfSpecification"))
                                    (:shape-name
                                     "AudioAndDTMFInputSpecification"))

(smithy/sdk/shapes:define-type audio-file-s3location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audio-log-destination common-lisp:nil
                                    ((s3bucket :target-type
                                      s3bucket-log-destination :required
                                      common-lisp:t :member-name "s3Bucket"))
                                    (:shape-name "AudioLogDestination"))

(smithy/sdk/shapes:define-structure audio-log-setting common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (destination :target-type
                                      audio-log-destination :required
                                      common-lisp:t :member-name "destination")
                                     (selective-logging-enabled :target-type
                                      boxed-boolean :member-name
                                      "selectiveLoggingEnabled"))
                                    (:shape-name "AudioLogSetting"))

(smithy/sdk/shapes:define-list audio-log-settings-list :member
                               audio-log-setting)

(smithy/sdk/shapes:define-enum audio-recognition-strategy
    common-lisp:nil
  (:use-slot-values-as-custom-vocabulary "UseSlotValuesAsCustomVocabulary"))

(smithy/sdk/shapes:define-structure audio-specification common-lisp:nil
                                    ((max-length-ms :target-type
                                      time-in-milli-seconds :required
                                      common-lisp:t :member-name "maxLengthMs")
                                     (end-timeout-ms :target-type
                                      time-in-milli-seconds :required
                                      common-lisp:t :member-name
                                      "endTimeoutMs"))
                                    (:shape-name "AudioSpecification"))

(smithy/sdk/shapes:define-input batch-create-custom-vocabulary-item-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (custom-vocabulary-item-list :target-type
                                  create-custom-vocabulary-items-list :required
                                  common-lisp:t :member-name
                                  "customVocabularyItemList"))
                                (:shape-name
                                 "BatchCreateCustomVocabularyItemRequest"))

(smithy/sdk/shapes:define-output batch-create-custom-vocabulary-item-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (errors :target-type
                                   failed-custom-vocabulary-items :member-name
                                   "errors")
                                  (resources :target-type
                                   custom-vocabulary-items :member-name
                                   "resources"))
                                 (:shape-name
                                  "BatchCreateCustomVocabularyItemResponse"))

(smithy/sdk/shapes:define-input batch-delete-custom-vocabulary-item-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (custom-vocabulary-item-list :target-type
                                  delete-custom-vocabulary-items-list :required
                                  common-lisp:t :member-name
                                  "customVocabularyItemList"))
                                (:shape-name
                                 "BatchDeleteCustomVocabularyItemRequest"))

(smithy/sdk/shapes:define-output batch-delete-custom-vocabulary-item-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (errors :target-type
                                   failed-custom-vocabulary-items :member-name
                                   "errors")
                                  (resources :target-type
                                   custom-vocabulary-items :member-name
                                   "resources"))
                                 (:shape-name
                                  "BatchDeleteCustomVocabularyItemResponse"))

(smithy/sdk/shapes:define-input batch-update-custom-vocabulary-item-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (custom-vocabulary-item-list :target-type
                                  update-custom-vocabulary-items-list :required
                                  common-lisp:t :member-name
                                  "customVocabularyItemList"))
                                (:shape-name
                                 "BatchUpdateCustomVocabularyItemRequest"))

(smithy/sdk/shapes:define-output batch-update-custom-vocabulary-item-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (errors :target-type
                                   failed-custom-vocabulary-items :member-name
                                   "errors")
                                  (resources :target-type
                                   custom-vocabulary-items :member-name
                                   "resources"))
                                 (:shape-name
                                  "BatchUpdateCustomVocabularyItemResponse"))

(smithy/sdk/shapes:define-structure bedrock-guardrail-configuration
                                    common-lisp:nil
                                    ((identifier :target-type
                                      bedrock-guardrail-identifier :required
                                      common-lisp:t :member-name "identifier")
                                     (version :target-type
                                      bedrock-guardrail-version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name
                                     "BedrockGuardrailConfiguration"))

(smithy/sdk/shapes:define-type bedrock-guardrail-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-guardrail-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-knowledge-base-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-knowledge-store-configuration
                                    common-lisp:nil
                                    ((bedrock-knowledge-base-arn :target-type
                                      bedrock-knowledge-base-arn :required
                                      common-lisp:t :member-name
                                      "bedrockKnowledgeBaseArn")
                                     (exact-response :target-type boolean
                                      :member-name "exactResponse")
                                     (exact-response-fields :target-type
                                      bedrock-knowledge-store-exact-response-fields
                                      :member-name "exactResponseFields"))
                                    (:shape-name
                                     "BedrockKnowledgeStoreConfiguration"))

(smithy/sdk/shapes:define-structure
 bedrock-knowledge-store-exact-response-fields common-lisp:nil
 ((answer-field :target-type answer-field :member-name "answerField"))
 (:shape-name "BedrockKnowledgeStoreExactResponseFields"))

(smithy/sdk/shapes:define-type bedrock-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-model-custom-prompt
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-model-specification common-lisp:nil
                                    ((model-arn :target-type bedrock-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (guardrail :target-type
                                      bedrock-guardrail-configuration
                                      :member-name "guardrail")
                                     (trace-status :target-type
                                      bedrock-trace-status :member-name
                                      "traceStatus")
                                     (custom-prompt :target-type
                                      bedrock-model-custom-prompt :member-name
                                      "customPrompt"))
                                    (:shape-name "BedrockModelSpecification"))

(smithy/sdk/shapes:define-enum bedrock-trace-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bot-alias-history-event common-lisp:nil
                                    ((bot-version :target-type bot-version
                                      :member-name "botVersion")
                                     (start-date :target-type timestamp
                                      :member-name "startDate")
                                     (end-date :target-type timestamp
                                      :member-name "endDate"))
                                    (:shape-name "BotAliasHistoryEvent"))

(smithy/sdk/shapes:define-list bot-alias-history-events-list :member
                               bot-alias-history-event)

(smithy/sdk/shapes:define-type bot-alias-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bot-alias-locale-settings common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (code-hook-specification :target-type
                                      code-hook-specification :member-name
                                      "codeHookSpecification"))
                                    (:shape-name "BotAliasLocaleSettings"))

(smithy/sdk/shapes:define-map bot-alias-locale-settings-map :key locale-id
                              :value bot-alias-locale-settings)

(smithy/sdk/shapes:define-type bot-alias-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bot-alias-replica-summary common-lisp:nil
                                    ((bot-alias-id :target-type bot-alias-id
                                      :member-name "botAliasId")
                                     (bot-alias-replication-status :target-type
                                      bot-alias-replication-status :member-name
                                      "botAliasReplicationStatus")
                                     (bot-version :target-type bot-version
                                      :member-name "botVersion")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons"))
                                    (:shape-name "BotAliasReplicaSummary"))

(smithy/sdk/shapes:define-list bot-alias-replica-summary-list :member
                               bot-alias-replica-summary)

(smithy/sdk/shapes:define-enum bot-alias-replication-status
    common-lisp:nil
  (:creating "Creating")
  (:updating "Updating")
  (:available "Available")
  (:deleting "Deleting")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum bot-alias-status
    common-lisp:nil
  (:creating "Creating")
  (:available "Available")
  (:deleting "Deleting")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure bot-alias-summary common-lisp:nil
                                    ((bot-alias-id :target-type bot-alias-id
                                      :member-name "botAliasId")
                                     (bot-alias-name :target-type name
                                      :member-name "botAliasName")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-version :target-type bot-version
                                      :member-name "botVersion")
                                     (bot-alias-status :target-type
                                      bot-alias-status :member-name
                                      "botAliasStatus")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "BotAliasSummary"))

(smithy/sdk/shapes:define-list bot-alias-summary-list :member bot-alias-summary)

(smithy/sdk/shapes:define-structure bot-alias-test-execution-target
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-alias-id :target-type bot-alias-id
                                      :required common-lisp:t :member-name
                                      "botAliasId")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId"))
                                    (:shape-name "BotAliasTestExecutionTarget"))

(smithy/sdk/shapes:define-structure bot-export-specification common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type bot-version
                                      :required common-lisp:t :member-name
                                      "botVersion"))
                                    (:shape-name "BotExportSpecification"))

(smithy/sdk/shapes:define-structure bot-filter common-lisp:nil
                                    ((name :target-type bot-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type bot-filter-operator
                                      :required common-lisp:t :member-name
                                      "operator"))
                                    (:shape-name "BotFilter"))

(smithy/sdk/shapes:define-enum bot-filter-name
    common-lisp:nil
  (:bot-name "BotName")
  (:bot-type "BotType"))

(smithy/sdk/shapes:define-enum bot-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ")
  (:not-equals "NE"))

(smithy/sdk/shapes:define-list bot-filters :member bot-filter)

(smithy/sdk/shapes:define-structure bot-import-specification common-lisp:nil
                                    ((bot-name :target-type name :required
                                      common-lisp:t :member-name "botName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (data-privacy :target-type data-privacy
                                      :required common-lisp:t :member-name
                                      "dataPrivacy")
                                     (error-log-settings :target-type
                                      error-log-settings :member-name
                                      "errorLogSettings")
                                     (idle-session-ttlin-seconds :target-type
                                      session-ttl :member-name
                                      "idleSessionTTLInSeconds")
                                     (bot-tags :target-type tag-map
                                      :member-name "botTags")
                                     (test-bot-alias-tags :target-type tag-map
                                      :member-name "testBotAliasTags"))
                                    (:shape-name "BotImportSpecification"))

(smithy/sdk/shapes:define-structure bot-locale-export-specification
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type bot-version
                                      :required common-lisp:t :member-name
                                      "botVersion")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId"))
                                    (:shape-name
                                     "BotLocaleExportSpecification"))

(smithy/sdk/shapes:define-structure bot-locale-filter common-lisp:nil
                                    ((name :target-type bot-locale-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      bot-locale-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "BotLocaleFilter"))

(smithy/sdk/shapes:define-enum bot-locale-filter-name
    common-lisp:nil
  (:bot-locale-name "BotLocaleName"))

(smithy/sdk/shapes:define-enum bot-locale-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list bot-locale-filters :member bot-locale-filter)

(smithy/sdk/shapes:define-structure bot-locale-history-event common-lisp:nil
                                    ((event :target-type
                                      bot-locale-history-event-description
                                      :required common-lisp:t :member-name
                                      "event")
                                     (event-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "eventDate"))
                                    (:shape-name "BotLocaleHistoryEvent"))

(smithy/sdk/shapes:define-type bot-locale-history-event-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list bot-locale-history-events-list :member
                               bot-locale-history-event)

(smithy/sdk/shapes:define-structure bot-locale-import-specification
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type
                                      draft-bot-version :required common-lisp:t
                                      :member-name "botVersion")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId")
                                     (nlu-intent-confidence-threshold
                                      :target-type confidence-threshold
                                      :member-name
                                      "nluIntentConfidenceThreshold")
                                     (voice-settings :target-type
                                      voice-settings :member-name
                                      "voiceSettings"))
                                    (:shape-name
                                     "BotLocaleImportSpecification"))

(smithy/sdk/shapes:define-enum bot-locale-sort-attribute
    common-lisp:nil
  (:bot-locale-name "BotLocaleName"))

(smithy/sdk/shapes:define-structure bot-locale-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      bot-locale-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BotLocaleSortBy"))

(smithy/sdk/shapes:define-enum bot-locale-status
    common-lisp:nil
  (:creating "Creating")
  (:building "Building")
  (:built "Built")
  (:ready-express-testing "ReadyExpressTesting")
  (:failed "Failed")
  (:deleting "Deleting")
  (:not-built "NotBuilt")
  (:importing "Importing")
  (:processing "Processing"))

(smithy/sdk/shapes:define-structure bot-locale-summary common-lisp:nil
                                    ((locale-id :target-type locale-id
                                      :member-name "localeId")
                                     (locale-name :target-type locale-name
                                      :member-name "localeName")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-locale-status :target-type
                                      bot-locale-status :member-name
                                      "botLocaleStatus")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (last-build-submitted-date-time
                                      :target-type timestamp :member-name
                                      "lastBuildSubmittedDateTime"))
                                    (:shape-name "BotLocaleSummary"))

(smithy/sdk/shapes:define-list bot-locale-summary-list :member
                               bot-locale-summary)

(smithy/sdk/shapes:define-structure bot-member common-lisp:nil
                                    ((bot-member-id :target-type id :required
                                      common-lisp:t :member-name "botMemberId")
                                     (bot-member-name :target-type name
                                      :required common-lisp:t :member-name
                                      "botMemberName")
                                     (bot-member-alias-id :target-type
                                      bot-alias-id :required common-lisp:t
                                      :member-name "botMemberAliasId")
                                     (bot-member-alias-name :target-type
                                      bot-alias-name :required common-lisp:t
                                      :member-name "botMemberAliasName")
                                     (bot-member-version :target-type
                                      bot-version :required common-lisp:t
                                      :member-name "botMemberVersion"))
                                    (:shape-name "BotMember"))

(smithy/sdk/shapes:define-list bot-members :member bot-member)

(smithy/sdk/shapes:define-structure bot-recommendation-result-statistics
                                    common-lisp:nil
                                    ((intents :target-type intent-statistics
                                      :member-name "intents")
                                     (slot-types :target-type
                                      slot-type-statistics :member-name
                                      "slotTypes"))
                                    (:shape-name
                                     "BotRecommendationResultStatistics"))

(smithy/sdk/shapes:define-structure bot-recommendation-results common-lisp:nil
                                    ((bot-locale-export-url :target-type
                                      presigned-s3url :member-name
                                      "botLocaleExportUrl")
                                     (associated-transcripts-url :target-type
                                      presigned-s3url :member-name
                                      "associatedTranscriptsUrl")
                                     (statistics :target-type
                                      bot-recommendation-result-statistics
                                      :member-name "statistics"))
                                    (:shape-name "BotRecommendationResults"))

(smithy/sdk/shapes:define-enum bot-recommendation-status
    common-lisp:nil
  (:processing "Processing")
  (:deleting "Deleting")
  (:deleted "Deleted")
  (:downloading "Downloading")
  (:updating "Updating")
  (:available "Available")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-structure bot-recommendation-summary common-lisp:nil
                                    ((bot-recommendation-status :target-type
                                      bot-recommendation-status :required
                                      common-lisp:t :member-name
                                      "botRecommendationStatus")
                                     (bot-recommendation-id :target-type id
                                      :required common-lisp:t :member-name
                                      "botRecommendationId")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "BotRecommendationSummary"))

(smithy/sdk/shapes:define-list bot-recommendation-summary-list :member
                               bot-recommendation-summary)

(smithy/sdk/shapes:define-enum bot-replica-status
    common-lisp:nil
  (:enabling "Enabling")
  (:enabled "Enabled")
  (:deleting "Deleting")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure bot-replica-summary common-lisp:nil
                                    ((replica-region :target-type
                                      replica-region :member-name
                                      "replicaRegion")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (bot-replica-status :target-type
                                      bot-replica-status :member-name
                                      "botReplicaStatus")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons"))
                                    (:shape-name "BotReplicaSummary"))

(smithy/sdk/shapes:define-list bot-replica-summary-list :member
                               bot-replica-summary)

(smithy/sdk/shapes:define-enum bot-sort-attribute
    common-lisp:nil
  (:bot-name "BotName"))

(smithy/sdk/shapes:define-structure bot-sort-by common-lisp:nil
                                    ((attribute :target-type bot-sort-attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BotSortBy"))

(smithy/sdk/shapes:define-enum bot-status
    common-lisp:nil
  (:creating "Creating")
  (:available "Available")
  (:inactive "Inactive")
  (:deleting "Deleting")
  (:failed "Failed")
  (:versioning "Versioning")
  (:importing "Importing")
  (:updating "Updating"))

(smithy/sdk/shapes:define-structure bot-summary common-lisp:nil
                                    ((bot-id :target-type id :member-name
                                      "botId")
                                     (bot-name :target-type name :member-name
                                      "botName")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-status :target-type bot-status
                                      :member-name "botStatus")
                                     (latest-bot-version :target-type
                                      numerical-bot-version :member-name
                                      "latestBotVersion")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (bot-type :target-type bot-type
                                      :member-name "botType"))
                                    (:shape-name "BotSummary"))

(smithy/sdk/shapes:define-list bot-summary-list :member bot-summary)

(smithy/sdk/shapes:define-enum bot-type
    common-lisp:nil
  (:bot "Bot")
  (:bot-network "BotNetwork"))

(smithy/sdk/shapes:define-type bot-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bot-version-locale-details common-lisp:nil
                                    ((source-bot-version :target-type
                                      bot-version :required common-lisp:t
                                      :member-name "sourceBotVersion"))
                                    (:shape-name "BotVersionLocaleDetails"))

(smithy/sdk/shapes:define-map bot-version-locale-specification :key locale-id
                              :value bot-version-locale-details)

(smithy/sdk/shapes:define-enum bot-version-replica-sort-attribute
    common-lisp:nil
  (:bot-version "BotVersion"))

(smithy/sdk/shapes:define-structure bot-version-replica-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      bot-version-replica-sort-attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BotVersionReplicaSortBy"))

(smithy/sdk/shapes:define-structure bot-version-replica-summary common-lisp:nil
                                    ((bot-version :target-type bot-version
                                      :member-name "botVersion")
                                     (bot-version-replication-status
                                      :target-type
                                      bot-version-replication-status
                                      :member-name
                                      "botVersionReplicationStatus")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons"))
                                    (:shape-name "BotVersionReplicaSummary"))

(smithy/sdk/shapes:define-list bot-version-replica-summary-list :member
                               bot-version-replica-summary)

(smithy/sdk/shapes:define-enum bot-version-replication-status
    common-lisp:nil
  (:creating "Creating")
  (:available "Available")
  (:deleting "Deleting")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum bot-version-sort-attribute
    common-lisp:nil
  (:bot-version "BotVersion"))

(smithy/sdk/shapes:define-structure bot-version-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      bot-version-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BotVersionSortBy"))

(smithy/sdk/shapes:define-structure bot-version-summary common-lisp:nil
                                    ((bot-name :target-type name :member-name
                                      "botName")
                                     (bot-version :target-type bot-version
                                      :member-name "botVersion")
                                     (description :target-type description
                                      :member-name "description")
                                     (bot-status :target-type bot-status
                                      :member-name "botStatus")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime"))
                                    (:shape-name "BotVersionSummary"))

(smithy/sdk/shapes:define-list bot-version-summary-list :member
                               bot-version-summary)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input build-bot-locale-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "BuildBotLocaleRequest"))

(smithy/sdk/shapes:define-output build-bot-locale-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-locale-status :target-type
                                   bot-locale-status :member-name
                                   "botLocaleStatus")
                                  (last-build-submitted-date-time :target-type
                                   timestamp :member-name
                                   "lastBuildSubmittedDateTime"))
                                 (:shape-name "BuildBotLocaleResponse"))

(smithy/sdk/shapes:define-structure buildtime-settings common-lisp:nil
                                    ((descriptive-bot-builder :target-type
                                      descriptive-bot-builder-specification
                                      :member-name "descriptiveBotBuilder")
                                     (sample-utterance-generation :target-type
                                      sample-utterance-generation-specification
                                      :member-name
                                      "sampleUtteranceGeneration"))
                                    (:shape-name "BuildtimeSettings"))

(smithy/sdk/shapes:define-enum built-in-intent-sort-attribute
    common-lisp:nil
  (:intent-signature "IntentSignature"))

(smithy/sdk/shapes:define-structure built-in-intent-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      built-in-intent-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BuiltInIntentSortBy"))

(smithy/sdk/shapes:define-structure built-in-intent-summary common-lisp:nil
                                    ((intent-signature :target-type
                                      intent-signature :member-name
                                      "intentSignature")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "BuiltInIntentSummary"))

(smithy/sdk/shapes:define-list built-in-intent-summary-list :member
                               built-in-intent-summary)

(smithy/sdk/shapes:define-type built-in-or-custom-slot-type-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum built-in-slot-type-sort-attribute
    common-lisp:nil
  (:slot-type-signature "SlotTypeSignature"))

(smithy/sdk/shapes:define-structure built-in-slot-type-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      built-in-slot-type-sort-attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "BuiltInSlotTypeSortBy"))

(smithy/sdk/shapes:define-structure built-in-slot-type-summary common-lisp:nil
                                    ((slot-type-signature :target-type
                                      slot-type-signature :member-name
                                      "slotTypeSignature")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "BuiltInSlotTypeSummary"))

(smithy/sdk/shapes:define-list built-in-slot-type-summary-list :member
                               built-in-slot-type-summary)

(smithy/sdk/shapes:define-type built-ins-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure button common-lisp:nil
                                    ((text :target-type button-text :required
                                      common-lisp:t :member-name "text")
                                     (value :target-type button-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Button"))

(smithy/sdk/shapes:define-type button-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type button-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list buttons-list :member button)

(smithy/sdk/shapes:define-type child-directed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cloud-watch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-log-group-log-destination
                                    common-lisp:nil
                                    ((cloud-watch-log-group-arn :target-type
                                      cloud-watch-log-group-arn :required
                                      common-lisp:t :member-name
                                      "cloudWatchLogGroupArn")
                                     (log-prefix :target-type log-prefix
                                      :required common-lisp:t :member-name
                                      "logPrefix"))
                                    (:shape-name
                                     "CloudWatchLogGroupLogDestination"))

(smithy/sdk/shapes:define-type code-hook-interface-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-hook-specification common-lisp:nil
                                    ((lambda-code-hook :target-type
                                      lambda-code-hook :required common-lisp:t
                                      :member-name "lambdaCodeHook"))
                                    (:shape-name "CodeHookSpecification"))

(smithy/sdk/shapes:define-structure composite-slot-type-setting common-lisp:nil
                                    ((sub-slots :target-type sub-slot-type-list
                                      :member-name "subSlots"))
                                    (:shape-name "CompositeSlotTypeSetting"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((expression-string :target-type
                                      condition-expression :required
                                      common-lisp:t :member-name
                                      "expressionString"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-type condition-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type condition-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map condition-key-value-map :key condition-key :value
                              condition-value)

(smithy/sdk/shapes:define-map condition-map :key condition-operator :value
                              condition-key-value-map)

(smithy/sdk/shapes:define-type condition-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type condition-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conditional-branch common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (next-step :target-type dialog-state
                                      :required common-lisp:t :member-name
                                      "nextStep")
                                     (response :target-type
                                      response-specification :member-name
                                      "response"))
                                    (:shape-name "ConditionalBranch"))

(smithy/sdk/shapes:define-list conditional-branches :member conditional-branch)

(smithy/sdk/shapes:define-structure conditional-specification common-lisp:nil
                                    ((active :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "active")
                                     (conditional-branches :target-type
                                      conditional-branches :required
                                      common-lisp:t :member-name
                                      "conditionalBranches")
                                     (default-branch :target-type
                                      default-conditional-branch :required
                                      common-lisp:t :member-name
                                      "defaultBranch"))
                                    (:shape-name "ConditionalSpecification"))

(smithy/sdk/shapes:define-type confidence-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type context-time-to-live-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type context-turns-to-live
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum conversation-end-state
    common-lisp:nil
  (:success "Success")
  (:failure "Failure")
  (:dropped "Dropped"))

(smithy/sdk/shapes:define-structure
 conversation-level-intent-classification-result-item common-lisp:nil
 ((intent-name :target-type name :required common-lisp:t :member-name
   "intentName")
  (match-result :target-type test-result-match-status :required common-lisp:t
   :member-name "matchResult"))
 (:shape-name "ConversationLevelIntentClassificationResultItem"))

(smithy/sdk/shapes:define-list conversation-level-intent-classification-results
                               :member
                               conversation-level-intent-classification-result-item)

(smithy/sdk/shapes:define-structure conversation-level-result-detail
                                    common-lisp:nil
                                    ((end-to-end-result :target-type
                                      test-result-match-status :required
                                      common-lisp:t :member-name
                                      "endToEndResult")
                                     (speech-transcription-result :target-type
                                      test-result-match-status :member-name
                                      "speechTranscriptionResult"))
                                    (:shape-name
                                     "ConversationLevelResultDetail"))

(smithy/sdk/shapes:define-structure
 conversation-level-slot-resolution-result-item common-lisp:nil
 ((intent-name :target-type name :required common-lisp:t :member-name
   "intentName")
  (slot-name :target-type test-result-slot-name :required common-lisp:t
   :member-name "slotName")
  (match-result :target-type test-result-match-status :required common-lisp:t
   :member-name "matchResult"))
 (:shape-name "ConversationLevelSlotResolutionResultItem"))

(smithy/sdk/shapes:define-list conversation-level-slot-resolution-results
                               :member
                               conversation-level-slot-resolution-result-item)

(smithy/sdk/shapes:define-structure conversation-level-test-result-item
                                    common-lisp:nil
                                    ((conversation-id :target-type
                                      test-set-conversation-id :required
                                      common-lisp:t :member-name
                                      "conversationId")
                                     (end-to-end-result :target-type
                                      test-result-match-status :required
                                      common-lisp:t :member-name
                                      "endToEndResult")
                                     (speech-transcription-result :target-type
                                      test-result-match-status :member-name
                                      "speechTranscriptionResult")
                                     (intent-classification-results
                                      :target-type
                                      conversation-level-intent-classification-results
                                      :required common-lisp:t :member-name
                                      "intentClassificationResults")
                                     (slot-resolution-results :target-type
                                      conversation-level-slot-resolution-results
                                      :required common-lisp:t :member-name
                                      "slotResolutionResults"))
                                    (:shape-name
                                     "ConversationLevelTestResultItem"))

(smithy/sdk/shapes:define-list conversation-level-test-result-item-list :member
                               conversation-level-test-result-item)

(smithy/sdk/shapes:define-structure conversation-level-test-results
                                    common-lisp:nil
                                    ((items :target-type
                                      conversation-level-test-result-item-list
                                      :required common-lisp:t :member-name
                                      "items"))
                                    (:shape-name
                                     "ConversationLevelTestResults"))

(smithy/sdk/shapes:define-structure conversation-level-test-results-filter-by
                                    common-lisp:nil
                                    ((end-to-end-result :target-type
                                      test-result-match-status :member-name
                                      "endToEndResult"))
                                    (:shape-name
                                     "ConversationLevelTestResultsFilterBy"))

(smithy/sdk/shapes:define-structure conversation-log-settings common-lisp:nil
                                    ((text-log-settings :target-type
                                      text-log-settings-list :member-name
                                      "textLogSettings")
                                     (audio-log-settings :target-type
                                      audio-log-settings-list :member-name
                                      "audioLogSettings"))
                                    (:shape-name "ConversationLogSettings"))

(smithy/sdk/shapes:define-structure conversation-logs-data-source
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-alias-id :target-type bot-alias-id
                                      :required common-lisp:t :member-name
                                      "botAliasId")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId")
                                     (filter :target-type
                                      conversation-logs-data-source-filter-by
                                      :required common-lisp:t :member-name
                                      "filter"))
                                    (:shape-name "ConversationLogsDataSource"))

(smithy/sdk/shapes:define-structure conversation-logs-data-source-filter-by
                                    common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "endTime")
                                     (input-mode :target-type
                                      conversation-logs-input-mode-filter
                                      :required common-lisp:t :member-name
                                      "inputMode"))
                                    (:shape-name
                                     "ConversationLogsDataSourceFilterBy"))

(smithy/sdk/shapes:define-enum conversation-logs-input-mode-filter
    common-lisp:nil
  (:speech "Speech")
  (:text "Text"))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-bot-alias-request common-lisp:nil
                                ((bot-alias-name :target-type name :required
                                  common-lisp:t :member-name "botAliasName")
                                 (description :target-type description
                                  :member-name "description")
                                 (bot-version :target-type
                                  numerical-bot-version :member-name
                                  "botVersion")
                                 (bot-alias-locale-settings :target-type
                                  bot-alias-locale-settings-map :member-name
                                  "botAliasLocaleSettings")
                                 (conversation-log-settings :target-type
                                  conversation-log-settings :member-name
                                  "conversationLogSettings")
                                 (sentiment-analysis-settings :target-type
                                  sentiment-analysis-settings :member-name
                                  "sentimentAnalysisSettings")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateBotAliasRequest"))

(smithy/sdk/shapes:define-output create-bot-alias-response common-lisp:nil
                                 ((bot-alias-id :target-type bot-alias-id
                                   :member-name "botAliasId")
                                  (bot-alias-name :target-type name
                                   :member-name "botAliasName")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type
                                   numerical-bot-version :member-name
                                   "botVersion")
                                  (bot-alias-locale-settings :target-type
                                   bot-alias-locale-settings-map :member-name
                                   "botAliasLocaleSettings")
                                  (conversation-log-settings :target-type
                                   conversation-log-settings :member-name
                                   "conversationLogSettings")
                                  (sentiment-analysis-settings :target-type
                                   sentiment-analysis-settings :member-name
                                   "sentimentAnalysisSettings")
                                  (bot-alias-status :target-type
                                   bot-alias-status :member-name
                                   "botAliasStatus")
                                  (bot-id :target-type id :member-name "botId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateBotAliasResponse"))

(smithy/sdk/shapes:define-input create-bot-locale-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId")
                                 (description :target-type description
                                  :member-name "description")
                                 (nlu-intent-confidence-threshold :target-type
                                  confidence-threshold :required common-lisp:t
                                  :member-name "nluIntentConfidenceThreshold")
                                 (voice-settings :target-type voice-settings
                                  :member-name "voiceSettings")
                                 (generative-aisettings :target-type
                                  generative-aisettings :member-name
                                  "generativeAISettings"))
                                (:shape-name "CreateBotLocaleRequest"))

(smithy/sdk/shapes:define-output create-bot-locale-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-name :target-type locale-name
                                   :member-name "localeName")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (description :target-type description
                                   :member-name "description")
                                  (nlu-intent-confidence-threshold :target-type
                                   confidence-threshold :member-name
                                   "nluIntentConfidenceThreshold")
                                  (voice-settings :target-type voice-settings
                                   :member-name "voiceSettings")
                                  (bot-locale-status :target-type
                                   bot-locale-status :member-name
                                   "botLocaleStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (generative-aisettings :target-type
                                   generative-aisettings :member-name
                                   "generativeAISettings"))
                                 (:shape-name "CreateBotLocaleResponse"))

(smithy/sdk/shapes:define-input create-bot-replica-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (replica-region :target-type replica-region
                                  :required common-lisp:t :member-name
                                  "replicaRegion"))
                                (:shape-name "CreateBotReplicaRequest"))

(smithy/sdk/shapes:define-output create-bot-replica-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (replica-region :target-type replica-region
                                   :member-name "replicaRegion")
                                  (source-region :target-type replica-region
                                   :member-name "sourceRegion")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (bot-replica-status :target-type
                                   bot-replica-status :member-name
                                   "botReplicaStatus"))
                                 (:shape-name "CreateBotReplicaResponse"))

(smithy/sdk/shapes:define-input create-bot-request common-lisp:nil
                                ((bot-name :target-type name :required
                                  common-lisp:t :member-name "botName")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (data-privacy :target-type data-privacy
                                  :required common-lisp:t :member-name
                                  "dataPrivacy")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :required common-lisp:t
                                  :member-name "idleSessionTTLInSeconds")
                                 (bot-tags :target-type tag-map :member-name
                                  "botTags")
                                 (test-bot-alias-tags :target-type tag-map
                                  :member-name "testBotAliasTags")
                                 (bot-type :target-type bot-type :member-name
                                  "botType")
                                 (bot-members :target-type bot-members
                                  :member-name "botMembers")
                                 (error-log-settings :target-type
                                  error-log-settings :member-name
                                  "errorLogSettings"))
                                (:shape-name "CreateBotRequest"))

(smithy/sdk/shapes:define-output create-bot-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-name :target-type name :member-name
                                   "botName")
                                  (description :target-type description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (data-privacy :target-type data-privacy
                                   :member-name "dataPrivacy")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (bot-tags :target-type tag-map :member-name
                                   "botTags")
                                  (test-bot-alias-tags :target-type tag-map
                                   :member-name "testBotAliasTags")
                                  (bot-type :target-type bot-type :member-name
                                   "botType")
                                  (bot-members :target-type bot-members
                                   :member-name "botMembers")
                                  (error-log-settings :target-type
                                   error-log-settings :member-name
                                   "errorLogSettings"))
                                 (:shape-name "CreateBotResponse"))

(smithy/sdk/shapes:define-input create-bot-version-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (bot-version-locale-specification :target-type
                                  bot-version-locale-specification :required
                                  common-lisp:t :member-name
                                  "botVersionLocaleSpecification"))
                                (:shape-name "CreateBotVersionRequest"))

(smithy/sdk/shapes:define-output create-bot-version-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type
                                   numerical-bot-version :member-name
                                   "botVersion")
                                  (bot-version-locale-specification
                                   :target-type
                                   bot-version-locale-specification
                                   :member-name
                                   "botVersionLocaleSpecification")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime"))
                                 (:shape-name "CreateBotVersionResponse"))

(smithy/sdk/shapes:define-list create-custom-vocabulary-items-list :member
                               new-custom-vocabulary-item)

(smithy/sdk/shapes:define-input create-export-request common-lisp:nil
                                ((resource-specification :target-type
                                  export-resource-specification :required
                                  common-lisp:t :member-name
                                  "resourceSpecification")
                                 (file-format :target-type
                                  import-export-file-format :required
                                  common-lisp:t :member-name "fileFormat")
                                 (file-password :target-type
                                  import-export-file-password :member-name
                                  "filePassword"))
                                (:shape-name "CreateExportRequest"))

(smithy/sdk/shapes:define-output create-export-response common-lisp:nil
                                 ((export-id :target-type id :member-name
                                   "exportId")
                                  (resource-specification :target-type
                                   export-resource-specification :member-name
                                   "resourceSpecification")
                                  (file-format :target-type
                                   import-export-file-format :member-name
                                   "fileFormat")
                                  (export-status :target-type export-status
                                   :member-name "exportStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime"))
                                 (:shape-name "CreateExportResponse"))

(smithy/sdk/shapes:define-input create-intent-request common-lisp:nil
                                ((intent-name :target-type name :required
                                  common-lisp:t :member-name "intentName")
                                 (description :target-type description
                                  :member-name "description")
                                 (parent-intent-signature :target-type
                                  intent-signature :member-name
                                  "parentIntentSignature")
                                 (sample-utterances :target-type
                                  sample-utterances-list :member-name
                                  "sampleUtterances")
                                 (dialog-code-hook :target-type
                                  dialog-code-hook-settings :member-name
                                  "dialogCodeHook")
                                 (fulfillment-code-hook :target-type
                                  fulfillment-code-hook-settings :member-name
                                  "fulfillmentCodeHook")
                                 (intent-confirmation-setting :target-type
                                  intent-confirmation-setting :member-name
                                  "intentConfirmationSetting")
                                 (intent-closing-setting :target-type
                                  intent-closing-setting :member-name
                                  "intentClosingSetting")
                                 (input-contexts :target-type
                                  input-contexts-list :member-name
                                  "inputContexts")
                                 (output-contexts :target-type
                                  output-contexts-list :member-name
                                  "outputContexts")
                                 (kendra-configuration :target-type
                                  kendra-configuration :member-name
                                  "kendraConfiguration")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (initial-response-setting :target-type
                                  initial-response-setting :member-name
                                  "initialResponseSetting")
                                 (qn-aintent-configuration :target-type
                                  qn-aintent-configuration :member-name
                                  "qnAIntentConfiguration")
                                 (q-in-connect-intent-configuration
                                  :target-type qin-connect-intent-configuration
                                  :member-name
                                  "qInConnectIntentConfiguration"))
                                (:shape-name "CreateIntentRequest"))

(smithy/sdk/shapes:define-output create-intent-response common-lisp:nil
                                 ((intent-id :target-type id :member-name
                                   "intentId")
                                  (intent-name :target-type name :member-name
                                   "intentName")
                                  (description :target-type description
                                   :member-name "description")
                                  (parent-intent-signature :target-type
                                   intent-signature :member-name
                                   "parentIntentSignature")
                                  (sample-utterances :target-type
                                   sample-utterances-list :member-name
                                   "sampleUtterances")
                                  (dialog-code-hook :target-type
                                   dialog-code-hook-settings :member-name
                                   "dialogCodeHook")
                                  (fulfillment-code-hook :target-type
                                   fulfillment-code-hook-settings :member-name
                                   "fulfillmentCodeHook")
                                  (intent-confirmation-setting :target-type
                                   intent-confirmation-setting :member-name
                                   "intentConfirmationSetting")
                                  (intent-closing-setting :target-type
                                   intent-closing-setting :member-name
                                   "intentClosingSetting")
                                  (input-contexts :target-type
                                   input-contexts-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-contexts-list :member-name
                                   "outputContexts")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (initial-response-setting :target-type
                                   initial-response-setting :member-name
                                   "initialResponseSetting")
                                  (qn-aintent-configuration :target-type
                                   qn-aintent-configuration :member-name
                                   "qnAIntentConfiguration")
                                  (q-in-connect-intent-configuration
                                   :target-type
                                   qin-connect-intent-configuration
                                   :member-name
                                   "qInConnectIntentConfiguration"))
                                 (:shape-name "CreateIntentResponse"))

(smithy/sdk/shapes:define-input create-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "policy"))
                                (:shape-name "CreateResourcePolicyRequest"))

(smithy/sdk/shapes:define-output create-resource-policy-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name "CreateResourcePolicyResponse"))

(smithy/sdk/shapes:define-input create-resource-policy-statement-request
                                common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type name :required
                                  common-lisp:t :member-name "statementId")
                                 (effect :target-type effect :required
                                  common-lisp:t :member-name "effect")
                                 (principal :target-type principal-list
                                  :required common-lisp:t :member-name
                                  "principal")
                                 (action :target-type operation-list :required
                                  common-lisp:t :member-name "action")
                                 (condition :target-type condition-map
                                  :member-name "condition")
                                 (expected-revision-id :target-type revision-id
                                  :member-name "expectedRevisionId" :http-query
                                  "expectedRevisionId"))
                                (:shape-name
                                 "CreateResourcePolicyStatementRequest"))

(smithy/sdk/shapes:define-output create-resource-policy-statement-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name
                                  "CreateResourcePolicyStatementResponse"))

(smithy/sdk/shapes:define-input create-slot-request common-lisp:nil
                                ((slot-name :target-type name :required
                                  common-lisp:t :member-name "slotName")
                                 (description :target-type description
                                  :member-name "description")
                                 (slot-type-id :target-type
                                  built-in-or-custom-slot-type-id :member-name
                                  "slotTypeId")
                                 (value-elicitation-setting :target-type
                                  slot-value-elicitation-setting :required
                                  common-lisp:t :member-name
                                  "valueElicitationSetting")
                                 (obfuscation-setting :target-type
                                  obfuscation-setting :member-name
                                  "obfuscationSetting")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (multiple-values-setting :target-type
                                  multiple-values-setting :member-name
                                  "multipleValuesSetting")
                                 (sub-slot-setting :target-type
                                  sub-slot-setting :member-name
                                  "subSlotSetting"))
                                (:shape-name "CreateSlotRequest"))

(smithy/sdk/shapes:define-output create-slot-response common-lisp:nil
                                 ((slot-id :target-type id :member-name
                                   "slotId")
                                  (slot-name :target-type name :member-name
                                   "slotName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-id :target-type
                                   built-in-or-custom-slot-type-id :member-name
                                   "slotTypeId")
                                  (value-elicitation-setting :target-type
                                   slot-value-elicitation-setting :member-name
                                   "valueElicitationSetting")
                                  (obfuscation-setting :target-type
                                   obfuscation-setting :member-name
                                   "obfuscationSetting")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-id :target-type id :member-name
                                   "intentId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (multiple-values-setting :target-type
                                   multiple-values-setting :member-name
                                   "multipleValuesSetting")
                                  (sub-slot-setting :target-type
                                   sub-slot-setting :member-name
                                   "subSlotSetting"))
                                 (:shape-name "CreateSlotResponse"))

(smithy/sdk/shapes:define-input create-slot-type-request common-lisp:nil
                                ((slot-type-name :target-type name :required
                                  common-lisp:t :member-name "slotTypeName")
                                 (description :target-type description
                                  :member-name "description")
                                 (slot-type-values :target-type
                                  slot-type-values :member-name
                                  "slotTypeValues")
                                 (value-selection-setting :target-type
                                  slot-value-selection-setting :member-name
                                  "valueSelectionSetting")
                                 (parent-slot-type-signature :target-type
                                  slot-type-signature :member-name
                                  "parentSlotTypeSignature")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (external-source-setting :target-type
                                  external-source-setting :member-name
                                  "externalSourceSetting")
                                 (composite-slot-type-setting :target-type
                                  composite-slot-type-setting :member-name
                                  "compositeSlotTypeSetting"))
                                (:shape-name "CreateSlotTypeRequest"))

(smithy/sdk/shapes:define-output create-slot-type-response common-lisp:nil
                                 ((slot-type-id :target-type id :member-name
                                   "slotTypeId")
                                  (slot-type-name :target-type name
                                   :member-name "slotTypeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-values :target-type
                                   slot-type-values :member-name
                                   "slotTypeValues")
                                  (value-selection-setting :target-type
                                   slot-value-selection-setting :member-name
                                   "valueSelectionSetting")
                                  (parent-slot-type-signature :target-type
                                   slot-type-signature :member-name
                                   "parentSlotTypeSignature")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (external-source-setting :target-type
                                   external-source-setting :member-name
                                   "externalSourceSetting")
                                  (composite-slot-type-setting :target-type
                                   composite-slot-type-setting :member-name
                                   "compositeSlotTypeSetting"))
                                 (:shape-name "CreateSlotTypeResponse"))

(smithy/sdk/shapes:define-input create-test-set-discrepancy-report-request
                                common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t)
                                 (target :target-type
                                  test-set-discrepancy-report-resource-target
                                  :required common-lisp:t :member-name
                                  "target"))
                                (:shape-name
                                 "CreateTestSetDiscrepancyReportRequest"))

(smithy/sdk/shapes:define-output create-test-set-discrepancy-report-response
                                 common-lisp:nil
                                 ((test-set-discrepancy-report-id :target-type
                                   id :member-name
                                   "testSetDiscrepancyReportId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (test-set-id :target-type id :member-name
                                   "testSetId")
                                  (target :target-type
                                   test-set-discrepancy-report-resource-target
                                   :member-name "target"))
                                 (:shape-name
                                  "CreateTestSetDiscrepancyReportResponse"))

(smithy/sdk/shapes:define-input create-upload-url-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "CreateUploadUrlRequest"))

(smithy/sdk/shapes:define-output create-upload-url-response common-lisp:nil
                                 ((import-id :target-type id :member-name
                                   "importId")
                                  (upload-url :target-type presigned-s3url
                                   :member-name "uploadUrl"))
                                 (:shape-name "CreateUploadUrlResponse"))

(smithy/sdk/shapes:define-structure custom-payload common-lisp:nil
                                    ((value :target-type custom-payload-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CustomPayload"))

(smithy/sdk/shapes:define-type custom-payload-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-vocabulary-entry-id common-lisp:nil
                                    ((item-id :target-type item-id :required
                                      common-lisp:t :member-name "itemId"))
                                    (:shape-name "CustomVocabularyEntryId"))

(smithy/sdk/shapes:define-structure custom-vocabulary-export-specification
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type bot-version
                                      :required common-lisp:t :member-name
                                      "botVersion")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId"))
                                    (:shape-name
                                     "CustomVocabularyExportSpecification"))

(smithy/sdk/shapes:define-structure custom-vocabulary-import-specification
                                    common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type
                                      draft-bot-version :required common-lisp:t
                                      :member-name "botVersion")
                                     (locale-id :target-type locale-id
                                      :required common-lisp:t :member-name
                                      "localeId"))
                                    (:shape-name
                                     "CustomVocabularyImportSpecification"))

(smithy/sdk/shapes:define-structure custom-vocabulary-item common-lisp:nil
                                    ((item-id :target-type item-id :required
                                      common-lisp:t :member-name "itemId")
                                     (phrase :target-type phrase :required
                                      common-lisp:t :member-name "phrase")
                                     (weight :target-type weight :member-name
                                      "weight")
                                     (display-as :target-type phrase
                                      :member-name "displayAs"))
                                    (:shape-name "CustomVocabularyItem"))

(smithy/sdk/shapes:define-list custom-vocabulary-items :member
                               custom-vocabulary-item)

(smithy/sdk/shapes:define-enum custom-vocabulary-status
    common-lisp:nil
  (:ready "Ready")
  (:deleting "Deleting")
  (:exporting "Exporting")
  (:importing "Importing")
  (:creating "Creating"))

(smithy/sdk/shapes:define-type dtmfcharacter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dtmfspecification common-lisp:nil
                                    ((max-length :target-type
                                      max-utterance-digits :required
                                      common-lisp:t :member-name "maxLength")
                                     (end-timeout-ms :target-type
                                      time-in-milli-seconds :required
                                      common-lisp:t :member-name
                                      "endTimeoutMs")
                                     (deletion-character :target-type
                                      dtmfcharacter :required common-lisp:t
                                      :member-name "deletionCharacter")
                                     (end-character :target-type dtmfcharacter
                                      :required common-lisp:t :member-name
                                      "endCharacter"))
                                    (:shape-name "DTMFSpecification"))

(smithy/sdk/shapes:define-structure data-privacy common-lisp:nil
                                    ((child-directed :target-type
                                      child-directed :required common-lisp:t
                                      :member-name "childDirected"))
                                    (:shape-name "DataPrivacy"))

(smithy/sdk/shapes:define-structure data-source-configuration common-lisp:nil
                                    ((opensearch-configuration :target-type
                                      opensearch-configuration :member-name
                                      "opensearchConfiguration")
                                     (kendra-configuration :target-type
                                      qn-akendra-configuration :member-name
                                      "kendraConfiguration")
                                     (bedrock-knowledge-store-configuration
                                      :target-type
                                      bedrock-knowledge-store-configuration
                                      :member-name
                                      "bedrockKnowledgeStoreConfiguration"))
                                    (:shape-name "DataSourceConfiguration"))

(smithy/sdk/shapes:define-structure date-range-filter common-lisp:nil
                                    ((start-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startDateTime")
                                     (end-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "endDateTime"))
                                    (:shape-name "DateRangeFilter"))

(smithy/sdk/shapes:define-structure default-conditional-branch common-lisp:nil
                                    ((next-step :target-type dialog-state
                                      :member-name "nextStep")
                                     (response :target-type
                                      response-specification :member-name
                                      "response"))
                                    (:shape-name "DefaultConditionalBranch"))

(smithy/sdk/shapes:define-input delete-bot-alias-request common-lisp:nil
                                ((bot-alias-id :target-type bot-alias-id
                                  :required common-lisp:t :member-name
                                  "botAliasId" :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  skip-resource-in-use-check :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteBotAliasRequest"))

(smithy/sdk/shapes:define-output delete-bot-alias-response common-lisp:nil
                                 ((bot-alias-id :target-type bot-alias-id
                                   :member-name "botAliasId")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-alias-status :target-type
                                   bot-alias-status :member-name
                                   "botAliasStatus"))
                                 (:shape-name "DeleteBotAliasResponse"))

(smithy/sdk/shapes:define-input delete-bot-locale-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBotLocaleRequest"))

(smithy/sdk/shapes:define-output delete-bot-locale-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-locale-status :target-type
                                   bot-locale-status :member-name
                                   "botLocaleStatus"))
                                 (:shape-name "DeleteBotLocaleResponse"))

(smithy/sdk/shapes:define-input delete-bot-replica-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (replica-region :target-type replica-region
                                  :required common-lisp:t :member-name
                                  "replicaRegion" :http-label common-lisp:t))
                                (:shape-name "DeleteBotReplicaRequest"))

(smithy/sdk/shapes:define-output delete-bot-replica-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (replica-region :target-type replica-region
                                   :member-name "replicaRegion")
                                  (bot-replica-status :target-type
                                   bot-replica-status :member-name
                                   "botReplicaStatus"))
                                 (:shape-name "DeleteBotReplicaResponse"))

(smithy/sdk/shapes:define-input delete-bot-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  skip-resource-in-use-check :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteBotRequest"))

(smithy/sdk/shapes:define-output delete-bot-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus"))
                                 (:shape-name "DeleteBotResponse"))

(smithy/sdk/shapes:define-input delete-bot-version-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type
                                  numerical-bot-version :required common-lisp:t
                                  :member-name "botVersion" :http-label
                                  common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  skip-resource-in-use-check :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteBotVersionRequest"))

(smithy/sdk/shapes:define-output delete-bot-version-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type
                                   numerical-bot-version :member-name
                                   "botVersion")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus"))
                                 (:shape-name "DeleteBotVersionResponse"))

(smithy/sdk/shapes:define-list delete-custom-vocabulary-items-list :member
                               custom-vocabulary-entry-id)

(smithy/sdk/shapes:define-input delete-custom-vocabulary-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCustomVocabularyRequest"))

(smithy/sdk/shapes:define-output delete-custom-vocabulary-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (custom-vocabulary-status :target-type
                                   custom-vocabulary-status :member-name
                                   "customVocabularyStatus"))
                                 (:shape-name "DeleteCustomVocabularyResponse"))

(smithy/sdk/shapes:define-input delete-export-request common-lisp:nil
                                ((export-id :target-type id :required
                                  common-lisp:t :member-name "exportId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteExportRequest"))

(smithy/sdk/shapes:define-output delete-export-response common-lisp:nil
                                 ((export-id :target-type id :member-name
                                   "exportId")
                                  (export-status :target-type export-status
                                   :member-name "exportStatus"))
                                 (:shape-name "DeleteExportResponse"))

(smithy/sdk/shapes:define-input delete-import-request common-lisp:nil
                                ((import-id :target-type id :required
                                  common-lisp:t :member-name "importId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteImportRequest"))

(smithy/sdk/shapes:define-output delete-import-response common-lisp:nil
                                 ((import-id :target-type id :member-name
                                   "importId")
                                  (import-status :target-type import-status
                                   :member-name "importStatus"))
                                 (:shape-name "DeleteImportResponse"))

(smithy/sdk/shapes:define-input delete-intent-request common-lisp:nil
                                ((intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIntentRequest"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (expected-revision-id :target-type revision-id
                                  :member-name "expectedRevisionId" :http-query
                                  "expectedRevisionId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-statement-request
                                common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type name :required
                                  common-lisp:t :member-name "statementId"
                                  :http-label common-lisp:t)
                                 (expected-revision-id :target-type revision-id
                                  :member-name "expectedRevisionId" :http-query
                                  "expectedRevisionId"))
                                (:shape-name
                                 "DeleteResourcePolicyStatementRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-statement-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name
                                  "DeleteResourcePolicyStatementResponse"))

(smithy/sdk/shapes:define-input delete-slot-request common-lisp:nil
                                ((slot-id :target-type id :required
                                  common-lisp:t :member-name "slotId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSlotRequest"))

(smithy/sdk/shapes:define-input delete-slot-type-request common-lisp:nil
                                ((slot-type-id :target-type id :required
                                  common-lisp:t :member-name "slotTypeId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  skip-resource-in-use-check :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteSlotTypeRequest"))

(smithy/sdk/shapes:define-input delete-test-set-request common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteTestSetRequest"))

(smithy/sdk/shapes:define-input delete-utterances-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :member-name
                                  "localeId" :http-query "localeId")
                                 (session-id :target-type session-id
                                  :member-name "sessionId" :http-query
                                  "sessionId"))
                                (:shape-name "DeleteUtterancesRequest"))

(smithy/sdk/shapes:define-output delete-utterances-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUtterancesResponse"))

(smithy/sdk/shapes:define-input describe-bot-alias-request common-lisp:nil
                                ((bot-alias-id :target-type bot-alias-id
                                  :required common-lisp:t :member-name
                                  "botAliasId" :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBotAliasRequest"))

(smithy/sdk/shapes:define-output describe-bot-alias-response common-lisp:nil
                                 ((bot-alias-id :target-type bot-alias-id
                                   :member-name "botAliasId")
                                  (bot-alias-name :target-type name
                                   :member-name "botAliasName")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (bot-alias-locale-settings :target-type
                                   bot-alias-locale-settings-map :member-name
                                   "botAliasLocaleSettings")
                                  (conversation-log-settings :target-type
                                   conversation-log-settings :member-name
                                   "conversationLogSettings")
                                  (sentiment-analysis-settings :target-type
                                   sentiment-analysis-settings :member-name
                                   "sentimentAnalysisSettings")
                                  (bot-alias-history-events :target-type
                                   bot-alias-history-events-list :member-name
                                   "botAliasHistoryEvents")
                                  (bot-alias-status :target-type
                                   bot-alias-status :member-name
                                   "botAliasStatus")
                                  (bot-id :target-type id :member-name "botId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (parent-bot-networks :target-type
                                   parent-bot-networks :member-name
                                   "parentBotNetworks"))
                                 (:shape-name "DescribeBotAliasResponse"))

(smithy/sdk/shapes:define-input describe-bot-locale-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBotLocaleRequest"))

(smithy/sdk/shapes:define-output describe-bot-locale-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (locale-name :target-type locale-name
                                   :member-name "localeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (nlu-intent-confidence-threshold :target-type
                                   confidence-threshold :member-name
                                   "nluIntentConfidenceThreshold")
                                  (voice-settings :target-type voice-settings
                                   :member-name "voiceSettings")
                                  (intents-count :target-type resource-count
                                   :member-name "intentsCount")
                                  (slot-types-count :target-type resource-count
                                   :member-name "slotTypesCount")
                                  (bot-locale-status :target-type
                                   bot-locale-status :member-name
                                   "botLocaleStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (last-build-submitted-date-time :target-type
                                   timestamp :member-name
                                   "lastBuildSubmittedDateTime")
                                  (bot-locale-history-events :target-type
                                   bot-locale-history-events-list :member-name
                                   "botLocaleHistoryEvents")
                                  (recommended-actions :target-type
                                   recommended-actions :member-name
                                   "recommendedActions")
                                  (generative-aisettings :target-type
                                   generative-aisettings :member-name
                                   "generativeAISettings"))
                                 (:shape-name "DescribeBotLocaleResponse"))

(smithy/sdk/shapes:define-input describe-bot-recommendation-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (bot-recommendation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "botRecommendationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeBotRecommendationRequest"))

(smithy/sdk/shapes:define-output describe-bot-recommendation-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-status :target-type
                                   bot-recommendation-status :member-name
                                   "botRecommendationStatus")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (transcript-source-setting :target-type
                                   transcript-source-setting :member-name
                                   "transcriptSourceSetting")
                                  (encryption-setting :target-type
                                   encryption-setting :member-name
                                   "encryptionSetting")
                                  (bot-recommendation-results :target-type
                                   bot-recommendation-results :member-name
                                   "botRecommendationResults"))
                                 (:shape-name
                                  "DescribeBotRecommendationResponse"))

(smithy/sdk/shapes:define-input describe-bot-replica-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (replica-region :target-type replica-region
                                  :required common-lisp:t :member-name
                                  "replicaRegion" :http-label common-lisp:t))
                                (:shape-name "DescribeBotReplicaRequest"))

(smithy/sdk/shapes:define-output describe-bot-replica-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (replica-region :target-type replica-region
                                   :member-name "replicaRegion")
                                  (source-region :target-type replica-region
                                   :member-name "sourceRegion")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (bot-replica-status :target-type
                                   bot-replica-status :member-name
                                   "botReplicaStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons"))
                                 (:shape-name "DescribeBotReplicaResponse"))

(smithy/sdk/shapes:define-input describe-bot-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBotRequest"))

(smithy/sdk/shapes:define-input describe-bot-resource-generation-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (generation-id :target-type id :required
                                  common-lisp:t :member-name "generationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeBotResourceGenerationRequest"))

(smithy/sdk/shapes:define-output describe-bot-resource-generation-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (generation-id :target-type id :member-name
                                   "generationId")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (generation-status :target-type
                                   generation-status :member-name
                                   "generationStatus")
                                  (generation-input-prompt :target-type
                                   generation-input :member-name
                                   "generationInputPrompt")
                                  (generated-bot-locale-url :target-type
                                   presigned-s3url :member-name
                                   "generatedBotLocaleUrl")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (model-arn :target-type bedrock-model-arn
                                   :member-name "modelArn")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name
                                  "DescribeBotResourceGenerationResponse"))

(smithy/sdk/shapes:define-output describe-bot-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-name :target-type name :member-name
                                   "botName")
                                  (description :target-type description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (data-privacy :target-type data-privacy
                                   :member-name "dataPrivacy")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (bot-type :target-type bot-type :member-name
                                   "botType")
                                  (bot-members :target-type bot-members
                                   :member-name "botMembers")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (error-log-settings :target-type
                                   error-log-settings :member-name
                                   "errorLogSettings"))
                                 (:shape-name "DescribeBotResponse"))

(smithy/sdk/shapes:define-input describe-bot-version-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type
                                  numerical-bot-version :required common-lisp:t
                                  :member-name "botVersion" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeBotVersionRequest"))

(smithy/sdk/shapes:define-output describe-bot-version-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-name :target-type name :member-name
                                   "botName")
                                  (bot-version :target-type
                                   numerical-bot-version :member-name
                                   "botVersion")
                                  (description :target-type description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (data-privacy :target-type data-privacy
                                   :member-name "dataPrivacy")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (parent-bot-networks :target-type
                                   parent-bot-networks :member-name
                                   "parentBotNetworks")
                                  (bot-type :target-type bot-type :member-name
                                   "botType")
                                  (bot-members :target-type bot-members
                                   :member-name "botMembers"))
                                 (:shape-name "DescribeBotVersionResponse"))

(smithy/sdk/shapes:define-input describe-custom-vocabulary-metadata-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeCustomVocabularyMetadataRequest"))

(smithy/sdk/shapes:define-output describe-custom-vocabulary-metadata-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (custom-vocabulary-status :target-type
                                   custom-vocabulary-status :member-name
                                   "customVocabularyStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name
                                  "DescribeCustomVocabularyMetadataResponse"))

(smithy/sdk/shapes:define-input describe-export-request common-lisp:nil
                                ((export-id :target-type id :required
                                  common-lisp:t :member-name "exportId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeExportRequest"))

(smithy/sdk/shapes:define-output describe-export-response common-lisp:nil
                                 ((export-id :target-type id :member-name
                                   "exportId")
                                  (resource-specification :target-type
                                   export-resource-specification :member-name
                                   "resourceSpecification")
                                  (file-format :target-type
                                   import-export-file-format :member-name
                                   "fileFormat")
                                  (export-status :target-type export-status
                                   :member-name "exportStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (download-url :target-type presigned-s3url
                                   :member-name "downloadUrl")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "DescribeExportResponse"))

(smithy/sdk/shapes:define-input describe-import-request common-lisp:nil
                                ((import-id :target-type id :required
                                  common-lisp:t :member-name "importId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeImportRequest"))

(smithy/sdk/shapes:define-output describe-import-response common-lisp:nil
                                 ((import-id :target-type id :member-name
                                   "importId")
                                  (resource-specification :target-type
                                   import-resource-specification :member-name
                                   "resourceSpecification")
                                  (imported-resource-id :target-type
                                   imported-resource-id :member-name
                                   "importedResourceId")
                                  (imported-resource-name :target-type name
                                   :member-name "importedResourceName")
                                  (merge-strategy :target-type merge-strategy
                                   :member-name "mergeStrategy")
                                  (import-status :target-type import-status
                                   :member-name "importStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "DescribeImportResponse"))

(smithy/sdk/shapes:define-input describe-intent-request common-lisp:nil
                                ((intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeIntentRequest"))

(smithy/sdk/shapes:define-output describe-intent-response common-lisp:nil
                                 ((intent-id :target-type id :member-name
                                   "intentId")
                                  (intent-name :target-type name :member-name
                                   "intentName")
                                  (description :target-type description
                                   :member-name "description")
                                  (parent-intent-signature :target-type
                                   intent-signature :member-name
                                   "parentIntentSignature")
                                  (sample-utterances :target-type
                                   sample-utterances-list :member-name
                                   "sampleUtterances")
                                  (dialog-code-hook :target-type
                                   dialog-code-hook-settings :member-name
                                   "dialogCodeHook")
                                  (fulfillment-code-hook :target-type
                                   fulfillment-code-hook-settings :member-name
                                   "fulfillmentCodeHook")
                                  (slot-priorities :target-type
                                   slot-priorities-list :member-name
                                   "slotPriorities")
                                  (intent-confirmation-setting :target-type
                                   intent-confirmation-setting :member-name
                                   "intentConfirmationSetting")
                                  (intent-closing-setting :target-type
                                   intent-closing-setting :member-name
                                   "intentClosingSetting")
                                  (input-contexts :target-type
                                   input-contexts-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-contexts-list :member-name
                                   "outputContexts")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (initial-response-setting :target-type
                                   initial-response-setting :member-name
                                   "initialResponseSetting")
                                  (qn-aintent-configuration :target-type
                                   qn-aintent-configuration :member-name
                                   "qnAIntentConfiguration")
                                  (q-in-connect-intent-configuration
                                   :target-type
                                   qin-connect-intent-configuration
                                   :member-name
                                   "qInConnectIntentConfiguration"))
                                 (:shape-name "DescribeIntentResponse"))

(smithy/sdk/shapes:define-input describe-resource-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeResourcePolicyRequest"))

(smithy/sdk/shapes:define-output describe-resource-policy-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (policy :target-type policy :member-name
                                   "policy")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name "DescribeResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-slot-request common-lisp:nil
                                ((slot-id :target-type id :required
                                  common-lisp:t :member-name "slotId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSlotRequest"))

(smithy/sdk/shapes:define-output describe-slot-response common-lisp:nil
                                 ((slot-id :target-type id :member-name
                                   "slotId")
                                  (slot-name :target-type name :member-name
                                   "slotName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-id :target-type
                                   built-in-or-custom-slot-type-id :member-name
                                   "slotTypeId")
                                  (value-elicitation-setting :target-type
                                   slot-value-elicitation-setting :member-name
                                   "valueElicitationSetting")
                                  (obfuscation-setting :target-type
                                   obfuscation-setting :member-name
                                   "obfuscationSetting")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-id :target-type id :member-name
                                   "intentId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (multiple-values-setting :target-type
                                   multiple-values-setting :member-name
                                   "multipleValuesSetting")
                                  (sub-slot-setting :target-type
                                   sub-slot-setting :member-name
                                   "subSlotSetting"))
                                 (:shape-name "DescribeSlotResponse"))

(smithy/sdk/shapes:define-input describe-slot-type-request common-lisp:nil
                                ((slot-type-id :target-type id :required
                                  common-lisp:t :member-name "slotTypeId"
                                  :http-label common-lisp:t)
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSlotTypeRequest"))

(smithy/sdk/shapes:define-output describe-slot-type-response common-lisp:nil
                                 ((slot-type-id :target-type id :member-name
                                   "slotTypeId")
                                  (slot-type-name :target-type name
                                   :member-name "slotTypeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-values :target-type
                                   slot-type-values :member-name
                                   "slotTypeValues")
                                  (value-selection-setting :target-type
                                   slot-value-selection-setting :member-name
                                   "valueSelectionSetting")
                                  (parent-slot-type-signature :target-type
                                   slot-type-signature :member-name
                                   "parentSlotTypeSignature")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (external-source-setting :target-type
                                   external-source-setting :member-name
                                   "externalSourceSetting")
                                  (composite-slot-type-setting :target-type
                                   composite-slot-type-setting :member-name
                                   "compositeSlotTypeSetting"))
                                 (:shape-name "DescribeSlotTypeResponse"))

(smithy/sdk/shapes:define-input describe-test-execution-request common-lisp:nil
                                ((test-execution-id :target-type id :required
                                  common-lisp:t :member-name "testExecutionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeTestExecutionRequest"))

(smithy/sdk/shapes:define-output describe-test-execution-response
                                 common-lisp:nil
                                 ((test-execution-id :target-type id
                                   :member-name "testExecutionId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (test-execution-status :target-type
                                   test-execution-status :member-name
                                   "testExecutionStatus")
                                  (test-set-id :target-type id :member-name
                                   "testSetId")
                                  (test-set-name :target-type name :member-name
                                   "testSetName")
                                  (target :target-type test-execution-target
                                   :member-name "target")
                                  (api-mode :target-type
                                   test-execution-api-mode :member-name
                                   "apiMode")
                                  (test-execution-modality :target-type
                                   test-execution-modality :member-name
                                   "testExecutionModality")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons"))
                                 (:shape-name "DescribeTestExecutionResponse"))

(smithy/sdk/shapes:define-input describe-test-set-discrepancy-report-request
                                common-lisp:nil
                                ((test-set-discrepancy-report-id :target-type
                                  id :required common-lisp:t :member-name
                                  "testSetDiscrepancyReportId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeTestSetDiscrepancyReportRequest"))

(smithy/sdk/shapes:define-output describe-test-set-discrepancy-report-response
                                 common-lisp:nil
                                 ((test-set-discrepancy-report-id :target-type
                                   id :member-name
                                   "testSetDiscrepancyReportId")
                                  (test-set-id :target-type id :member-name
                                   "testSetId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (target :target-type
                                   test-set-discrepancy-report-resource-target
                                   :member-name "target")
                                  (test-set-discrepancy-report-status
                                   :target-type
                                   test-set-discrepancy-report-status
                                   :member-name
                                   "testSetDiscrepancyReportStatus")
                                  (last-updated-data-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDataTime")
                                  (test-set-discrepancy-top-errors :target-type
                                   test-set-discrepancy-errors :member-name
                                   "testSetDiscrepancyTopErrors")
                                  (test-set-discrepancy-raw-output-url
                                   :target-type presigned-s3url :member-name
                                   "testSetDiscrepancyRawOutputUrl")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons"))
                                 (:shape-name
                                  "DescribeTestSetDiscrepancyReportResponse"))

(smithy/sdk/shapes:define-input describe-test-set-generation-request
                                common-lisp:nil
                                ((test-set-generation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "testSetGenerationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeTestSetGenerationRequest"))

(smithy/sdk/shapes:define-output describe-test-set-generation-response
                                 common-lisp:nil
                                 ((test-set-generation-id :target-type id
                                   :member-name "testSetGenerationId")
                                  (test-set-generation-status :target-type
                                   test-set-generation-status :member-name
                                   "testSetGenerationStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (test-set-id :target-type id :member-name
                                   "testSetId")
                                  (test-set-name :target-type name :member-name
                                   "testSetName")
                                  (description :target-type description
                                   :member-name "description")
                                  (storage-location :target-type
                                   test-set-storage-location :member-name
                                   "storageLocation")
                                  (generation-data-source :target-type
                                   test-set-generation-data-source :member-name
                                   "generationDataSource")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name
                                  "DescribeTestSetGenerationResponse"))

(smithy/sdk/shapes:define-input describe-test-set-request common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeTestSetRequest"))

(smithy/sdk/shapes:define-output describe-test-set-response common-lisp:nil
                                 ((test-set-id :target-type id :member-name
                                   "testSetId")
                                  (test-set-name :target-type name :member-name
                                   "testSetName")
                                  (description :target-type description
                                   :member-name "description")
                                  (modality :target-type test-set-modality
                                   :member-name "modality")
                                  (status :target-type test-set-status
                                   :member-name "status")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (num-turns :target-type count :member-name
                                   "numTurns")
                                  (storage-location :target-type
                                   test-set-storage-location :member-name
                                   "storageLocation")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "DescribeTestSetResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure descriptive-bot-builder-specification
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (bedrock-model-specification :target-type
                                      bedrock-model-specification :member-name
                                      "bedrockModelSpecification"))
                                    (:shape-name
                                     "DescriptiveBotBuilderSpecification"))

(smithy/sdk/shapes:define-structure dialog-action common-lisp:nil
                                    ((type :target-type dialog-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (slot-to-elicit :target-type name
                                      :member-name "slotToElicit")
                                     (suppress-next-message :target-type
                                      boxed-boolean :member-name
                                      "suppressNextMessage"))
                                    (:shape-name "DialogAction"))

(smithy/sdk/shapes:define-enum dialog-action-type
    common-lisp:nil
  (:elicit-intent "ElicitIntent")
  (:start-intent "StartIntent")
  (:elicit-slot "ElicitSlot")
  (:evaluate-conditional "EvaluateConditional")
  (:invoke-dialog-code-hook "InvokeDialogCodeHook")
  (:confirm-intent "ConfirmIntent")
  (:fulfill-intent "FulfillIntent")
  (:close-intent "CloseIntent")
  (:end-conversation "EndConversation"))

(smithy/sdk/shapes:define-structure dialog-code-hook-invocation-setting
                                    common-lisp:nil
                                    ((enable-code-hook-invocation :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "enableCodeHookInvocation")
                                     (active :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "active")
                                     (invocation-label :target-type name
                                      :member-name "invocationLabel")
                                     (post-code-hook-specification :target-type
                                      post-dialog-code-hook-invocation-specification
                                      :required common-lisp:t :member-name
                                      "postCodeHookSpecification"))
                                    (:shape-name
                                     "DialogCodeHookInvocationSetting"))

(smithy/sdk/shapes:define-structure dialog-code-hook-settings common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "DialogCodeHookSettings"))

(smithy/sdk/shapes:define-structure dialog-state common-lisp:nil
                                    ((dialog-action :target-type dialog-action
                                      :member-name "dialogAction")
                                     (intent :target-type intent-override
                                      :member-name "intent")
                                     (session-attributes :target-type
                                      string-map :member-name
                                      "sessionAttributes"))
                                    (:shape-name "DialogState"))

(smithy/sdk/shapes:define-type domain-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type draft-bot-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum effect
    common-lisp:nil
  (:allow "Allow")
  (:deny "Deny"))

(smithy/sdk/shapes:define-structure elicitation-code-hook-invocation-setting
                                    common-lisp:nil
                                    ((enable-code-hook-invocation :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "enableCodeHookInvocation")
                                     (invocation-label :target-type name
                                      :member-name "invocationLabel"))
                                    (:shape-name
                                     "ElicitationCodeHookInvocationSetting"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-setting common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (bot-locale-export-password :target-type
                                      file-password :member-name
                                      "botLocaleExportPassword")
                                     (associated-transcripts-password
                                      :target-type file-password :member-name
                                      "associatedTranscriptsPassword"))
                                    (:shape-name "EncryptionSetting"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:duplicate-input "DUPLICATE_INPUT")
  (:resource-does-not-exist "RESOURCE_DOES_NOT_EXIST")
  (:resource-already-exists "RESOURCE_ALREADY_EXISTS")
  (:internal-server-failure "INTERNAL_SERVER_FAILURE"))

(smithy/sdk/shapes:define-structure error-log-settings common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "enabled"))
                                    (:shape-name "ErrorLogSettings"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure exact-response-fields common-lisp:nil
                                    ((question-field :target-type
                                      question-field :required common-lisp:t
                                      :member-name "questionField")
                                     (answer-field :target-type answer-field
                                      :required common-lisp:t :member-name
                                      "answerField"))
                                    (:shape-name "ExactResponseFields"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-error-details common-lisp:nil
                                    ((error-code :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "errorMessage"))
                                    (:shape-name "ExecutionErrorDetails"))

(smithy/sdk/shapes:define-structure export-filter common-lisp:nil
                                    ((name :target-type export-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      export-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "ExportFilter"))

(smithy/sdk/shapes:define-enum export-filter-name
    common-lisp:nil
  (:export-resource-type "ExportResourceType"))

(smithy/sdk/shapes:define-enum export-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list export-filters :member export-filter)

(smithy/sdk/shapes:define-structure export-resource-specification
                                    common-lisp:nil
                                    ((bot-export-specification :target-type
                                      bot-export-specification :member-name
                                      "botExportSpecification")
                                     (bot-locale-export-specification
                                      :target-type
                                      bot-locale-export-specification
                                      :member-name
                                      "botLocaleExportSpecification")
                                     (custom-vocabulary-export-specification
                                      :target-type
                                      custom-vocabulary-export-specification
                                      :member-name
                                      "customVocabularyExportSpecification")
                                     (test-set-export-specification
                                      :target-type
                                      test-set-export-specification
                                      :member-name
                                      "testSetExportSpecification"))
                                    (:shape-name "ExportResourceSpecification"))

(smithy/sdk/shapes:define-enum export-sort-attribute
    common-lisp:nil
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure export-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      export-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "ExportSortBy"))

(smithy/sdk/shapes:define-enum export-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-structure export-summary common-lisp:nil
                                    ((export-id :target-type id :member-name
                                      "exportId")
                                     (resource-specification :target-type
                                      export-resource-specification
                                      :member-name "resourceSpecification")
                                     (file-format :target-type
                                      import-export-file-format :member-name
                                      "fileFormat")
                                     (export-status :target-type export-status
                                      :member-name "exportStatus")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "ExportSummary"))

(smithy/sdk/shapes:define-list export-summary-list :member export-summary)

(smithy/sdk/shapes:define-structure external-source-setting common-lisp:nil
                                    ((grammar-slot-type-setting :target-type
                                      grammar-slot-type-setting :member-name
                                      "grammarSlotTypeSetting"))
                                    (:shape-name "ExternalSourceSetting"))

(smithy/sdk/shapes:define-structure failed-custom-vocabulary-item
                                    common-lisp:nil
                                    ((item-id :target-type item-id :member-name
                                      "itemId")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (error-code :target-type error-code
                                      :member-name "errorCode"))
                                    (:shape-name "FailedCustomVocabularyItem"))

(smithy/sdk/shapes:define-list failed-custom-vocabulary-items :member
                               failed-custom-vocabulary-item)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list failure-reasons :member failure-reason)

(smithy/sdk/shapes:define-type file-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-structure fulfillment-code-hook-settings
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (post-fulfillment-status-specification
                                      :target-type
                                      post-fulfillment-status-specification
                                      :member-name
                                      "postFulfillmentStatusSpecification")
                                     (fulfillment-updates-specification
                                      :target-type
                                      fulfillment-updates-specification
                                      :member-name
                                      "fulfillmentUpdatesSpecification")
                                     (active :target-type boxed-boolean
                                      :member-name "active"))
                                    (:shape-name "FulfillmentCodeHookSettings"))

(smithy/sdk/shapes:define-type fulfillment-start-response-delay
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure fulfillment-start-response-specification
                                    common-lisp:nil
                                    ((delay-in-seconds :target-type
                                      fulfillment-start-response-delay
                                      :required common-lisp:t :member-name
                                      "delayInSeconds")
                                     (message-groups :target-type
                                      message-groups-list :required
                                      common-lisp:t :member-name
                                      "messageGroups")
                                     (allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt"))
                                    (:shape-name
                                     "FulfillmentStartResponseSpecification"))

(smithy/sdk/shapes:define-type fulfillment-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type fulfillment-update-response-frequency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure fulfillment-update-response-specification
                                    common-lisp:nil
                                    ((frequency-in-seconds :target-type
                                      fulfillment-update-response-frequency
                                      :required common-lisp:t :member-name
                                      "frequencyInSeconds")
                                     (message-groups :target-type
                                      message-groups-list :required
                                      common-lisp:t :member-name
                                      "messageGroups")
                                     (allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt"))
                                    (:shape-name
                                     "FulfillmentUpdateResponseSpecification"))

(smithy/sdk/shapes:define-structure fulfillment-updates-specification
                                    common-lisp:nil
                                    ((active :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "active")
                                     (start-response :target-type
                                      fulfillment-start-response-specification
                                      :member-name "startResponse")
                                     (update-response :target-type
                                      fulfillment-update-response-specification
                                      :member-name "updateResponse")
                                     (timeout-in-seconds :target-type
                                      fulfillment-timeout :member-name
                                      "timeoutInSeconds"))
                                    (:shape-name
                                     "FulfillmentUpdatesSpecification"))

(smithy/sdk/shapes:define-input generate-bot-element-request common-lisp:nil
                                ((intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name "GenerateBotElementRequest"))

(smithy/sdk/shapes:define-output generate-bot-element-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-id :target-type id :member-name
                                   "intentId")
                                  (sample-utterances :target-type
                                   sample-utterances-list :member-name
                                   "sampleUtterances"))
                                 (:shape-name "GenerateBotElementResponse"))

(smithy/sdk/shapes:define-type generation-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure generation-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      generation-sort-by-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "GenerationSortBy"))

(smithy/sdk/shapes:define-enum generation-sort-by-attribute
    common-lisp:nil
  (:creation-start-time "creationStartTime")
  (:last-updated-time "lastUpdatedTime"))

(smithy/sdk/shapes:define-enum generation-status
    common-lisp:nil
  (:failed "Failed")
  (:complete "Complete")
  (:in-progress "InProgress"))

(smithy/sdk/shapes:define-structure generation-summary common-lisp:nil
                                    ((generation-id :target-type id
                                      :member-name "generationId")
                                     (generation-status :target-type
                                      generation-status :member-name
                                      "generationStatus")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "GenerationSummary"))

(smithy/sdk/shapes:define-list generation-summary-list :member
                               generation-summary)

(smithy/sdk/shapes:define-structure generative-aisettings common-lisp:nil
                                    ((runtime-settings :target-type
                                      runtime-settings :member-name
                                      "runtimeSettings")
                                     (buildtime-settings :target-type
                                      buildtime-settings :member-name
                                      "buildtimeSettings"))
                                    (:shape-name "GenerativeAISettings"))

(smithy/sdk/shapes:define-input get-test-execution-artifacts-url-request
                                common-lisp:nil
                                ((test-execution-id :target-type id :required
                                  common-lisp:t :member-name "testExecutionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetTestExecutionArtifactsUrlRequest"))

(smithy/sdk/shapes:define-output get-test-execution-artifacts-url-response
                                 common-lisp:nil
                                 ((test-execution-id :target-type id
                                   :member-name "testExecutionId")
                                  (download-artifacts-url :target-type
                                   presigned-s3url :member-name
                                   "downloadArtifactsUrl"))
                                 (:shape-name
                                  "GetTestExecutionArtifactsUrlResponse"))

(smithy/sdk/shapes:define-structure grammar-slot-type-setting common-lisp:nil
                                    ((source :target-type
                                      grammar-slot-type-source :member-name
                                      "source"))
                                    (:shape-name "GrammarSlotTypeSetting"))

(smithy/sdk/shapes:define-structure grammar-slot-type-source common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3BucketName")
                                     (s3object-key :target-type s3object-path
                                      :required common-lisp:t :member-name
                                      "s3ObjectKey")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "GrammarSlotTypeSource"))

(smithy/sdk/shapes:define-type hit-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-enum import-export-file-format
    common-lisp:nil
  (:lex-json "LexJson")
  (:tsv "TSV")
  (:csv "CSV"))

(smithy/sdk/shapes:define-type import-export-file-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-filter common-lisp:nil
                                    ((name :target-type import-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      import-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "ImportFilter"))

(smithy/sdk/shapes:define-enum import-filter-name
    common-lisp:nil
  (:import-resource-type "ImportResourceType"))

(smithy/sdk/shapes:define-enum import-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list import-filters :member import-filter)

(smithy/sdk/shapes:define-structure import-resource-specification
                                    common-lisp:nil
                                    ((bot-import-specification :target-type
                                      bot-import-specification :member-name
                                      "botImportSpecification")
                                     (bot-locale-import-specification
                                      :target-type
                                      bot-locale-import-specification
                                      :member-name
                                      "botLocaleImportSpecification")
                                     (custom-vocabulary-import-specification
                                      :target-type
                                      custom-vocabulary-import-specification
                                      :member-name
                                      "customVocabularyImportSpecification")
                                     (test-set-import-resource-specification
                                      :target-type
                                      test-set-import-resource-specification
                                      :member-name
                                      "testSetImportResourceSpecification"))
                                    (:shape-name "ImportResourceSpecification"))

(smithy/sdk/shapes:define-enum import-resource-type
    common-lisp:nil
  (:bot "Bot")
  (:bot-locale "BotLocale")
  (:custom-vocabulary "CustomVocabulary")
  (:test-set "TestSet"))

(smithy/sdk/shapes:define-enum import-sort-attribute
    common-lisp:nil
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure import-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      import-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "ImportSortBy"))

(smithy/sdk/shapes:define-enum import-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-structure import-summary common-lisp:nil
                                    ((import-id :target-type id :member-name
                                      "importId")
                                     (imported-resource-id :target-type
                                      imported-resource-id :member-name
                                      "importedResourceId")
                                     (imported-resource-name :target-type name
                                      :member-name "importedResourceName")
                                     (import-status :target-type import-status
                                      :member-name "importStatus")
                                     (merge-strategy :target-type
                                      merge-strategy :member-name
                                      "mergeStrategy")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (imported-resource-type :target-type
                                      import-resource-type :member-name
                                      "importedResourceType"))
                                    (:shape-name "ImportSummary"))

(smithy/sdk/shapes:define-list import-summary-list :member import-summary)

(smithy/sdk/shapes:define-type imported-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure initial-response-setting common-lisp:nil
                                    ((initial-response :target-type
                                      response-specification :member-name
                                      "initialResponse")
                                     (next-step :target-type dialog-state
                                      :member-name "nextStep")
                                     (conditional :target-type
                                      conditional-specification :member-name
                                      "conditional")
                                     (code-hook :target-type
                                      dialog-code-hook-invocation-setting
                                      :member-name "codeHook"))
                                    (:shape-name "InitialResponseSetting"))

(smithy/sdk/shapes:define-structure input-context common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "InputContext"))

(smithy/sdk/shapes:define-list input-contexts-list :member input-context)

(smithy/sdk/shapes:define-structure input-session-state-specification
                                    common-lisp:nil
                                    ((session-attributes :target-type
                                      string-map :member-name
                                      "sessionAttributes")
                                     (active-contexts :target-type
                                      active-context-list :member-name
                                      "activeContexts")
                                     (runtime-hints :target-type runtime-hints
                                      :member-name "runtimeHints"))
                                    (:shape-name
                                     "InputSessionStateSpecification"))

(smithy/sdk/shapes:define-structure intent-classification-test-result-item
                                    common-lisp:nil
                                    ((intent-name :target-type name :required
                                      common-lisp:t :member-name "intentName")
                                     (multi-turn-conversation :target-type
                                      boolean :required common-lisp:t
                                      :member-name "multiTurnConversation")
                                     (result-counts :target-type
                                      intent-classification-test-result-item-counts
                                      :required common-lisp:t :member-name
                                      "resultCounts"))
                                    (:shape-name
                                     "IntentClassificationTestResultItem"))

(smithy/sdk/shapes:define-structure
 intent-classification-test-result-item-counts common-lisp:nil
 ((total-result-count :target-type count :required common-lisp:t :member-name
   "totalResultCount")
  (speech-transcription-result-counts :target-type
   test-result-match-status-count-map :member-name
   "speechTranscriptionResultCounts")
  (intent-match-result-counts :target-type test-result-match-status-count-map
   :required common-lisp:t :member-name "intentMatchResultCounts"))
 (:shape-name "IntentClassificationTestResultItemCounts"))

(smithy/sdk/shapes:define-list intent-classification-test-result-item-list
                               :member intent-classification-test-result-item)

(smithy/sdk/shapes:define-structure intent-classification-test-results
                                    common-lisp:nil
                                    ((items :target-type
                                      intent-classification-test-result-item-list
                                      :required common-lisp:t :member-name
                                      "items"))
                                    (:shape-name
                                     "IntentClassificationTestResults"))

(smithy/sdk/shapes:define-structure intent-closing-setting common-lisp:nil
                                    ((closing-response :target-type
                                      response-specification :member-name
                                      "closingResponse")
                                     (active :target-type boxed-boolean
                                      :member-name "active")
                                     (next-step :target-type dialog-state
                                      :member-name "nextStep")
                                     (conditional :target-type
                                      conditional-specification :member-name
                                      "conditional"))
                                    (:shape-name "IntentClosingSetting"))

(smithy/sdk/shapes:define-structure intent-confirmation-setting common-lisp:nil
                                    ((prompt-specification :target-type
                                      prompt-specification :required
                                      common-lisp:t :member-name
                                      "promptSpecification")
                                     (declination-response :target-type
                                      response-specification :member-name
                                      "declinationResponse")
                                     (active :target-type boxed-boolean
                                      :member-name "active")
                                     (confirmation-response :target-type
                                      response-specification :member-name
                                      "confirmationResponse")
                                     (confirmation-next-step :target-type
                                      dialog-state :member-name
                                      "confirmationNextStep")
                                     (confirmation-conditional :target-type
                                      conditional-specification :member-name
                                      "confirmationConditional")
                                     (declination-next-step :target-type
                                      dialog-state :member-name
                                      "declinationNextStep")
                                     (declination-conditional :target-type
                                      conditional-specification :member-name
                                      "declinationConditional")
                                     (failure-response :target-type
                                      response-specification :member-name
                                      "failureResponse")
                                     (failure-next-step :target-type
                                      dialog-state :member-name
                                      "failureNextStep")
                                     (failure-conditional :target-type
                                      conditional-specification :member-name
                                      "failureConditional")
                                     (code-hook :target-type
                                      dialog-code-hook-invocation-setting
                                      :member-name "codeHook")
                                     (elicitation-code-hook :target-type
                                      elicitation-code-hook-invocation-setting
                                      :member-name "elicitationCodeHook"))
                                    (:shape-name "IntentConfirmationSetting"))

(smithy/sdk/shapes:define-structure intent-filter common-lisp:nil
                                    ((name :target-type intent-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      intent-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "IntentFilter"))

(smithy/sdk/shapes:define-enum intent-filter-name
    common-lisp:nil
  (:intent-name "IntentName"))

(smithy/sdk/shapes:define-enum intent-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list intent-filters :member intent-filter)

(smithy/sdk/shapes:define-structure
 intent-level-slot-resolution-test-result-item common-lisp:nil
 ((intent-name :target-type name :required common-lisp:t :member-name
   "intentName")
  (multi-turn-conversation :target-type boolean :required common-lisp:t
   :member-name "multiTurnConversation")
  (slot-resolution-results :target-type slot-resolution-test-result-items
   :required common-lisp:t :member-name "slotResolutionResults"))
 (:shape-name "IntentLevelSlotResolutionTestResultItem"))

(smithy/sdk/shapes:define-list
 intent-level-slot-resolution-test-result-item-list :member
 intent-level-slot-resolution-test-result-item)

(smithy/sdk/shapes:define-structure intent-level-slot-resolution-test-results
                                    common-lisp:nil
                                    ((items :target-type
                                      intent-level-slot-resolution-test-result-item-list
                                      :required common-lisp:t :member-name
                                      "items"))
                                    (:shape-name
                                     "IntentLevelSlotResolutionTestResults"))

(smithy/sdk/shapes:define-structure intent-override common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (slots :target-type
                                      slot-value-override-map :member-name
                                      "slots"))
                                    (:shape-name "IntentOverride"))

(smithy/sdk/shapes:define-type intent-signature smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum intent-sort-attribute
    common-lisp:nil
  (:intent-name "IntentName")
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure intent-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      intent-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "IntentSortBy"))

(smithy/sdk/shapes:define-enum intent-state
    common-lisp:nil
  (:failed "Failed")
  (:fulfilled "Fulfilled")
  (:in-progress "InProgress")
  (:ready-for-fulfillment "ReadyForFulfillment")
  (:waiting "Waiting")
  (:fulfillment-in-progress "FulfillmentInProgress"))

(smithy/sdk/shapes:define-structure intent-statistics common-lisp:nil
                                    ((discovered-intent-count :target-type
                                      count :member-name
                                      "discoveredIntentCount"))
                                    (:shape-name "IntentStatistics"))

(smithy/sdk/shapes:define-structure intent-summary common-lisp:nil
                                    ((intent-id :target-type id :member-name
                                      "intentId")
                                     (intent-name :target-type name
                                      :member-name "intentName")
                                     (description :target-type description
                                      :member-name "description")
                                     (parent-intent-signature :target-type
                                      intent-signature :member-name
                                      "parentIntentSignature")
                                     (input-contexts :target-type
                                      input-contexts-list :member-name
                                      "inputContexts")
                                     (output-contexts :target-type
                                      output-contexts-list :member-name
                                      "outputContexts")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "IntentSummary"))

(smithy/sdk/shapes:define-list intent-summary-list :member intent-summary)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invoked-intent-sample common-lisp:nil
                                    ((intent-name :target-type name
                                      :member-name "intentName"))
                                    (:shape-name "InvokedIntentSample"))

(smithy/sdk/shapes:define-list invoked-intent-samples :member
                               invoked-intent-sample)

(smithy/sdk/shapes:define-type item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kendra-configuration common-lisp:nil
                                    ((kendra-index :target-type
                                      kendra-index-arn :required common-lisp:t
                                      :member-name "kendraIndex")
                                     (query-filter-string-enabled :target-type
                                      boolean :member-name
                                      "queryFilterStringEnabled")
                                     (query-filter-string :target-type
                                      query-filter-string :member-name
                                      "queryFilterString"))
                                    (:shape-name "KendraConfiguration"))

(smithy/sdk/shapes:define-type kendra-index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-code-hook common-lisp:nil
                                    ((lambda-arn :target-type lambda-arn
                                      :required common-lisp:t :member-name
                                      "lambdaARN")
                                     (code-hook-interface-version :target-type
                                      code-hook-interface-version :required
                                      common-lisp:t :member-name
                                      "codeHookInterfaceVersion"))
                                    (:shape-name "LambdaCodeHook"))

(smithy/sdk/shapes:define-structure lex-transcript-filter common-lisp:nil
                                    ((date-range-filter :target-type
                                      date-range-filter :member-name
                                      "dateRangeFilter"))
                                    (:shape-name "LexTranscriptFilter"))

(smithy/sdk/shapes:define-input list-aggregated-utterances-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-alias-id :target-type bot-alias-id
                                  :member-name "botAliasId")
                                 (bot-version :target-type bot-version
                                  :member-name "botVersion")
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId")
                                 (aggregation-duration :target-type
                                  utterance-aggregation-duration :required
                                  common-lisp:t :member-name
                                  "aggregationDuration")
                                 (sort-by :target-type
                                  aggregated-utterances-sort-by :member-name
                                  "sortBy")
                                 (filters :target-type
                                  aggregated-utterances-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAggregatedUtterancesRequest"))

(smithy/sdk/shapes:define-output list-aggregated-utterances-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-alias-id :target-type bot-alias-id
                                   :member-name "botAliasId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (aggregation-duration :target-type
                                   utterance-aggregation-duration :member-name
                                   "aggregationDuration")
                                  (aggregation-window-start-time :target-type
                                   timestamp :member-name
                                   "aggregationWindowStartTime")
                                  (aggregation-window-end-time :target-type
                                   timestamp :member-name
                                   "aggregationWindowEndTime")
                                  (aggregation-last-refreshed-date-time
                                   :target-type timestamp :member-name
                                   "aggregationLastRefreshedDateTime")
                                  (aggregated-utterances-summaries :target-type
                                   aggregated-utterances-summary-list
                                   :member-name
                                   "aggregatedUtterancesSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAggregatedUtterancesResponse"))

(smithy/sdk/shapes:define-input list-bot-alias-replicas-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (replica-region :target-type replica-region
                                  :required common-lisp:t :member-name
                                  "replicaRegion" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotAliasReplicasRequest"))

(smithy/sdk/shapes:define-output list-bot-alias-replicas-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (source-region :target-type replica-region
                                   :member-name "sourceRegion")
                                  (replica-region :target-type replica-region
                                   :member-name "replicaRegion")
                                  (bot-alias-replica-summaries :target-type
                                   bot-alias-replica-summary-list :member-name
                                   "botAliasReplicaSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBotAliasReplicasResponse"))

(smithy/sdk/shapes:define-input list-bot-aliases-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotAliasesRequest"))

(smithy/sdk/shapes:define-output list-bot-aliases-response common-lisp:nil
                                 ((bot-alias-summaries :target-type
                                   bot-alias-summary-list :member-name
                                   "botAliasSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (bot-id :target-type id :member-name
                                   "botId"))
                                 (:shape-name "ListBotAliasesResponse"))

(smithy/sdk/shapes:define-input list-bot-locales-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (sort-by :target-type bot-locale-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type bot-locale-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotLocalesRequest"))

(smithy/sdk/shapes:define-output list-bot-locales-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (bot-locale-summaries :target-type
                                   bot-locale-summary-list :member-name
                                   "botLocaleSummaries"))
                                 (:shape-name "ListBotLocalesResponse"))

(smithy/sdk/shapes:define-input list-bot-recommendations-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-bot-recommendations-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-summaries :target-type
                                   bot-recommendation-summary-list :member-name
                                   "botRecommendationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBotRecommendationsResponse"))

(smithy/sdk/shapes:define-input list-bot-replicas-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListBotReplicasRequest"))

(smithy/sdk/shapes:define-output list-bot-replicas-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (source-region :target-type replica-region
                                   :member-name "sourceRegion")
                                  (bot-replica-summaries :target-type
                                   bot-replica-summary-list :member-name
                                   "botReplicaSummaries"))
                                 (:shape-name "ListBotReplicasResponse"))

(smithy/sdk/shapes:define-input list-bot-resource-generations-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type generation-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListBotResourceGenerationsRequest"))

(smithy/sdk/shapes:define-output list-bot-resource-generations-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (generation-summaries :target-type
                                   generation-summary-list :member-name
                                   "generationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListBotResourceGenerationsResponse"))

(smithy/sdk/shapes:define-input list-bot-version-replicas-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (replica-region :target-type replica-region
                                  :required common-lisp:t :member-name
                                  "replicaRegion" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (sort-by :target-type
                                  bot-version-replica-sort-by :member-name
                                  "sortBy"))
                                (:shape-name "ListBotVersionReplicasRequest"))

(smithy/sdk/shapes:define-output list-bot-version-replicas-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (source-region :target-type replica-region
                                   :member-name "sourceRegion")
                                  (replica-region :target-type replica-region
                                   :member-name "replicaRegion")
                                  (bot-version-replica-summaries :target-type
                                   bot-version-replica-summary-list
                                   :member-name "botVersionReplicaSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBotVersionReplicasResponse"))

(smithy/sdk/shapes:define-input list-bot-versions-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type bot-version-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotVersionsRequest"))

(smithy/sdk/shapes:define-output list-bot-versions-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version-summaries :target-type
                                   bot-version-summary-list :member-name
                                   "botVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBotVersionsResponse"))

(smithy/sdk/shapes:define-input list-bots-request common-lisp:nil
                                ((sort-by :target-type bot-sort-by :member-name
                                  "sortBy")
                                 (filters :target-type bot-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBotsRequest"))

(smithy/sdk/shapes:define-output list-bots-response common-lisp:nil
                                 ((bot-summaries :target-type bot-summary-list
                                   :member-name "botSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBotsResponse"))

(smithy/sdk/shapes:define-input list-built-in-intents-request common-lisp:nil
                                ((locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type built-in-intent-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type
                                  built-ins-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBuiltInIntentsRequest"))

(smithy/sdk/shapes:define-output list-built-in-intents-response common-lisp:nil
                                 ((built-in-intent-summaries :target-type
                                   built-in-intent-summary-list :member-name
                                   "builtInIntentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId"))
                                 (:shape-name "ListBuiltInIntentsResponse"))

(smithy/sdk/shapes:define-input list-built-in-slot-types-request
                                common-lisp:nil
                                ((locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type
                                  built-in-slot-type-sort-by :member-name
                                  "sortBy")
                                 (max-results :target-type
                                  built-ins-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBuiltInSlotTypesRequest"))

(smithy/sdk/shapes:define-output list-built-in-slot-types-response
                                 common-lisp:nil
                                 ((built-in-slot-type-summaries :target-type
                                   built-in-slot-type-summary-list :member-name
                                   "builtInSlotTypeSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId"))
                                 (:shape-name "ListBuiltInSlotTypesResponse"))

(smithy/sdk/shapes:define-input list-custom-vocabulary-items-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListCustomVocabularyItemsRequest"))

(smithy/sdk/shapes:define-output list-custom-vocabulary-items-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (custom-vocabulary-items :target-type
                                   custom-vocabulary-items :member-name
                                   "customVocabularyItems")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListCustomVocabularyItemsResponse"))

(smithy/sdk/shapes:define-input list-exports-request common-lisp:nil
                                ((bot-id :target-type id :member-name "botId")
                                 (bot-version :target-type bot-version
                                  :member-name "botVersion")
                                 (sort-by :target-type export-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type export-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (locale-id :target-type locale-id :member-name
                                  "localeId"))
                                (:shape-name "ListExportsRequest"))

(smithy/sdk/shapes:define-output list-exports-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (export-summaries :target-type
                                   export-summary-list :member-name
                                   "exportSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId"))
                                 (:shape-name "ListExportsResponse"))

(smithy/sdk/shapes:define-input list-imports-request common-lisp:nil
                                ((bot-id :target-type id :member-name "botId")
                                 (bot-version :target-type draft-bot-version
                                  :member-name "botVersion")
                                 (sort-by :target-type import-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type import-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (locale-id :target-type locale-id :member-name
                                  "localeId"))
                                (:shape-name "ListImportsRequest"))

(smithy/sdk/shapes:define-output list-imports-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (import-summaries :target-type
                                   import-summary-list :member-name
                                   "importSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId"))
                                 (:shape-name "ListImportsResponse"))

(smithy/sdk/shapes:define-input list-intent-metrics-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (metrics :target-type analytics-intent-metrics
                                  :required common-lisp:t :member-name
                                  "metrics")
                                 (bin-by :target-type analytics-bin-by-list
                                  :member-name "binBy")
                                 (group-by :target-type
                                  analytics-intent-group-by-list :member-name
                                  "groupBy")
                                 (filters :target-type analytics-intent-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListIntentMetricsRequest"))

(smithy/sdk/shapes:define-output list-intent-metrics-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (results :target-type
                                   analytics-intent-results :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIntentMetricsResponse"))

(smithy/sdk/shapes:define-input list-intent-paths-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (intent-path :target-type analytics-path
                                  :required common-lisp:t :member-name
                                  "intentPath")
                                 (filters :target-type analytics-path-filters
                                  :member-name "filters"))
                                (:shape-name "ListIntentPathsRequest"))

(smithy/sdk/shapes:define-output list-intent-paths-response common-lisp:nil
                                 ((node-summaries :target-type
                                   analytics-intent-node-summaries :member-name
                                   "nodeSummaries"))
                                 (:shape-name "ListIntentPathsResponse"))

(smithy/sdk/shapes:define-input list-intent-stage-metrics-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (metrics :target-type
                                  analytics-intent-stage-metrics :required
                                  common-lisp:t :member-name "metrics")
                                 (bin-by :target-type analytics-bin-by-list
                                  :member-name "binBy")
                                 (group-by :target-type
                                  analytics-intent-stage-group-by-list
                                  :member-name "groupBy")
                                 (filters :target-type
                                  analytics-intent-stage-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListIntentStageMetricsRequest"))

(smithy/sdk/shapes:define-output list-intent-stage-metrics-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (results :target-type
                                   analytics-intent-stage-results :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIntentStageMetricsResponse"))

(smithy/sdk/shapes:define-input list-intents-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type intent-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type intent-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListIntentsRequest"))

(smithy/sdk/shapes:define-output list-intents-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-summaries :target-type
                                   intent-summary-list :member-name
                                   "intentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIntentsResponse"))

(smithy/sdk/shapes:define-input list-recommended-intents-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (bot-recommendation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "botRecommendationId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListRecommendedIntentsRequest"))

(smithy/sdk/shapes:define-output list-recommended-intents-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId")
                                  (summary-list :target-type
                                   recommended-intent-summary-list :member-name
                                   "summaryList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRecommendedIntentsResponse"))

(smithy/sdk/shapes:define-input list-session-analytics-data-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (sort-by :target-type session-data-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type
                                  analytics-session-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSessionAnalyticsDataRequest"))

(smithy/sdk/shapes:define-output list-session-analytics-data-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (sessions :target-type session-specifications
                                   :member-name "sessions"))
                                 (:shape-name
                                  "ListSessionAnalyticsDataResponse"))

(smithy/sdk/shapes:define-input list-session-metrics-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (metrics :target-type
                                  analytics-session-metrics :required
                                  common-lisp:t :member-name "metrics")
                                 (bin-by :target-type analytics-bin-by-list
                                  :member-name "binBy")
                                 (group-by :target-type
                                  analytics-session-group-by-list :member-name
                                  "groupBy")
                                 (filters :target-type
                                  analytics-session-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSessionMetricsRequest"))

(smithy/sdk/shapes:define-output list-session-metrics-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (results :target-type
                                   analytics-session-results :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSessionMetricsResponse"))

(smithy/sdk/shapes:define-input list-slot-types-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type slot-type-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type slot-type-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSlotTypesRequest"))

(smithy/sdk/shapes:define-output list-slot-types-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (slot-type-summaries :target-type
                                   slot-type-summary-list :member-name
                                   "slotTypeSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSlotTypesResponse"))

(smithy/sdk/shapes:define-input list-slots-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type slot-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type slot-filters
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSlotsRequest"))

(smithy/sdk/shapes:define-output list-slots-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-id :target-type id :member-name
                                   "intentId")
                                  (slot-summaries :target-type
                                   slot-summary-list :member-name
                                   "slotSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSlotsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-test-execution-result-items-request
                                common-lisp:nil
                                ((test-execution-id :target-type id :required
                                  common-lisp:t :member-name "testExecutionId"
                                  :http-label common-lisp:t)
                                 (result-filter-by :target-type
                                  test-execution-result-filter-by :required
                                  common-lisp:t :member-name "resultFilterBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListTestExecutionResultItemsRequest"))

(smithy/sdk/shapes:define-output list-test-execution-result-items-response
                                 common-lisp:nil
                                 ((test-execution-results :target-type
                                   test-execution-result-items :member-name
                                   "testExecutionResults")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTestExecutionResultItemsResponse"))

(smithy/sdk/shapes:define-input list-test-executions-request common-lisp:nil
                                ((sort-by :target-type test-execution-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestExecutionsRequest"))

(smithy/sdk/shapes:define-output list-test-executions-response common-lisp:nil
                                 ((test-executions :target-type
                                   test-execution-summary-list :member-name
                                   "testExecutions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestExecutionsResponse"))

(smithy/sdk/shapes:define-input list-test-set-records-request common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestSetRecordsRequest"))

(smithy/sdk/shapes:define-output list-test-set-records-response common-lisp:nil
                                 ((test-set-records :target-type
                                   test-set-turn-record-list :member-name
                                   "testSetRecords")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestSetRecordsResponse"))

(smithy/sdk/shapes:define-input list-test-sets-request common-lisp:nil
                                ((sort-by :target-type test-set-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTestSetsRequest"))

(smithy/sdk/shapes:define-output list-test-sets-response common-lisp:nil
                                 ((test-sets :target-type test-set-summary-list
                                   :member-name "testSets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestSetsResponse"))

(smithy/sdk/shapes:define-input list-utterance-analytics-data-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (sort-by :target-type utterance-data-sort-by
                                  :member-name "sortBy")
                                 (filters :target-type
                                  analytics-utterance-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListUtteranceAnalyticsDataRequest"))

(smithy/sdk/shapes:define-output list-utterance-analytics-data-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (utterances :target-type
                                   utterance-specifications :member-name
                                   "utterances"))
                                 (:shape-name
                                  "ListUtteranceAnalyticsDataResponse"))

(smithy/sdk/shapes:define-input list-utterance-metrics-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (start-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "startDateTime")
                                 (end-date-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "endDateTime")
                                 (metrics :target-type
                                  analytics-utterance-metrics :required
                                  common-lisp:t :member-name "metrics")
                                 (bin-by :target-type analytics-bin-by-list
                                  :member-name "binBy")
                                 (group-by :target-type
                                  analytics-utterance-group-by-list
                                  :member-name "groupBy")
                                 (attributes :target-type
                                  analytics-utterance-attributes :member-name
                                  "attributes")
                                 (filters :target-type
                                  analytics-utterance-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListUtteranceMetricsRequest"))

(smithy/sdk/shapes:define-output list-utterance-metrics-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (results :target-type
                                   analytics-utterance-results :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUtteranceMetricsResponse"))

(smithy/sdk/shapes:define-type locale-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type locale-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-utterance-digits
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum merge-strategy
    common-lisp:nil
  (:overwrite "Overwrite")
  (:fail-on-conflict "FailOnConflict")
  (:append "Append"))

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((plain-text-message :target-type
                                      plain-text-message :member-name
                                      "plainTextMessage")
                                     (custom-payload :target-type
                                      custom-payload :member-name
                                      "customPayload")
                                     (ssml-message :target-type ssmlmessage
                                      :member-name "ssmlMessage")
                                     (image-response-card :target-type
                                      image-response-card :member-name
                                      "imageResponseCard"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-structure message-group common-lisp:nil
                                    ((message :target-type message :required
                                      common-lisp:t :member-name "message")
                                     (variations :target-type
                                      message-variations-list :member-name
                                      "variations"))
                                    (:shape-name "MessageGroup"))

(smithy/sdk/shapes:define-list message-groups-list :member message-group)

(smithy/sdk/shapes:define-enum message-selection-strategy
    common-lisp:nil
  (:random "Random")
  (:ordered "Ordered"))

(smithy/sdk/shapes:define-list message-variations-list :member message)

(smithy/sdk/shapes:define-type missed-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure multiple-values-setting common-lisp:nil
                                    ((allow-multiple-values :target-type
                                      boolean :member-name
                                      "allowMultipleValues"))
                                    (:shape-name "MultipleValuesSetting"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure new-custom-vocabulary-item common-lisp:nil
                                    ((phrase :target-type phrase :required
                                      common-lisp:t :member-name "phrase")
                                     (weight :target-type weight :member-name
                                      "weight")
                                     (display-as :target-type phrase
                                      :member-name "displayAs"))
                                    (:shape-name "NewCustomVocabularyItem"))

(smithy/sdk/shapes:define-type next-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure nlu-improvement-specification
                                    common-lisp:nil
                                    ((enabled :target-type enabled :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "NluImprovementSpecification"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type numerical-bot-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list osinclude-fields :member include-field)

(smithy/sdk/shapes:define-type osindex-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure obfuscation-setting common-lisp:nil
                                    ((obfuscation-setting-type :target-type
                                      obfuscation-setting-type :required
                                      common-lisp:t :member-name
                                      "obfuscationSettingType"))
                                    (:shape-name "ObfuscationSetting"))

(smithy/sdk/shapes:define-enum obfuscation-setting-type
    common-lisp:nil
  (:none "None")
  (:default-obfuscation "DefaultObfuscation"))

(smithy/sdk/shapes:define-type object-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-prefixes :member object-prefix)

(smithy/sdk/shapes:define-structure opensearch-configuration common-lisp:nil
                                    ((domain-endpoint :target-type
                                      domain-endpoint :required common-lisp:t
                                      :member-name "domainEndpoint")
                                     (index-name :target-type osindex-name
                                      :required common-lisp:t :member-name
                                      "indexName")
                                     (exact-response :target-type boolean
                                      :member-name "exactResponse")
                                     (exact-response-fields :target-type
                                      exact-response-fields :member-name
                                      "exactResponseFields")
                                     (include-fields :target-type
                                      osinclude-fields :member-name
                                      "includeFields"))
                                    (:shape-name "OpensearchConfiguration"))

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list operation-list :member operation)

(smithy/sdk/shapes:define-structure output-context common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (time-to-live-in-seconds :target-type
                                      context-time-to-live-in-seconds :required
                                      common-lisp:t :member-name
                                      "timeToLiveInSeconds")
                                     (turns-to-live :target-type
                                      context-turns-to-live :required
                                      common-lisp:t :member-name
                                      "turnsToLive"))
                                    (:shape-name "OutputContext"))

(smithy/sdk/shapes:define-list output-contexts-list :member output-context)

(smithy/sdk/shapes:define-structure overall-test-result-item common-lisp:nil
                                    ((multi-turn-conversation :target-type
                                      boolean :required common-lisp:t
                                      :member-name "multiTurnConversation")
                                     (total-result-count :target-type count
                                      :required common-lisp:t :member-name
                                      "totalResultCount")
                                     (speech-transcription-result-counts
                                      :target-type
                                      test-result-match-status-count-map
                                      :member-name
                                      "speechTranscriptionResultCounts")
                                     (end-to-end-result-counts :target-type
                                      test-result-match-status-count-map
                                      :required common-lisp:t :member-name
                                      "endToEndResultCounts"))
                                    (:shape-name "OverallTestResultItem"))

(smithy/sdk/shapes:define-list overall-test-result-item-list :member
                               overall-test-result-item)

(smithy/sdk/shapes:define-structure overall-test-results common-lisp:nil
                                    ((items :target-type
                                      overall-test-result-item-list :required
                                      common-lisp:t :member-name "items"))
                                    (:shape-name "OverallTestResults"))

(smithy/sdk/shapes:define-structure parent-bot-network common-lisp:nil
                                    ((bot-id :target-type id :required
                                      common-lisp:t :member-name "botId")
                                     (bot-version :target-type bot-version
                                      :required common-lisp:t :member-name
                                      "botVersion"))
                                    (:shape-name "ParentBotNetwork"))

(smithy/sdk/shapes:define-list parent-bot-networks :member parent-bot-network)

(smithy/sdk/shapes:define-structure path-format common-lisp:nil
                                    ((object-prefixes :target-type
                                      object-prefixes :member-name
                                      "objectPrefixes"))
                                    (:shape-name "PathFormat"))

(smithy/sdk/shapes:define-type phrase smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure plain-text-message common-lisp:nil
                                    ((value :target-type
                                      plain-text-message-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "PlainTextMessage"))

(smithy/sdk/shapes:define-type plain-text-message-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 post-dialog-code-hook-invocation-specification common-lisp:nil
 ((success-response :target-type response-specification :member-name
   "successResponse")
  (success-next-step :target-type dialog-state :member-name "successNextStep")
  (success-conditional :target-type conditional-specification :member-name
   "successConditional")
  (failure-response :target-type response-specification :member-name
   "failureResponse")
  (failure-next-step :target-type dialog-state :member-name "failureNextStep")
  (failure-conditional :target-type conditional-specification :member-name
   "failureConditional")
  (timeout-response :target-type response-specification :member-name
   "timeoutResponse")
  (timeout-next-step :target-type dialog-state :member-name "timeoutNextStep")
  (timeout-conditional :target-type conditional-specification :member-name
   "timeoutConditional"))
 (:shape-name "PostDialogCodeHookInvocationSpecification"))

(smithy/sdk/shapes:define-structure post-fulfillment-status-specification
                                    common-lisp:nil
                                    ((success-response :target-type
                                      response-specification :member-name
                                      "successResponse")
                                     (failure-response :target-type
                                      response-specification :member-name
                                      "failureResponse")
                                     (timeout-response :target-type
                                      response-specification :member-name
                                      "timeoutResponse")
                                     (success-next-step :target-type
                                      dialog-state :member-name
                                      "successNextStep")
                                     (success-conditional :target-type
                                      conditional-specification :member-name
                                      "successConditional")
                                     (failure-next-step :target-type
                                      dialog-state :member-name
                                      "failureNextStep")
                                     (failure-conditional :target-type
                                      conditional-specification :member-name
                                      "failureConditional")
                                     (timeout-next-step :target-type
                                      dialog-state :member-name
                                      "timeoutNextStep")
                                     (timeout-conditional :target-type
                                      conditional-specification :member-name
                                      "timeoutConditional"))
                                    (:shape-name
                                     "PostFulfillmentStatusSpecification"))

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412))

(smithy/sdk/shapes:define-type presigned-s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure principal common-lisp:nil
                                    ((service :target-type service-principal
                                      :member-name "service")
                                     (arn :target-type principal-arn
                                      :member-name "arn"))
                                    (:shape-name "Principal"))

(smithy/sdk/shapes:define-type principal-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list principal-list :member principal)

(smithy/sdk/shapes:define-type priority-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum prompt-attempt
    common-lisp:nil
  (:initial "Initial")
  (:retry1 "Retry1")
  (:retry2 "Retry2")
  (:retry3 "Retry3")
  (:retry4 "Retry4")
  (:retry5 "Retry5"))

(smithy/sdk/shapes:define-structure prompt-attempt-specification
                                    common-lisp:nil
                                    ((allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt")
                                     (allowed-input-types :target-type
                                      allowed-input-types :required
                                      common-lisp:t :member-name
                                      "allowedInputTypes")
                                     (audio-and-dtmfinput-specification
                                      :target-type
                                      audio-and-dtmfinput-specification
                                      :member-name
                                      "audioAndDTMFInputSpecification")
                                     (text-input-specification :target-type
                                      text-input-specification :member-name
                                      "textInputSpecification"))
                                    (:shape-name "PromptAttemptSpecification"))

(smithy/sdk/shapes:define-map prompt-attempts-specification-map :key
                              prompt-attempt :value
                              prompt-attempt-specification)

(smithy/sdk/shapes:define-type prompt-max-retries
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure prompt-specification common-lisp:nil
                                    ((message-groups :target-type
                                      message-groups-list :required
                                      common-lisp:t :member-name
                                      "messageGroups")
                                     (max-retries :target-type
                                      prompt-max-retries :required
                                      common-lisp:t :member-name "maxRetries")
                                     (allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt")
                                     (message-selection-strategy :target-type
                                      message-selection-strategy :member-name
                                      "messageSelectionStrategy")
                                     (prompt-attempts-specification
                                      :target-type
                                      prompt-attempts-specification-map
                                      :member-name
                                      "promptAttemptsSpecification"))
                                    (:shape-name "PromptSpecification"))

(smithy/sdk/shapes:define-type qin-connect-assistant-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure qin-connect-assistant-configuration
                                    common-lisp:nil
                                    ((assistant-arn :target-type
                                      qin-connect-assistant-arn :required
                                      common-lisp:t :member-name
                                      "assistantArn"))
                                    (:shape-name
                                     "QInConnectAssistantConfiguration"))

(smithy/sdk/shapes:define-structure qin-connect-intent-configuration
                                    common-lisp:nil
                                    ((q-in-connect-assistant-configuration
                                      :target-type
                                      qin-connect-assistant-configuration
                                      :member-name
                                      "qInConnectAssistantConfiguration"))
                                    (:shape-name
                                     "QInConnectIntentConfiguration"))

(smithy/sdk/shapes:define-structure qn-aintent-configuration common-lisp:nil
                                    ((data-source-configuration :target-type
                                      data-source-configuration :member-name
                                      "dataSourceConfiguration")
                                     (bedrock-model-configuration :target-type
                                      bedrock-model-specification :member-name
                                      "bedrockModelConfiguration"))
                                    (:shape-name "QnAIntentConfiguration"))

(smithy/sdk/shapes:define-structure qn-akendra-configuration common-lisp:nil
                                    ((kendra-index :target-type
                                      kendra-index-arn :required common-lisp:t
                                      :member-name "kendraIndex")
                                     (query-filter-string-enabled :target-type
                                      boolean :member-name
                                      "queryFilterStringEnabled")
                                     (query-filter-string :target-type
                                      query-filter-string :member-name
                                      "queryFilterString")
                                     (exact-response :target-type boolean
                                      :member-name "exactResponse"))
                                    (:shape-name "QnAKendraConfiguration"))

(smithy/sdk/shapes:define-type query-filter-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type question-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommended-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommended-actions :member recommended-action)

(smithy/sdk/shapes:define-structure recommended-intent-summary common-lisp:nil
                                    ((intent-id :target-type id :member-name
                                      "intentId")
                                     (intent-name :target-type name
                                      :member-name "intentName")
                                     (sample-utterances-count :target-type
                                      sample-utterances-count :member-name
                                      "sampleUtterancesCount"))
                                    (:shape-name "RecommendedIntentSummary"))

(smithy/sdk/shapes:define-list recommended-intent-summary-list :member
                               recommended-intent-summary)

(smithy/sdk/shapes:define-type record-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type regex-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure relative-aggregation-duration
                                    common-lisp:nil
                                    ((time-dimension :target-type
                                      time-dimension :required common-lisp:t
                                      :member-name "timeDimension")
                                     (time-value :target-type time-value
                                      :required common-lisp:t :member-name
                                      "timeValue"))
                                    (:shape-name "RelativeAggregationDuration"))

(smithy/sdk/shapes:define-type replica-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure response-specification common-lisp:nil
                                    ((message-groups :target-type
                                      message-groups-list :required
                                      common-lisp:t :member-name
                                      "messageGroups")
                                     (allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt"))
                                    (:shape-name "ResponseSpecification"))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type revision-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure runtime-settings common-lisp:nil
                                    ((slot-resolution-improvement :target-type
                                      slot-resolution-improvement-specification
                                      :member-name "slotResolutionImprovement")
                                     (nlu-improvement :target-type
                                      nlu-improvement-specification
                                      :member-name "nluImprovement"))
                                    (:shape-name "RuntimeSettings"))

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-log-destination common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (s3bucket-arn :target-type s3bucket-arn
                                      :required common-lisp:t :member-name
                                      "s3BucketArn")
                                     (log-prefix :target-type log-prefix
                                      :required common-lisp:t :member-name
                                      "logPrefix"))
                                    (:shape-name "S3BucketLogDestination"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-transcript-source common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3BucketName")
                                     (path-format :target-type path-format
                                      :member-name "pathFormat")
                                     (transcript-format :target-type
                                      transcript-format :required common-lisp:t
                                      :member-name "transcriptFormat")
                                     (transcript-filter :target-type
                                      transcript-filter :member-name
                                      "transcriptFilter")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "S3BucketTranscriptSource"))

(smithy/sdk/shapes:define-type s3object-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssmlmessage common-lisp:nil
                                    ((value :target-type ssmlmessage-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "SSMLMessage"))

(smithy/sdk/shapes:define-type ssmlmessage-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sample-utterance common-lisp:nil
                                    ((utterance :target-type utterance
                                      :required common-lisp:t :member-name
                                      "utterance"))
                                    (:shape-name "SampleUtterance"))

(smithy/sdk/shapes:define-structure sample-utterance-generation-specification
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (bedrock-model-specification :target-type
                                      bedrock-model-specification :member-name
                                      "bedrockModelSpecification"))
                                    (:shape-name
                                     "SampleUtteranceGenerationSpecification"))

(smithy/sdk/shapes:define-type sample-utterances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list sample-utterances-list :member sample-utterance)

(smithy/sdk/shapes:define-structure sample-value common-lisp:nil
                                    ((value :target-type value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "SampleValue"))

(smithy/sdk/shapes:define-input search-associated-transcripts-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (bot-recommendation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "botRecommendationId" :http-label
                                  common-lisp:t)
                                 (search-order :target-type search-order
                                  :member-name "searchOrder")
                                 (filters :target-type
                                  associated-transcript-filters :required
                                  common-lisp:t :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-index :target-type next-index
                                  :member-name "nextIndex"))
                                (:shape-name
                                 "SearchAssociatedTranscriptsRequest"))

(smithy/sdk/shapes:define-output search-associated-transcripts-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId")
                                  (next-index :target-type next-index
                                   :member-name "nextIndex")
                                  (associated-transcripts :target-type
                                   associated-transcript-list :member-name
                                   "associatedTranscripts")
                                  (total-results :target-type max-results
                                   :member-name "totalResults"))
                                 (:shape-name
                                  "SearchAssociatedTranscriptsResponse"))

(smithy/sdk/shapes:define-enum search-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-structure sentiment-analysis-settings common-lisp:nil
                                    ((detect-sentiment :target-type boolean
                                      :required common-lisp:t :member-name
                                      "detectSentiment"))
                                    (:shape-name "SentimentAnalysisSettings"))

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure session-data-sort-by common-lisp:nil
                                    ((name :target-type
                                      analytics-session-sort-by-name :required
                                      common-lisp:t :member-name "name")
                                     (order :target-type analytics-sort-order
                                      :required common-lisp:t :member-name
                                      "order"))
                                    (:shape-name "SessionDataSortBy"))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-specification common-lisp:nil
                                    ((bot-alias-id :target-type bot-alias-id
                                      :member-name "botAliasId")
                                     (bot-version :target-type
                                      numerical-bot-version :member-name
                                      "botVersion")
                                     (locale-id :target-type locale-id
                                      :member-name "localeId")
                                     (channel :target-type analytics-channel
                                      :member-name "channel")
                                     (session-id :target-type
                                      analytics-session-id :member-name
                                      "sessionId")
                                     (conversation-start-time :target-type
                                      timestamp :member-name
                                      "conversationStartTime")
                                     (conversation-end-time :target-type
                                      timestamp :member-name
                                      "conversationEndTime")
                                     (conversation-duration-seconds
                                      :target-type analytics-long-value
                                      :member-name
                                      "conversationDurationSeconds")
                                     (conversation-end-state :target-type
                                      conversation-end-state :member-name
                                      "conversationEndState")
                                     (mode :target-type analytics-modality
                                      :member-name "mode")
                                     (number-of-turns :target-type
                                      analytics-long-value :member-name
                                      "numberOfTurns")
                                     (invoked-intent-samples :target-type
                                      invoked-intent-samples :member-name
                                      "invokedIntentSamples")
                                     (originating-request-id :target-type
                                      analytics-originating-request-id
                                      :member-name "originatingRequestId"))
                                    (:shape-name "SessionSpecification"))

(smithy/sdk/shapes:define-list session-specifications :member
                               session-specification)

(smithy/sdk/shapes:define-type session-ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type skip-resource-in-use-check
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure slot-capture-setting common-lisp:nil
                                    ((capture-response :target-type
                                      response-specification :member-name
                                      "captureResponse")
                                     (capture-next-step :target-type
                                      dialog-state :member-name
                                      "captureNextStep")
                                     (capture-conditional :target-type
                                      conditional-specification :member-name
                                      "captureConditional")
                                     (failure-response :target-type
                                      response-specification :member-name
                                      "failureResponse")
                                     (failure-next-step :target-type
                                      dialog-state :member-name
                                      "failureNextStep")
                                     (failure-conditional :target-type
                                      conditional-specification :member-name
                                      "failureConditional")
                                     (code-hook :target-type
                                      dialog-code-hook-invocation-setting
                                      :member-name "codeHook")
                                     (elicitation-code-hook :target-type
                                      elicitation-code-hook-invocation-setting
                                      :member-name "elicitationCodeHook"))
                                    (:shape-name "SlotCaptureSetting"))

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

(smithy/sdk/shapes:define-structure slot-default-value-specification
                                    common-lisp:nil
                                    ((default-value-list :target-type
                                      slot-default-value-list :required
                                      common-lisp:t :member-name
                                      "defaultValueList"))
                                    (:shape-name
                                     "SlotDefaultValueSpecification"))

(smithy/sdk/shapes:define-type slot-default-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure slot-filter common-lisp:nil
                                    ((name :target-type slot-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      slot-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "SlotFilter"))

(smithy/sdk/shapes:define-enum slot-filter-name
    common-lisp:nil
  (:slot-name "SlotName"))

(smithy/sdk/shapes:define-enum slot-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list slot-filters :member slot-filter)

(smithy/sdk/shapes:define-map slot-hints-intent-map :key name :value
                              slot-hints-slot-map)

(smithy/sdk/shapes:define-map slot-hints-slot-map :key name :value
                              runtime-hint-details)

(smithy/sdk/shapes:define-list slot-priorities-list :member slot-priority)

(smithy/sdk/shapes:define-structure slot-priority common-lisp:nil
                                    ((priority :target-type priority-value
                                      :required common-lisp:t :member-name
                                      "priority")
                                     (slot-id :target-type id :required
                                      common-lisp:t :member-name "slotId"))
                                    (:shape-name "SlotPriority"))

(smithy/sdk/shapes:define-structure slot-resolution-improvement-specification
                                    common-lisp:nil
                                    ((enabled :target-type enabled :required
                                      common-lisp:t :member-name "enabled")
                                     (bedrock-model-specification :target-type
                                      bedrock-model-specification :member-name
                                      "bedrockModelSpecification"))
                                    (:shape-name
                                     "SlotResolutionImprovementSpecification"))

(smithy/sdk/shapes:define-structure slot-resolution-setting common-lisp:nil
                                    ((slot-resolution-strategy :target-type
                                      slot-resolution-strategy :required
                                      common-lisp:t :member-name
                                      "slotResolutionStrategy"))
                                    (:shape-name "SlotResolutionSetting"))

(smithy/sdk/shapes:define-enum slot-resolution-strategy
    common-lisp:nil
  (:enhanced-fallback "EnhancedFallback")
  (:default "Default"))

(smithy/sdk/shapes:define-structure slot-resolution-test-result-item
                                    common-lisp:nil
                                    ((slot-name :target-type
                                      test-result-slot-name :required
                                      common-lisp:t :member-name "slotName")
                                     (result-counts :target-type
                                      slot-resolution-test-result-item-counts
                                      :required common-lisp:t :member-name
                                      "resultCounts"))
                                    (:shape-name
                                     "SlotResolutionTestResultItem"))

(smithy/sdk/shapes:define-structure slot-resolution-test-result-item-counts
                                    common-lisp:nil
                                    ((total-result-count :target-type count
                                      :required common-lisp:t :member-name
                                      "totalResultCount")
                                     (speech-transcription-result-counts
                                      :target-type
                                      test-result-match-status-count-map
                                      :member-name
                                      "speechTranscriptionResultCounts")
                                     (slot-match-result-counts :target-type
                                      test-result-match-status-count-map
                                      :required common-lisp:t :member-name
                                      "slotMatchResultCounts"))
                                    (:shape-name
                                     "SlotResolutionTestResultItemCounts"))

(smithy/sdk/shapes:define-list slot-resolution-test-result-items :member
                               slot-resolution-test-result-item)

(smithy/sdk/shapes:define-enum slot-shape
    common-lisp:nil
  (:scalar "Scalar")
  (:list "List"))

(smithy/sdk/shapes:define-enum slot-sort-attribute
    common-lisp:nil
  (:slot-name "SlotName")
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure slot-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      slot-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "SlotSortBy"))

(smithy/sdk/shapes:define-structure slot-summary common-lisp:nil
                                    ((slot-id :target-type id :member-name
                                      "slotId")
                                     (slot-name :target-type name :member-name
                                      "slotName")
                                     (description :target-type description
                                      :member-name "description")
                                     (slot-constraint :target-type
                                      slot-constraint :member-name
                                      "slotConstraint")
                                     (slot-type-id :target-type
                                      built-in-or-custom-slot-type-id
                                      :member-name "slotTypeId")
                                     (value-elicitation-prompt-specification
                                      :target-type prompt-specification
                                      :member-name
                                      "valueElicitationPromptSpecification")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "SlotSummary"))

(smithy/sdk/shapes:define-list slot-summary-list :member slot-summary)

(smithy/sdk/shapes:define-enum slot-type-category
    common-lisp:nil
  (:custom "Custom")
  (:extended "Extended")
  (:external-grammar "ExternalGrammar")
  (:composite "Composite"))

(smithy/sdk/shapes:define-structure slot-type-filter common-lisp:nil
                                    ((name :target-type slot-type-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      slot-type-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "SlotTypeFilter"))

(smithy/sdk/shapes:define-enum slot-type-filter-name
    common-lisp:nil
  (:slot-type-name "SlotTypeName")
  (:external-source-type "ExternalSourceType"))

(smithy/sdk/shapes:define-enum slot-type-filter-operator
    common-lisp:nil
  (:contains "CO")
  (:equals "EQ"))

(smithy/sdk/shapes:define-list slot-type-filters :member slot-type-filter)

(smithy/sdk/shapes:define-type slot-type-signature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum slot-type-sort-attribute
    common-lisp:nil
  (:slot-type-name "SlotTypeName")
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure slot-type-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      slot-type-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "SlotTypeSortBy"))

(smithy/sdk/shapes:define-structure slot-type-statistics common-lisp:nil
                                    ((discovered-slot-type-count :target-type
                                      count :member-name
                                      "discoveredSlotTypeCount"))
                                    (:shape-name "SlotTypeStatistics"))

(smithy/sdk/shapes:define-structure slot-type-summary common-lisp:nil
                                    ((slot-type-id :target-type id :member-name
                                      "slotTypeId")
                                     (slot-type-name :target-type name
                                      :member-name "slotTypeName")
                                     (description :target-type description
                                      :member-name "description")
                                     (parent-slot-type-signature :target-type
                                      slot-type-signature :member-name
                                      "parentSlotTypeSignature")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (slot-type-category :target-type
                                      slot-type-category :member-name
                                      "slotTypeCategory"))
                                    (:shape-name "SlotTypeSummary"))

(smithy/sdk/shapes:define-list slot-type-summary-list :member slot-type-summary)

(smithy/sdk/shapes:define-structure slot-type-value common-lisp:nil
                                    ((sample-value :target-type sample-value
                                      :member-name "sampleValue")
                                     (synonyms :target-type synonym-list
                                      :member-name "synonyms"))
                                    (:shape-name "SlotTypeValue"))

(smithy/sdk/shapes:define-list slot-type-values :member slot-type-value)

(smithy/sdk/shapes:define-structure slot-value common-lisp:nil
                                    ((interpreted-value :target-type
                                      non-empty-string :member-name
                                      "interpretedValue"))
                                    (:shape-name "SlotValue"))

(smithy/sdk/shapes:define-structure slot-value-elicitation-setting
                                    common-lisp:nil
                                    ((default-value-specification :target-type
                                      slot-default-value-specification
                                      :member-name "defaultValueSpecification")
                                     (slot-constraint :target-type
                                      slot-constraint :required common-lisp:t
                                      :member-name "slotConstraint")
                                     (prompt-specification :target-type
                                      prompt-specification :member-name
                                      "promptSpecification")
                                     (sample-utterances :target-type
                                      sample-utterances-list :member-name
                                      "sampleUtterances")
                                     (wait-and-continue-specification
                                      :target-type
                                      wait-and-continue-specification
                                      :member-name
                                      "waitAndContinueSpecification")
                                     (slot-capture-setting :target-type
                                      slot-capture-setting :member-name
                                      "slotCaptureSetting")
                                     (slot-resolution-setting :target-type
                                      slot-resolution-setting :member-name
                                      "slotResolutionSetting"))
                                    (:shape-name "SlotValueElicitationSetting"))

(smithy/sdk/shapes:define-structure slot-value-override common-lisp:nil
                                    ((shape :target-type slot-shape
                                      :member-name "shape")
                                     (value :target-type slot-value
                                      :member-name "value")
                                     (values :target-type slot-values
                                      :member-name "values"))
                                    (:shape-name "SlotValueOverride"))

(smithy/sdk/shapes:define-map slot-value-override-map :key name :value
                              slot-value-override)

(smithy/sdk/shapes:define-structure slot-value-regex-filter common-lisp:nil
                                    ((pattern :target-type regex-pattern
                                      :required common-lisp:t :member-name
                                      "pattern"))
                                    (:shape-name "SlotValueRegexFilter"))

(smithy/sdk/shapes:define-enum slot-value-resolution-strategy
    common-lisp:nil
  (:original-value "OriginalValue")
  (:top-resolution "TopResolution")
  (:concatenation "Concatenation"))

(smithy/sdk/shapes:define-structure slot-value-selection-setting
                                    common-lisp:nil
                                    ((resolution-strategy :target-type
                                      slot-value-resolution-strategy :required
                                      common-lisp:t :member-name
                                      "resolutionStrategy")
                                     (regex-filter :target-type
                                      slot-value-regex-filter :member-name
                                      "regexFilter")
                                     (advanced-recognition-setting :target-type
                                      advanced-recognition-setting :member-name
                                      "advancedRecognitionSetting"))
                                    (:shape-name "SlotValueSelectionSetting"))

(smithy/sdk/shapes:define-list slot-values :member slot-value-override)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-structure specifications common-lisp:nil
                                    ((slot-type-id :target-type
                                      built-in-or-custom-slot-type-id :required
                                      common-lisp:t :member-name "slotTypeId")
                                     (value-elicitation-setting :target-type
                                      sub-slot-value-elicitation-setting
                                      :required common-lisp:t :member-name
                                      "valueElicitationSetting"))
                                    (:shape-name "Specifications"))

(smithy/sdk/shapes:define-input start-bot-recommendation-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (transcript-source-setting :target-type
                                  transcript-source-setting :required
                                  common-lisp:t :member-name
                                  "transcriptSourceSetting")
                                 (encryption-setting :target-type
                                  encryption-setting :member-name
                                  "encryptionSetting"))
                                (:shape-name "StartBotRecommendationRequest"))

(smithy/sdk/shapes:define-output start-bot-recommendation-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-status :target-type
                                   bot-recommendation-status :member-name
                                   "botRecommendationStatus")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (transcript-source-setting :target-type
                                   transcript-source-setting :member-name
                                   "transcriptSourceSetting")
                                  (encryption-setting :target-type
                                   encryption-setting :member-name
                                   "encryptionSetting"))
                                 (:shape-name "StartBotRecommendationResponse"))

(smithy/sdk/shapes:define-input start-bot-resource-generation-request
                                common-lisp:nil
                                ((generation-input-prompt :target-type
                                  generation-input :required common-lisp:t
                                  :member-name "generationInputPrompt")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StartBotResourceGenerationRequest"))

(smithy/sdk/shapes:define-output start-bot-resource-generation-response
                                 common-lisp:nil
                                 ((generation-input-prompt :target-type
                                   generation-input :member-name
                                   "generationInputPrompt")
                                  (generation-id :target-type id :member-name
                                   "generationId")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (generation-status :target-type
                                   generation-status :member-name
                                   "generationStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime"))
                                 (:shape-name
                                  "StartBotResourceGenerationResponse"))

(smithy/sdk/shapes:define-input start-import-request common-lisp:nil
                                ((import-id :target-type id :required
                                  common-lisp:t :member-name "importId")
                                 (resource-specification :target-type
                                  import-resource-specification :required
                                  common-lisp:t :member-name
                                  "resourceSpecification")
                                 (merge-strategy :target-type merge-strategy
                                  :required common-lisp:t :member-name
                                  "mergeStrategy")
                                 (file-password :target-type
                                  import-export-file-password :member-name
                                  "filePassword"))
                                (:shape-name "StartImportRequest"))

(smithy/sdk/shapes:define-output start-import-response common-lisp:nil
                                 ((import-id :target-type id :member-name
                                   "importId")
                                  (resource-specification :target-type
                                   import-resource-specification :member-name
                                   "resourceSpecification")
                                  (merge-strategy :target-type merge-strategy
                                   :member-name "mergeStrategy")
                                  (import-status :target-type import-status
                                   :member-name "importStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime"))
                                 (:shape-name "StartImportResponse"))

(smithy/sdk/shapes:define-input start-test-execution-request common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t)
                                 (target :target-type test-execution-target
                                  :required common-lisp:t :member-name
                                  "target")
                                 (api-mode :target-type test-execution-api-mode
                                  :required common-lisp:t :member-name
                                  "apiMode")
                                 (test-execution-modality :target-type
                                  test-execution-modality :member-name
                                  "testExecutionModality"))
                                (:shape-name "StartTestExecutionRequest"))

(smithy/sdk/shapes:define-output start-test-execution-response common-lisp:nil
                                 ((test-execution-id :target-type id
                                   :member-name "testExecutionId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (test-set-id :target-type id :member-name
                                   "testSetId")
                                  (target :target-type test-execution-target
                                   :member-name "target")
                                  (api-mode :target-type
                                   test-execution-api-mode :member-name
                                   "apiMode")
                                  (test-execution-modality :target-type
                                   test-execution-modality :member-name
                                   "testExecutionModality"))
                                 (:shape-name "StartTestExecutionResponse"))

(smithy/sdk/shapes:define-input start-test-set-generation-request
                                common-lisp:nil
                                ((test-set-name :target-type name :required
                                  common-lisp:t :member-name "testSetName")
                                 (description :target-type description
                                  :member-name "description")
                                 (storage-location :target-type
                                  test-set-storage-location :required
                                  common-lisp:t :member-name "storageLocation")
                                 (generation-data-source :target-type
                                  test-set-generation-data-source :required
                                  common-lisp:t :member-name
                                  "generationDataSource")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (test-set-tags :target-type tag-map
                                  :member-name "testSetTags"))
                                (:shape-name "StartTestSetGenerationRequest"))

(smithy/sdk/shapes:define-output start-test-set-generation-response
                                 common-lisp:nil
                                 ((test-set-generation-id :target-type id
                                   :member-name "testSetGenerationId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (test-set-generation-status :target-type
                                   test-set-generation-status :member-name
                                   "testSetGenerationStatus")
                                  (test-set-name :target-type name :member-name
                                   "testSetName")
                                  (description :target-type description
                                   :member-name "description")
                                  (storage-location :target-type
                                   test-set-storage-location :member-name
                                   "storageLocation")
                                  (generation-data-source :target-type
                                   test-set-generation-data-source :member-name
                                   "generationDataSource")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (test-set-tags :target-type tag-map
                                   :member-name "testSetTags"))
                                 (:shape-name "StartTestSetGenerationResponse"))

(smithy/sdk/shapes:define-type still-waiting-response-frequency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure still-waiting-response-specification
                                    common-lisp:nil
                                    ((message-groups :target-type
                                      message-groups-list :required
                                      common-lisp:t :member-name
                                      "messageGroups")
                                     (frequency-in-seconds :target-type
                                      still-waiting-response-frequency
                                      :required common-lisp:t :member-name
                                      "frequencyInSeconds")
                                     (timeout-in-seconds :target-type
                                      still-waiting-response-timeout :required
                                      common-lisp:t :member-name
                                      "timeoutInSeconds")
                                     (allow-interrupt :target-type
                                      boxed-boolean :member-name
                                      "allowInterrupt"))
                                    (:shape-name
                                     "StillWaitingResponseSpecification"))

(smithy/sdk/shapes:define-type still-waiting-response-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input stop-bot-recommendation-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (bot-recommendation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "botRecommendationId" :http-label
                                  common-lisp:t))
                                (:shape-name "StopBotRecommendationRequest"))

(smithy/sdk/shapes:define-output stop-bot-recommendation-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-status :target-type
                                   bot-recommendation-status :member-name
                                   "botRecommendationStatus")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId"))
                                 (:shape-name "StopBotRecommendationResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key non-empty-string :value string)

(smithy/sdk/shapes:define-type sub-slot-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sub-slot-setting common-lisp:nil
                                    ((expression :target-type
                                      sub-slot-expression :member-name
                                      "expression")
                                     (slot-specifications :target-type
                                      sub-slot-specification-map :member-name
                                      "slotSpecifications"))
                                    (:shape-name "SubSlotSetting"))

(smithy/sdk/shapes:define-map sub-slot-specification-map :key name :value
                              specifications)

(smithy/sdk/shapes:define-structure sub-slot-type-composition common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (slot-type-id :target-type
                                      built-in-or-custom-slot-type-id :required
                                      common-lisp:t :member-name "slotTypeId"))
                                    (:shape-name "SubSlotTypeComposition"))

(smithy/sdk/shapes:define-list sub-slot-type-list :member
                               sub-slot-type-composition)

(smithy/sdk/shapes:define-structure sub-slot-value-elicitation-setting
                                    common-lisp:nil
                                    ((default-value-specification :target-type
                                      slot-default-value-specification
                                      :member-name "defaultValueSpecification")
                                     (prompt-specification :target-type
                                      prompt-specification :required
                                      common-lisp:t :member-name
                                      "promptSpecification")
                                     (sample-utterances :target-type
                                      sample-utterances-list :member-name
                                      "sampleUtterances")
                                     (wait-and-continue-specification
                                      :target-type
                                      wait-and-continue-specification
                                      :member-name
                                      "waitAndContinueSpecification"))
                                    (:shape-name
                                     "SubSlotValueElicitationSetting"))

(smithy/sdk/shapes:define-list synonym-list :member sample-value)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum test-execution-api-mode
    common-lisp:nil
  (:streaming "Streaming")
  (:non-streaming "NonStreaming"))

(smithy/sdk/shapes:define-enum test-execution-modality
    common-lisp:nil
  (:text "Text")
  (:audio "Audio"))

(smithy/sdk/shapes:define-structure test-execution-result-filter-by
                                    common-lisp:nil
                                    ((result-type-filter :target-type
                                      test-result-type-filter :required
                                      common-lisp:t :member-name
                                      "resultTypeFilter")
                                     (conversation-level-test-results-filter-by
                                      :target-type
                                      conversation-level-test-results-filter-by
                                      :member-name
                                      "conversationLevelTestResultsFilterBy"))
                                    (:shape-name "TestExecutionResultFilterBy"))

(smithy/sdk/shapes:define-structure test-execution-result-items common-lisp:nil
                                    ((overall-test-results :target-type
                                      overall-test-results :member-name
                                      "overallTestResults")
                                     (conversation-level-test-results
                                      :target-type
                                      conversation-level-test-results
                                      :member-name
                                      "conversationLevelTestResults")
                                     (intent-classification-test-results
                                      :target-type
                                      intent-classification-test-results
                                      :member-name
                                      "intentClassificationTestResults")
                                     (intent-level-slot-resolution-test-results
                                      :target-type
                                      intent-level-slot-resolution-test-results
                                      :member-name
                                      "intentLevelSlotResolutionTestResults")
                                     (utterance-level-test-results :target-type
                                      utterance-level-test-results :member-name
                                      "utteranceLevelTestResults"))
                                    (:shape-name "TestExecutionResultItems"))

(smithy/sdk/shapes:define-enum test-execution-sort-attribute
    common-lisp:nil
  (:test-set-name "TestSetName")
  (:creation-date-time "CreationDateTime"))

(smithy/sdk/shapes:define-structure test-execution-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      test-execution-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "TestExecutionSortBy"))

(smithy/sdk/shapes:define-enum test-execution-status
    common-lisp:nil
  (:pending "Pending")
  (:waiting "Waiting")
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-structure test-execution-summary common-lisp:nil
                                    ((test-execution-id :target-type id
                                      :member-name "testExecutionId")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime")
                                     (test-execution-status :target-type
                                      test-execution-status :member-name
                                      "testExecutionStatus")
                                     (test-set-id :target-type id :member-name
                                      "testSetId")
                                     (test-set-name :target-type name
                                      :member-name "testSetName")
                                     (target :target-type test-execution-target
                                      :member-name "target")
                                     (api-mode :target-type
                                      test-execution-api-mode :member-name
                                      "apiMode")
                                     (test-execution-modality :target-type
                                      test-execution-modality :member-name
                                      "testExecutionModality"))
                                    (:shape-name "TestExecutionSummary"))

(smithy/sdk/shapes:define-list test-execution-summary-list :member
                               test-execution-summary)

(smithy/sdk/shapes:define-structure test-execution-target common-lisp:nil
                                    ((bot-alias-target :target-type
                                      bot-alias-test-execution-target
                                      :member-name "botAliasTarget"))
                                    (:shape-name "TestExecutionTarget"))

(smithy/sdk/shapes:define-enum test-result-match-status
    common-lisp:nil
  (:matched "Matched")
  (:mismatched "Mismatched")
  (:execution-error "ExecutionError"))

(smithy/sdk/shapes:define-map test-result-match-status-count-map :key
                              test-result-match-status :value count)

(smithy/sdk/shapes:define-type test-result-slot-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum test-result-type-filter
    common-lisp:nil
  (:overall-test-results "OverallTestResults")
  (:conversation-level-test-results "ConversationLevelTestResults")
  (:intent-classification-test-results "IntentClassificationTestResults")
  (:slot-resolution-test-results "SlotResolutionTestResults")
  (:utterance-level-results "UtteranceLevelResults"))

(smithy/sdk/shapes:define-type test-set-agent-prompt
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type test-set-conversation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure test-set-discrepancy-errors common-lisp:nil
                                    ((intent-discrepancies :target-type
                                      test-set-intent-discrepancy-list
                                      :required common-lisp:t :member-name
                                      "intentDiscrepancies")
                                     (slot-discrepancies :target-type
                                      test-set-slot-discrepancy-list :required
                                      common-lisp:t :member-name
                                      "slotDiscrepancies"))
                                    (:shape-name "TestSetDiscrepancyErrors"))

(smithy/sdk/shapes:define-structure
 test-set-discrepancy-report-bot-alias-target common-lisp:nil
 ((bot-id :target-type id :required common-lisp:t :member-name "botId")
  (bot-alias-id :target-type bot-alias-id :required common-lisp:t :member-name
   "botAliasId")
  (locale-id :target-type locale-id :required common-lisp:t :member-name
   "localeId"))
 (:shape-name "TestSetDiscrepancyReportBotAliasTarget"))

(smithy/sdk/shapes:define-structure test-set-discrepancy-report-resource-target
                                    common-lisp:nil
                                    ((bot-alias-target :target-type
                                      test-set-discrepancy-report-bot-alias-target
                                      :member-name "botAliasTarget"))
                                    (:shape-name
                                     "TestSetDiscrepancyReportResourceTarget"))

(smithy/sdk/shapes:define-enum test-set-discrepancy-report-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure test-set-export-specification
                                    common-lisp:nil
                                    ((test-set-id :target-type id :required
                                      common-lisp:t :member-name "testSetId"))
                                    (:shape-name "TestSetExportSpecification"))

(smithy/sdk/shapes:define-structure test-set-generation-data-source
                                    common-lisp:nil
                                    ((conversation-logs-data-source
                                      :target-type
                                      conversation-logs-data-source
                                      :member-name
                                      "conversationLogsDataSource"))
                                    (:shape-name "TestSetGenerationDataSource"))

(smithy/sdk/shapes:define-enum test-set-generation-status
    common-lisp:nil
  (:generating "Generating")
  (:ready "Ready")
  (:failed "Failed")
  (:pending "Pending"))

(smithy/sdk/shapes:define-structure test-set-import-input-location
                                    common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3BucketName")
                                     (s3path :target-type s3object-path
                                      :required common-lisp:t :member-name
                                      "s3Path"))
                                    (:shape-name "TestSetImportInputLocation"))

(smithy/sdk/shapes:define-structure test-set-import-resource-specification
                                    common-lisp:nil
                                    ((test-set-name :target-type name :required
                                      common-lisp:t :member-name "testSetName")
                                     (description :target-type description
                                      :member-name "description")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (storage-location :target-type
                                      test-set-storage-location :required
                                      common-lisp:t :member-name
                                      "storageLocation")
                                     (import-input-location :target-type
                                      test-set-import-input-location :required
                                      common-lisp:t :member-name
                                      "importInputLocation")
                                     (modality :target-type test-set-modality
                                      :required common-lisp:t :member-name
                                      "modality")
                                     (test-set-tags :target-type tag-map
                                      :member-name "testSetTags"))
                                    (:shape-name
                                     "TestSetImportResourceSpecification"))

(smithy/sdk/shapes:define-structure test-set-intent-discrepancy-item
                                    common-lisp:nil
                                    ((intent-name :target-type name :required
                                      common-lisp:t :member-name "intentName")
                                     (error-message :target-type string
                                      :required common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name
                                     "TestSetIntentDiscrepancyItem"))

(smithy/sdk/shapes:define-list test-set-intent-discrepancy-list :member
                               test-set-intent-discrepancy-item)

(smithy/sdk/shapes:define-enum test-set-modality
    common-lisp:nil
  (:text "Text")
  (:audio "Audio"))

(smithy/sdk/shapes:define-structure test-set-slot-discrepancy-item
                                    common-lisp:nil
                                    ((intent-name :target-type name :required
                                      common-lisp:t :member-name "intentName")
                                     (slot-name :target-type name :required
                                      common-lisp:t :member-name "slotName")
                                     (error-message :target-type string
                                      :required common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name "TestSetSlotDiscrepancyItem"))

(smithy/sdk/shapes:define-list test-set-slot-discrepancy-list :member
                               test-set-slot-discrepancy-item)

(smithy/sdk/shapes:define-enum test-set-sort-attribute
    common-lisp:nil
  (:test-set-name "TestSetName")
  (:last-updated-date-time "LastUpdatedDateTime"))

(smithy/sdk/shapes:define-structure test-set-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      test-set-sort-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "TestSetSortBy"))

(smithy/sdk/shapes:define-enum test-set-status
    common-lisp:nil
  (:importing "Importing")
  (:pending-annotation "PendingAnnotation")
  (:deleting "Deleting")
  (:validation-error "ValidationError")
  (:ready "Ready"))

(smithy/sdk/shapes:define-structure test-set-storage-location common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3BucketName")
                                     (s3path :target-type s3object-path
                                      :required common-lisp:t :member-name
                                      "s3Path")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "TestSetStorageLocation"))

(smithy/sdk/shapes:define-structure test-set-summary common-lisp:nil
                                    ((test-set-id :target-type id :member-name
                                      "testSetId")
                                     (test-set-name :target-type name
                                      :member-name "testSetName")
                                     (description :target-type description
                                      :member-name "description")
                                     (modality :target-type test-set-modality
                                      :member-name "modality")
                                     (status :target-type test-set-status
                                      :member-name "status")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (num-turns :target-type count :member-name
                                      "numTurns")
                                     (storage-location :target-type
                                      test-set-storage-location :member-name
                                      "storageLocation")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type
                                      timestamp :member-name
                                      "lastUpdatedDateTime"))
                                    (:shape-name "TestSetSummary"))

(smithy/sdk/shapes:define-list test-set-summary-list :member test-set-summary)

(smithy/sdk/shapes:define-structure test-set-turn-record common-lisp:nil
                                    ((record-number :target-type record-number
                                      :required common-lisp:t :member-name
                                      "recordNumber")
                                     (conversation-id :target-type
                                      test-set-conversation-id :member-name
                                      "conversationId")
                                     (turn-number :target-type turn-number
                                      :member-name "turnNumber")
                                     (turn-specification :target-type
                                      turn-specification :required
                                      common-lisp:t :member-name
                                      "turnSpecification"))
                                    (:shape-name "TestSetTurnRecord"))

(smithy/sdk/shapes:define-list test-set-turn-record-list :member
                               test-set-turn-record)

(smithy/sdk/shapes:define-structure test-set-turn-result common-lisp:nil
                                    ((agent :target-type agent-turn-result
                                      :member-name "agent")
                                     (user :target-type user-turn-result
                                      :member-name "user"))
                                    (:shape-name "TestSetTurnResult"))

(smithy/sdk/shapes:define-type test-set-utterance-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-input-specification common-lisp:nil
                                    ((start-timeout-ms :target-type
                                      time-in-milli-seconds :required
                                      common-lisp:t :member-name
                                      "startTimeoutMs"))
                                    (:shape-name "TextInputSpecification"))

(smithy/sdk/shapes:define-structure text-log-destination common-lisp:nil
                                    ((cloud-watch :target-type
                                      cloud-watch-log-group-log-destination
                                      :required common-lisp:t :member-name
                                      "cloudWatch"))
                                    (:shape-name "TextLogDestination"))

(smithy/sdk/shapes:define-structure text-log-setting common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (destination :target-type
                                      text-log-destination :required
                                      common-lisp:t :member-name "destination")
                                     (selective-logging-enabled :target-type
                                      boxed-boolean :member-name
                                      "selectiveLoggingEnabled"))
                                    (:shape-name "TextLogSetting"))

(smithy/sdk/shapes:define-list text-log-settings-list :member text-log-setting)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum time-dimension
    common-lisp:nil
  (:hours "Hours")
  (:days "Days")
  (:weeks "Weeks"))

(smithy/sdk/shapes:define-type time-in-milli-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type time-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type transcript smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transcript-filter common-lisp:nil
                                    ((lex-transcript-filter :target-type
                                      lex-transcript-filter :member-name
                                      "lexTranscriptFilter"))
                                    (:shape-name "TranscriptFilter"))

(smithy/sdk/shapes:define-enum transcript-format
    common-lisp:nil
  (:lex "Lex"))

(smithy/sdk/shapes:define-structure transcript-source-setting common-lisp:nil
                                    ((s3bucket-transcript-source :target-type
                                      s3bucket-transcript-source :member-name
                                      "s3BucketTranscriptSource"))
                                    (:shape-name "TranscriptSourceSetting"))

(smithy/sdk/shapes:define-type turn-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure turn-specification common-lisp:nil
                                    ((agent-turn :target-type
                                      agent-turn-specification :member-name
                                      "agentTurn")
                                     (user-turn :target-type
                                      user-turn-specification :member-name
                                      "userTurn"))
                                    (:shape-name "TurnSpecification"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-bot-alias-request common-lisp:nil
                                ((bot-alias-id :target-type bot-alias-id
                                  :required common-lisp:t :member-name
                                  "botAliasId" :http-label common-lisp:t)
                                 (bot-alias-name :target-type name :required
                                  common-lisp:t :member-name "botAliasName")
                                 (description :target-type description
                                  :member-name "description")
                                 (bot-version :target-type bot-version
                                  :member-name "botVersion")
                                 (bot-alias-locale-settings :target-type
                                  bot-alias-locale-settings-map :member-name
                                  "botAliasLocaleSettings")
                                 (conversation-log-settings :target-type
                                  conversation-log-settings :member-name
                                  "conversationLogSettings")
                                 (sentiment-analysis-settings :target-type
                                  sentiment-analysis-settings :member-name
                                  "sentimentAnalysisSettings")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateBotAliasRequest"))

(smithy/sdk/shapes:define-output update-bot-alias-response common-lisp:nil
                                 ((bot-alias-id :target-type bot-alias-id
                                   :member-name "botAliasId")
                                  (bot-alias-name :target-type name
                                   :member-name "botAliasName")
                                  (description :target-type description
                                   :member-name "description")
                                  (bot-version :target-type bot-version
                                   :member-name "botVersion")
                                  (bot-alias-locale-settings :target-type
                                   bot-alias-locale-settings-map :member-name
                                   "botAliasLocaleSettings")
                                  (conversation-log-settings :target-type
                                   conversation-log-settings :member-name
                                   "conversationLogSettings")
                                  (sentiment-analysis-settings :target-type
                                   sentiment-analysis-settings :member-name
                                   "sentimentAnalysisSettings")
                                  (bot-alias-status :target-type
                                   bot-alias-status :member-name
                                   "botAliasStatus")
                                  (bot-id :target-type id :member-name "botId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "UpdateBotAliasResponse"))

(smithy/sdk/shapes:define-input update-bot-locale-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (nlu-intent-confidence-threshold :target-type
                                  confidence-threshold :required common-lisp:t
                                  :member-name "nluIntentConfidenceThreshold")
                                 (voice-settings :target-type voice-settings
                                  :member-name "voiceSettings")
                                 (generative-aisettings :target-type
                                  generative-aisettings :member-name
                                  "generativeAISettings"))
                                (:shape-name "UpdateBotLocaleRequest"))

(smithy/sdk/shapes:define-output update-bot-locale-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (locale-name :target-type locale-name
                                   :member-name "localeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (nlu-intent-confidence-threshold :target-type
                                   confidence-threshold :member-name
                                   "nluIntentConfidenceThreshold")
                                  (voice-settings :target-type voice-settings
                                   :member-name "voiceSettings")
                                  (bot-locale-status :target-type
                                   bot-locale-status :member-name
                                   "botLocaleStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (recommended-actions :target-type
                                   recommended-actions :member-name
                                   "recommendedActions")
                                  (generative-aisettings :target-type
                                   generative-aisettings :member-name
                                   "generativeAISettings"))
                                 (:shape-name "UpdateBotLocaleResponse"))

(smithy/sdk/shapes:define-input update-bot-recommendation-request
                                common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (bot-recommendation-id :target-type id
                                  :required common-lisp:t :member-name
                                  "botRecommendationId" :http-label
                                  common-lisp:t)
                                 (encryption-setting :target-type
                                  encryption-setting :required common-lisp:t
                                  :member-name "encryptionSetting"))
                                (:shape-name "UpdateBotRecommendationRequest"))

(smithy/sdk/shapes:define-output update-bot-recommendation-response
                                 common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (bot-recommendation-status :target-type
                                   bot-recommendation-status :member-name
                                   "botRecommendationStatus")
                                  (bot-recommendation-id :target-type id
                                   :member-name "botRecommendationId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (transcript-source-setting :target-type
                                   transcript-source-setting :member-name
                                   "transcriptSourceSetting")
                                  (encryption-setting :target-type
                                   encryption-setting :member-name
                                   "encryptionSetting"))
                                 (:shape-name
                                  "UpdateBotRecommendationResponse"))

(smithy/sdk/shapes:define-input update-bot-request common-lisp:nil
                                ((bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-name :target-type name :required
                                  common-lisp:t :member-name "botName")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (data-privacy :target-type data-privacy
                                  :required common-lisp:t :member-name
                                  "dataPrivacy")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :required common-lisp:t
                                  :member-name "idleSessionTTLInSeconds")
                                 (bot-type :target-type bot-type :member-name
                                  "botType")
                                 (bot-members :target-type bot-members
                                  :member-name "botMembers")
                                 (error-log-settings :target-type
                                  error-log-settings :member-name
                                  "errorLogSettings"))
                                (:shape-name "UpdateBotRequest"))

(smithy/sdk/shapes:define-output update-bot-response common-lisp:nil
                                 ((bot-id :target-type id :member-name "botId")
                                  (bot-name :target-type name :member-name
                                   "botName")
                                  (description :target-type description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (data-privacy :target-type data-privacy
                                   :member-name "dataPrivacy")
                                  (idle-session-ttlin-seconds :target-type
                                   session-ttl :member-name
                                   "idleSessionTTLInSeconds")
                                  (bot-status :target-type bot-status
                                   :member-name "botStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (bot-type :target-type bot-type :member-name
                                   "botType")
                                  (bot-members :target-type bot-members
                                   :member-name "botMembers")
                                  (error-log-settings :target-type
                                   error-log-settings :member-name
                                   "errorLogSettings"))
                                 (:shape-name "UpdateBotResponse"))

(smithy/sdk/shapes:define-list update-custom-vocabulary-items-list :member
                               custom-vocabulary-item)

(smithy/sdk/shapes:define-input update-export-request common-lisp:nil
                                ((export-id :target-type id :required
                                  common-lisp:t :member-name "exportId"
                                  :http-label common-lisp:t)
                                 (file-password :target-type
                                  import-export-file-password :member-name
                                  "filePassword"))
                                (:shape-name "UpdateExportRequest"))

(smithy/sdk/shapes:define-output update-export-response common-lisp:nil
                                 ((export-id :target-type id :member-name
                                   "exportId")
                                  (resource-specification :target-type
                                   export-resource-specification :member-name
                                   "resourceSpecification")
                                  (file-format :target-type
                                   import-export-file-format :member-name
                                   "fileFormat")
                                  (export-status :target-type export-status
                                   :member-name "exportStatus")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "UpdateExportResponse"))

(smithy/sdk/shapes:define-input update-intent-request common-lisp:nil
                                ((intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (intent-name :target-type name :required
                                  common-lisp:t :member-name "intentName")
                                 (description :target-type description
                                  :member-name "description")
                                 (parent-intent-signature :target-type
                                  intent-signature :member-name
                                  "parentIntentSignature")
                                 (sample-utterances :target-type
                                  sample-utterances-list :member-name
                                  "sampleUtterances")
                                 (dialog-code-hook :target-type
                                  dialog-code-hook-settings :member-name
                                  "dialogCodeHook")
                                 (fulfillment-code-hook :target-type
                                  fulfillment-code-hook-settings :member-name
                                  "fulfillmentCodeHook")
                                 (slot-priorities :target-type
                                  slot-priorities-list :member-name
                                  "slotPriorities")
                                 (intent-confirmation-setting :target-type
                                  intent-confirmation-setting :member-name
                                  "intentConfirmationSetting")
                                 (intent-closing-setting :target-type
                                  intent-closing-setting :member-name
                                  "intentClosingSetting")
                                 (input-contexts :target-type
                                  input-contexts-list :member-name
                                  "inputContexts")
                                 (output-contexts :target-type
                                  output-contexts-list :member-name
                                  "outputContexts")
                                 (kendra-configuration :target-type
                                  kendra-configuration :member-name
                                  "kendraConfiguration")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (initial-response-setting :target-type
                                  initial-response-setting :member-name
                                  "initialResponseSetting")
                                 (qn-aintent-configuration :target-type
                                  qn-aintent-configuration :member-name
                                  "qnAIntentConfiguration")
                                 (q-in-connect-intent-configuration
                                  :target-type qin-connect-intent-configuration
                                  :member-name
                                  "qInConnectIntentConfiguration"))
                                (:shape-name "UpdateIntentRequest"))

(smithy/sdk/shapes:define-output update-intent-response common-lisp:nil
                                 ((intent-id :target-type id :member-name
                                   "intentId")
                                  (intent-name :target-type name :member-name
                                   "intentName")
                                  (description :target-type description
                                   :member-name "description")
                                  (parent-intent-signature :target-type
                                   intent-signature :member-name
                                   "parentIntentSignature")
                                  (sample-utterances :target-type
                                   sample-utterances-list :member-name
                                   "sampleUtterances")
                                  (dialog-code-hook :target-type
                                   dialog-code-hook-settings :member-name
                                   "dialogCodeHook")
                                  (fulfillment-code-hook :target-type
                                   fulfillment-code-hook-settings :member-name
                                   "fulfillmentCodeHook")
                                  (slot-priorities :target-type
                                   slot-priorities-list :member-name
                                   "slotPriorities")
                                  (intent-confirmation-setting :target-type
                                   intent-confirmation-setting :member-name
                                   "intentConfirmationSetting")
                                  (intent-closing-setting :target-type
                                   intent-closing-setting :member-name
                                   "intentClosingSetting")
                                  (input-contexts :target-type
                                   input-contexts-list :member-name
                                   "inputContexts")
                                  (output-contexts :target-type
                                   output-contexts-list :member-name
                                   "outputContexts")
                                  (kendra-configuration :target-type
                                   kendra-configuration :member-name
                                   "kendraConfiguration")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (initial-response-setting :target-type
                                   initial-response-setting :member-name
                                   "initialResponseSetting")
                                  (qn-aintent-configuration :target-type
                                   qn-aintent-configuration :member-name
                                   "qnAIntentConfiguration")
                                  (q-in-connect-intent-configuration
                                   :target-type
                                   qin-connect-intent-configuration
                                   :member-name
                                   "qInConnectIntentConfiguration"))
                                 (:shape-name "UpdateIntentResponse"))

(smithy/sdk/shapes:define-input update-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "policy")
                                 (expected-revision-id :target-type revision-id
                                  :member-name "expectedRevisionId" :http-query
                                  "expectedRevisionId"))
                                (:shape-name "UpdateResourcePolicyRequest"))

(smithy/sdk/shapes:define-output update-resource-policy-response
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "resourceArn")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId"))
                                 (:shape-name "UpdateResourcePolicyResponse"))

(smithy/sdk/shapes:define-input update-slot-request common-lisp:nil
                                ((slot-id :target-type id :required
                                  common-lisp:t :member-name "slotId"
                                  :http-label common-lisp:t)
                                 (slot-name :target-type name :required
                                  common-lisp:t :member-name "slotName")
                                 (description :target-type description
                                  :member-name "description")
                                 (slot-type-id :target-type
                                  built-in-or-custom-slot-type-id :member-name
                                  "slotTypeId")
                                 (value-elicitation-setting :target-type
                                  slot-value-elicitation-setting :required
                                  common-lisp:t :member-name
                                  "valueElicitationSetting")
                                 (obfuscation-setting :target-type
                                  obfuscation-setting :member-name
                                  "obfuscationSetting")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (intent-id :target-type id :required
                                  common-lisp:t :member-name "intentId"
                                  :http-label common-lisp:t)
                                 (multiple-values-setting :target-type
                                  multiple-values-setting :member-name
                                  "multipleValuesSetting")
                                 (sub-slot-setting :target-type
                                  sub-slot-setting :member-name
                                  "subSlotSetting"))
                                (:shape-name "UpdateSlotRequest"))

(smithy/sdk/shapes:define-output update-slot-response common-lisp:nil
                                 ((slot-id :target-type id :member-name
                                   "slotId")
                                  (slot-name :target-type name :member-name
                                   "slotName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-id :target-type
                                   built-in-or-custom-slot-type-id :member-name
                                   "slotTypeId")
                                  (value-elicitation-setting :target-type
                                   slot-value-elicitation-setting :member-name
                                   "valueElicitationSetting")
                                  (obfuscation-setting :target-type
                                   obfuscation-setting :member-name
                                   "obfuscationSetting")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (intent-id :target-type id :member-name
                                   "intentId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (multiple-values-setting :target-type
                                   multiple-values-setting :member-name
                                   "multipleValuesSetting")
                                  (sub-slot-setting :target-type
                                   sub-slot-setting :member-name
                                   "subSlotSetting"))
                                 (:shape-name "UpdateSlotResponse"))

(smithy/sdk/shapes:define-input update-slot-type-request common-lisp:nil
                                ((slot-type-id :target-type id :required
                                  common-lisp:t :member-name "slotTypeId"
                                  :http-label common-lisp:t)
                                 (slot-type-name :target-type name :required
                                  common-lisp:t :member-name "slotTypeName")
                                 (description :target-type description
                                  :member-name "description")
                                 (slot-type-values :target-type
                                  slot-type-values :member-name
                                  "slotTypeValues")
                                 (value-selection-setting :target-type
                                  slot-value-selection-setting :member-name
                                  "valueSelectionSetting")
                                 (parent-slot-type-signature :target-type
                                  slot-type-signature :member-name
                                  "parentSlotTypeSignature")
                                 (bot-id :target-type id :required
                                  common-lisp:t :member-name "botId"
                                  :http-label common-lisp:t)
                                 (bot-version :target-type draft-bot-version
                                  :required common-lisp:t :member-name
                                  "botVersion" :http-label common-lisp:t)
                                 (locale-id :target-type locale-id :required
                                  common-lisp:t :member-name "localeId"
                                  :http-label common-lisp:t)
                                 (external-source-setting :target-type
                                  external-source-setting :member-name
                                  "externalSourceSetting")
                                 (composite-slot-type-setting :target-type
                                  composite-slot-type-setting :member-name
                                  "compositeSlotTypeSetting"))
                                (:shape-name "UpdateSlotTypeRequest"))

(smithy/sdk/shapes:define-output update-slot-type-response common-lisp:nil
                                 ((slot-type-id :target-type id :member-name
                                   "slotTypeId")
                                  (slot-type-name :target-type name
                                   :member-name "slotTypeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (slot-type-values :target-type
                                   slot-type-values :member-name
                                   "slotTypeValues")
                                  (value-selection-setting :target-type
                                   slot-value-selection-setting :member-name
                                   "valueSelectionSetting")
                                  (parent-slot-type-signature :target-type
                                   slot-type-signature :member-name
                                   "parentSlotTypeSignature")
                                  (bot-id :target-type id :member-name "botId")
                                  (bot-version :target-type draft-bot-version
                                   :member-name "botVersion")
                                  (locale-id :target-type locale-id
                                   :member-name "localeId")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime")
                                  (external-source-setting :target-type
                                   external-source-setting :member-name
                                   "externalSourceSetting")
                                  (composite-slot-type-setting :target-type
                                   composite-slot-type-setting :member-name
                                   "compositeSlotTypeSetting"))
                                 (:shape-name "UpdateSlotTypeResponse"))

(smithy/sdk/shapes:define-input update-test-set-request common-lisp:nil
                                ((test-set-id :target-type id :required
                                  common-lisp:t :member-name "testSetId"
                                  :http-label common-lisp:t)
                                 (test-set-name :target-type name :required
                                  common-lisp:t :member-name "testSetName")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateTestSetRequest"))

(smithy/sdk/shapes:define-output update-test-set-response common-lisp:nil
                                 ((test-set-id :target-type id :member-name
                                   "testSetId")
                                  (test-set-name :target-type name :member-name
                                   "testSetName")
                                  (description :target-type description
                                   :member-name "description")
                                  (modality :target-type test-set-modality
                                   :member-name "modality")
                                  (status :target-type test-set-status
                                   :member-name "status")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (num-turns :target-type count :member-name
                                   "numTurns")
                                  (storage-location :target-type
                                   test-set-storage-location :member-name
                                   "storageLocation")
                                  (creation-date-time :target-type timestamp
                                   :member-name "creationDateTime")
                                  (last-updated-date-time :target-type
                                   timestamp :member-name
                                   "lastUpdatedDateTime"))
                                 (:shape-name "UpdateTestSetResponse"))

(smithy/sdk/shapes:define-structure user-turn-input-specification
                                    common-lisp:nil
                                    ((utterance-input :target-type
                                      utterance-input-specification :required
                                      common-lisp:t :member-name
                                      "utteranceInput")
                                     (request-attributes :target-type
                                      string-map :member-name
                                      "requestAttributes")
                                     (session-state :target-type
                                      input-session-state-specification
                                      :member-name "sessionState"))
                                    (:shape-name "UserTurnInputSpecification"))

(smithy/sdk/shapes:define-structure user-turn-intent-output common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (slots :target-type
                                      user-turn-slot-output-map :member-name
                                      "slots"))
                                    (:shape-name "UserTurnIntentOutput"))

(smithy/sdk/shapes:define-structure user-turn-output-specification
                                    common-lisp:nil
                                    ((intent :target-type
                                      user-turn-intent-output :required
                                      common-lisp:t :member-name "intent")
                                     (active-contexts :target-type
                                      active-context-list :member-name
                                      "activeContexts")
                                     (transcript :target-type
                                      test-set-utterance-text :member-name
                                      "transcript"))
                                    (:shape-name "UserTurnOutputSpecification"))

(smithy/sdk/shapes:define-structure user-turn-result common-lisp:nil
                                    ((input :target-type
                                      user-turn-input-specification :required
                                      common-lisp:t :member-name "input")
                                     (expected-output :target-type
                                      user-turn-output-specification :required
                                      common-lisp:t :member-name
                                      "expectedOutput")
                                     (actual-output :target-type
                                      user-turn-output-specification
                                      :member-name "actualOutput")
                                     (error-details :target-type
                                      execution-error-details :member-name
                                      "errorDetails")
                                     (end-to-end-result :target-type
                                      test-result-match-status :member-name
                                      "endToEndResult")
                                     (intent-match-result :target-type
                                      test-result-match-status :member-name
                                      "intentMatchResult")
                                     (slot-match-result :target-type
                                      test-result-match-status :member-name
                                      "slotMatchResult")
                                     (speech-transcription-result :target-type
                                      test-result-match-status :member-name
                                      "speechTranscriptionResult")
                                     (conversation-level-result :target-type
                                      conversation-level-result-detail
                                      :member-name "conversationLevelResult"))
                                    (:shape-name "UserTurnResult"))

(smithy/sdk/shapes:define-structure user-turn-slot-output common-lisp:nil
                                    ((value :target-type non-empty-string
                                      :member-name "value")
                                     (values :target-type
                                      user-turn-slot-output-list :member-name
                                      "values")
                                     (sub-slots :target-type
                                      user-turn-slot-output-map :member-name
                                      "subSlots"))
                                    (:shape-name "UserTurnSlotOutput"))

(smithy/sdk/shapes:define-list user-turn-slot-output-list :member
                               user-turn-slot-output)

(smithy/sdk/shapes:define-map user-turn-slot-output-map :key name :value
                              user-turn-slot-output)

(smithy/sdk/shapes:define-structure user-turn-specification common-lisp:nil
                                    ((input :target-type
                                      user-turn-input-specification :required
                                      common-lisp:t :member-name "input")
                                     (expected :target-type
                                      user-turn-output-specification :required
                                      common-lisp:t :member-name "expected"))
                                    (:shape-name "UserTurnSpecification"))

(smithy/sdk/shapes:define-type utterance smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure utterance-aggregation-duration
                                    common-lisp:nil
                                    ((relative-aggregation-duration
                                      :target-type
                                      relative-aggregation-duration :required
                                      common-lisp:t :member-name
                                      "relativeAggregationDuration"))
                                    (:shape-name
                                     "UtteranceAggregationDuration"))

(smithy/sdk/shapes:define-structure utterance-audio-input-specification
                                    common-lisp:nil
                                    ((audio-file-s3location :target-type
                                      audio-file-s3location :required
                                      common-lisp:t :member-name
                                      "audioFileS3Location"))
                                    (:shape-name
                                     "UtteranceAudioInputSpecification"))

(smithy/sdk/shapes:define-structure utterance-bot-response common-lisp:nil
                                    ((content :target-type string :member-name
                                      "content")
                                     (content-type :target-type
                                      utterance-content-type :member-name
                                      "contentType")
                                     (image-response-card :target-type
                                      image-response-card :member-name
                                      "imageResponseCard"))
                                    (:shape-name "UtteranceBotResponse"))

(smithy/sdk/shapes:define-list utterance-bot-responses :member
                               utterance-bot-response)

(smithy/sdk/shapes:define-enum utterance-content-type
    common-lisp:nil
  (:plain-text "PlainText")
  (:custom-payload "CustomPayload")
  (:ssml "SSML")
  (:image-response-card "ImageResponseCard"))

(smithy/sdk/shapes:define-structure utterance-data-sort-by common-lisp:nil
                                    ((name :target-type
                                      analytics-utterance-sort-by-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (order :target-type analytics-sort-order
                                      :required common-lisp:t :member-name
                                      "order"))
                                    (:shape-name "UtteranceDataSortBy"))

(smithy/sdk/shapes:define-structure utterance-input-specification
                                    common-lisp:nil
                                    ((text-input :target-type
                                      test-set-utterance-text :member-name
                                      "textInput")
                                     (audio-input :target-type
                                      utterance-audio-input-specification
                                      :member-name "audioInput"))
                                    (:shape-name "UtteranceInputSpecification"))

(smithy/sdk/shapes:define-structure utterance-level-test-result-item
                                    common-lisp:nil
                                    ((record-number :target-type record-number
                                      :required common-lisp:t :member-name
                                      "recordNumber")
                                     (conversation-id :target-type
                                      test-set-conversation-id :member-name
                                      "conversationId")
                                     (turn-result :target-type
                                      test-set-turn-result :required
                                      common-lisp:t :member-name "turnResult"))
                                    (:shape-name
                                     "UtteranceLevelTestResultItem"))

(smithy/sdk/shapes:define-list utterance-level-test-result-item-list :member
                               utterance-level-test-result-item)

(smithy/sdk/shapes:define-structure utterance-level-test-results
                                    common-lisp:nil
                                    ((items :target-type
                                      utterance-level-test-result-item-list
                                      :required common-lisp:t :member-name
                                      "items"))
                                    (:shape-name "UtteranceLevelTestResults"))

(smithy/sdk/shapes:define-structure utterance-specification common-lisp:nil
                                    ((bot-alias-id :target-type bot-alias-id
                                      :member-name "botAliasId")
                                     (bot-version :target-type
                                      numerical-bot-version :member-name
                                      "botVersion")
                                     (locale-id :target-type locale-id
                                      :member-name "localeId")
                                     (session-id :target-type
                                      analytics-session-id :member-name
                                      "sessionId")
                                     (channel :target-type analytics-channel
                                      :member-name "channel")
                                     (mode :target-type analytics-modality
                                      :member-name "mode")
                                     (conversation-start-time :target-type
                                      timestamp :member-name
                                      "conversationStartTime")
                                     (conversation-end-time :target-type
                                      timestamp :member-name
                                      "conversationEndTime")
                                     (utterance :target-type string
                                      :member-name "utterance")
                                     (utterance-timestamp :target-type
                                      timestamp :member-name
                                      "utteranceTimestamp")
                                     (audio-voice-duration-millis :target-type
                                      analytics-long-value :member-name
                                      "audioVoiceDurationMillis")
                                     (utterance-understood :target-type
                                      utterance-understood :member-name
                                      "utteranceUnderstood")
                                     (input-type :target-type string
                                      :member-name "inputType")
                                     (output-type :target-type string
                                      :member-name "outputType")
                                     (associated-intent-name :target-type name
                                      :member-name "associatedIntentName")
                                     (associated-slot-name :target-type name
                                      :member-name "associatedSlotName")
                                     (intent-state :target-type intent-state
                                      :member-name "intentState")
                                     (dialog-action-type :target-type string
                                      :member-name "dialogActionType")
                                     (bot-response-audio-voice-id :target-type
                                      string :member-name
                                      "botResponseAudioVoiceId")
                                     (slots-filled-in-session :target-type
                                      string :member-name
                                      "slotsFilledInSession")
                                     (utterance-request-id :target-type id
                                      :member-name "utteranceRequestId")
                                     (bot-responses :target-type
                                      utterance-bot-responses :member-name
                                      "botResponses"))
                                    (:shape-name "UtteranceSpecification"))

(smithy/sdk/shapes:define-list utterance-specifications :member
                               utterance-specification)

(smithy/sdk/shapes:define-type utterance-understood
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum voice-engine
    common-lisp:nil
  (:standard "standard")
  (:neural "neural")
  (:long-form "long-form")
  (:generative "generative"))

(smithy/sdk/shapes:define-type voice-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure voice-settings common-lisp:nil
                                    ((voice-id :target-type voice-id :required
                                      common-lisp:t :member-name "voiceId")
                                     (engine :target-type voice-engine
                                      :member-name "engine"))
                                    (:shape-name "VoiceSettings"))

(smithy/sdk/shapes:define-structure wait-and-continue-specification
                                    common-lisp:nil
                                    ((waiting-response :target-type
                                      response-specification :required
                                      common-lisp:t :member-name
                                      "waitingResponse")
                                     (continue-response :target-type
                                      response-specification :required
                                      common-lisp:t :member-name
                                      "continueResponse")
                                     (still-waiting-response :target-type
                                      still-waiting-response-specification
                                      :member-name "stillWaitingResponse")
                                     (active :target-type boxed-boolean
                                      :member-name "active"))
                                    (:shape-name
                                     "WaitAndContinueSpecification"))

(smithy/sdk/shapes:define-type weight smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation batch-create-custom-vocabulary-item
                                       :shape-name
                                       "BatchCreateCustomVocabularyItem" :input
                                       batch-create-custom-vocabulary-item-request
                                       :output
                                       batch-create-custom-vocabulary-item-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-delete-custom-vocabulary-item
                                       :shape-name
                                       "BatchDeleteCustomVocabularyItem" :input
                                       batch-delete-custom-vocabulary-item-request
                                       :output
                                       batch-delete-custom-vocabulary-item-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-custom-vocabulary-item
                                       :shape-name
                                       "BatchUpdateCustomVocabularyItem" :input
                                       batch-update-custom-vocabulary-item-request
                                       :output
                                       batch-update-custom-vocabulary-item-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate"
                                       :code 200)

(smithy/sdk/operation:define-operation build-bot-locale :shape-name
                                       "BuildBotLocale" :input
                                       build-bot-locale-request :output
                                       build-bot-locale-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}"
                                       :code 202)

(smithy/sdk/operation:define-operation create-bot :shape-name "CreateBot"
                                       :input create-bot-request :output
                                       create-bot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/bots" :code 202)

(smithy/sdk/operation:define-operation create-bot-alias :shape-name
                                       "CreateBotAlias" :input
                                       create-bot-alias-request :output
                                       create-bot-alias-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botaliases" :code 202)

(smithy/sdk/operation:define-operation create-bot-locale :shape-name
                                       "CreateBotLocale" :input
                                       create-bot-locale-request :output
                                       create-bot-locale-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales"
                                       :code 202)

(smithy/sdk/operation:define-operation create-bot-replica :shape-name
                                       "CreateBotReplica" :input
                                       create-bot-replica-request :output
                                       create-bot-replica-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/replicas" :code 202)

(smithy/sdk/operation:define-operation create-bot-version :shape-name
                                       "CreateBotVersion" :input
                                       create-bot-version-request :output
                                       create-bot-version-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions" :code 202)

(smithy/sdk/operation:define-operation create-export :shape-name "CreateExport"
                                       :input create-export-request :output
                                       create-export-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/exports" :code 202)

(smithy/sdk/operation:define-operation create-intent :shape-name "CreateIntent"
                                       :input create-intent-request :output
                                       create-intent-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents"
                                       :code 200)

(smithy/sdk/operation:define-operation create-resource-policy :shape-name
                                       "CreateResourcePolicy" :input
                                       create-resource-policy-request :output
                                       create-resource-policy-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policy/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation create-resource-policy-statement
                                       :shape-name
                                       "CreateResourcePolicyStatement" :input
                                       create-resource-policy-statement-request
                                       :output
                                       create-resource-policy-statement-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policy/{resourceArn}/statements" :code
                                       200)

(smithy/sdk/operation:define-operation create-slot :shape-name "CreateSlot"
                                       :input create-slot-request :output
                                       create-slot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots"
                                       :code 200)

(smithy/sdk/operation:define-operation create-slot-type :shape-name
                                       "CreateSlotType" :input
                                       create-slot-type-request :output
                                       create-slot-type-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes"
                                       :code 200)

(smithy/sdk/operation:define-operation create-test-set-discrepancy-report
                                       :shape-name
                                       "CreateTestSetDiscrepancyReport" :input
                                       create-test-set-discrepancy-report-request
                                       :output
                                       create-test-set-discrepancy-report-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/testsets/{testSetId}/testsetdiscrepancy"
                                       :code 202)

(smithy/sdk/operation:define-operation create-upload-url :shape-name
                                       "CreateUploadUrl" :input
                                       create-upload-url-request :output
                                       create-upload-url-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/createuploadurl"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-bot :shape-name "DeleteBot"
                                       :input delete-bot-request :output
                                       delete-bot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/bots/{botId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-bot-alias :shape-name
                                       "DeleteBotAlias" :input
                                       delete-bot-alias-request :output
                                       delete-bot-alias-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botaliases/{botAliasId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-bot-locale :shape-name
                                       "DeleteBotLocale" :input
                                       delete-bot-locale-request :output
                                       delete-bot-locale-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-bot-replica :shape-name
                                       "DeleteBotReplica" :input
                                       delete-bot-replica-request :output
                                       delete-bot-replica-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/replicas/{replicaRegion}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-bot-version :shape-name
                                       "DeleteBotVersion" :input
                                       delete-bot-version-request :output
                                       delete-bot-version-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-custom-vocabulary :shape-name
                                       "DeleteCustomVocabulary" :input
                                       delete-custom-vocabulary-request :output
                                       delete-custom-vocabulary-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-export :shape-name "DeleteExport"
                                       :input delete-export-request :output
                                       delete-export-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/exports/{exportId}" :code 202)

(smithy/sdk/operation:define-operation delete-import :shape-name "DeleteImport"
                                       :input delete-import-request :output
                                       delete-import-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/imports/{importId}" :code 202)

(smithy/sdk/operation:define-operation delete-intent :shape-name "DeleteIntent"
                                       :input delete-intent-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/policy/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation delete-resource-policy-statement
                                       :shape-name
                                       "DeleteResourcePolicyStatement" :input
                                       delete-resource-policy-statement-request
                                       :output
                                       delete-resource-policy-statement-response
                                       :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/policy/{resourceArn}/statements/{statementId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-slot :shape-name "DeleteSlot"
                                       :input delete-slot-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-slot-type :shape-name
                                       "DeleteSlotType" :input
                                       delete-slot-type-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-test-set :shape-name
                                       "DeleteTestSet" :input
                                       delete-test-set-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/testsets/{testSetId}" :code 204)

(smithy/sdk/operation:define-operation delete-utterances :shape-name
                                       "DeleteUtterances" :input
                                       delete-utterances-request :output
                                       delete-utterances-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/bots/{botId}/utterances" :code 204)

(smithy/sdk/operation:define-operation describe-bot :shape-name "DescribeBot"
                                       :input describe-bot-request :output
                                       describe-bot-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/bots/{botId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-bot-alias :shape-name
                                       "DescribeBotAlias" :input
                                       describe-bot-alias-request :output
                                       describe-bot-alias-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botaliases/{botAliasId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-bot-locale :shape-name
                                       "DescribeBotLocale" :input
                                       describe-bot-locale-request :output
                                       describe-bot-locale-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-bot-recommendation :shape-name
                                       "DescribeBotRecommendation" :input
                                       describe-bot-recommendation-request
                                       :output
                                       describe-bot-recommendation-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-bot-replica :shape-name
                                       "DescribeBotReplica" :input
                                       describe-bot-replica-request :output
                                       describe-bot-replica-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/replicas/{replicaRegion}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-bot-resource-generation
                                       :shape-name
                                       "DescribeBotResourceGeneration" :input
                                       describe-bot-resource-generation-request
                                       :output
                                       describe-bot-resource-generation-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-bot-version :shape-name
                                       "DescribeBotVersion" :input
                                       describe-bot-version-request :output
                                       describe-bot-version-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-custom-vocabulary-metadata
                                       :shape-name
                                       "DescribeCustomVocabularyMetadata"
                                       :input
                                       describe-custom-vocabulary-metadata-request
                                       :output
                                       describe-custom-vocabulary-metadata-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-export :shape-name
                                       "DescribeExport" :input
                                       describe-export-request :output
                                       describe-export-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/exports/{exportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-import :shape-name
                                       "DescribeImport" :input
                                       describe-import-request :output
                                       describe-import-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/imports/{importId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-intent :shape-name
                                       "DescribeIntent" :input
                                       describe-intent-request :output
                                       describe-intent-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-resource-policy :shape-name
                                       "DescribeResourcePolicy" :input
                                       describe-resource-policy-request :output
                                       describe-resource-policy-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/policy/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation describe-slot :shape-name "DescribeSlot"
                                       :input describe-slot-request :output
                                       describe-slot-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-slot-type :shape-name
                                       "DescribeSlotType" :input
                                       describe-slot-type-request :output
                                       describe-slot-type-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-test-execution :shape-name
                                       "DescribeTestExecution" :input
                                       describe-test-execution-request :output
                                       describe-test-execution-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testexecutions/{testExecutionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-test-set :shape-name
                                       "DescribeTestSet" :input
                                       describe-test-set-request :output
                                       describe-test-set-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testsets/{testSetId}" :code 200)

(smithy/sdk/operation:define-operation describe-test-set-discrepancy-report
                                       :shape-name
                                       "DescribeTestSetDiscrepancyReport"
                                       :input
                                       describe-test-set-discrepancy-report-request
                                       :output
                                       describe-test-set-discrepancy-report-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testsetdiscrepancy/{testSetDiscrepancyReportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-test-set-generation :shape-name
                                       "DescribeTestSetGeneration" :input
                                       describe-test-set-generation-request
                                       :output
                                       describe-test-set-generation-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testsetgenerations/{testSetGenerationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation generate-bot-element :shape-name
                                       "GenerateBotElement" :input
                                       generate-bot-element-request :output
                                       generate-bot-element-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate"
                                       :code 202)

(smithy/sdk/operation:define-operation get-test-execution-artifacts-url
                                       :shape-name
                                       "GetTestExecutionArtifactsUrl" :input
                                       get-test-execution-artifacts-url-request
                                       :output
                                       get-test-execution-artifacts-url-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testexecutions/{testExecutionId}/artifacturl"
                                       :code 200)

(smithy/sdk/operation:define-operation list-aggregated-utterances :shape-name
                                       "ListAggregatedUtterances" :input
                                       list-aggregated-utterances-request
                                       :output
                                       list-aggregated-utterances-response
                                       :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/aggregatedutterances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-alias-replicas :shape-name
                                       "ListBotAliasReplicas" :input
                                       list-bot-alias-replicas-request :output
                                       list-bot-alias-replicas-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/replicas/{replicaRegion}/botaliases"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-aliases :shape-name
                                       "ListBotAliases" :input
                                       list-bot-aliases-request :output
                                       list-bot-aliases-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botaliases" :code 200)

(smithy/sdk/operation:define-operation list-bot-locales :shape-name
                                       "ListBotLocales" :input
                                       list-bot-locales-request :output
                                       list-bot-locales-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-recommendations :shape-name
                                       "ListBotRecommendations" :input
                                       list-bot-recommendations-request :output
                                       list-bot-recommendations-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-replicas :shape-name
                                       "ListBotReplicas" :input
                                       list-bot-replicas-request :output
                                       list-bot-replicas-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/replicas" :code 200)

(smithy/sdk/operation:define-operation list-bot-resource-generations
                                       :shape-name "ListBotResourceGenerations"
                                       :input
                                       list-bot-resource-generations-request
                                       :output
                                       list-bot-resource-generations-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-version-replicas :shape-name
                                       "ListBotVersionReplicas" :input
                                       list-bot-version-replicas-request
                                       :output
                                       list-bot-version-replicas-response
                                       :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/replicas/{replicaRegion}/botversions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bot-versions :shape-name
                                       "ListBotVersions" :input
                                       list-bot-versions-request :output
                                       list-bot-versions-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions" :code 200)

(smithy/sdk/operation:define-operation list-bots :shape-name "ListBots" :input
                                       list-bots-request :output
                                       list-bots-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/bots" :code 200)

(smithy/sdk/operation:define-operation list-built-in-intents :shape-name
                                       "ListBuiltInIntents" :input
                                       list-built-in-intents-request :output
                                       list-built-in-intents-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/builtins/locales/{localeId}/intents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-built-in-slot-types :shape-name
                                       "ListBuiltInSlotTypes" :input
                                       list-built-in-slot-types-request :output
                                       list-built-in-slot-types-response
                                       :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/builtins/locales/{localeId}/slottypes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-custom-vocabulary-items :shape-name
                                       "ListCustomVocabularyItems" :input
                                       list-custom-vocabulary-items-request
                                       :output
                                       list-custom-vocabulary-items-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-exports :shape-name "ListExports"
                                       :input list-exports-request :output
                                       list-exports-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/exports" :code 200)

(smithy/sdk/operation:define-operation list-imports :shape-name "ListImports"
                                       :input list-imports-request :output
                                       list-imports-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/imports" :code 200)

(smithy/sdk/operation:define-operation list-intent-metrics :shape-name
                                       "ListIntentMetrics" :input
                                       list-intent-metrics-request :output
                                       list-intent-metrics-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/intentmetrics"
                                       :code 200)

(smithy/sdk/operation:define-operation list-intent-paths :shape-name
                                       "ListIntentPaths" :input
                                       list-intent-paths-request :output
                                       list-intent-paths-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/intentpaths"
                                       :code 200)

(smithy/sdk/operation:define-operation list-intent-stage-metrics :shape-name
                                       "ListIntentStageMetrics" :input
                                       list-intent-stage-metrics-request
                                       :output
                                       list-intent-stage-metrics-response
                                       :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/intentstagemetrics"
                                       :code 200)

(smithy/sdk/operation:define-operation list-intents :shape-name "ListIntents"
                                       :input list-intents-request :output
                                       list-intents-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recommended-intents :shape-name
                                       "ListRecommendedIntents" :input
                                       list-recommended-intents-request :output
                                       list-recommended-intents-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-session-analytics-data :shape-name
                                       "ListSessionAnalyticsData" :input
                                       list-session-analytics-data-request
                                       :output
                                       list-session-analytics-data-response
                                       :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/sessions" :code
                                       200)

(smithy/sdk/operation:define-operation list-session-metrics :shape-name
                                       "ListSessionMetrics" :input
                                       list-session-metrics-request :output
                                       list-session-metrics-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/sessionmetrics"
                                       :code 200)

(smithy/sdk/operation:define-operation list-slot-types :shape-name
                                       "ListSlotTypes" :input
                                       list-slot-types-request :output
                                       list-slot-types-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-slots :shape-name "ListSlots"
                                       :input list-slots-request :output
                                       list-slots-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceARN}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-test-execution-result-items
                                       :shape-name
                                       "ListTestExecutionResultItems" :input
                                       list-test-execution-result-items-request
                                       :output
                                       list-test-execution-result-items-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/testexecutions/{testExecutionId}/results"
                                       :code 200)

(smithy/sdk/operation:define-operation list-test-executions :shape-name
                                       "ListTestExecutions" :input
                                       list-test-executions-request :output
                                       list-test-executions-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testexecutions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-test-set-records :shape-name
                                       "ListTestSetRecords" :input
                                       list-test-set-records-request :output
                                       list-test-set-records-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/testsets/{testSetId}/records" :code
                                       200)

(smithy/sdk/operation:define-operation list-test-sets :shape-name
                                       "ListTestSets" :input
                                       list-test-sets-request :output
                                       list-test-sets-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testsets" :code
                                       200)

(smithy/sdk/operation:define-operation list-utterance-analytics-data
                                       :shape-name "ListUtteranceAnalyticsData"
                                       :input
                                       list-utterance-analytics-data-request
                                       :output
                                       list-utterance-analytics-data-response
                                       :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/utterances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-utterance-metrics :shape-name
                                       "ListUtteranceMetrics" :input
                                       list-utterance-metrics-request :output
                                       list-utterance-metrics-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/analytics/utterancemetrics"
                                       :code 200)

(smithy/sdk/operation:define-operation search-associated-transcripts
                                       :shape-name
                                       "SearchAssociatedTranscripts" :input
                                       search-associated-transcripts-request
                                       :output
                                       search-associated-transcripts-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts"
                                       :code 200)

(smithy/sdk/operation:define-operation start-bot-recommendation :shape-name
                                       "StartBotRecommendation" :input
                                       start-bot-recommendation-request :output
                                       start-bot-recommendation-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations"
                                       :code 202)

(smithy/sdk/operation:define-operation start-bot-resource-generation
                                       :shape-name "StartBotResourceGeneration"
                                       :input
                                       start-bot-resource-generation-request
                                       :output
                                       start-bot-resource-generation-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration"
                                       :code 202)

(smithy/sdk/operation:define-operation start-import :shape-name "StartImport"
                                       :input start-import-request :output
                                       start-import-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/imports" :code 202)

(smithy/sdk/operation:define-operation start-test-execution :shape-name
                                       "StartTestExecution" :input
                                       start-test-execution-request :output
                                       start-test-execution-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/testsets/{testSetId}/testexecutions"
                                       :code 202)

(smithy/sdk/operation:define-operation start-test-set-generation :shape-name
                                       "StartTestSetGeneration" :input
                                       start-test-set-generation-request
                                       :output
                                       start-test-set-generation-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/testsetgenerations"
                                       :code 202)

(smithy/sdk/operation:define-operation stop-bot-recommendation :shape-name
                                       "StopBotRecommendation" :input
                                       stop-bot-recommendation-request :output
                                       stop-bot-recommendation-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceARN}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceARN}" :code 200)

(smithy/sdk/operation:define-operation update-bot :shape-name "UpdateBot"
                                       :input update-bot-request :output
                                       update-bot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/bots/{botId}" :code
                                       202)

(smithy/sdk/operation:define-operation update-bot-alias :shape-name
                                       "UpdateBotAlias" :input
                                       update-bot-alias-request :output
                                       update-bot-alias-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botaliases/{botAliasId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-bot-locale :shape-name
                                       "UpdateBotLocale" :input
                                       update-bot-locale-request :output
                                       update-bot-locale-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-bot-recommendation :shape-name
                                       "UpdateBotRecommendation" :input
                                       update-bot-recommendation-request
                                       :output
                                       update-bot-recommendation-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-export :shape-name "UpdateExport"
                                       :input update-export-request :output
                                       update-export-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/exports/{exportId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-intent :shape-name "UpdateIntent"
                                       :input update-intent-request :output
                                       update-intent-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-policy :shape-name
                                       "UpdateResourcePolicy" :input
                                       update-resource-policy-request :output
                                       update-resource-policy-response :errors
                                       (internal-server-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/policy/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-slot :shape-name "UpdateSlot"
                                       :input update-slot-request :output
                                       update-slot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-slot-type :shape-name
                                       "UpdateSlotType" :input
                                       update-slot-type-request :output
                                       update-slot-type-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-test-set :shape-name
                                       "UpdateTestSet" :input
                                       update-test-set-request :output
                                       update-test-set-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        precondition-failed-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/testsets/{testSetId}" :code 200)
