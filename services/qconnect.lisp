(uiop/package:define-package #:pira/qconnect (:use)
                             (:export #:aiagent
                              #:aiagent-association-configuration-type
                              #:aiagent-configuration
                              #:aiagent-configuration-data
                              #:aiagent-configuration-map #:aiagent-data
                              #:aiagent-summary #:aiagent-summary-list
                              #:aiagent-type #:aiagent-version-summaries-list
                              #:aiagent-version-summary #:aiguardrail
                              #:aiguardrail-blocked-messaging
                              #:aiguardrail-content-policy-config
                              #:aiguardrail-contextual-grounding-policy-config
                              #:aiguardrail-data #:aiguardrail-description
                              #:aiguardrail-sensitive-information-policy-config
                              #:aiguardrail-summaries-list
                              #:aiguardrail-summary
                              #:aiguardrail-topic-policy-config
                              #:aiguardrail-version-summaries-list
                              #:aiguardrail-version-summary
                              #:aiguardrail-word-policy-config #:aiprompt
                              #:aiprompt-apiformat #:aiprompt-data
                              #:aiprompt-model-identifier #:aiprompt-summary
                              #:aiprompt-summary-list
                              #:aiprompt-template-configuration
                              #:aiprompt-template-type #:aiprompt-type
                              #:aiprompt-version-summaries-list
                              #:aiprompt-version-summary
                              #:access-denied-exception
                              #:activate-message-template #:agent-attributes
                              #:amazon-connect-guide-association-data
                              #:and-conditions
                              #:answer-recommendation-aiagent-configuration
                              #:app-integrations-configuration #:arn
                              #:arn-with-qualifier #:assistant
                              #:assistant-association
                              #:assistant-association-data
                              #:assistant-association-input-data
                              #:assistant-association-output-data
                              #:assistant-association-summary
                              #:assistant-association-summary-list
                              #:assistant-capability-configuration
                              #:assistant-capability-type #:assistant-data
                              #:assistant-integration-configuration
                              #:assistant-list #:assistant-status
                              #:assistant-summary #:assistant-type
                              #:association-configuration
                              #:association-configuration-data
                              #:association-configuration-list
                              #:association-type #:attachment-file-name
                              #:bedrock-foundation-model-configuration-for-parsing
                              #:bedrock-model-arn-for-parsing #:channel
                              #:channel-subtype #:channels
                              #:chunking-configuration #:chunking-strategy
                              #:citation-span #:citation-span-offset
                              #:client-token #:configuration
                              #:conflict-exception #:connect-configuration
                              #:contact-attribute-key #:contact-attribute-keys
                              #:contact-attribute-value #:contact-attributes
                              #:content #:content-association
                              #:content-association-contents
                              #:content-association-data
                              #:content-association-summary
                              #:content-association-summary-list
                              #:content-association-type #:content-data
                              #:content-data-details #:content-disposition
                              #:content-feedback-data #:content-metadata
                              #:content-reference #:content-status
                              #:content-summary #:content-summary-list
                              #:content-title #:content-type
                              #:conversation-context #:conversation-state
                              #:conversation-status
                              #:conversation-status-reason #:create-aiagent
                              #:create-aiagent-version #:create-aiguardrail
                              #:create-aiguardrail-version #:create-aiprompt
                              #:create-aiprompt-version #:create-assistant
                              #:create-assistant-association
                              #:create-assistant-association-request
                              #:create-assistant-association-response
                              #:create-assistant-request
                              #:create-assistant-response #:create-content
                              #:create-content-association
                              #:create-content-request
                              #:create-content-response #:create-knowledge-base
                              #:create-knowledge-base-request
                              #:create-knowledge-base-response
                              #:create-message-template
                              #:create-message-template-attachment
                              #:create-message-template-version
                              #:create-quick-response #:create-session
                              #:create-session-request
                              #:create-session-response #:custom-attributes
                              #:customer-profile-attributes #:data-details
                              #:data-reference #:data-summary
                              #:data-summary-list #:deactivate-message-template
                              #:delete-aiagent #:delete-aiagent-version
                              #:delete-aiguardrail #:delete-aiguardrail-version
                              #:delete-aiprompt #:delete-aiprompt-version
                              #:delete-assistant #:delete-assistant-association
                              #:delete-assistant-association-request
                              #:delete-assistant-association-response
                              #:delete-assistant-request
                              #:delete-assistant-response #:delete-content
                              #:delete-content-association
                              #:delete-content-request
                              #:delete-content-response #:delete-import-job
                              #:delete-knowledge-base
                              #:delete-knowledge-base-request
                              #:delete-knowledge-base-response
                              #:delete-message-template
                              #:delete-message-template-attachment
                              #:delete-quick-response #:description #:document
                              #:document-text #:email-header #:email-header-key
                              #:email-header-value #:email-headers
                              #:email-message-template-content
                              #:email-message-template-content-body
                              #:extended-message-template-data
                              #:external-source #:external-source-configuration
                              #:failure-reason #:filter #:filter-field
                              #:filter-list #:filter-operator
                              #:fixed-size-chunking-configuration
                              #:generative-chunk-data-details
                              #:generative-content-feedback-data
                              #:generative-data-details #:generative-reference
                              #:generic-arn #:get-aiagent #:get-aiguardrail
                              #:get-aiprompt #:get-assistant
                              #:get-assistant-association
                              #:get-assistant-association-request
                              #:get-assistant-association-response
                              #:get-assistant-request #:get-assistant-response
                              #:get-content #:get-content-association
                              #:get-content-request #:get-content-response
                              #:get-content-summary
                              #:get-content-summary-request
                              #:get-content-summary-response #:get-import-job
                              #:get-knowledge-base #:get-knowledge-base-request
                              #:get-knowledge-base-response
                              #:get-message-template #:get-next-message
                              #:get-quick-response #:get-recommendations
                              #:get-recommendations-request
                              #:get-recommendations-response #:get-session
                              #:get-session-request #:get-session-response
                              #:grouping-configuration #:grouping-criteria
                              #:grouping-value #:grouping-values
                              #:guardrail-content-filter-config
                              #:guardrail-content-filter-type
                              #:guardrail-content-filters-config
                              #:guardrail-contextual-grounding-filter-config
                              #:guardrail-contextual-grounding-filter-threshold
                              #:guardrail-contextual-grounding-filter-type
                              #:guardrail-contextual-grounding-filters-config
                              #:guardrail-filter-strength
                              #:guardrail-managed-word-lists-config
                              #:guardrail-managed-words-config
                              #:guardrail-managed-words-type
                              #:guardrail-pii-entities-config
                              #:guardrail-pii-entity-config
                              #:guardrail-pii-entity-type
                              #:guardrail-regex-config
                              #:guardrail-regex-description
                              #:guardrail-regex-name #:guardrail-regex-pattern
                              #:guardrail-regexes-config
                              #:guardrail-sensitive-information-action
                              #:guardrail-topic-config
                              #:guardrail-topic-definition
                              #:guardrail-topic-example
                              #:guardrail-topic-examples #:guardrail-topic-name
                              #:guardrail-topic-type #:guardrail-topics-config
                              #:guardrail-word-config #:guardrail-word-text
                              #:guardrail-words-config #:headers
                              #:hierarchical-chunking-configuration
                              #:hierarchical-chunking-level-configuration
                              #:hierarchical-chunking-level-configurations
                              #:highlight #:highlight-offset #:highlights
                              #:import-job-data #:import-job-list
                              #:import-job-status #:import-job-summary
                              #:import-job-type #:intent-detected-data-details
                              #:intent-input-data #:knowledge-base
                              #:knowledge-base-association-configuration-data
                              #:knowledge-base-association-data
                              #:knowledge-base-data #:knowledge-base-list
                              #:knowledge-base-search-type
                              #:knowledge-base-status #:knowledge-base-summary
                              #:knowledge-base-type #:language-code
                              #:list-aiagent-versions #:list-aiagents
                              #:list-aiguardrail-versions #:list-aiguardrails
                              #:list-aiprompt-versions #:list-aiprompts
                              #:list-assistant-associations
                              #:list-assistant-associations-request
                              #:list-assistant-associations-response
                              #:list-assistants #:list-assistants-request
                              #:list-assistants-response
                              #:list-content-associations #:list-contents
                              #:list-contents-request #:list-contents-response
                              #:list-import-jobs #:list-knowledge-bases
                              #:list-knowledge-bases-request
                              #:list-knowledge-bases-response
                              #:list-message-template-versions
                              #:list-message-templates #:list-messages
                              #:list-quick-responses #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:llm-model-id
                              #:managed-source-configuration
                              #:manual-search-aiagent-configuration
                              #:max-results #:message-configuration
                              #:message-data #:message-input #:message-list
                              #:message-output #:message-template
                              #:message-template-attachment
                              #:message-template-attachment-list
                              #:message-template-attribute-key
                              #:message-template-attribute-key-list
                              #:message-template-attribute-type
                              #:message-template-attribute-type-list
                              #:message-template-attribute-value
                              #:message-template-attributes
                              #:message-template-body-content-provider
                              #:message-template-content-provider
                              #:message-template-content-sha256
                              #:message-template-data
                              #:message-template-filter-field
                              #:message-template-filter-field-list
                              #:message-template-filter-operator
                              #:message-template-filter-value
                              #:message-template-filter-value-list
                              #:message-template-order-field
                              #:message-template-query-field
                              #:message-template-query-field-list
                              #:message-template-query-operator
                              #:message-template-query-value
                              #:message-template-query-value-list
                              #:message-template-search-expression
                              #:message-template-search-result-data
                              #:message-template-search-results-list
                              #:message-template-summary
                              #:message-template-summary-list
                              #:message-template-version-summary
                              #:message-template-version-summary-list
                              #:message-type #:name #:next-token
                              #:non-empty-sensitive-string #:non-empty-string
                              #:non-empty-unlimited-string
                              #:notify-recommendations-received
                              #:notify-recommendations-received-error
                              #:notify-recommendations-received-error-list
                              #:notify-recommendations-received-error-message
                              #:notify-recommendations-received-request
                              #:notify-recommendations-received-response
                              #:object-fields-list #:or-condition
                              #:or-conditions #:order #:origin
                              #:parsing-configuration #:parsing-prompt
                              #:parsing-prompt-text #:parsing-strategy
                              #:participant #:precondition-failed-exception
                              #:priority #:put-feedback #:query-assistant
                              #:query-assistant-request
                              #:query-assistant-response #:query-condition
                              #:query-condition-comparison-operator
                              #:query-condition-expression
                              #:query-condition-field-name
                              #:query-condition-item #:query-input-data
                              #:query-recommendation-trigger-data
                              #:query-result-type #:query-results-list
                              #:query-text #:query-text-input-data
                              #:quick-response #:quick-response-content
                              #:quick-response-content-provider
                              #:quick-response-contents #:quick-response-data
                              #:quick-response-data-provider
                              #:quick-response-description
                              #:quick-response-filter-field
                              #:quick-response-filter-field-list
                              #:quick-response-filter-operator
                              #:quick-response-filter-value
                              #:quick-response-filter-value-list
                              #:quick-response-name
                              #:quick-response-order-field
                              #:quick-response-query-field
                              #:quick-response-query-field-list
                              #:quick-response-query-operator
                              #:quick-response-query-value
                              #:quick-response-query-value-list
                              #:quick-response-search-expression
                              #:quick-response-search-result-data
                              #:quick-response-search-results-list
                              #:quick-response-status #:quick-response-summary
                              #:quick-response-summary-list
                              #:quick-response-type #:ranking-data
                              #:recommendation-data #:recommendation-id
                              #:recommendation-id-list #:recommendation-list
                              #:recommendation-source-type
                              #:recommendation-trigger
                              #:recommendation-trigger-data
                              #:recommendation-trigger-list
                              #:recommendation-trigger-type
                              #:recommendation-type #:reference-type
                              #:relevance #:relevance-level #:relevance-score
                              #:remove-assistant-aiagent
                              #:remove-knowledge-base-template-uri
                              #:remove-knowledge-base-template-uri-request
                              #:remove-knowledge-base-template-uri-response
                              #:render-message-template
                              #:rendering-configuration
                              #:request-timeout-exception
                              #:resource-not-found-exception #:result-data
                              #:runtime-session-data
                              #:runtime-session-data-list
                              #:runtime-session-data-value
                              #:smsmessage-template-content
                              #:smsmessage-template-content-body
                              #:search-content #:search-content-request
                              #:search-content-response #:search-expression
                              #:search-message-templates
                              #:search-quick-responses #:search-sessions
                              #:search-sessions-request
                              #:search-sessions-response #:seed-url #:seed-urls
                              #:self-service-aiagent-configuration
                              #:self-service-conversation-history
                              #:self-service-conversation-history-list
                              #:semantic-chunking-configuration #:send-message
                              #:sensitive-string
                              #:server-side-encryption-configuration
                              #:service-quota-exceeded-exception #:session
                              #:session-data #:session-data-namespace
                              #:session-integration-configuration
                              #:session-summaries #:session-summary
                              #:short-cut-key #:source-configuration
                              #:source-content-data-details
                              #:source-content-type #:start-content-upload
                              #:start-content-upload-request
                              #:start-content-upload-response
                              #:start-import-job #:status #:sync-status
                              #:system-attributes #:system-endpoint-attributes
                              #:tag-condition #:tag-filter #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:target-type #:text-aiprompt
                              #:text-data
                              #:text-full-aiprompt-edit-template-configuration
                              #:text-message #:throttling-exception
                              #:time-to-live #:too-many-tags-exception
                              #:unauthorized-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-aiagent
                              #:update-aiguardrail #:update-aiprompt
                              #:update-assistant-aiagent #:update-content
                              #:update-content-request
                              #:update-content-response
                              #:update-knowledge-base-template-uri
                              #:update-knowledge-base-template-uri-request
                              #:update-knowledge-base-template-uri-response
                              #:update-message-template
                              #:update-message-template-metadata
                              #:update-quick-response #:update-session
                              #:update-session-data #:upload-id #:uri #:url
                              #:url-configuration #:url-filter-list
                              #:url-filter-pattern #:uuid #:uuid-or-arn
                              #:uuid-or-arn-or-either-with-qualifier
                              #:uuid-with-qualifier #:validation-exception
                              #:vector-ingestion-configuration #:version
                              #:visibility-status #:wait-time-seconds
                              #:web-crawler-configuration #:web-crawler-limits
                              #:web-scope-type #:web-url #:wisdom-service
                              #:qconnect-error))
(common-lisp:in-package #:pira/qconnect)

(common-lisp:define-condition qconnect-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service wisdom-service :shape-name "WisdomService"
                                   :version "2020-10-19" :title
                                   "Amazon Q Connect" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "QConnect")
                                      ("arnNamespace" . "wisdom")
                                      ("cloudFormationName" . "Wisdom"))
                                     ("aws.auth#sigv4" ("name" . "wisdom"))
                                     ("aws.protocols#restJson1")))

common-lisp:nil

(smithy/sdk/shapes:define-type aiagent-association-configuration-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union aiagent-configuration common-lisp:nil
                                ((manual-search-aiagent-configuration
                                  :target-type
                                  manual-search-aiagent-configuration
                                  :member-name
                                  "manualSearchAIAgentConfiguration")
                                 (answer-recommendation-aiagent-configuration
                                  :target-type
                                  answer-recommendation-aiagent-configuration
                                  :member-name
                                  "answerRecommendationAIAgentConfiguration")
                                 (self-service-aiagent-configuration
                                  :target-type
                                  self-service-aiagent-configuration
                                  :member-name
                                  "selfServiceAIAgentConfiguration"))
                                (:shape-name "AIAgentConfiguration"))

(smithy/sdk/shapes:define-structure aiagent-configuration-data common-lisp:nil
                                    ((ai-agent-id :target-type
                                      uuid-with-qualifier :required
                                      common-lisp:t :member-name "aiAgentId"))
                                    (:shape-name "AIAgentConfigurationData"))

(smithy/sdk/shapes:define-map aiagent-configuration-map :key aiagent-type
                              :value aiagent-configuration-data)

(smithy/sdk/shapes:define-structure aiagent-data common-lisp:nil
                                    ((assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-agent-id :target-type uuid :required
                                      common-lisp:t :member-name "aiAgentId")
                                     (ai-agent-arn :target-type arn :required
                                      common-lisp:t :member-name "aiAgentArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type aiagent-type :required
                                      common-lisp:t :member-name "type")
                                     (configuration :target-type
                                      aiagent-configuration :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (origin :target-type origin :member-name
                                      "origin")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "AIAgentData"))

(smithy/sdk/shapes:define-structure aiagent-summary common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-agent-id :target-type uuid :required
                                      common-lisp:t :member-name "aiAgentId")
                                     (type :target-type aiagent-type :required
                                      common-lisp:t :member-name "type")
                                     (ai-agent-arn :target-type arn :required
                                      common-lisp:t :member-name "aiAgentArn")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (configuration :target-type
                                      aiagent-configuration :member-name
                                      "configuration")
                                     (origin :target-type origin :member-name
                                      "origin")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AIAgentSummary"))

(smithy/sdk/shapes:define-list aiagent-summary-list :member aiagent-summary)

(smithy/sdk/shapes:define-type aiagent-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aiagent-version-summaries-list :member
                               aiagent-version-summary)

(smithy/sdk/shapes:define-structure aiagent-version-summary common-lisp:nil
                                    ((ai-agent-summary :target-type
                                      aiagent-summary :member-name
                                      "aiAgentSummary")
                                     (version-number :target-type version
                                      :member-name "versionNumber"))
                                    (:shape-name "AIAgentVersionSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type aiguardrail-blocked-messaging
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aiguardrail-content-policy-config
                                    common-lisp:nil
                                    ((filters-config :target-type
                                      guardrail-content-filters-config
                                      :required common-lisp:t :member-name
                                      "filtersConfig"))
                                    (:shape-name
                                     "AIGuardrailContentPolicyConfig"))

(smithy/sdk/shapes:define-structure
 aiguardrail-contextual-grounding-policy-config common-lisp:nil
 ((filters-config :target-type guardrail-contextual-grounding-filters-config
   :required common-lisp:t :member-name "filtersConfig"))
 (:shape-name "AIGuardrailContextualGroundingPolicyConfig"))

(smithy/sdk/shapes:define-structure aiguardrail-data common-lisp:nil
                                    ((assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-guardrail-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "aiGuardrailArn")
                                     (ai-guardrail-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "aiGuardrailId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (blocked-input-messaging :target-type
                                      aiguardrail-blocked-messaging :required
                                      common-lisp:t :member-name
                                      "blockedInputMessaging")
                                     (blocked-outputs-messaging :target-type
                                      aiguardrail-blocked-messaging :required
                                      common-lisp:t :member-name
                                      "blockedOutputsMessaging")
                                     (description :target-type
                                      aiguardrail-description :member-name
                                      "description")
                                     (topic-policy-config :target-type
                                      aiguardrail-topic-policy-config
                                      :member-name "topicPolicyConfig")
                                     (content-policy-config :target-type
                                      aiguardrail-content-policy-config
                                      :member-name "contentPolicyConfig")
                                     (word-policy-config :target-type
                                      aiguardrail-word-policy-config
                                      :member-name "wordPolicyConfig")
                                     (sensitive-information-policy-config
                                      :target-type
                                      aiguardrail-sensitive-information-policy-config
                                      :member-name
                                      "sensitiveInformationPolicyConfig")
                                     (contextual-grounding-policy-config
                                      :target-type
                                      aiguardrail-contextual-grounding-policy-config
                                      :member-name
                                      "contextualGroundingPolicyConfig")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (status :target-type status :member-name
                                      "status")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime"))
                                    (:shape-name "AIGuardrailData"))

(smithy/sdk/shapes:define-type aiguardrail-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 aiguardrail-sensitive-information-policy-config common-lisp:nil
 ((pii-entities-config :target-type guardrail-pii-entities-config :member-name
   "piiEntitiesConfig")
  (regexes-config :target-type guardrail-regexes-config :member-name
   "regexesConfig"))
 (:shape-name "AIGuardrailSensitiveInformationPolicyConfig"))

(smithy/sdk/shapes:define-list aiguardrail-summaries-list :member
                               aiguardrail-summary)

(smithy/sdk/shapes:define-structure aiguardrail-summary common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-guardrail-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "aiGuardrailId")
                                     (ai-guardrail-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "aiGuardrailArn")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (description :target-type
                                      aiguardrail-description :member-name
                                      "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AIGuardrailSummary"))

(smithy/sdk/shapes:define-structure aiguardrail-topic-policy-config
                                    common-lisp:nil
                                    ((topics-config :target-type
                                      guardrail-topics-config :required
                                      common-lisp:t :member-name
                                      "topicsConfig"))
                                    (:shape-name
                                     "AIGuardrailTopicPolicyConfig"))

(smithy/sdk/shapes:define-list aiguardrail-version-summaries-list :member
                               aiguardrail-version-summary)

(smithy/sdk/shapes:define-structure aiguardrail-version-summary common-lisp:nil
                                    ((ai-guardrail-summary :target-type
                                      aiguardrail-summary :member-name
                                      "aiGuardrailSummary")
                                     (version-number :target-type version
                                      :member-name "versionNumber"))
                                    (:shape-name "AIGuardrailVersionSummary"))

(smithy/sdk/shapes:define-structure aiguardrail-word-policy-config
                                    common-lisp:nil
                                    ((words-config :target-type
                                      guardrail-words-config :member-name
                                      "wordsConfig")
                                     (managed-word-lists-config :target-type
                                      guardrail-managed-word-lists-config
                                      :member-name "managedWordListsConfig"))
                                    (:shape-name "AIGuardrailWordPolicyConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-type aiprompt-apiformat
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aiprompt-data common-lisp:nil
                                    ((assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-prompt-id :target-type uuid :required
                                      common-lisp:t :member-name "aiPromptId")
                                     (ai-prompt-arn :target-type arn :required
                                      common-lisp:t :member-name "aiPromptArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type aiprompt-type :required
                                      common-lisp:t :member-name "type")
                                     (template-type :target-type
                                      aiprompt-template-type :required
                                      common-lisp:t :member-name
                                      "templateType")
                                     (model-id :target-type
                                      aiprompt-model-identifier :required
                                      common-lisp:t :member-name "modelId")
                                     (api-format :target-type
                                      aiprompt-apiformat :required
                                      common-lisp:t :member-name "apiFormat")
                                     (template-configuration :target-type
                                      aiprompt-template-configuration :required
                                      common-lisp:t :member-name
                                      "templateConfiguration")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (origin :target-type origin :member-name
                                      "origin")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "AIPromptData"))

(smithy/sdk/shapes:define-type aiprompt-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aiprompt-summary common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (ai-prompt-id :target-type uuid :required
                                      common-lisp:t :member-name "aiPromptId")
                                     (type :target-type aiprompt-type :required
                                      common-lisp:t :member-name "type")
                                     (ai-prompt-arn :target-type arn :required
                                      common-lisp:t :member-name "aiPromptArn")
                                     (modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedTime")
                                     (template-type :target-type
                                      aiprompt-template-type :required
                                      common-lisp:t :member-name
                                      "templateType")
                                     (model-id :target-type
                                      aiprompt-model-identifier :required
                                      common-lisp:t :member-name "modelId")
                                     (api-format :target-type
                                      aiprompt-apiformat :required
                                      common-lisp:t :member-name "apiFormat")
                                     (visibility-status :target-type
                                      visibility-status :required common-lisp:t
                                      :member-name "visibilityStatus")
                                     (origin :target-type origin :member-name
                                      "origin")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AIPromptSummary"))

(smithy/sdk/shapes:define-list aiprompt-summary-list :member aiprompt-summary)

(smithy/sdk/shapes:define-union aiprompt-template-configuration common-lisp:nil
                                ((text-full-aiprompt-edit-template-configuration
                                  :target-type
                                  text-full-aiprompt-edit-template-configuration
                                  :member-name
                                  "textFullAIPromptEditTemplateConfiguration"))
                                (:shape-name "AIPromptTemplateConfiguration"))

(smithy/sdk/shapes:define-type aiprompt-template-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aiprompt-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aiprompt-version-summaries-list :member
                               aiprompt-version-summary)

(smithy/sdk/shapes:define-structure aiprompt-version-summary common-lisp:nil
                                    ((ai-prompt-summary :target-type
                                      aiprompt-summary :member-name
                                      "aiPromptSummary")
                                     (version-number :target-type version
                                      :member-name "versionNumber"))
                                    (:shape-name "AIPromptVersionSummary"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class qconnect-error))

(smithy/sdk/shapes:define-input activate-message-template-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (version-number :target-type version :required
                                  common-lisp:t :member-name "versionNumber"))
                                (:shape-name "ActivateMessageTemplateRequest"))

(smithy/sdk/shapes:define-output activate-message-template-response
                                 common-lisp:nil
                                 ((message-template-arn :target-type
                                   arn-with-qualifier :required common-lisp:t
                                   :member-name "messageTemplateArn")
                                  (message-template-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "messageTemplateId")
                                  (version-number :target-type version
                                   :required common-lisp:t :member-name
                                   "versionNumber"))
                                 (:shape-name
                                  "ActivateMessageTemplateResponse"))

(smithy/sdk/shapes:define-structure agent-attributes common-lisp:nil
                                    ((first-name :target-type
                                      message-template-attribute-value
                                      :member-name "firstName")
                                     (last-name :target-type
                                      message-template-attribute-value
                                      :member-name "lastName"))
                                    (:shape-name "AgentAttributes"))

(smithy/sdk/shapes:define-structure amazon-connect-guide-association-data
                                    common-lisp:nil
                                    ((flow-id :target-type generic-arn
                                      :member-name "flowId"))
                                    (:shape-name
                                     "AmazonConnectGuideAssociationData"))

(smithy/sdk/shapes:define-list and-conditions :member tag-condition)

(smithy/sdk/shapes:define-structure answer-recommendation-aiagent-configuration
                                    common-lisp:nil
                                    ((intent-labeling-generation-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "intentLabelingGenerationAIPromptId")
                                     (query-reformulation-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "queryReformulationAIPromptId")
                                     (answer-generation-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "answerGenerationAIPromptId")
                                     (answer-generation-aiguardrail-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "answerGenerationAIGuardrailId")
                                     (association-configurations :target-type
                                      association-configuration-list
                                      :member-name "associationConfigurations")
                                     (locale :target-type non-empty-string
                                      :member-name "locale"))
                                    (:shape-name
                                     "AnswerRecommendationAIAgentConfiguration"))

(smithy/sdk/shapes:define-structure app-integrations-configuration
                                    common-lisp:nil
                                    ((app-integration-arn :target-type
                                      generic-arn :required common-lisp:t
                                      :member-name "appIntegrationArn")
                                     (object-fields :target-type
                                      object-fields-list :member-name
                                      "objectFields"))
                                    (:shape-name
                                     "AppIntegrationsConfiguration"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-with-qualifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure assistant-association-data common-lisp:nil
                                    ((assistant-association-id :target-type
                                      uuid :required common-lisp:t :member-name
                                      "assistantAssociationId")
                                     (assistant-association-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "assistantAssociationArn")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (association-type :target-type
                                      association-type :required common-lisp:t
                                      :member-name "associationType")
                                     (association-data :target-type
                                      assistant-association-output-data
                                      :required common-lisp:t :member-name
                                      "associationData")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AssistantAssociationData"))

(smithy/sdk/shapes:define-union assistant-association-input-data
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid
                                  :member-name "knowledgeBaseId"))
                                (:shape-name "AssistantAssociationInputData"))

(smithy/sdk/shapes:define-union assistant-association-output-data
                                common-lisp:nil
                                ((knowledge-base-association :target-type
                                  knowledge-base-association-data :member-name
                                  "knowledgeBaseAssociation"))
                                (:shape-name "AssistantAssociationOutputData"))

(smithy/sdk/shapes:define-structure assistant-association-summary
                                    common-lisp:nil
                                    ((assistant-association-id :target-type
                                      uuid :required common-lisp:t :member-name
                                      "assistantAssociationId")
                                     (assistant-association-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "assistantAssociationArn")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (association-type :target-type
                                      association-type :required common-lisp:t
                                      :member-name "associationType")
                                     (association-data :target-type
                                      assistant-association-output-data
                                      :required common-lisp:t :member-name
                                      "associationData")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AssistantAssociationSummary"))

(smithy/sdk/shapes:define-list assistant-association-summary-list :member
                               assistant-association-summary)

(smithy/sdk/shapes:define-structure assistant-capability-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      assistant-capability-type :member-name
                                      "type"))
                                    (:shape-name
                                     "AssistantCapabilityConfiguration"))

(smithy/sdk/shapes:define-type assistant-capability-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assistant-data common-lisp:nil
                                    ((assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type assistant-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (status :target-type assistant-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (integration-configuration :target-type
                                      assistant-integration-configuration
                                      :member-name "integrationConfiguration")
                                     (capability-configuration :target-type
                                      assistant-capability-configuration
                                      :member-name "capabilityConfiguration")
                                     (ai-agent-configuration :target-type
                                      aiagent-configuration-map :member-name
                                      "aiAgentConfiguration"))
                                    (:shape-name "AssistantData"))

(smithy/sdk/shapes:define-structure assistant-integration-configuration
                                    common-lisp:nil
                                    ((topic-integration-arn :target-type
                                      generic-arn :member-name
                                      "topicIntegrationArn"))
                                    (:shape-name
                                     "AssistantIntegrationConfiguration"))

(smithy/sdk/shapes:define-list assistant-list :member assistant-summary)

(smithy/sdk/shapes:define-type assistant-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assistant-summary common-lisp:nil
                                    ((assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type assistant-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (status :target-type assistant-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (integration-configuration :target-type
                                      assistant-integration-configuration
                                      :member-name "integrationConfiguration")
                                     (capability-configuration :target-type
                                      assistant-capability-configuration
                                      :member-name "capabilityConfiguration")
                                     (ai-agent-configuration :target-type
                                      aiagent-configuration-map :member-name
                                      "aiAgentConfiguration"))
                                    (:shape-name "AssistantSummary"))

(smithy/sdk/shapes:define-type assistant-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association-configuration common-lisp:nil
                                    ((association-id :target-type uuid
                                      :member-name "associationId")
                                     (association-type :target-type
                                      aiagent-association-configuration-type
                                      :member-name "associationType")
                                     (association-configuration-data
                                      :target-type
                                      association-configuration-data
                                      :member-name
                                      "associationConfigurationData"))
                                    (:shape-name "AssociationConfiguration"))

(smithy/sdk/shapes:define-union association-configuration-data common-lisp:nil
                                ((knowledge-base-association-configuration-data
                                  :target-type
                                  knowledge-base-association-configuration-data
                                  :member-name
                                  "knowledgeBaseAssociationConfigurationData"))
                                (:shape-name "AssociationConfigurationData"))

(smithy/sdk/shapes:define-list association-configuration-list :member
                               association-configuration)

(smithy/sdk/shapes:define-type association-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-file-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 bedrock-foundation-model-configuration-for-parsing common-lisp:nil
 ((model-arn :target-type bedrock-model-arn-for-parsing :required common-lisp:t
   :member-name "modelArn")
  (parsing-prompt :target-type parsing-prompt :member-name "parsingPrompt"))
 (:shape-name "BedrockFoundationModelConfigurationForParsing"))

(smithy/sdk/shapes:define-type bedrock-model-arn-for-parsing
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-subtype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channels :member channel)

(smithy/sdk/shapes:define-structure chunking-configuration common-lisp:nil
                                    ((chunking-strategy :target-type
                                      chunking-strategy :required common-lisp:t
                                      :member-name "chunkingStrategy")
                                     (fixed-size-chunking-configuration
                                      :target-type
                                      fixed-size-chunking-configuration
                                      :member-name
                                      "fixedSizeChunkingConfiguration")
                                     (hierarchical-chunking-configuration
                                      :target-type
                                      hierarchical-chunking-configuration
                                      :member-name
                                      "hierarchicalChunkingConfiguration")
                                     (semantic-chunking-configuration
                                      :target-type
                                      semantic-chunking-configuration
                                      :member-name
                                      "semanticChunkingConfiguration"))
                                    (:shape-name "ChunkingConfiguration"))

(smithy/sdk/shapes:define-type chunking-strategy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure citation-span common-lisp:nil
                                    ((begin-offset-inclusive :target-type
                                      citation-span-offset :member-name
                                      "beginOffsetInclusive")
                                     (end-offset-exclusive :target-type
                                      citation-span-offset :member-name
                                      "endOffsetExclusive"))
                                    (:shape-name "CitationSpan"))

(smithy/sdk/shapes:define-type citation-span-offset
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union configuration common-lisp:nil
                                ((connect-configuration :target-type
                                  connect-configuration :member-name
                                  "connectConfiguration"))
                                (:shape-name "Configuration"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class qconnect-error))

(smithy/sdk/shapes:define-structure connect-configuration common-lisp:nil
                                    ((instance-id :target-type non-empty-string
                                      :member-name "instanceId"))
                                    (:shape-name "ConnectConfiguration"))

(smithy/sdk/shapes:define-type contact-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list contact-attribute-keys :member
                               contact-attribute-key)

(smithy/sdk/shapes:define-type contact-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map contact-attributes :key contact-attribute-key
                              :value contact-attribute-value)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-union content-association-contents common-lisp:nil
                                ((amazon-connect-guide-association :target-type
                                  amazon-connect-guide-association-data
                                  :member-name
                                  "amazonConnectGuideAssociation"))
                                (:shape-name "ContentAssociationContents"))

(smithy/sdk/shapes:define-structure content-association-data common-lisp:nil
                                    ((knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (content-id :target-type uuid :required
                                      common-lisp:t :member-name "contentId")
                                     (content-arn :target-type arn :required
                                      common-lisp:t :member-name "contentArn")
                                     (content-association-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "contentAssociationId")
                                     (content-association-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "contentAssociationArn")
                                     (association-type :target-type
                                      content-association-type :required
                                      common-lisp:t :member-name
                                      "associationType")
                                     (association-data :target-type
                                      content-association-contents :required
                                      common-lisp:t :member-name
                                      "associationData")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ContentAssociationData"))

(smithy/sdk/shapes:define-structure content-association-summary common-lisp:nil
                                    ((knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (content-id :target-type uuid :required
                                      common-lisp:t :member-name "contentId")
                                     (content-arn :target-type arn :required
                                      common-lisp:t :member-name "contentArn")
                                     (content-association-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "contentAssociationId")
                                     (content-association-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "contentAssociationArn")
                                     (association-type :target-type
                                      content-association-type :required
                                      common-lisp:t :member-name
                                      "associationType")
                                     (association-data :target-type
                                      content-association-contents :required
                                      common-lisp:t :member-name
                                      "associationData")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ContentAssociationSummary"))

(smithy/sdk/shapes:define-list content-association-summary-list :member
                               content-association-summary)

(smithy/sdk/shapes:define-type content-association-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure content-data common-lisp:nil
                                    ((content-arn :target-type arn :required
                                      common-lisp:t :member-name "contentArn")
                                     (content-id :target-type uuid :required
                                      common-lisp:t :member-name "contentId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (revision-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "revisionId")
                                     (title :target-type content-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "contentType")
                                     (status :target-type content-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (metadata :target-type content-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (link-out-uri :target-type uri
                                      :member-name "linkOutUri")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (url-expiry :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "urlExpiry" :timestamp-format
                                      "epoch-seconds"))
                                    (:shape-name "ContentData"))

(smithy/sdk/shapes:define-structure content-data-details common-lisp:nil
                                    ((text-data :target-type text-data
                                      :required common-lisp:t :member-name
                                      "textData")
                                     (ranking-data :target-type ranking-data
                                      :required common-lisp:t :member-name
                                      "rankingData"))
                                    (:shape-name "ContentDataDetails"))

(smithy/sdk/shapes:define-type content-disposition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union content-feedback-data common-lisp:nil
                                ((generative-content-feedback-data :target-type
                                  generative-content-feedback-data :member-name
                                  "generativeContentFeedbackData"))
                                (:shape-name "ContentFeedbackData"))

(smithy/sdk/shapes:define-map content-metadata :key non-empty-string :value
                              non-empty-string)

(smithy/sdk/shapes:define-structure content-reference common-lisp:nil
                                    ((knowledge-base-arn :target-type arn
                                      :member-name "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :member-name "knowledgeBaseId")
                                     (content-arn :target-type arn :member-name
                                      "contentArn")
                                     (content-id :target-type uuid :member-name
                                      "contentId")
                                     (source-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceURL")
                                     (reference-type :target-type
                                      reference-type :member-name
                                      "referenceType"))
                                    (:shape-name "ContentReference"))

(smithy/sdk/shapes:define-type content-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure content-summary common-lisp:nil
                                    ((content-arn :target-type arn :required
                                      common-lisp:t :member-name "contentArn")
                                     (content-id :target-type uuid :required
                                      common-lisp:t :member-name "contentId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (revision-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "revisionId")
                                     (title :target-type content-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "contentType")
                                     (status :target-type content-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (metadata :target-type content-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ContentSummary"))

(smithy/sdk/shapes:define-list content-summary-list :member content-summary)

(smithy/sdk/shapes:define-type content-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conversation-context common-lisp:nil
                                    ((self-service-conversation-history
                                      :target-type
                                      self-service-conversation-history-list
                                      :required common-lisp:t :member-name
                                      "selfServiceConversationHistory"))
                                    (:shape-name "ConversationContext"))

(smithy/sdk/shapes:define-structure conversation-state common-lisp:nil
                                    ((status :target-type conversation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (reason :target-type
                                      conversation-status-reason :member-name
                                      "reason"))
                                    (:shape-name "ConversationState"))

(smithy/sdk/shapes:define-type conversation-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type conversation-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-aiagent-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type aiagent-type :required
                                  common-lisp:t :member-name "type")
                                 (configuration :target-type
                                  aiagent-configuration :required common-lisp:t
                                  :member-name "configuration")
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (tags :target-type tags :member-name "tags")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "CreateAIAgentRequest"))

(smithy/sdk/shapes:define-output create-aiagent-response common-lisp:nil
                                 ((ai-agent :target-type aiagent-data
                                   :member-name "aiAgent"))
                                 (:shape-name "CreateAIAgentResponse"))

(smithy/sdk/shapes:define-input create-aiagent-version-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t)
                                 (modified-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "modifiedTime")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateAIAgentVersionRequest"))

(smithy/sdk/shapes:define-output create-aiagent-version-response
                                 common-lisp:nil
                                 ((ai-agent :target-type aiagent-data
                                   :member-name "aiAgent")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name "CreateAIAgentVersionResponse"))

(smithy/sdk/shapes:define-input create-aiguardrail-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (blocked-input-messaging :target-type
                                  aiguardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedInputMessaging")
                                 (blocked-outputs-messaging :target-type
                                  aiguardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedOutputsMessaging")
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (description :target-type
                                  aiguardrail-description :member-name
                                  "description")
                                 (topic-policy-config :target-type
                                  aiguardrail-topic-policy-config :member-name
                                  "topicPolicyConfig")
                                 (content-policy-config :target-type
                                  aiguardrail-content-policy-config
                                  :member-name "contentPolicyConfig")
                                 (word-policy-config :target-type
                                  aiguardrail-word-policy-config :member-name
                                  "wordPolicyConfig")
                                 (sensitive-information-policy-config
                                  :target-type
                                  aiguardrail-sensitive-information-policy-config
                                  :member-name
                                  "sensitiveInformationPolicyConfig")
                                 (contextual-grounding-policy-config
                                  :target-type
                                  aiguardrail-contextual-grounding-policy-config
                                  :member-name
                                  "contextualGroundingPolicyConfig")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateAIGuardrailRequest"))

(smithy/sdk/shapes:define-output create-aiguardrail-response common-lisp:nil
                                 ((ai-guardrail :target-type aiguardrail-data
                                   :member-name "aiGuardrail"))
                                 (:shape-name "CreateAIGuardrailResponse"))

(smithy/sdk/shapes:define-input create-aiguardrail-version-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t)
                                 (modified-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "modifiedTime")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateAIGuardrailVersionRequest"))

(smithy/sdk/shapes:define-output create-aiguardrail-version-response
                                 common-lisp:nil
                                 ((ai-guardrail :target-type aiguardrail-data
                                   :member-name "aiGuardrail")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name
                                  "CreateAIGuardrailVersionResponse"))

(smithy/sdk/shapes:define-input create-aiprompt-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type aiprompt-type :required
                                  common-lisp:t :member-name "type")
                                 (template-configuration :target-type
                                  aiprompt-template-configuration :required
                                  common-lisp:t :member-name
                                  "templateConfiguration")
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (template-type :target-type
                                  aiprompt-template-type :required
                                  common-lisp:t :member-name "templateType")
                                 (model-id :target-type
                                  aiprompt-model-identifier :required
                                  common-lisp:t :member-name "modelId")
                                 (api-format :target-type aiprompt-apiformat
                                  :required common-lisp:t :member-name
                                  "apiFormat")
                                 (tags :target-type tags :member-name "tags")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "CreateAIPromptRequest"))

(smithy/sdk/shapes:define-output create-aiprompt-response common-lisp:nil
                                 ((ai-prompt :target-type aiprompt-data
                                   :member-name "aiPrompt"))
                                 (:shape-name "CreateAIPromptResponse"))

(smithy/sdk/shapes:define-input create-aiprompt-version-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t)
                                 (modified-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "modifiedTime")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateAIPromptVersionRequest"))

(smithy/sdk/shapes:define-output create-aiprompt-version-response
                                 common-lisp:nil
                                 ((ai-prompt :target-type aiprompt-data
                                   :member-name "aiPrompt")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name "CreateAIPromptVersionResponse"))

(smithy/sdk/shapes:define-input create-assistant-association-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (association-type :target-type
                                  association-type :required common-lisp:t
                                  :member-name "associationType")
                                 (association :target-type
                                  assistant-association-input-data :required
                                  common-lisp:t :member-name "association")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateAssistantAssociationRequest"))

(smithy/sdk/shapes:define-structure create-assistant-association-response
                                    common-lisp:nil
                                    ((assistant-association :target-type
                                      assistant-association-data :member-name
                                      "assistantAssociation"))
                                    (:shape-name
                                     "CreateAssistantAssociationResponse"))

(smithy/sdk/shapes:define-structure create-assistant-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type assistant-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration"))
                                    (:shape-name "CreateAssistantRequest"))

(smithy/sdk/shapes:define-structure create-assistant-response common-lisp:nil
                                    ((assistant :target-type assistant-data
                                      :member-name "assistant"))
                                    (:shape-name "CreateAssistantResponse"))

(smithy/sdk/shapes:define-input create-content-association-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (association-type :target-type
                                  content-association-type :required
                                  common-lisp:t :member-name "associationType")
                                 (association :target-type
                                  content-association-contents :required
                                  common-lisp:t :member-name "association")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateContentAssociationRequest"))

(smithy/sdk/shapes:define-output create-content-association-response
                                 common-lisp:nil
                                 ((content-association :target-type
                                   content-association-data :member-name
                                   "contentAssociation"))
                                 (:shape-name
                                  "CreateContentAssociationResponse"))

(smithy/sdk/shapes:define-input create-content-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (title :target-type content-title :member-name
                                  "title")
                                 (override-link-out-uri :target-type uri
                                  :member-name "overrideLinkOutUri")
                                 (metadata :target-type content-metadata
                                  :member-name "metadata")
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId")
                                 (client-token :target-type non-empty-string
                                  :member-name "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateContentRequest"))

(smithy/sdk/shapes:define-structure create-content-response common-lisp:nil
                                    ((content :target-type content-data
                                      :member-name "content"))
                                    (:shape-name "CreateContentResponse"))

(smithy/sdk/shapes:define-structure create-knowledge-base-request
                                    common-lisp:nil
                                    ((client-token :target-type
                                      non-empty-string :member-name
                                      "clientToken")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (knowledge-base-type :target-type
                                      knowledge-base-type :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseType")
                                     (source-configuration :target-type
                                      source-configuration :member-name
                                      "sourceConfiguration")
                                     (rendering-configuration :target-type
                                      rendering-configuration :member-name
                                      "renderingConfiguration")
                                     (vector-ingestion-configuration
                                      :target-type
                                      vector-ingestion-configuration
                                      :member-name
                                      "vectorIngestionConfiguration")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "CreateKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-structure create-knowledge-base-response
                                    common-lisp:nil
                                    ((knowledge-base :target-type
                                      knowledge-base-data :member-name
                                      "knowledgeBase"))
                                    (:shape-name "CreateKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input create-message-template-attachment-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (content-disposition :target-type
                                  content-disposition :required common-lisp:t
                                  :member-name "contentDisposition")
                                 (name :target-type attachment-file-name
                                  :required common-lisp:t :member-name "name")
                                 (body :target-type non-empty-unlimited-string
                                  :required common-lisp:t :member-name "body")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateMessageTemplateAttachmentRequest"))

(smithy/sdk/shapes:define-output create-message-template-attachment-response
                                 common-lisp:nil
                                 ((attachment :target-type
                                   message-template-attachment :member-name
                                   "attachment"))
                                 (:shape-name
                                  "CreateMessageTemplateAttachmentResponse"))

(smithy/sdk/shapes:define-input create-message-template-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (content :target-type
                                  message-template-content-provider :required
                                  common-lisp:t :member-name "content")
                                 (description :target-type description
                                  :member-name "description")
                                 (channel-subtype :target-type channel-subtype
                                  :required common-lisp:t :member-name
                                  "channelSubtype")
                                 (language :target-type language-code
                                  :member-name "language")
                                 (default-attributes :target-type
                                  message-template-attributes :member-name
                                  "defaultAttributes")
                                 (grouping-configuration :target-type
                                  grouping-configuration :member-name
                                  "groupingConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateMessageTemplateRequest"))

(smithy/sdk/shapes:define-output create-message-template-response
                                 common-lisp:nil
                                 ((message-template :target-type
                                   message-template-data :member-name
                                   "messageTemplate"))
                                 (:shape-name "CreateMessageTemplateResponse"))

(smithy/sdk/shapes:define-input create-message-template-version-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (message-template-content-sha256 :target-type
                                  message-template-content-sha256 :member-name
                                  "messageTemplateContentSha256"))
                                (:shape-name
                                 "CreateMessageTemplateVersionRequest"))

(smithy/sdk/shapes:define-output create-message-template-version-response
                                 common-lisp:nil
                                 ((message-template :target-type
                                   extended-message-template-data :member-name
                                   "messageTemplate"))
                                 (:shape-name
                                  "CreateMessageTemplateVersionResponse"))

(smithy/sdk/shapes:define-input create-quick-response-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (name :target-type quick-response-name
                                  :required common-lisp:t :member-name "name")
                                 (content :target-type
                                  quick-response-data-provider :required
                                  common-lisp:t :member-name "content")
                                 (content-type :target-type quick-response-type
                                  :member-name "contentType")
                                 (grouping-configuration :target-type
                                  grouping-configuration :member-name
                                  "groupingConfiguration")
                                 (description :target-type
                                  quick-response-description :member-name
                                  "description")
                                 (shortcut-key :target-type short-cut-key
                                  :member-name "shortcutKey")
                                 (is-active :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isActive")
                                 (channels :target-type channels :member-name
                                  "channels")
                                 (language :target-type language-code
                                  :member-name "language")
                                 (client-token :target-type non-empty-string
                                  :member-name "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateQuickResponseRequest"))

(smithy/sdk/shapes:define-output create-quick-response-response common-lisp:nil
                                 ((quick-response :target-type
                                   quick-response-data :member-name
                                   "quickResponse"))
                                 (:shape-name "CreateQuickResponseResponse"))

(smithy/sdk/shapes:define-input create-session-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tags :member-name "tags")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (ai-agent-configuration :target-type
                                  aiagent-configuration-map :member-name
                                  "aiAgentConfiguration"))
                                (:shape-name "CreateSessionRequest"))

(smithy/sdk/shapes:define-structure create-session-response common-lisp:nil
                                    ((session :target-type session-data
                                      :member-name "session"))
                                    (:shape-name "CreateSessionResponse"))

(smithy/sdk/shapes:define-map custom-attributes :key
                              message-template-attribute-key :value
                              message-template-attribute-value)

(smithy/sdk/shapes:define-structure customer-profile-attributes common-lisp:nil
                                    ((profile-id :target-type
                                      message-template-attribute-value
                                      :member-name "profileId")
                                     (profile-arn :target-type
                                      message-template-attribute-value
                                      :member-name "profileARN")
                                     (first-name :target-type
                                      message-template-attribute-value
                                      :member-name "firstName")
                                     (middle-name :target-type
                                      message-template-attribute-value
                                      :member-name "middleName")
                                     (last-name :target-type
                                      message-template-attribute-value
                                      :member-name "lastName")
                                     (account-number :target-type
                                      message-template-attribute-value
                                      :member-name "accountNumber")
                                     (email-address :target-type
                                      message-template-attribute-value
                                      :member-name "emailAddress")
                                     (phone-number :target-type
                                      message-template-attribute-value
                                      :member-name "phoneNumber")
                                     (additional-information :target-type
                                      message-template-attribute-value
                                      :member-name "additionalInformation")
                                     (party-type :target-type
                                      message-template-attribute-value
                                      :member-name "partyType")
                                     (business-name :target-type
                                      message-template-attribute-value
                                      :member-name "businessName")
                                     (birth-date :target-type
                                      message-template-attribute-value
                                      :member-name "birthDate")
                                     (gender :target-type
                                      message-template-attribute-value
                                      :member-name "gender")
                                     (mobile-phone-number :target-type
                                      message-template-attribute-value
                                      :member-name "mobilePhoneNumber")
                                     (home-phone-number :target-type
                                      message-template-attribute-value
                                      :member-name "homePhoneNumber")
                                     (business-phone-number :target-type
                                      message-template-attribute-value
                                      :member-name "businessPhoneNumber")
                                     (business-email-address :target-type
                                      message-template-attribute-value
                                      :member-name "businessEmailAddress")
                                     (address1 :target-type
                                      message-template-attribute-value
                                      :member-name "address1")
                                     (address2 :target-type
                                      message-template-attribute-value
                                      :member-name "address2")
                                     (address3 :target-type
                                      message-template-attribute-value
                                      :member-name "address3")
                                     (address4 :target-type
                                      message-template-attribute-value
                                      :member-name "address4")
                                     (city :target-type
                                      message-template-attribute-value
                                      :member-name "city")
                                     (county :target-type
                                      message-template-attribute-value
                                      :member-name "county")
                                     (country :target-type
                                      message-template-attribute-value
                                      :member-name "country")
                                     (postal-code :target-type
                                      message-template-attribute-value
                                      :member-name "postalCode")
                                     (province :target-type
                                      message-template-attribute-value
                                      :member-name "province")
                                     (state :target-type
                                      message-template-attribute-value
                                      :member-name "state")
                                     (shipping-address1 :target-type
                                      message-template-attribute-value
                                      :member-name "shippingAddress1")
                                     (shipping-address2 :target-type
                                      message-template-attribute-value
                                      :member-name "shippingAddress2")
                                     (shipping-address3 :target-type
                                      message-template-attribute-value
                                      :member-name "shippingAddress3")
                                     (shipping-address4 :target-type
                                      message-template-attribute-value
                                      :member-name "shippingAddress4")
                                     (shipping-city :target-type
                                      message-template-attribute-value
                                      :member-name "shippingCity")
                                     (shipping-county :target-type
                                      message-template-attribute-value
                                      :member-name "shippingCounty")
                                     (shipping-country :target-type
                                      message-template-attribute-value
                                      :member-name "shippingCountry")
                                     (shipping-postal-code :target-type
                                      message-template-attribute-value
                                      :member-name "shippingPostalCode")
                                     (shipping-province :target-type
                                      message-template-attribute-value
                                      :member-name "shippingProvince")
                                     (shipping-state :target-type
                                      message-template-attribute-value
                                      :member-name "shippingState")
                                     (mailing-address1 :target-type
                                      message-template-attribute-value
                                      :member-name "mailingAddress1")
                                     (mailing-address2 :target-type
                                      message-template-attribute-value
                                      :member-name "mailingAddress2")
                                     (mailing-address3 :target-type
                                      message-template-attribute-value
                                      :member-name "mailingAddress3")
                                     (mailing-address4 :target-type
                                      message-template-attribute-value
                                      :member-name "mailingAddress4")
                                     (mailing-city :target-type
                                      message-template-attribute-value
                                      :member-name "mailingCity")
                                     (mailing-county :target-type
                                      message-template-attribute-value
                                      :member-name "mailingCounty")
                                     (mailing-country :target-type
                                      message-template-attribute-value
                                      :member-name "mailingCountry")
                                     (mailing-postal-code :target-type
                                      message-template-attribute-value
                                      :member-name "mailingPostalCode")
                                     (mailing-province :target-type
                                      message-template-attribute-value
                                      :member-name "mailingProvince")
                                     (mailing-state :target-type
                                      message-template-attribute-value
                                      :member-name "mailingState")
                                     (billing-address1 :target-type
                                      message-template-attribute-value
                                      :member-name "billingAddress1")
                                     (billing-address2 :target-type
                                      message-template-attribute-value
                                      :member-name "billingAddress2")
                                     (billing-address3 :target-type
                                      message-template-attribute-value
                                      :member-name "billingAddress3")
                                     (billing-address4 :target-type
                                      message-template-attribute-value
                                      :member-name "billingAddress4")
                                     (billing-city :target-type
                                      message-template-attribute-value
                                      :member-name "billingCity")
                                     (billing-county :target-type
                                      message-template-attribute-value
                                      :member-name "billingCounty")
                                     (billing-country :target-type
                                      message-template-attribute-value
                                      :member-name "billingCountry")
                                     (billing-postal-code :target-type
                                      message-template-attribute-value
                                      :member-name "billingPostalCode")
                                     (billing-province :target-type
                                      message-template-attribute-value
                                      :member-name "billingProvince")
                                     (billing-state :target-type
                                      message-template-attribute-value
                                      :member-name "billingState")
                                     (custom :target-type custom-attributes
                                      :member-name "custom"))
                                    (:shape-name "CustomerProfileAttributes"))

(smithy/sdk/shapes:define-union data-details common-lisp:nil
                                ((content-data :target-type
                                  content-data-details :member-name
                                  "contentData")
                                 (generative-data :target-type
                                  generative-data-details :member-name
                                  "generativeData")
                                 (intent-detected-data :target-type
                                  intent-detected-data-details :member-name
                                  "intentDetectedData")
                                 (source-content-data :target-type
                                  source-content-data-details :member-name
                                  "sourceContentData")
                                 (generative-chunk-data :target-type
                                  generative-chunk-data-details :member-name
                                  "generativeChunkData"))
                                (:shape-name "DataDetails"))

(smithy/sdk/shapes:define-union data-reference common-lisp:nil
                                ((content-reference :target-type
                                  content-reference :member-name
                                  "contentReference")
                                 (generative-reference :target-type
                                  generative-reference :member-name
                                  "generativeReference"))
                                (:shape-name "DataReference"))

(smithy/sdk/shapes:define-structure data-summary common-lisp:nil
                                    ((reference :target-type data-reference
                                      :required common-lisp:t :member-name
                                      "reference")
                                     (details :target-type data-details
                                      :required common-lisp:t :member-name
                                      "details"))
                                    (:shape-name "DataSummary"))

(smithy/sdk/shapes:define-list data-summary-list :member data-summary)

(smithy/sdk/shapes:define-input deactivate-message-template-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (version-number :target-type version :required
                                  common-lisp:t :member-name "versionNumber"))
                                (:shape-name
                                 "DeactivateMessageTemplateRequest"))

(smithy/sdk/shapes:define-output deactivate-message-template-response
                                 common-lisp:nil
                                 ((message-template-arn :target-type
                                   arn-with-qualifier :required common-lisp:t
                                   :member-name "messageTemplateArn")
                                  (message-template-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "messageTemplateId")
                                  (version-number :target-type version
                                   :required common-lisp:t :member-name
                                   "versionNumber"))
                                 (:shape-name
                                  "DeactivateMessageTemplateResponse"))

(smithy/sdk/shapes:define-input delete-aiagent-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t))
                                (:shape-name "DeleteAIAgentRequest"))

(smithy/sdk/shapes:define-output delete-aiagent-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAIAgentResponse"))

(smithy/sdk/shapes:define-input delete-aiagent-version-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t)
                                 (version-number :target-type version :required
                                  common-lisp:t :member-name "versionNumber"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAIAgentVersionRequest"))

(smithy/sdk/shapes:define-output delete-aiagent-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAIAgentVersionResponse"))

(smithy/sdk/shapes:define-input delete-aiguardrail-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t))
                                (:shape-name "DeleteAIGuardrailRequest"))

(smithy/sdk/shapes:define-output delete-aiguardrail-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAIGuardrailResponse"))

(smithy/sdk/shapes:define-input delete-aiguardrail-version-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t)
                                 (version-number :target-type version :required
                                  common-lisp:t :member-name "versionNumber"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAIGuardrailVersionRequest"))

(smithy/sdk/shapes:define-output delete-aiguardrail-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAIGuardrailVersionResponse"))

(smithy/sdk/shapes:define-input delete-aiprompt-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t))
                                (:shape-name "DeleteAIPromptRequest"))

(smithy/sdk/shapes:define-output delete-aiprompt-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAIPromptResponse"))

(smithy/sdk/shapes:define-input delete-aiprompt-version-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t)
                                 (version-number :target-type version :required
                                  common-lisp:t :member-name "versionNumber"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAIPromptVersionRequest"))

(smithy/sdk/shapes:define-output delete-aiprompt-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAIPromptVersionResponse"))

(smithy/sdk/shapes:define-input delete-assistant-association-request
                                common-lisp:nil
                                ((assistant-association-id :target-type
                                  uuid-or-arn :required common-lisp:t
                                  :member-name "assistantAssociationId"
                                  :http-label common-lisp:t)
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteAssistantAssociationRequest"))

(smithy/sdk/shapes:define-structure delete-assistant-association-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteAssistantAssociationResponse"))

(smithy/sdk/shapes:define-input delete-assistant-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t))
                                (:shape-name "DeleteAssistantRequest"))

(smithy/sdk/shapes:define-structure delete-assistant-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteAssistantResponse"))

(smithy/sdk/shapes:define-input delete-content-association-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (content-association-id :target-type
                                  uuid-or-arn :required common-lisp:t
                                  :member-name "contentAssociationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteContentAssociationRequest"))

(smithy/sdk/shapes:define-output delete-content-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteContentAssociationResponse"))

(smithy/sdk/shapes:define-input delete-content-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteContentRequest"))

(smithy/sdk/shapes:define-structure delete-content-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteContentResponse"))

(smithy/sdk/shapes:define-input delete-import-job-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (import-job-id :target-type uuid :required
                                  common-lisp:t :member-name "importJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteImportJobRequest"))

(smithy/sdk/shapes:define-output delete-import-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteImportJobResponse"))

(smithy/sdk/shapes:define-input delete-knowledge-base-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "DeleteKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-structure delete-knowledge-base-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input delete-message-template-attachment-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (attachment-id :target-type uuid :required
                                  common-lisp:t :member-name "attachmentId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteMessageTemplateAttachmentRequest"))

(smithy/sdk/shapes:define-output delete-message-template-attachment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMessageTemplateAttachmentResponse"))

(smithy/sdk/shapes:define-input delete-message-template-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMessageTemplateRequest"))

(smithy/sdk/shapes:define-output delete-message-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteMessageTemplateResponse"))

(smithy/sdk/shapes:define-input delete-quick-response-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (quick-response-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "quickResponseId" :http-label common-lisp:t))
                                (:shape-name "DeleteQuickResponseRequest"))

(smithy/sdk/shapes:define-output delete-quick-response-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteQuickResponseResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((content-reference :target-type
                                      content-reference :required common-lisp:t
                                      :member-name "contentReference")
                                     (title :target-type document-text
                                      :member-name "title")
                                     (excerpt :target-type document-text
                                      :member-name "excerpt"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-structure document-text common-lisp:nil
                                    ((text :target-type sensitive-string
                                      :member-name "text")
                                     (highlights :target-type highlights
                                      :member-name "highlights"))
                                    (:shape-name "DocumentText"))

(smithy/sdk/shapes:define-structure email-header common-lisp:nil
                                    ((name :target-type email-header-key
                                      :member-name "name")
                                     (value :target-type email-header-value
                                      :member-name "value"))
                                    (:shape-name "EmailHeader"))

(smithy/sdk/shapes:define-type email-header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-header-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-headers :member email-header)

(smithy/sdk/shapes:define-structure email-message-template-content
                                    common-lisp:nil
                                    ((subject :target-type
                                      non-empty-unlimited-string :member-name
                                      "subject")
                                     (body :target-type
                                      email-message-template-content-body
                                      :member-name "body")
                                     (headers :target-type email-headers
                                      :member-name "headers"))
                                    (:shape-name "EmailMessageTemplateContent"))

(smithy/sdk/shapes:define-structure email-message-template-content-body
                                    common-lisp:nil
                                    ((plain-text :target-type
                                      message-template-body-content-provider
                                      :member-name "plainText")
                                     (html :target-type
                                      message-template-body-content-provider
                                      :member-name "html"))
                                    (:shape-name
                                     "EmailMessageTemplateContentBody"))

(smithy/sdk/shapes:define-structure extended-message-template-data
                                    common-lisp:nil
                                    ((message-template-arn :target-type
                                      arn-with-qualifier :required
                                      common-lisp:t :member-name
                                      "messageTemplateArn")
                                     (message-template-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "messageTemplateId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (channel-subtype :target-type
                                      channel-subtype :required common-lisp:t
                                      :member-name "channelSubtype")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "date-time")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "date-time")
                                     (last-modified-by :target-type generic-arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy")
                                     (content :target-type
                                      message-template-content-provider
                                      :required common-lisp:t :member-name
                                      "content")
                                     (description :target-type description
                                      :member-name "description")
                                     (language :target-type language-code
                                      :member-name "language")
                                     (grouping-configuration :target-type
                                      grouping-configuration :member-name
                                      "groupingConfiguration")
                                     (default-attributes :target-type
                                      message-template-attributes :member-name
                                      "defaultAttributes")
                                     (attribute-types :target-type
                                      message-template-attribute-type-list
                                      :member-name "attributeTypes")
                                     (attachments :target-type
                                      message-template-attachment-list
                                      :member-name "attachments")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isActive")
                                     (version-number :target-type version
                                      :member-name "versionNumber")
                                     (message-template-content-sha256
                                      :target-type
                                      message-template-content-sha256 :required
                                      common-lisp:t :member-name
                                      "messageTemplateContentSha256")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ExtendedMessageTemplateData"))

(smithy/sdk/shapes:define-type external-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure external-source-configuration
                                    common-lisp:nil
                                    ((source :target-type external-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (configuration :target-type configuration
                                      :required common-lisp:t :member-name
                                      "configuration"))
                                    (:shape-name "ExternalSourceConfiguration"))

(smithy/sdk/shapes:define-list failure-reason :member non-empty-string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((field :target-type filter-field :required
                                      common-lisp:t :member-name "field")
                                     (operator :target-type filter-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (value :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-operator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fixed-size-chunking-configuration
                                    common-lisp:nil
                                    ((max-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "maxTokens")
                                     (overlap-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "overlapPercentage"))
                                    (:shape-name
                                     "FixedSizeChunkingConfiguration"))

(smithy/sdk/shapes:define-structure generative-chunk-data-details
                                    common-lisp:nil
                                    ((completion :target-type sensitive-string
                                      :member-name "completion")
                                     (references :target-type data-summary-list
                                      :member-name "references")
                                     (next-chunk-token :target-type next-token
                                      :member-name "nextChunkToken"))
                                    (:shape-name "GenerativeChunkDataDetails"))

(smithy/sdk/shapes:define-structure generative-content-feedback-data
                                    common-lisp:nil
                                    ((relevance :target-type relevance
                                      :required common-lisp:t :member-name
                                      "relevance"))
                                    (:shape-name
                                     "GenerativeContentFeedbackData"))

(smithy/sdk/shapes:define-structure generative-data-details common-lisp:nil
                                    ((completion :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "completion")
                                     (references :target-type data-summary-list
                                      :required common-lisp:t :member-name
                                      "references")
                                     (ranking-data :target-type ranking-data
                                      :required common-lisp:t :member-name
                                      "rankingData"))
                                    (:shape-name "GenerativeDataDetails"))

(smithy/sdk/shapes:define-structure generative-reference common-lisp:nil
                                    ((model-id :target-type llm-model-id
                                      :member-name "modelId")
                                     (generation-id :target-type uuid
                                      :member-name "generationId"))
                                    (:shape-name "GenerativeReference"))

(smithy/sdk/shapes:define-type generic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-aiagent-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t))
                                (:shape-name "GetAIAgentRequest"))

(smithy/sdk/shapes:define-output get-aiagent-response common-lisp:nil
                                 ((ai-agent :target-type aiagent-data
                                   :member-name "aiAgent")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name "GetAIAgentResponse"))

(smithy/sdk/shapes:define-input get-aiguardrail-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t))
                                (:shape-name "GetAIGuardrailRequest"))

(smithy/sdk/shapes:define-output get-aiguardrail-response common-lisp:nil
                                 ((ai-guardrail :target-type aiguardrail-data
                                   :member-name "aiGuardrail")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name "GetAIGuardrailResponse"))

(smithy/sdk/shapes:define-input get-aiprompt-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t))
                                (:shape-name "GetAIPromptRequest"))

(smithy/sdk/shapes:define-output get-aiprompt-response common-lisp:nil
                                 ((ai-prompt :target-type aiprompt-data
                                   :member-name "aiPrompt")
                                  (version-number :target-type version
                                   :member-name "versionNumber"))
                                 (:shape-name "GetAIPromptResponse"))

(smithy/sdk/shapes:define-input get-assistant-association-request
                                common-lisp:nil
                                ((assistant-association-id :target-type
                                  uuid-or-arn :required common-lisp:t
                                  :member-name "assistantAssociationId"
                                  :http-label common-lisp:t)
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t))
                                (:shape-name "GetAssistantAssociationRequest"))

(smithy/sdk/shapes:define-structure get-assistant-association-response
                                    common-lisp:nil
                                    ((assistant-association :target-type
                                      assistant-association-data :member-name
                                      "assistantAssociation"))
                                    (:shape-name
                                     "GetAssistantAssociationResponse"))

(smithy/sdk/shapes:define-input get-assistant-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t))
                                (:shape-name "GetAssistantRequest"))

(smithy/sdk/shapes:define-structure get-assistant-response common-lisp:nil
                                    ((assistant :target-type assistant-data
                                      :member-name "assistant"))
                                    (:shape-name "GetAssistantResponse"))

(smithy/sdk/shapes:define-input get-content-association-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (content-association-id :target-type
                                  uuid-or-arn :required common-lisp:t
                                  :member-name "contentAssociationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetContentAssociationRequest"))

(smithy/sdk/shapes:define-output get-content-association-response
                                 common-lisp:nil
                                 ((content-association :target-type
                                   content-association-data :member-name
                                   "contentAssociation"))
                                 (:shape-name "GetContentAssociationResponse"))

(smithy/sdk/shapes:define-input get-content-request common-lisp:nil
                                ((content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetContentRequest"))

(smithy/sdk/shapes:define-structure get-content-response common-lisp:nil
                                    ((content :target-type content-data
                                      :member-name "content"))
                                    (:shape-name "GetContentResponse"))

(smithy/sdk/shapes:define-input get-content-summary-request common-lisp:nil
                                ((content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetContentSummaryRequest"))

(smithy/sdk/shapes:define-structure get-content-summary-response
                                    common-lisp:nil
                                    ((content-summary :target-type
                                      content-summary :member-name
                                      "contentSummary"))
                                    (:shape-name "GetContentSummaryResponse"))

(smithy/sdk/shapes:define-input get-import-job-request common-lisp:nil
                                ((import-job-id :target-type uuid :required
                                  common-lisp:t :member-name "importJobId"
                                  :http-label common-lisp:t)
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetImportJobRequest"))

(smithy/sdk/shapes:define-output get-import-job-response common-lisp:nil
                                 ((import-job :target-type import-job-data
                                   :member-name "importJob"))
                                 (:shape-name "GetImportJobResponse"))

(smithy/sdk/shapes:define-input get-knowledge-base-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-structure get-knowledge-base-response common-lisp:nil
                                    ((knowledge-base :target-type
                                      knowledge-base-data :member-name
                                      "knowledgeBase"))
                                    (:shape-name "GetKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input get-message-template-request common-lisp:nil
                                ((message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetMessageTemplateRequest"))

(smithy/sdk/shapes:define-output get-message-template-response common-lisp:nil
                                 ((message-template :target-type
                                   extended-message-template-data :member-name
                                   "messageTemplate"))
                                 (:shape-name "GetMessageTemplateResponse"))

(smithy/sdk/shapes:define-input get-next-message-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (next-message-token :target-type next-token
                                  :required common-lisp:t :member-name
                                  "nextMessageToken" :http-query
                                  "nextMessageToken"))
                                (:shape-name "GetNextMessageRequest"))

(smithy/sdk/shapes:define-output get-next-message-response common-lisp:nil
                                 ((type :target-type message-type :required
                                   common-lisp:t :member-name "type")
                                  (response :target-type message-output
                                   :required common-lisp:t :member-name
                                   "response")
                                  (request-message-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "requestMessageId")
                                  (conversation-state :target-type
                                   conversation-state :required common-lisp:t
                                   :member-name "conversationState")
                                  (next-message-token :target-type next-token
                                   :member-name "nextMessageToken")
                                  (conversation-session-data :target-type
                                   runtime-session-data-list :member-name
                                   "conversationSessionData"))
                                 (:shape-name "GetNextMessageResponse"))

(smithy/sdk/shapes:define-input get-quick-response-request common-lisp:nil
                                ((quick-response-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "quickResponseId" :http-label common-lisp:t)
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "GetQuickResponseRequest"))

(smithy/sdk/shapes:define-output get-quick-response-response common-lisp:nil
                                 ((quick-response :target-type
                                   quick-response-data :member-name
                                   "quickResponse"))
                                 (:shape-name "GetQuickResponseResponse"))

(smithy/sdk/shapes:define-input get-recommendations-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (wait-time-seconds :target-type
                                  wait-time-seconds :member-name
                                  "waitTimeSeconds" :http-query
                                  "waitTimeSeconds")
                                 (next-chunk-token :target-type next-token
                                  :member-name "nextChunkToken" :http-query
                                  "nextChunkToken"))
                                (:shape-name "GetRecommendationsRequest"))

(smithy/sdk/shapes:define-structure get-recommendations-response
                                    common-lisp:nil
                                    ((recommendations :target-type
                                      recommendation-list :required
                                      common-lisp:t :member-name
                                      "recommendations")
                                     (triggers :target-type
                                      recommendation-trigger-list :member-name
                                      "triggers"))
                                    (:shape-name "GetRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-structure get-session-response common-lisp:nil
                                    ((session :target-type session-data
                                      :member-name "session"))
                                    (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-structure grouping-configuration common-lisp:nil
                                    ((criteria :target-type grouping-criteria
                                      :member-name "criteria")
                                     (values :target-type grouping-values
                                      :member-name "values"))
                                    (:shape-name "GroupingConfiguration"))

(smithy/sdk/shapes:define-type grouping-criteria smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grouping-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list grouping-values :member grouping-value)

(smithy/sdk/shapes:define-structure guardrail-content-filter-config
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-content-filter-type :required
                                      common-lisp:t :member-name "type")
                                     (input-strength :target-type
                                      guardrail-filter-strength :required
                                      common-lisp:t :member-name
                                      "inputStrength")
                                     (output-strength :target-type
                                      guardrail-filter-strength :required
                                      common-lisp:t :member-name
                                      "outputStrength"))
                                    (:shape-name
                                     "GuardrailContentFilterConfig"))

(smithy/sdk/shapes:define-type guardrail-content-filter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-content-filters-config :member
                               guardrail-content-filter-config)

(smithy/sdk/shapes:define-structure
 guardrail-contextual-grounding-filter-config common-lisp:nil
 ((type :target-type guardrail-contextual-grounding-filter-type :required
   common-lisp:t :member-name "type")
  (threshold :target-type guardrail-contextual-grounding-filter-threshold
   :required common-lisp:t :member-name "threshold"))
 (:shape-name "GuardrailContextualGroundingFilterConfig"))

(smithy/sdk/shapes:define-type guardrail-contextual-grounding-filter-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type guardrail-contextual-grounding-filter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-contextual-grounding-filters-config
                               :member
                               guardrail-contextual-grounding-filter-config)

(smithy/sdk/shapes:define-type guardrail-filter-strength
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-managed-word-lists-config :member
                               guardrail-managed-words-config)

(smithy/sdk/shapes:define-structure guardrail-managed-words-config
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-managed-words-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "GuardrailManagedWordsConfig"))

(smithy/sdk/shapes:define-type guardrail-managed-words-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-pii-entities-config :member
                               guardrail-pii-entity-config)

(smithy/sdk/shapes:define-structure guardrail-pii-entity-config common-lisp:nil
                                    ((type :target-type
                                      guardrail-pii-entity-type :required
                                      common-lisp:t :member-name "type")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action"))
                                    (:shape-name "GuardrailPiiEntityConfig"))

(smithy/sdk/shapes:define-type guardrail-pii-entity-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-regex-config common-lisp:nil
                                    ((name :target-type guardrail-regex-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      guardrail-regex-description :member-name
                                      "description")
                                     (pattern :target-type
                                      guardrail-regex-pattern :required
                                      common-lisp:t :member-name "pattern")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action"))
                                    (:shape-name "GuardrailRegexConfig"))

(smithy/sdk/shapes:define-type guardrail-regex-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-regex-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-regex-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-regexes-config :member
                               guardrail-regex-config)

(smithy/sdk/shapes:define-type guardrail-sensitive-information-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-topic-config common-lisp:nil
                                    ((name :target-type guardrail-topic-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (definition :target-type
                                      guardrail-topic-definition :required
                                      common-lisp:t :member-name "definition")
                                     (examples :target-type
                                      guardrail-topic-examples :member-name
                                      "examples")
                                     (type :target-type guardrail-topic-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "GuardrailTopicConfig"))

(smithy/sdk/shapes:define-type guardrail-topic-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-topic-example
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-topic-examples :member
                               guardrail-topic-example)

(smithy/sdk/shapes:define-type guardrail-topic-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-topic-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-topics-config :member
                               guardrail-topic-config)

(smithy/sdk/shapes:define-structure guardrail-word-config common-lisp:nil
                                    ((text :target-type guardrail-word-text
                                      :required common-lisp:t :member-name
                                      "text"))
                                    (:shape-name "GuardrailWordConfig"))

(smithy/sdk/shapes:define-type guardrail-word-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-words-config :member
                               guardrail-word-config)

(smithy/sdk/shapes:define-map headers :key non-empty-string :value
                              non-empty-string)

(smithy/sdk/shapes:define-structure hierarchical-chunking-configuration
                                    common-lisp:nil
                                    ((level-configurations :target-type
                                      hierarchical-chunking-level-configurations
                                      :required common-lisp:t :member-name
                                      "levelConfigurations")
                                     (overlap-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "overlapTokens"))
                                    (:shape-name
                                     "HierarchicalChunkingConfiguration"))

(smithy/sdk/shapes:define-structure hierarchical-chunking-level-configuration
                                    common-lisp:nil
                                    ((max-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "maxTokens"))
                                    (:shape-name
                                     "HierarchicalChunkingLevelConfiguration"))

(smithy/sdk/shapes:define-list hierarchical-chunking-level-configurations
                               :member
                               hierarchical-chunking-level-configuration)

(smithy/sdk/shapes:define-structure highlight common-lisp:nil
                                    ((begin-offset-inclusive :target-type
                                      highlight-offset :member-name
                                      "beginOffsetInclusive")
                                     (end-offset-exclusive :target-type
                                      highlight-offset :member-name
                                      "endOffsetExclusive"))
                                    (:shape-name "Highlight"))

(smithy/sdk/shapes:define-type highlight-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list highlights :member highlight)

(smithy/sdk/shapes:define-structure import-job-data common-lisp:nil
                                    ((import-job-id :target-type uuid :required
                                      common-lisp:t :member-name "importJobId")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (upload-id :target-type upload-id
                                      :required common-lisp:t :member-name
                                      "uploadId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (import-job-type :target-type
                                      import-job-type :required common-lisp:t
                                      :member-name "importJobType")
                                     (status :target-type import-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (failed-record-report :target-type url
                                      :member-name "failedRecordReport")
                                     (url-expiry :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "urlExpiry" :timestamp-format
                                      "epoch-seconds")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "epoch-seconds")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "epoch-seconds")
                                     (metadata :target-type content-metadata
                                      :member-name "metadata")
                                     (external-source-configuration
                                      :target-type
                                      external-source-configuration
                                      :member-name
                                      "externalSourceConfiguration"))
                                    (:shape-name "ImportJobData"))

(smithy/sdk/shapes:define-list import-job-list :member import-job-summary)

(smithy/sdk/shapes:define-type import-job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-job-summary common-lisp:nil
                                    ((import-job-id :target-type uuid :required
                                      common-lisp:t :member-name "importJobId")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (upload-id :target-type upload-id
                                      :required common-lisp:t :member-name
                                      "uploadId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (import-job-type :target-type
                                      import-job-type :required common-lisp:t
                                      :member-name "importJobType")
                                     (status :target-type import-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "epoch-seconds")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "epoch-seconds")
                                     (metadata :target-type content-metadata
                                      :member-name "metadata")
                                     (external-source-configuration
                                      :target-type
                                      external-source-configuration
                                      :member-name
                                      "externalSourceConfiguration"))
                                    (:shape-name "ImportJobSummary"))

(smithy/sdk/shapes:define-type import-job-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure intent-detected-data-details
                                    common-lisp:nil
                                    ((intent :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "intent")
                                     (intent-id :target-type uuid :required
                                      common-lisp:t :member-name "intentId"))
                                    (:shape-name "IntentDetectedDataDetails"))

(smithy/sdk/shapes:define-structure intent-input-data common-lisp:nil
                                    ((intent-id :target-type uuid :required
                                      common-lisp:t :member-name "intentId"))
                                    (:shape-name "IntentInputData"))

common-lisp:nil

(smithy/sdk/shapes:define-structure
 knowledge-base-association-configuration-data common-lisp:nil
 ((content-tag-filter :target-type tag-filter :member-name "contentTagFilter")
  (max-results :target-type max-results :member-name "maxResults")
  (override-knowledge-base-search-type :target-type knowledge-base-search-type
   :member-name "overrideKnowledgeBaseSearchType"))
 (:shape-name "KnowledgeBaseAssociationConfigurationData"))

(smithy/sdk/shapes:define-structure knowledge-base-association-data
                                    common-lisp:nil
                                    ((knowledge-base-id :target-type uuid
                                      :member-name "knowledgeBaseId")
                                     (knowledge-base-arn :target-type arn
                                      :member-name "knowledgeBaseArn"))
                                    (:shape-name
                                     "KnowledgeBaseAssociationData"))

(smithy/sdk/shapes:define-structure knowledge-base-data common-lisp:nil
                                    ((knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (knowledge-base-type :target-type
                                      knowledge-base-type :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseType")
                                     (status :target-type knowledge-base-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (last-content-modification-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "lastContentModificationTime"
                                      :timestamp-format "epoch-seconds")
                                     (vector-ingestion-configuration
                                      :target-type
                                      vector-ingestion-configuration
                                      :member-name
                                      "vectorIngestionConfiguration")
                                     (source-configuration :target-type
                                      source-configuration :member-name
                                      "sourceConfiguration")
                                     (rendering-configuration :target-type
                                      rendering-configuration :member-name
                                      "renderingConfiguration")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (ingestion-status :target-type sync-status
                                      :member-name "ingestionStatus")
                                     (ingestion-failure-reasons :target-type
                                      failure-reason :member-name
                                      "ingestionFailureReasons"))
                                    (:shape-name "KnowledgeBaseData"))

(smithy/sdk/shapes:define-list knowledge-base-list :member
                               knowledge-base-summary)

(smithy/sdk/shapes:define-type knowledge-base-search-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type knowledge-base-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-summary common-lisp:nil
                                    ((knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (knowledge-base-type :target-type
                                      knowledge-base-type :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseType")
                                     (status :target-type knowledge-base-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (source-configuration :target-type
                                      source-configuration :member-name
                                      "sourceConfiguration")
                                     (vector-ingestion-configuration
                                      :target-type
                                      vector-ingestion-configuration
                                      :member-name
                                      "vectorIngestionConfiguration")
                                     (rendering-configuration :target-type
                                      rendering-configuration :member-name
                                      "renderingConfiguration")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "KnowledgeBaseSummary"))

(smithy/sdk/shapes:define-type knowledge-base-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-aiagent-versions-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (origin :target-type origin :member-name
                                  "origin" :http-query "origin"))
                                (:shape-name "ListAIAgentVersionsRequest"))

(smithy/sdk/shapes:define-output list-aiagent-versions-response common-lisp:nil
                                 ((ai-agent-version-summaries :target-type
                                   aiagent-version-summaries-list :required
                                   common-lisp:t :member-name
                                   "aiAgentVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAIAgentVersionsResponse"))

(smithy/sdk/shapes:define-input list-aiagents-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (origin :target-type origin :member-name
                                  "origin" :http-query "origin"))
                                (:shape-name "ListAIAgentsRequest"))

(smithy/sdk/shapes:define-output list-aiagents-response common-lisp:nil
                                 ((ai-agent-summaries :target-type
                                   aiagent-summary-list :required common-lisp:t
                                   :member-name "aiAgentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAIAgentsResponse"))

(smithy/sdk/shapes:define-input list-aiguardrail-versions-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAIGuardrailVersionsRequest"))

(smithy/sdk/shapes:define-output list-aiguardrail-versions-response
                                 common-lisp:nil
                                 ((ai-guardrail-version-summaries :target-type
                                   aiguardrail-version-summaries-list :required
                                   common-lisp:t :member-name
                                   "aiGuardrailVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAIGuardrailVersionsResponse"))

(smithy/sdk/shapes:define-input list-aiguardrails-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAIGuardrailsRequest"))

(smithy/sdk/shapes:define-output list-aiguardrails-response common-lisp:nil
                                 ((ai-guardrail-summaries :target-type
                                   aiguardrail-summaries-list :required
                                   common-lisp:t :member-name
                                   "aiGuardrailSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAIGuardrailsResponse"))

(smithy/sdk/shapes:define-input list-aiprompt-versions-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (origin :target-type origin :member-name
                                  "origin" :http-query "origin"))
                                (:shape-name "ListAIPromptVersionsRequest"))

(smithy/sdk/shapes:define-output list-aiprompt-versions-response
                                 common-lisp:nil
                                 ((ai-prompt-version-summaries :target-type
                                   aiprompt-version-summaries-list :required
                                   common-lisp:t :member-name
                                   "aiPromptVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAIPromptVersionsResponse"))

(smithy/sdk/shapes:define-input list-aiprompts-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (origin :target-type origin :member-name
                                  "origin" :http-query "origin"))
                                (:shape-name "ListAIPromptsRequest"))

(smithy/sdk/shapes:define-output list-aiprompts-response common-lisp:nil
                                 ((ai-prompt-summaries :target-type
                                   aiprompt-summary-list :required
                                   common-lisp:t :member-name
                                   "aiPromptSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAIPromptsResponse"))

(smithy/sdk/shapes:define-input list-assistant-associations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t))
                                (:shape-name
                                 "ListAssistantAssociationsRequest"))

(smithy/sdk/shapes:define-structure list-assistant-associations-response
                                    common-lisp:nil
                                    ((assistant-association-summaries
                                      :target-type
                                      assistant-association-summary-list
                                      :required common-lisp:t :member-name
                                      "assistantAssociationSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAssistantAssociationsResponse"))

(smithy/sdk/shapes:define-input list-assistants-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssistantsRequest"))

(smithy/sdk/shapes:define-structure list-assistants-response common-lisp:nil
                                    ((assistant-summaries :target-type
                                      assistant-list :required common-lisp:t
                                      :member-name "assistantSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAssistantsResponse"))

(smithy/sdk/shapes:define-input list-content-associations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListContentAssociationsRequest"))

(smithy/sdk/shapes:define-output list-content-associations-response
                                 common-lisp:nil
                                 ((content-association-summaries :target-type
                                   content-association-summary-list :required
                                   common-lisp:t :member-name
                                   "contentAssociationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListContentAssociationsResponse"))

(smithy/sdk/shapes:define-input list-contents-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "ListContentsRequest"))

(smithy/sdk/shapes:define-structure list-contents-response common-lisp:nil
                                    ((content-summaries :target-type
                                      content-summary-list :required
                                      common-lisp:t :member-name
                                      "contentSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListContentsResponse"))

(smithy/sdk/shapes:define-input list-import-jobs-request common-lisp:nil
                                ((next-token :target-type non-empty-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "ListImportJobsRequest"))

(smithy/sdk/shapes:define-output list-import-jobs-response common-lisp:nil
                                 ((import-job-summaries :target-type
                                   import-job-list :required common-lisp:t
                                   :member-name "importJobSummaries")
                                  (next-token :target-type non-empty-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListImportJobsResponse"))

(smithy/sdk/shapes:define-input list-knowledge-bases-request common-lisp:nil
                                ((next-token :target-type non-empty-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKnowledgeBasesRequest"))

(smithy/sdk/shapes:define-structure list-knowledge-bases-response
                                    common-lisp:nil
                                    ((knowledge-base-summaries :target-type
                                      knowledge-base-list :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseSummaries")
                                     (next-token :target-type non-empty-string
                                      :member-name "nextToken"))
                                    (:shape-name "ListKnowledgeBasesResponse"))

(smithy/sdk/shapes:define-input list-message-template-versions-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListMessageTemplateVersionsRequest"))

(smithy/sdk/shapes:define-output list-message-template-versions-response
                                 common-lisp:nil
                                 ((message-template-version-summaries
                                   :target-type
                                   message-template-version-summary-list
                                   :required common-lisp:t :member-name
                                   "messageTemplateVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListMessageTemplateVersionsResponse"))

(smithy/sdk/shapes:define-input list-message-templates-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "ListMessageTemplatesRequest"))

(smithy/sdk/shapes:define-output list-message-templates-response
                                 common-lisp:nil
                                 ((message-template-summaries :target-type
                                   message-template-summary-list :required
                                   common-lisp:t :member-name
                                   "messageTemplateSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMessageTemplatesResponse"))

(smithy/sdk/shapes:define-input list-messages-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMessagesRequest"))

(smithy/sdk/shapes:define-output list-messages-response common-lisp:nil
                                 ((messages :target-type message-list :required
                                   common-lisp:t :member-name "messages")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMessagesResponse"))

(smithy/sdk/shapes:define-input list-quick-responses-request common-lisp:nil
                                ((next-token :target-type non-empty-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name "ListQuickResponsesRequest"))

(smithy/sdk/shapes:define-output list-quick-responses-response common-lisp:nil
                                 ((quick-response-summaries :target-type
                                   quick-response-summary-list :required
                                   common-lisp:t :member-name
                                   "quickResponseSummaries")
                                  (next-token :target-type non-empty-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListQuickResponsesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type llm-model-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union managed-source-configuration common-lisp:nil
                                ((web-crawler-configuration :target-type
                                  web-crawler-configuration :member-name
                                  "webCrawlerConfiguration"))
                                (:shape-name "ManagedSourceConfiguration"))

(smithy/sdk/shapes:define-structure manual-search-aiagent-configuration
                                    common-lisp:nil
                                    ((answer-generation-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "answerGenerationAIPromptId")
                                     (answer-generation-aiguardrail-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "answerGenerationAIGuardrailId")
                                     (association-configurations :target-type
                                      association-configuration-list
                                      :member-name "associationConfigurations")
                                     (locale :target-type non-empty-string
                                      :member-name "locale"))
                                    (:shape-name
                                     "ManualSearchAIAgentConfiguration"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message-configuration common-lisp:nil
                                    ((generate-filler-message :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "generateFillerMessage"))
                                    (:shape-name "MessageConfiguration"))

(smithy/sdk/shapes:define-union message-data common-lisp:nil
                                ((text :target-type text-message :member-name
                                  "text"))
                                (:shape-name "MessageData"))

(smithy/sdk/shapes:define-structure message-input common-lisp:nil
                                    ((value :target-type message-data :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "MessageInput"))

(smithy/sdk/shapes:define-list message-list :member message-output)

(smithy/sdk/shapes:define-structure message-output common-lisp:nil
                                    ((value :target-type message-data :required
                                      common-lisp:t :member-name "value")
                                     (message-id :target-type uuid :required
                                      common-lisp:t :member-name "messageId")
                                     (participant :target-type participant
                                      :required common-lisp:t :member-name
                                      "participant")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp"))
                                    (:shape-name "MessageOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-structure message-template-attachment common-lisp:nil
                                    ((content-disposition :target-type
                                      content-disposition :required
                                      common-lisp:t :member-name
                                      "contentDisposition")
                                     (name :target-type attachment-file-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (uploaded-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "uploadedTime" :timestamp-format
                                      "date-time")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (url-expiry :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "urlExpiry" :timestamp-format
                                      "date-time")
                                     (attachment-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "attachmentId"))
                                    (:shape-name "MessageTemplateAttachment"))

(smithy/sdk/shapes:define-list message-template-attachment-list :member
                               message-template-attachment)

(smithy/sdk/shapes:define-type message-template-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-template-attribute-key-list :member
                               message-template-attribute-key)

(smithy/sdk/shapes:define-type message-template-attribute-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-template-attribute-type-list :member
                               message-template-attribute-type)

(smithy/sdk/shapes:define-type message-template-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-template-attributes common-lisp:nil
                                    ((system-attributes :target-type
                                      system-attributes :member-name
                                      "systemAttributes")
                                     (agent-attributes :target-type
                                      agent-attributes :member-name
                                      "agentAttributes")
                                     (customer-profile-attributes :target-type
                                      customer-profile-attributes :member-name
                                      "customerProfileAttributes")
                                     (custom-attributes :target-type
                                      custom-attributes :member-name
                                      "customAttributes"))
                                    (:shape-name "MessageTemplateAttributes"))

(smithy/sdk/shapes:define-union message-template-body-content-provider
                                common-lisp:nil
                                ((content :target-type
                                  non-empty-unlimited-string :member-name
                                  "content"))
                                (:shape-name
                                 "MessageTemplateBodyContentProvider"))

(smithy/sdk/shapes:define-union message-template-content-provider
                                common-lisp:nil
                                ((email :target-type
                                  email-message-template-content :member-name
                                  "email")
                                 (sms :target-type smsmessage-template-content
                                  :member-name "sms"))
                                (:shape-name "MessageTemplateContentProvider"))

(smithy/sdk/shapes:define-type message-template-content-sha256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-template-data common-lisp:nil
                                    ((message-template-arn :target-type
                                      arn-with-qualifier :required
                                      common-lisp:t :member-name
                                      "messageTemplateArn")
                                     (message-template-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "messageTemplateId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (channel-subtype :target-type
                                      channel-subtype :required common-lisp:t
                                      :member-name "channelSubtype")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "date-time")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "date-time")
                                     (last-modified-by :target-type generic-arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy")
                                     (content :target-type
                                      message-template-content-provider
                                      :required common-lisp:t :member-name
                                      "content")
                                     (description :target-type description
                                      :member-name "description")
                                     (language :target-type language-code
                                      :member-name "language")
                                     (grouping-configuration :target-type
                                      grouping-configuration :member-name
                                      "groupingConfiguration")
                                     (default-attributes :target-type
                                      message-template-attributes :member-name
                                      "defaultAttributes")
                                     (attribute-types :target-type
                                      message-template-attribute-type-list
                                      :member-name "attributeTypes")
                                     (message-template-content-sha256
                                      :target-type
                                      message-template-content-sha256 :required
                                      common-lisp:t :member-name
                                      "messageTemplateContentSha256")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "MessageTemplateData"))

(smithy/sdk/shapes:define-structure message-template-filter-field
                                    common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      message-template-filter-value-list
                                      :member-name "values")
                                     (operator :target-type
                                      message-template-filter-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (include-no-existence :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeNoExistence"))
                                    (:shape-name "MessageTemplateFilterField"))

(smithy/sdk/shapes:define-list message-template-filter-field-list :member
                               message-template-filter-field)

(smithy/sdk/shapes:define-type message-template-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-template-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-template-filter-value-list :member
                               message-template-filter-value)

(smithy/sdk/shapes:define-structure message-template-order-field
                                    common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (order :target-type order :member-name
                                      "order"))
                                    (:shape-name "MessageTemplateOrderField"))

(smithy/sdk/shapes:define-structure message-template-query-field
                                    common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      message-template-query-value-list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      message-template-query-operator :required
                                      common-lisp:t :member-name "operator")
                                     (allow-fuzziness :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allowFuzziness")
                                     (priority :target-type priority
                                      :member-name "priority"))
                                    (:shape-name "MessageTemplateQueryField"))

(smithy/sdk/shapes:define-list message-template-query-field-list :member
                               message-template-query-field)

(smithy/sdk/shapes:define-type message-template-query-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-template-query-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-template-query-value-list :member
                               message-template-query-value)

(smithy/sdk/shapes:define-structure message-template-search-expression
                                    common-lisp:nil
                                    ((queries :target-type
                                      message-template-query-field-list
                                      :member-name "queries")
                                     (filters :target-type
                                      message-template-filter-field-list
                                      :member-name "filters")
                                     (order-on-field :target-type
                                      message-template-order-field :member-name
                                      "orderOnField"))
                                    (:shape-name
                                     "MessageTemplateSearchExpression"))

(smithy/sdk/shapes:define-structure message-template-search-result-data
                                    common-lisp:nil
                                    ((message-template-arn :target-type
                                      arn-with-qualifier :required
                                      common-lisp:t :member-name
                                      "messageTemplateArn")
                                     (message-template-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "messageTemplateId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (channel-subtype :target-type
                                      channel-subtype :required common-lisp:t
                                      :member-name "channelSubtype")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "date-time")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "date-time")
                                     (last-modified-by :target-type generic-arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isActive")
                                     (version-number :target-type version
                                      :member-name "versionNumber")
                                     (description :target-type description
                                      :member-name "description")
                                     (grouping-configuration :target-type
                                      grouping-configuration :member-name
                                      "groupingConfiguration")
                                     (language :target-type language-code
                                      :member-name "language")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "MessageTemplateSearchResultData"))

(smithy/sdk/shapes:define-list message-template-search-results-list :member
                               message-template-search-result-data)

(smithy/sdk/shapes:define-structure message-template-summary common-lisp:nil
                                    ((message-template-arn :target-type
                                      arn-with-qualifier :required
                                      common-lisp:t :member-name
                                      "messageTemplateArn")
                                     (message-template-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "messageTemplateId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (channel-subtype :target-type
                                      channel-subtype :required common-lisp:t
                                      :member-name "channelSubtype")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "date-time")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "date-time")
                                     (last-modified-by :target-type generic-arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy")
                                     (active-version-number :target-type
                                      version :member-name
                                      "activeVersionNumber")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "MessageTemplateSummary"))

(smithy/sdk/shapes:define-list message-template-summary-list :member
                               message-template-summary)

(smithy/sdk/shapes:define-structure message-template-version-summary
                                    common-lisp:nil
                                    ((message-template-arn :target-type
                                      arn-with-qualifier :required
                                      common-lisp:t :member-name
                                      "messageTemplateArn")
                                     (message-template-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "messageTemplateId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (channel-subtype :target-type
                                      channel-subtype :required common-lisp:t
                                      :member-name "channelSubtype")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isActive")
                                     (version-number :target-type version
                                      :required common-lisp:t :member-name
                                      "versionNumber"))
                                    (:shape-name
                                     "MessageTemplateVersionSummary"))

(smithy/sdk/shapes:define-list message-template-version-summary-list :member
                               message-template-version-summary)

(smithy/sdk/shapes:define-type message-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-sensitive-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-unlimited-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notify-recommendations-received-error
                                    common-lisp:nil
                                    ((recommendation-id :target-type
                                      recommendation-id :member-name
                                      "recommendationId")
                                     (message :target-type
                                      notify-recommendations-received-error-message
                                      :member-name "message"))
                                    (:shape-name
                                     "NotifyRecommendationsReceivedError"))

(smithy/sdk/shapes:define-list notify-recommendations-received-error-list
                               :member notify-recommendations-received-error)

(smithy/sdk/shapes:define-type notify-recommendations-received-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input notify-recommendations-received-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (recommendation-ids :target-type
                                  recommendation-id-list :required
                                  common-lisp:t :member-name
                                  "recommendationIds"))
                                (:shape-name
                                 "NotifyRecommendationsReceivedRequest"))

(smithy/sdk/shapes:define-structure notify-recommendations-received-response
                                    common-lisp:nil
                                    ((recommendation-ids :target-type
                                      recommendation-id-list :member-name
                                      "recommendationIds")
                                     (errors :target-type
                                      notify-recommendations-received-error-list
                                      :member-name "errors"))
                                    (:shape-name
                                     "NotifyRecommendationsReceivedResponse"))

(smithy/sdk/shapes:define-list object-fields-list :member non-empty-string)

(smithy/sdk/shapes:define-union or-condition common-lisp:nil
                                ((and-conditions :target-type and-conditions
                                  :member-name "andConditions")
                                 (tag-condition :target-type tag-condition
                                  :member-name "tagCondition"))
                                (:shape-name "OrCondition"))

(smithy/sdk/shapes:define-list or-conditions :member or-condition)

(smithy/sdk/shapes:define-type order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parsing-configuration common-lisp:nil
                                    ((parsing-strategy :target-type
                                      parsing-strategy :required common-lisp:t
                                      :member-name "parsingStrategy")
                                     (bedrock-foundation-model-configuration
                                      :target-type
                                      bedrock-foundation-model-configuration-for-parsing
                                      :member-name
                                      "bedrockFoundationModelConfiguration"))
                                    (:shape-name "ParsingConfiguration"))

(smithy/sdk/shapes:define-structure parsing-prompt common-lisp:nil
                                    ((parsing-prompt-text :target-type
                                      parsing-prompt-text :required
                                      common-lisp:t :member-name
                                      "parsingPromptText"))
                                    (:shape-name "ParsingPrompt"))

(smithy/sdk/shapes:define-type parsing-prompt-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parsing-strategy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412) (:base-class qconnect-error))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-feedback-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (target-id :target-type uuid :required
                                  common-lisp:t :member-name "targetId")
                                 (target-type :target-type target-type
                                  :required common-lisp:t :member-name
                                  "targetType")
                                 (content-feedback :target-type
                                  content-feedback-data :required common-lisp:t
                                  :member-name "contentFeedback"))
                                (:shape-name "PutFeedbackRequest"))

(smithy/sdk/shapes:define-output put-feedback-response common-lisp:nil
                                 ((assistant-id :target-type uuid :required
                                   common-lisp:t :member-name "assistantId")
                                  (assistant-arn :target-type uuid-or-arn
                                   :required common-lisp:t :member-name
                                   "assistantArn")
                                  (target-id :target-type uuid :required
                                   common-lisp:t :member-name "targetId")
                                  (target-type :target-type target-type
                                   :required common-lisp:t :member-name
                                   "targetType")
                                  (content-feedback :target-type
                                   content-feedback-data :required
                                   common-lisp:t :member-name
                                   "contentFeedback"))
                                 (:shape-name "PutFeedbackResponse"))

(smithy/sdk/shapes:define-input query-assistant-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (query-text :target-type query-text
                                  :member-name "queryText")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (session-id :target-type uuid-or-arn
                                  :member-name "sessionId")
                                 (query-condition :target-type
                                  query-condition-expression :member-name
                                  "queryCondition")
                                 (query-input-data :target-type
                                  query-input-data :member-name
                                  "queryInputData")
                                 (override-knowledge-base-search-type
                                  :target-type knowledge-base-search-type
                                  :member-name
                                  "overrideKnowledgeBaseSearchType"))
                                (:shape-name "QueryAssistantRequest"))

(smithy/sdk/shapes:define-structure query-assistant-response common-lisp:nil
                                    ((results :target-type query-results-list
                                      :required common-lisp:t :member-name
                                      "results")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "QueryAssistantResponse"))

(smithy/sdk/shapes:define-union query-condition common-lisp:nil
                                ((single :target-type query-condition-item
                                  :member-name "single"))
                                (:shape-name "QueryCondition"))

(smithy/sdk/shapes:define-type query-condition-comparison-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-condition-expression :member
                               query-condition)

(smithy/sdk/shapes:define-type query-condition-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-condition-item common-lisp:nil
                                    ((field :target-type
                                      query-condition-field-name :required
                                      common-lisp:t :member-name "field")
                                     (comparator :target-type
                                      query-condition-comparison-operator
                                      :required common-lisp:t :member-name
                                      "comparator")
                                     (value :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "QueryConditionItem"))

(smithy/sdk/shapes:define-union query-input-data common-lisp:nil
                                ((query-text-input-data :target-type
                                  query-text-input-data :member-name
                                  "queryTextInputData")
                                 (intent-input-data :target-type
                                  intent-input-data :member-name
                                  "intentInputData"))
                                (:shape-name "QueryInputData"))

(smithy/sdk/shapes:define-structure query-recommendation-trigger-data
                                    common-lisp:nil
                                    ((text :target-type query-text :member-name
                                      "text"))
                                    (:shape-name
                                     "QueryRecommendationTriggerData"))

(smithy/sdk/shapes:define-type query-result-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-results-list :member result-data)

(smithy/sdk/shapes:define-type query-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-text-input-data common-lisp:nil
                                    ((text :target-type query-text :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "QueryTextInputData"))

common-lisp:nil

(smithy/sdk/shapes:define-type quick-response-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union quick-response-content-provider common-lisp:nil
                                ((content :target-type quick-response-content
                                  :member-name "content"))
                                (:shape-name "QuickResponseContentProvider"))

(smithy/sdk/shapes:define-structure quick-response-contents common-lisp:nil
                                    ((plain-text :target-type
                                      quick-response-content-provider
                                      :member-name "plainText")
                                     (markdown :target-type
                                      quick-response-content-provider
                                      :member-name "markdown"))
                                    (:shape-name "QuickResponseContents"))

(smithy/sdk/shapes:define-structure quick-response-data common-lisp:nil
                                    ((quick-response-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "quickResponseArn")
                                     (quick-response-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "quickResponseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type quick-response-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content-type :target-type
                                      quick-response-type :required
                                      common-lisp:t :member-name "contentType")
                                     (status :target-type quick-response-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "epoch-seconds")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "epoch-seconds")
                                     (contents :target-type
                                      quick-response-contents :member-name
                                      "contents")
                                     (description :target-type
                                      quick-response-description :member-name
                                      "description")
                                     (grouping-configuration :target-type
                                      grouping-configuration :member-name
                                      "groupingConfiguration")
                                     (shortcut-key :target-type short-cut-key
                                      :member-name "shortcutKey")
                                     (last-modified-by :target-type generic-arn
                                      :member-name "lastModifiedBy")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isActive")
                                     (channels :target-type channels
                                      :member-name "channels")
                                     (language :target-type language-code
                                      :member-name "language")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "QuickResponseData"))

(smithy/sdk/shapes:define-union quick-response-data-provider common-lisp:nil
                                ((content :target-type quick-response-content
                                  :member-name "content"))
                                (:shape-name "QuickResponseDataProvider"))

(smithy/sdk/shapes:define-type quick-response-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quick-response-filter-field common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      quick-response-filter-value-list
                                      :member-name "values")
                                     (operator :target-type
                                      quick-response-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (include-no-existence :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeNoExistence"))
                                    (:shape-name "QuickResponseFilterField"))

(smithy/sdk/shapes:define-list quick-response-filter-field-list :member
                               quick-response-filter-field)

(smithy/sdk/shapes:define-type quick-response-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quick-response-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list quick-response-filter-value-list :member
                               quick-response-filter-value)

(smithy/sdk/shapes:define-type quick-response-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quick-response-order-field common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (order :target-type order :member-name
                                      "order"))
                                    (:shape-name "QuickResponseOrderField"))

(smithy/sdk/shapes:define-structure quick-response-query-field common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      quick-response-query-value-list :required
                                      common-lisp:t :member-name "values")
                                     (operator :target-type
                                      quick-response-query-operator :required
                                      common-lisp:t :member-name "operator")
                                     (allow-fuzziness :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allowFuzziness")
                                     (priority :target-type priority
                                      :member-name "priority"))
                                    (:shape-name "QuickResponseQueryField"))

(smithy/sdk/shapes:define-list quick-response-query-field-list :member
                               quick-response-query-field)

(smithy/sdk/shapes:define-type quick-response-query-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quick-response-query-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list quick-response-query-value-list :member
                               quick-response-query-value)

(smithy/sdk/shapes:define-structure quick-response-search-expression
                                    common-lisp:nil
                                    ((queries :target-type
                                      quick-response-query-field-list
                                      :member-name "queries")
                                     (filters :target-type
                                      quick-response-filter-field-list
                                      :member-name "filters")
                                     (order-on-field :target-type
                                      quick-response-order-field :member-name
                                      "orderOnField"))
                                    (:shape-name
                                     "QuickResponseSearchExpression"))

(smithy/sdk/shapes:define-structure quick-response-search-result-data
                                    common-lisp:nil
                                    ((quick-response-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "quickResponseArn")
                                     (quick-response-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "quickResponseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type quick-response-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content-type :target-type
                                      quick-response-type :required
                                      common-lisp:t :member-name "contentType")
                                     (status :target-type quick-response-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (contents :target-type
                                      quick-response-contents :required
                                      common-lisp:t :member-name "contents")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "epoch-seconds")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "epoch-seconds")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isActive")
                                     (description :target-type
                                      quick-response-description :member-name
                                      "description")
                                     (grouping-configuration :target-type
                                      grouping-configuration :member-name
                                      "groupingConfiguration")
                                     (shortcut-key :target-type short-cut-key
                                      :member-name "shortcutKey")
                                     (last-modified-by :target-type generic-arn
                                      :member-name "lastModifiedBy")
                                     (channels :target-type channels
                                      :member-name "channels")
                                     (language :target-type language-code
                                      :member-name "language")
                                     (attributes-not-interpolated :target-type
                                      contact-attribute-keys :member-name
                                      "attributesNotInterpolated")
                                     (attributes-interpolated :target-type
                                      contact-attribute-keys :member-name
                                      "attributesInterpolated")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "QuickResponseSearchResultData"))

(smithy/sdk/shapes:define-list quick-response-search-results-list :member
                               quick-response-search-result-data)

(smithy/sdk/shapes:define-type quick-response-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quick-response-summary common-lisp:nil
                                    ((quick-response-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "quickResponseArn")
                                     (quick-response-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "quickResponseId")
                                     (knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (knowledge-base-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type quick-response-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content-type :target-type
                                      quick-response-type :required
                                      common-lisp:t :member-name "contentType")
                                     (status :target-type quick-response-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "epoch-seconds")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime" :timestamp-format
                                      "epoch-seconds")
                                     (description :target-type
                                      quick-response-description :member-name
                                      "description")
                                     (last-modified-by :target-type generic-arn
                                      :member-name "lastModifiedBy")
                                     (is-active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isActive")
                                     (channels :target-type channels
                                      :member-name "channels")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "QuickResponseSummary"))

(smithy/sdk/shapes:define-list quick-response-summary-list :member
                               quick-response-summary)

(smithy/sdk/shapes:define-type quick-response-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ranking-data common-lisp:nil
                                    ((relevance-score :target-type
                                      relevance-score :member-name
                                      "relevanceScore")
                                     (relevance-level :target-type
                                      relevance-level :member-name
                                      "relevanceLevel"))
                                    (:shape-name "RankingData"))

(smithy/sdk/shapes:define-structure recommendation-data common-lisp:nil
                                    ((recommendation-id :target-type
                                      recommendation-id :required common-lisp:t
                                      :member-name "recommendationId")
                                     (document :target-type document
                                      :member-name "document")
                                     (relevance-score :target-type
                                      relevance-score :member-name
                                      "relevanceScore")
                                     (relevance-level :target-type
                                      relevance-level :member-name
                                      "relevanceLevel")
                                     (type :target-type recommendation-type
                                      :member-name "type")
                                     (data :target-type data-summary
                                      :member-name "data"))
                                    (:shape-name "RecommendationData"))

(smithy/sdk/shapes:define-type recommendation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-id-list :member recommendation-id)

(smithy/sdk/shapes:define-list recommendation-list :member recommendation-data)

(smithy/sdk/shapes:define-type recommendation-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation-trigger common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type
                                      recommendation-trigger-type :required
                                      common-lisp:t :member-name "type")
                                     (source :target-type
                                      recommendation-source-type :required
                                      common-lisp:t :member-name "source")
                                     (data :target-type
                                      recommendation-trigger-data :required
                                      common-lisp:t :member-name "data")
                                     (recommendation-ids :target-type
                                      recommendation-id-list :required
                                      common-lisp:t :member-name
                                      "recommendationIds"))
                                    (:shape-name "RecommendationTrigger"))

(smithy/sdk/shapes:define-union recommendation-trigger-data common-lisp:nil
                                ((query :target-type
                                  query-recommendation-trigger-data
                                  :member-name "query"))
                                (:shape-name "RecommendationTriggerData"))

(smithy/sdk/shapes:define-list recommendation-trigger-list :member
                               recommendation-trigger)

(smithy/sdk/shapes:define-type recommendation-trigger-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relevance smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relevance-level smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relevance-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input remove-assistant-aiagent-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-type :target-type aiagent-type
                                  :required common-lisp:t :member-name
                                  "aiAgentType" :http-query "aiAgentType"))
                                (:shape-name "RemoveAssistantAIAgentRequest"))

(smithy/sdk/shapes:define-output remove-assistant-aiagent-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveAssistantAIAgentResponse"))

(smithy/sdk/shapes:define-input remove-knowledge-base-template-uri-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t))
                                (:shape-name
                                 "RemoveKnowledgeBaseTemplateUriRequest"))

(smithy/sdk/shapes:define-structure remove-knowledge-base-template-uri-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RemoveKnowledgeBaseTemplateUriResponse"))

(smithy/sdk/shapes:define-input render-message-template-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (attributes :target-type
                                  message-template-attributes :required
                                  common-lisp:t :member-name "attributes"))
                                (:shape-name "RenderMessageTemplateRequest"))

(smithy/sdk/shapes:define-output render-message-template-response
                                 common-lisp:nil
                                 ((content :target-type
                                   message-template-content-provider :required
                                   common-lisp:t :member-name "content")
                                  (attributes-not-interpolated :target-type
                                   message-template-attribute-key-list
                                   :member-name "attributesNotInterpolated")
                                  (attachments :target-type
                                   message-template-attachment-list
                                   :member-name "attachments"))
                                 (:shape-name "RenderMessageTemplateResponse"))

(smithy/sdk/shapes:define-structure rendering-configuration common-lisp:nil
                                    ((template-uri :target-type uri
                                      :member-name "templateUri"))
                                    (:shape-name "RenderingConfiguration"))

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408) (:base-class qconnect-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class qconnect-error))

(smithy/sdk/shapes:define-structure result-data common-lisp:nil
                                    ((result-id :target-type uuid :required
                                      common-lisp:t :member-name "resultId")
                                     (document :target-type document
                                      :member-name "document")
                                     (relevance-score :target-type
                                      relevance-score :member-name
                                      "relevanceScore")
                                     (data :target-type data-summary
                                      :member-name "data")
                                     (type :target-type query-result-type
                                      :member-name "type"))
                                    (:shape-name "ResultData"))

(smithy/sdk/shapes:define-structure runtime-session-data common-lisp:nil
                                    ((key :target-type
                                      non-empty-sensitive-string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      runtime-session-data-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "RuntimeSessionData"))

(smithy/sdk/shapes:define-list runtime-session-data-list :member
                               runtime-session-data)

(smithy/sdk/shapes:define-union runtime-session-data-value common-lisp:nil
                                ((string-value :target-type
                                  non-empty-sensitive-string :member-name
                                  "stringValue"))
                                (:shape-name "RuntimeSessionDataValue"))

(smithy/sdk/shapes:define-structure smsmessage-template-content common-lisp:nil
                                    ((body :target-type
                                      smsmessage-template-content-body
                                      :member-name "body"))
                                    (:shape-name "SMSMessageTemplateContent"))

(smithy/sdk/shapes:define-structure smsmessage-template-content-body
                                    common-lisp:nil
                                    ((plain-text :target-type
                                      message-template-body-content-provider
                                      :member-name "plainText"))
                                    (:shape-name
                                     "SMSMessageTemplateContentBody"))

(smithy/sdk/shapes:define-input search-content-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (search-expression :target-type
                                  search-expression :required common-lisp:t
                                  :member-name "searchExpression"))
                                (:shape-name "SearchContentRequest"))

(smithy/sdk/shapes:define-structure search-content-response common-lisp:nil
                                    ((content-summaries :target-type
                                      content-summary-list :required
                                      common-lisp:t :member-name
                                      "contentSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "SearchContentResponse"))

(smithy/sdk/shapes:define-structure search-expression common-lisp:nil
                                    ((filters :target-type filter-list
                                      :required common-lisp:t :member-name
                                      "filters"))
                                    (:shape-name "SearchExpression"))

(smithy/sdk/shapes:define-input search-message-templates-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (search-expression :target-type
                                  message-template-search-expression :required
                                  common-lisp:t :member-name
                                  "searchExpression")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "SearchMessageTemplatesRequest"))

(smithy/sdk/shapes:define-output search-message-templates-response
                                 common-lisp:nil
                                 ((results :target-type
                                   message-template-search-results-list
                                   :required common-lisp:t :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchMessageTemplatesResponse"))

(smithy/sdk/shapes:define-input search-quick-responses-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (search-expression :target-type
                                  quick-response-search-expression :required
                                  common-lisp:t :member-name
                                  "searchExpression")
                                 (next-token :target-type non-empty-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (attributes :target-type contact-attributes
                                  :member-name "attributes"))
                                (:shape-name "SearchQuickResponsesRequest"))

(smithy/sdk/shapes:define-output search-quick-responses-response
                                 common-lisp:nil
                                 ((results :target-type
                                   quick-response-search-results-list :required
                                   common-lisp:t :member-name "results")
                                  (next-token :target-type non-empty-string
                                   :member-name "nextToken"))
                                 (:shape-name "SearchQuickResponsesResponse"))

(smithy/sdk/shapes:define-input search-sessions-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (search-expression :target-type
                                  search-expression :required common-lisp:t
                                  :member-name "searchExpression"))
                                (:shape-name "SearchSessionsRequest"))

(smithy/sdk/shapes:define-structure search-sessions-response common-lisp:nil
                                    ((session-summaries :target-type
                                      session-summaries :required common-lisp:t
                                      :member-name "sessionSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "SearchSessionsResponse"))

(smithy/sdk/shapes:define-structure seed-url common-lisp:nil
                                    ((url :target-type web-url :member-name
                                      "url"))
                                    (:shape-name "SeedUrl"))

(smithy/sdk/shapes:define-list seed-urls :member seed-url)

(smithy/sdk/shapes:define-structure self-service-aiagent-configuration
                                    common-lisp:nil
                                    ((self-service-pre-processing-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "selfServicePreProcessingAIPromptId")
                                     (self-service-answer-generation-aiprompt-id
                                      :target-type uuid-with-qualifier
                                      :member-name
                                      "selfServiceAnswerGenerationAIPromptId")
                                     (self-service-aiguardrail-id :target-type
                                      uuid-with-qualifier :member-name
                                      "selfServiceAIGuardrailId")
                                     (association-configurations :target-type
                                      association-configuration-list
                                      :member-name
                                      "associationConfigurations"))
                                    (:shape-name
                                     "SelfServiceAIAgentConfiguration"))

(smithy/sdk/shapes:define-structure self-service-conversation-history
                                    common-lisp:nil
                                    ((turn-number :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "turnNumber")
                                     (input-transcript :target-type
                                      sensitive-string :member-name
                                      "inputTranscript")
                                     (bot-response :target-type
                                      sensitive-string :member-name
                                      "botResponse"))
                                    (:shape-name
                                     "SelfServiceConversationHistory"))

(smithy/sdk/shapes:define-list self-service-conversation-history-list :member
                               self-service-conversation-history)

(smithy/sdk/shapes:define-structure semantic-chunking-configuration
                                    common-lisp:nil
                                    ((max-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "maxTokens")
                                     (buffer-size :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "bufferSize")
                                     (breakpoint-percentile-threshold
                                      :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "breakpointPercentileThreshold"))
                                    (:shape-name
                                     "SemanticChunkingConfiguration"))

(smithy/sdk/shapes:define-input send-message-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (type :target-type message-type :required
                                  common-lisp:t :member-name "type")
                                 (message :target-type message-input :required
                                  common-lisp:t :member-name "message")
                                 (conversation-context :target-type
                                  conversation-context :member-name
                                  "conversationContext")
                                 (configuration :target-type
                                  message-configuration :member-name
                                  "configuration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "SendMessageRequest"))

(smithy/sdk/shapes:define-output send-message-response common-lisp:nil
                                 ((request-message-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "requestMessageId")
                                  (configuration :target-type
                                   message-configuration :member-name
                                   "configuration")
                                  (next-message-token :target-type next-token
                                   :required common-lisp:t :member-name
                                   "nextMessageToken"))
                                 (:shape-name "SendMessageResponse"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId"))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class qconnect-error))

common-lisp:nil

(smithy/sdk/shapes:define-structure session-data common-lisp:nil
                                    ((session-arn :target-type arn :required
                                      common-lisp:t :member-name "sessionArn")
                                     (session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (integration-configuration :target-type
                                      session-integration-configuration
                                      :member-name "integrationConfiguration")
                                     (tag-filter :target-type tag-filter
                                      :member-name "tagFilter")
                                     (ai-agent-configuration :target-type
                                      aiagent-configuration-map :member-name
                                      "aiAgentConfiguration")
                                     (origin :target-type origin :member-name
                                      "origin"))
                                    (:shape-name "SessionData"))

(smithy/sdk/shapes:define-type session-data-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-integration-configuration
                                    common-lisp:nil
                                    ((topic-integration-arn :target-type
                                      generic-arn :member-name
                                      "topicIntegrationArn"))
                                    (:shape-name
                                     "SessionIntegrationConfiguration"))

(smithy/sdk/shapes:define-list session-summaries :member session-summary)

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (session-arn :target-type arn :required
                                      common-lisp:t :member-name "sessionArn")
                                     (assistant-id :target-type uuid :required
                                      common-lisp:t :member-name "assistantId")
                                     (assistant-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assistantArn"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-type short-cut-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union source-configuration common-lisp:nil
                                ((app-integrations :target-type
                                  app-integrations-configuration :member-name
                                  "appIntegrations")
                                 (managed-source-configuration :target-type
                                  managed-source-configuration :member-name
                                  "managedSourceConfiguration"))
                                (:shape-name "SourceConfiguration"))

(smithy/sdk/shapes:define-structure source-content-data-details common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type source-content-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (text-data :target-type text-data
                                      :required common-lisp:t :member-name
                                      "textData")
                                     (ranking-data :target-type ranking-data
                                      :required common-lisp:t :member-name
                                      "rankingData")
                                     (citation-span :target-type citation-span
                                      :member-name "citationSpan"))
                                    (:shape-name "SourceContentDataDetails"))

(smithy/sdk/shapes:define-type source-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-content-upload-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-type :target-type content-type
                                  :required common-lisp:t :member-name
                                  "contentType")
                                 (presigned-url-time-to-live :target-type
                                  time-to-live :member-name
                                  "presignedUrlTimeToLive"))
                                (:shape-name "StartContentUploadRequest"))

(smithy/sdk/shapes:define-structure start-content-upload-response
                                    common-lisp:nil
                                    ((upload-id :target-type upload-id
                                      :required common-lisp:t :member-name
                                      "uploadId")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (url-expiry :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "urlExpiry" :timestamp-format
                                      "epoch-seconds")
                                     (headers-to-include :target-type headers
                                      :required common-lisp:t :member-name
                                      "headersToInclude"))
                                    (:shape-name "StartContentUploadResponse"))

(smithy/sdk/shapes:define-input start-import-job-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (import-job-type :target-type import-job-type
                                  :required common-lisp:t :member-name
                                  "importJobType")
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId")
                                 (client-token :target-type non-empty-string
                                  :member-name "clientToken")
                                 (metadata :target-type content-metadata
                                  :member-name "metadata")
                                 (external-source-configuration :target-type
                                  external-source-configuration :member-name
                                  "externalSourceConfiguration"))
                                (:shape-name "StartImportJobRequest"))

(smithy/sdk/shapes:define-output start-import-job-response common-lisp:nil
                                 ((import-job :target-type import-job-data
                                   :member-name "importJob"))
                                 (:shape-name "StartImportJobResponse"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sync-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure system-attributes common-lisp:nil
                                    ((name :target-type
                                      message-template-attribute-value
                                      :member-name "name")
                                     (customer-endpoint :target-type
                                      system-endpoint-attributes :member-name
                                      "customerEndpoint")
                                     (system-endpoint :target-type
                                      system-endpoint-attributes :member-name
                                      "systemEndpoint"))
                                    (:shape-name "SystemAttributes"))

(smithy/sdk/shapes:define-structure system-endpoint-attributes common-lisp:nil
                                    ((address :target-type
                                      message-template-attribute-value
                                      :member-name "address"))
                                    (:shape-name "SystemEndpointAttributes"))

(smithy/sdk/shapes:define-structure tag-condition common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "TagCondition"))

(smithy/sdk/shapes:define-union tag-filter common-lisp:nil
                                ((tag-condition :target-type tag-condition
                                  :member-name "tagCondition")
                                 (and-conditions :target-type and-conditions
                                  :member-name "andConditions")
                                 (or-conditions :target-type or-conditions
                                  :member-name "orConditions"))
                                (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type target-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-aiprompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-data common-lisp:nil
                                    ((title :target-type document-text
                                      :member-name "title")
                                     (excerpt :target-type document-text
                                      :member-name "excerpt"))
                                    (:shape-name "TextData"))

(smithy/sdk/shapes:define-structure
 text-full-aiprompt-edit-template-configuration common-lisp:nil
 ((text :target-type text-aiprompt :required common-lisp:t :member-name
   "text"))
 (:shape-name "TextFullAIPromptEditTemplateConfiguration"))

(smithy/sdk/shapes:define-structure text-message common-lisp:nil
                                    ((value :target-type sensitive-string
                                      :member-name "value"))
                                    (:shape-name "TextMessage"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400) (:base-class qconnect-error))

(smithy/sdk/shapes:define-type time-to-live smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400) (:base-class qconnect-error))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401) (:base-class qconnect-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-aiagent-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiAgentId" :http-label common-lisp:t)
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (configuration :target-type
                                  aiagent-configuration :member-name
                                  "configuration")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateAIAgentRequest"))

(smithy/sdk/shapes:define-output update-aiagent-response common-lisp:nil
                                 ((ai-agent :target-type aiagent-data
                                   :member-name "aiAgent"))
                                 (:shape-name "UpdateAIAgentResponse"))

(smithy/sdk/shapes:define-input update-aiguardrail-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-guardrail-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiGuardrailId" :http-label common-lisp:t)
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (blocked-input-messaging :target-type
                                  aiguardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedInputMessaging")
                                 (blocked-outputs-messaging :target-type
                                  aiguardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedOutputsMessaging")
                                 (description :target-type
                                  aiguardrail-description :member-name
                                  "description")
                                 (topic-policy-config :target-type
                                  aiguardrail-topic-policy-config :member-name
                                  "topicPolicyConfig")
                                 (content-policy-config :target-type
                                  aiguardrail-content-policy-config
                                  :member-name "contentPolicyConfig")
                                 (word-policy-config :target-type
                                  aiguardrail-word-policy-config :member-name
                                  "wordPolicyConfig")
                                 (sensitive-information-policy-config
                                  :target-type
                                  aiguardrail-sensitive-information-policy-config
                                  :member-name
                                  "sensitiveInformationPolicyConfig")
                                 (contextual-grounding-policy-config
                                  :target-type
                                  aiguardrail-contextual-grounding-policy-config
                                  :member-name
                                  "contextualGroundingPolicyConfig"))
                                (:shape-name "UpdateAIGuardrailRequest"))

(smithy/sdk/shapes:define-output update-aiguardrail-response common-lisp:nil
                                 ((ai-guardrail :target-type aiguardrail-data
                                   :member-name "aiGuardrail"))
                                 (:shape-name "UpdateAIGuardrailResponse"))

(smithy/sdk/shapes:define-input update-aiprompt-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-prompt-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "aiPromptId" :http-label common-lisp:t)
                                 (visibility-status :target-type
                                  visibility-status :required common-lisp:t
                                  :member-name "visibilityStatus")
                                 (template-configuration :target-type
                                  aiprompt-template-configuration :member-name
                                  "templateConfiguration")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateAIPromptRequest"))

(smithy/sdk/shapes:define-output update-aiprompt-response common-lisp:nil
                                 ((ai-prompt :target-type aiprompt-data
                                   :member-name "aiPrompt"))
                                 (:shape-name "UpdateAIPromptResponse"))

(smithy/sdk/shapes:define-input update-assistant-aiagent-request
                                common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (ai-agent-type :target-type aiagent-type
                                  :required common-lisp:t :member-name
                                  "aiAgentType")
                                 (configuration :target-type
                                  aiagent-configuration-data :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name "UpdateAssistantAIAgentRequest"))

(smithy/sdk/shapes:define-output update-assistant-aiagent-response
                                 common-lisp:nil
                                 ((assistant :target-type assistant-data
                                   :member-name "assistant"))
                                 (:shape-name "UpdateAssistantAIAgentResponse"))

(smithy/sdk/shapes:define-input update-content-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (content-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "contentId"
                                  :http-label common-lisp:t)
                                 (revision-id :target-type non-empty-string
                                  :member-name "revisionId")
                                 (title :target-type content-title :member-name
                                  "title")
                                 (override-link-out-uri :target-type uri
                                  :member-name "overrideLinkOutUri")
                                 (remove-override-link-out-uri :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "removeOverrideLinkOutUri")
                                 (metadata :target-type content-metadata
                                  :member-name "metadata")
                                 (upload-id :target-type upload-id :member-name
                                  "uploadId"))
                                (:shape-name "UpdateContentRequest"))

(smithy/sdk/shapes:define-structure update-content-response common-lisp:nil
                                    ((content :target-type content-data
                                      :member-name "content"))
                                    (:shape-name "UpdateContentResponse"))

(smithy/sdk/shapes:define-input update-knowledge-base-template-uri-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (template-uri :target-type uri :required
                                  common-lisp:t :member-name "templateUri"))
                                (:shape-name
                                 "UpdateKnowledgeBaseTemplateUriRequest"))

(smithy/sdk/shapes:define-structure update-knowledge-base-template-uri-response
                                    common-lisp:nil
                                    ((knowledge-base :target-type
                                      knowledge-base-data :member-name
                                      "knowledgeBase"))
                                    (:shape-name
                                     "UpdateKnowledgeBaseTemplateUriResponse"))

(smithy/sdk/shapes:define-input update-message-template-metadata-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (grouping-configuration :target-type
                                  grouping-configuration :member-name
                                  "groupingConfiguration"))
                                (:shape-name
                                 "UpdateMessageTemplateMetadataRequest"))

(smithy/sdk/shapes:define-output update-message-template-metadata-response
                                 common-lisp:nil
                                 ((message-template :target-type
                                   message-template-data :member-name
                                   "messageTemplate"))
                                 (:shape-name
                                  "UpdateMessageTemplateMetadataResponse"))

(smithy/sdk/shapes:define-input update-message-template-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (message-template-id :target-type
                                  uuid-or-arn-or-either-with-qualifier
                                  :required common-lisp:t :member-name
                                  "messageTemplateId" :http-label
                                  common-lisp:t)
                                 (content :target-type
                                  message-template-content-provider
                                  :member-name "content")
                                 (language :target-type language-code
                                  :member-name "language")
                                 (default-attributes :target-type
                                  message-template-attributes :member-name
                                  "defaultAttributes"))
                                (:shape-name "UpdateMessageTemplateRequest"))

(smithy/sdk/shapes:define-output update-message-template-response
                                 common-lisp:nil
                                 ((message-template :target-type
                                   message-template-data :member-name
                                   "messageTemplate"))
                                 (:shape-name "UpdateMessageTemplateResponse"))

(smithy/sdk/shapes:define-input update-quick-response-request common-lisp:nil
                                ((knowledge-base-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "knowledgeBaseId" :http-label common-lisp:t)
                                 (quick-response-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "quickResponseId" :http-label common-lisp:t)
                                 (name :target-type quick-response-name
                                  :member-name "name")
                                 (content :target-type
                                  quick-response-data-provider :member-name
                                  "content")
                                 (content-type :target-type quick-response-type
                                  :member-name "contentType")
                                 (grouping-configuration :target-type
                                  grouping-configuration :member-name
                                  "groupingConfiguration")
                                 (remove-grouping-configuration :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "removeGroupingConfiguration")
                                 (description :target-type
                                  quick-response-description :member-name
                                  "description")
                                 (remove-description :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "removeDescription")
                                 (shortcut-key :target-type short-cut-key
                                  :member-name "shortcutKey")
                                 (remove-shortcut-key :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "removeShortcutKey")
                                 (is-active :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isActive")
                                 (channels :target-type channels :member-name
                                  "channels")
                                 (language :target-type language-code
                                  :member-name "language"))
                                (:shape-name "UpdateQuickResponseRequest"))

(smithy/sdk/shapes:define-output update-quick-response-response common-lisp:nil
                                 ((quick-response :target-type
                                   quick-response-data :member-name
                                   "quickResponse"))
                                 (:shape-name "UpdateQuickResponseResponse"))

(smithy/sdk/shapes:define-input update-session-data-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type session-data-namespace
                                  :member-name "namespace")
                                 (data :target-type runtime-session-data-list
                                  :required common-lisp:t :member-name "data"))
                                (:shape-name "UpdateSessionDataRequest"))

(smithy/sdk/shapes:define-output update-session-data-response common-lisp:nil
                                 ((session-arn :target-type arn :required
                                   common-lisp:t :member-name "sessionArn")
                                  (session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (namespace :target-type
                                   session-data-namespace :required
                                   common-lisp:t :member-name "namespace")
                                  (data :target-type runtime-session-data-list
                                   :required common-lisp:t :member-name
                                   "data"))
                                 (:shape-name "UpdateSessionDataResponse"))

(smithy/sdk/shapes:define-input update-session-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (session-id :target-type uuid-or-arn :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (ai-agent-configuration :target-type
                                  aiagent-configuration-map :member-name
                                  "aiAgentConfiguration"))
                                (:shape-name "UpdateSessionRequest"))

(smithy/sdk/shapes:define-output update-session-response common-lisp:nil
                                 ((session :target-type session-data
                                   :member-name "session"))
                                 (:shape-name "UpdateSessionResponse"))

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure url-configuration common-lisp:nil
                                    ((seed-urls :target-type seed-urls
                                      :member-name "seedUrls"))
                                    (:shape-name "UrlConfiguration"))

(smithy/sdk/shapes:define-list url-filter-list :member url-filter-pattern)

(smithy/sdk/shapes:define-type url-filter-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid-or-arn-or-either-with-qualifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid-with-qualifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class qconnect-error))

(smithy/sdk/shapes:define-structure vector-ingestion-configuration
                                    common-lisp:nil
                                    ((chunking-configuration :target-type
                                      chunking-configuration :member-name
                                      "chunkingConfiguration")
                                     (parsing-configuration :target-type
                                      parsing-configuration :member-name
                                      "parsingConfiguration"))
                                    (:shape-name
                                     "VectorIngestionConfiguration"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type visibility-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wait-time-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure web-crawler-configuration common-lisp:nil
                                    ((url-configuration :target-type
                                      url-configuration :required common-lisp:t
                                      :member-name "urlConfiguration")
                                     (crawler-limits :target-type
                                      web-crawler-limits :member-name
                                      "crawlerLimits")
                                     (inclusion-filters :target-type
                                      url-filter-list :member-name
                                      "inclusionFilters")
                                     (exclusion-filters :target-type
                                      url-filter-list :member-name
                                      "exclusionFilters")
                                     (scope :target-type web-scope-type
                                      :member-name "scope"))
                                    (:shape-name "WebCrawlerConfiguration"))

(smithy/sdk/shapes:define-structure web-crawler-limits common-lisp:nil
                                    ((rate-limit :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "rateLimit"))
                                    (:shape-name "WebCrawlerLimits"))

(smithy/sdk/shapes:define-type web-scope-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation activate-message-template :shape-name
                                       "ActivateMessageTemplate" :input
                                       activate-message-template-request
                                       :output
                                       activate-message-template-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate")

(smithy/sdk/operation:define-operation create-aiagent :shape-name
                                       "CreateAIAgent" :input
                                       create-aiagent-request :output
                                       create-aiagent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiagents")

(smithy/sdk/operation:define-operation create-aiagent-version :shape-name
                                       "CreateAIAgentVersion" :input
                                       create-aiagent-version-request :output
                                       create-aiagent-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}/versions")

(smithy/sdk/operation:define-operation create-aiguardrail :shape-name
                                       "CreateAIGuardrail" :input
                                       create-aiguardrail-request :output
                                       create-aiguardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiguardrails")

(smithy/sdk/operation:define-operation create-aiguardrail-version :shape-name
                                       "CreateAIGuardrailVersion" :input
                                       create-aiguardrail-version-request
                                       :output
                                       create-aiguardrail-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions")

(smithy/sdk/operation:define-operation create-aiprompt :shape-name
                                       "CreateAIPrompt" :input
                                       create-aiprompt-request :output
                                       create-aiprompt-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiprompts")

(smithy/sdk/operation:define-operation create-aiprompt-version :shape-name
                                       "CreateAIPromptVersion" :input
                                       create-aiprompt-version-request :output
                                       create-aiprompt-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions")

(smithy/sdk/operation:define-operation create-assistant :shape-name
                                       "CreateAssistant" :input
                                       create-assistant-request :output
                                       create-assistant-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/assistants")

(smithy/sdk/operation:define-operation create-assistant-association :shape-name
                                       "CreateAssistantAssociation" :input
                                       create-assistant-association-request
                                       :output
                                       create-assistant-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/associations")

(smithy/sdk/operation:define-operation create-content :shape-name
                                       "CreateContent" :input
                                       create-content-request :output
                                       create-content-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents")

(smithy/sdk/operation:define-operation create-content-association :shape-name
                                       "CreateContentAssociation" :input
                                       create-content-association-request
                                       :output
                                       create-content-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations")

(smithy/sdk/operation:define-operation create-knowledge-base :shape-name
                                       "CreateKnowledgeBase" :input
                                       create-knowledge-base-request :output
                                       create-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/knowledgeBases")

(smithy/sdk/operation:define-operation create-message-template :shape-name
                                       "CreateMessageTemplate" :input
                                       create-message-template-request :output
                                       create-message-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates")

(smithy/sdk/operation:define-operation create-message-template-attachment
                                       :shape-name
                                       "CreateMessageTemplateAttachment" :input
                                       create-message-template-attachment-request
                                       :output
                                       create-message-template-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments")

(smithy/sdk/operation:define-operation create-message-template-version
                                       :shape-name
                                       "CreateMessageTemplateVersion" :input
                                       create-message-template-version-request
                                       :output
                                       create-message-template-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions")

(smithy/sdk/operation:define-operation create-quick-response :shape-name
                                       "CreateQuickResponse" :input
                                       create-quick-response-request :output
                                       create-quick-response-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses")

(smithy/sdk/operation:define-operation create-session :shape-name
                                       "CreateSession" :input
                                       create-session-request :output
                                       create-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/sessions")

(smithy/sdk/operation:define-operation deactivate-message-template :shape-name
                                       "DeactivateMessageTemplate" :input
                                       deactivate-message-template-request
                                       :output
                                       deactivate-message-template-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate")

(smithy/sdk/operation:define-operation delete-aiagent :shape-name
                                       "DeleteAIAgent" :input
                                       delete-aiagent-request :output
                                       delete-aiagent-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-aiagent-version :shape-name
                                       "DeleteAIAgentVersion" :input
                                       delete-aiagent-version-request :output
                                       delete-aiagent-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-aiguardrail :shape-name
                                       "DeleteAIGuardrail" :input
                                       delete-aiguardrail-request :output
                                       delete-aiguardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-aiguardrail-version :shape-name
                                       "DeleteAIGuardrailVersion" :input
                                       delete-aiguardrail-version-request
                                       :output
                                       delete-aiguardrail-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-aiprompt :shape-name
                                       "DeleteAIPrompt" :input
                                       delete-aiprompt-request :output
                                       delete-aiprompt-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-aiprompt-version :shape-name
                                       "DeleteAIPromptVersion" :input
                                       delete-aiprompt-version-request :output
                                       delete-aiprompt-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-assistant :shape-name
                                       "DeleteAssistant" :input
                                       delete-assistant-request :output
                                       delete-assistant-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}" :code 204)

(smithy/sdk/operation:define-operation delete-assistant-association :shape-name
                                       "DeleteAssistantAssociation" :input
                                       delete-assistant-association-request
                                       :output
                                       delete-assistant-association-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/associations/{assistantAssociationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-content :shape-name
                                       "DeleteContent" :input
                                       delete-content-request :output
                                       delete-content-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-content-association :shape-name
                                       "DeleteContentAssociation" :input
                                       delete-content-association-request
                                       :output
                                       delete-content-association-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-import-job :shape-name
                                       "DeleteImportJob" :input
                                       delete-import-job-request :output
                                       delete-import-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-knowledge-base :shape-name
                                       "DeleteKnowledgeBase" :input
                                       delete-knowledge-base-request :output
                                       delete-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-message-template :shape-name
                                       "DeleteMessageTemplate" :input
                                       delete-message-template-request :output
                                       delete-message-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-message-template-attachment
                                       :shape-name
                                       "DeleteMessageTemplateAttachment" :input
                                       delete-message-template-attachment-request
                                       :output
                                       delete-message-template-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-quick-response :shape-name
                                       "DeleteQuickResponse" :input
                                       delete-quick-response-request :output
                                       delete-quick-response-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-aiagent :shape-name "GetAIAgent"
                                       :input get-aiagent-request :output
                                       get-aiagent-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}")

(smithy/sdk/operation:define-operation get-aiguardrail :shape-name
                                       "GetAIGuardrail" :input
                                       get-aiguardrail-request :output
                                       get-aiguardrail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}")

(smithy/sdk/operation:define-operation get-aiprompt :shape-name "GetAIPrompt"
                                       :input get-aiprompt-request :output
                                       get-aiprompt-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}")

(smithy/sdk/operation:define-operation get-assistant :shape-name "GetAssistant"
                                       :input get-assistant-request :output
                                       get-assistant-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}")

(smithy/sdk/operation:define-operation get-assistant-association :shape-name
                                       "GetAssistantAssociation" :input
                                       get-assistant-association-request
                                       :output
                                       get-assistant-association-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/associations/{assistantAssociationId}")

(smithy/sdk/operation:define-operation get-content :shape-name "GetContent"
                                       :input get-content-request :output
                                       get-content-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}")

(smithy/sdk/operation:define-operation get-content-association :shape-name
                                       "GetContentAssociation" :input
                                       get-content-association-request :output
                                       get-content-association-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}")

(smithy/sdk/operation:define-operation get-content-summary :shape-name
                                       "GetContentSummary" :input
                                       get-content-summary-request :output
                                       get-content-summary-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary")

(smithy/sdk/operation:define-operation get-import-job :shape-name
                                       "GetImportJob" :input
                                       get-import-job-request :output
                                       get-import-job-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}")

(smithy/sdk/operation:define-operation get-knowledge-base :shape-name
                                       "GetKnowledgeBase" :input
                                       get-knowledge-base-request :output
                                       get-knowledge-base-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}")

(smithy/sdk/operation:define-operation get-message-template :shape-name
                                       "GetMessageTemplate" :input
                                       get-message-template-request :output
                                       get-message-template-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}")

(smithy/sdk/operation:define-operation get-next-message :shape-name
                                       "GetNextMessage" :input
                                       get-next-message-request :output
                                       get-next-message-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/messages/next")

(smithy/sdk/operation:define-operation get-quick-response :shape-name
                                       "GetQuickResponse" :input
                                       get-quick-response-request :output
                                       get-quick-response-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}")

(smithy/sdk/operation:define-operation get-recommendations :shape-name
                                       "GetRecommendations" :input
                                       get-recommendations-request :output
                                       get-recommendations-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/recommendations")

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}")

(smithy/sdk/operation:define-operation list-aiagent-versions :shape-name
                                       "ListAIAgentVersions" :input
                                       list-aiagent-versions-request :output
                                       list-aiagent-versions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}/versions")

(smithy/sdk/operation:define-operation list-aiagents :shape-name "ListAIAgents"
                                       :input list-aiagents-request :output
                                       list-aiagents-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiagents")

(smithy/sdk/operation:define-operation list-aiguardrail-versions :shape-name
                                       "ListAIGuardrailVersions" :input
                                       list-aiguardrail-versions-request
                                       :output
                                       list-aiguardrail-versions-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions")

(smithy/sdk/operation:define-operation list-aiguardrails :shape-name
                                       "ListAIGuardrails" :input
                                       list-aiguardrails-request :output
                                       list-aiguardrails-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiguardrails")

(smithy/sdk/operation:define-operation list-aiprompt-versions :shape-name
                                       "ListAIPromptVersions" :input
                                       list-aiprompt-versions-request :output
                                       list-aiprompt-versions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions")

(smithy/sdk/operation:define-operation list-aiprompts :shape-name
                                       "ListAIPrompts" :input
                                       list-aiprompts-request :output
                                       list-aiprompts-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/aiprompts")

(smithy/sdk/operation:define-operation list-assistant-associations :shape-name
                                       "ListAssistantAssociations" :input
                                       list-assistant-associations-request
                                       :output
                                       list-assistant-associations-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/associations")

(smithy/sdk/operation:define-operation list-assistants :shape-name
                                       "ListAssistants" :input
                                       list-assistants-request :output
                                       list-assistants-response :errors
                                       (access-denied-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/assistants")

(smithy/sdk/operation:define-operation list-content-associations :shape-name
                                       "ListContentAssociations" :input
                                       list-content-associations-request
                                       :output
                                       list-content-associations-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations")

(smithy/sdk/operation:define-operation list-contents :shape-name "ListContents"
                                       :input list-contents-request :output
                                       list-contents-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents")

(smithy/sdk/operation:define-operation list-import-jobs :shape-name
                                       "ListImportJobs" :input
                                       list-import-jobs-request :output
                                       list-import-jobs-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/importJobs")

(smithy/sdk/operation:define-operation list-knowledge-bases :shape-name
                                       "ListKnowledgeBases" :input
                                       list-knowledge-bases-request :output
                                       list-knowledge-bases-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/knowledgeBases")

(smithy/sdk/operation:define-operation list-message-template-versions
                                       :shape-name
                                       "ListMessageTemplateVersions" :input
                                       list-message-template-versions-request
                                       :output
                                       list-message-template-versions-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions")

(smithy/sdk/operation:define-operation list-message-templates :shape-name
                                       "ListMessageTemplates" :input
                                       list-message-templates-request :output
                                       list-message-templates-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates")

(smithy/sdk/operation:define-operation list-messages :shape-name "ListMessages"
                                       :input list-messages-request :output
                                       list-messages-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/messages")

(smithy/sdk/operation:define-operation list-quick-responses :shape-name
                                       "ListQuickResponses" :input
                                       list-quick-responses-request :output
                                       list-quick-responses-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation notify-recommendations-received
                                       :shape-name
                                       "NotifyRecommendationsReceived" :input
                                       notify-recommendations-received-request
                                       :output
                                       notify-recommendations-received-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify")

(smithy/sdk/operation:define-operation put-feedback :shape-name "PutFeedback"
                                       :input put-feedback-request :output
                                       put-feedback-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assistants/{assistantId}/feedback")

(smithy/sdk/operation:define-operation query-assistant :shape-name
                                       "QueryAssistant" :input
                                       query-assistant-request :output
                                       query-assistant-response :errors
                                       (access-denied-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/query")

(smithy/sdk/operation:define-operation remove-assistant-aiagent :shape-name
                                       "RemoveAssistantAIAgent" :input
                                       remove-assistant-aiagent-request :output
                                       remove-assistant-aiagent-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/aiagentConfiguration"
                                       :code 204)

(smithy/sdk/operation:define-operation remove-knowledge-base-template-uri
                                       :shape-name
                                       "RemoveKnowledgeBaseTemplateUri" :input
                                       remove-knowledge-base-template-uri-request
                                       :output
                                       remove-knowledge-base-template-uri-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/templateUri"
                                       :code 204)

(smithy/sdk/operation:define-operation render-message-template :shape-name
                                       "RenderMessageTemplate" :input
                                       render-message-template-request :output
                                       render-message-template-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render")

(smithy/sdk/operation:define-operation search-content :shape-name
                                       "SearchContent" :input
                                       search-content-request :output
                                       search-content-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/search")

(smithy/sdk/operation:define-operation search-message-templates :shape-name
                                       "SearchMessageTemplates" :input
                                       search-message-templates-request :output
                                       search-message-templates-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates")

(smithy/sdk/operation:define-operation search-quick-responses :shape-name
                                       "SearchQuickResponses" :input
                                       search-quick-responses-request :output
                                       search-quick-responses-response :errors
                                       (access-denied-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/search/quickResponses")

(smithy/sdk/operation:define-operation search-sessions :shape-name
                                       "SearchSessions" :input
                                       search-sessions-request :output
                                       search-sessions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/searchSessions")

(smithy/sdk/operation:define-operation send-message :shape-name "SendMessage"
                                       :input send-message-request :output
                                       send-message-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/message")

(smithy/sdk/operation:define-operation start-content-upload :shape-name
                                       "StartContentUpload" :input
                                       start-content-upload-request :output
                                       start-content-upload-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/upload")

(smithy/sdk/operation:define-operation start-import-job :shape-name
                                       "StartImportJob" :input
                                       start-import-job-request :output
                                       start-import-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/importJobs")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "DELETE" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-aiagent :shape-name
                                       "UpdateAIAgent" :input
                                       update-aiagent-request :output
                                       update-aiagent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiagents/{aiAgentId}")

(smithy/sdk/operation:define-operation update-aiguardrail :shape-name
                                       "UpdateAIGuardrail" :input
                                       update-aiguardrail-request :output
                                       update-aiguardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}")

(smithy/sdk/operation:define-operation update-aiprompt :shape-name
                                       "UpdateAIPrompt" :input
                                       update-aiprompt-request :output
                                       update-aiprompt-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiprompts/{aiPromptId}")

(smithy/sdk/operation:define-operation update-assistant-aiagent :shape-name
                                       "UpdateAssistantAIAgent" :input
                                       update-assistant-aiagent-request :output
                                       update-assistant-aiagent-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/aiagentConfiguration")

(smithy/sdk/operation:define-operation update-content :shape-name
                                       "UpdateContent" :input
                                       update-content-request :output
                                       update-content-response :errors
                                       (access-denied-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}")

(smithy/sdk/operation:define-operation update-knowledge-base-template-uri
                                       :shape-name
                                       "UpdateKnowledgeBaseTemplateUri" :input
                                       update-knowledge-base-template-uri-request
                                       :output
                                       update-knowledge-base-template-uri-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/templateUri")

(smithy/sdk/operation:define-operation update-message-template :shape-name
                                       "UpdateMessageTemplate" :input
                                       update-message-template-request :output
                                       update-message-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}")

(smithy/sdk/operation:define-operation update-message-template-metadata
                                       :shape-name
                                       "UpdateMessageTemplateMetadata" :input
                                       update-message-template-metadata-request
                                       :output
                                       update-message-template-metadata-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata")

(smithy/sdk/operation:define-operation update-quick-response :shape-name
                                       "UpdateQuickResponse" :input
                                       update-quick-response-request :output
                                       update-quick-response-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}")

(smithy/sdk/operation:define-operation update-session :shape-name
                                       "UpdateSession" :input
                                       update-session-request :output
                                       update-session-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}")

(smithy/sdk/operation:define-operation update-session-data :shape-name
                                       "UpdateSessionData" :input
                                       update-session-data-request :output
                                       update-session-data-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}/data")
