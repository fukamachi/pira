(uiop/package:define-package #:pira/bedrock (:use)
                             (:export #:accept-eula #:account-id
                              #:acknowledgement-form-data-body
                              #:additional-model-request-fields
                              #:additional-model-request-fields-key
                              #:additional-model-request-fields-value
                              #:agreement-availability #:agreement-status
                              #:allowlist-resource
                              #:amazon-bedrock-control-plane-service
                              #:application-type #:arn #:attribute-type
                              #:authorization-status
                              #:automated-evaluation-config
                              #:automated-evaluation-custom-metric-config
                              #:automated-evaluation-custom-metric-source
                              #:automated-evaluation-custom-metrics
                              #:automated-reasoning-check-difference-scenario-list
                              #:automated-reasoning-check-finding
                              #:automated-reasoning-check-finding-list
                              #:automated-reasoning-check-impossible-finding
                              #:automated-reasoning-check-input-text-reference
                              #:automated-reasoning-check-input-text-reference-list
                              #:automated-reasoning-check-invalid-finding
                              #:automated-reasoning-check-logic-warning
                              #:automated-reasoning-check-logic-warning-type
                              #:automated-reasoning-check-no-translations-finding
                              #:automated-reasoning-check-result
                              #:automated-reasoning-check-rule
                              #:automated-reasoning-check-rule-list
                              #:automated-reasoning-check-satisfiable-finding
                              #:automated-reasoning-check-scenario
                              #:automated-reasoning-check-too-complex-finding
                              #:automated-reasoning-check-translation
                              #:automated-reasoning-check-translation-ambiguous-finding
                              #:automated-reasoning-check-translation-confidence
                              #:automated-reasoning-check-translation-list
                              #:automated-reasoning-check-translation-option
                              #:automated-reasoning-check-translation-option-list
                              #:automated-reasoning-check-valid-finding
                              #:automated-reasoning-confidence-filter-threshold
                              #:automated-reasoning-logic-statement
                              #:automated-reasoning-logic-statement-content
                              #:automated-reasoning-logic-statement-list
                              #:automated-reasoning-natural-language-statement-content
                              #:automated-reasoning-policy-add-rule-annotation
                              #:automated-reasoning-policy-add-rule-from-natural-language-annotation
                              #:automated-reasoning-policy-add-rule-mutation
                              #:automated-reasoning-policy-add-type-annotation
                              #:automated-reasoning-policy-add-type-mutation
                              #:automated-reasoning-policy-add-type-value
                              #:automated-reasoning-policy-add-variable-annotation
                              #:automated-reasoning-policy-add-variable-mutation
                              #:automated-reasoning-policy-annotation
                              #:automated-reasoning-policy-annotation-feedback-natural-language
                              #:automated-reasoning-policy-annotation-ingest-content
                              #:automated-reasoning-policy-annotation-list
                              #:automated-reasoning-policy-annotation-rule-natural-language
                              #:automated-reasoning-policy-annotation-status
                              #:automated-reasoning-policy-arn
                              #:automated-reasoning-policy-arn-list
                              #:automated-reasoning-policy-build-document-content-type
                              #:automated-reasoning-policy-build-document-description
                              #:automated-reasoning-policy-build-document-name
                              #:automated-reasoning-policy-build-log
                              #:automated-reasoning-policy-build-log-entry
                              #:automated-reasoning-policy-build-log-entry-list
                              #:automated-reasoning-policy-build-message-type
                              #:automated-reasoning-policy-build-result-asset-type
                              #:automated-reasoning-policy-build-result-assets
                              #:automated-reasoning-policy-build-step
                              #:automated-reasoning-policy-build-step-context
                              #:automated-reasoning-policy-build-step-list
                              #:automated-reasoning-policy-build-step-message
                              #:automated-reasoning-policy-build-step-message-list
                              #:automated-reasoning-policy-build-workflow-document
                              #:automated-reasoning-policy-build-workflow-document-list
                              #:automated-reasoning-policy-build-workflow-id
                              #:automated-reasoning-policy-build-workflow-repair-content
                              #:automated-reasoning-policy-build-workflow-source
                              #:automated-reasoning-policy-build-workflow-status
                              #:automated-reasoning-policy-build-workflow-summaries
                              #:automated-reasoning-policy-build-workflow-summary
                              #:automated-reasoning-policy-build-workflow-type
                              #:automated-reasoning-policy-conflicted-rule-id-list
                              #:automated-reasoning-policy-definition
                              #:automated-reasoning-policy-definition-element
                              #:automated-reasoning-policy-definition-quality-report
                              #:automated-reasoning-policy-definition-rule
                              #:automated-reasoning-policy-definition-rule-alternate-expression
                              #:automated-reasoning-policy-definition-rule-expression
                              #:automated-reasoning-policy-definition-rule-id
                              #:automated-reasoning-policy-definition-rule-id-list
                              #:automated-reasoning-policy-definition-rule-list
                              #:automated-reasoning-policy-definition-type
                              #:automated-reasoning-policy-definition-type-description
                              #:automated-reasoning-policy-definition-type-list
                              #:automated-reasoning-policy-definition-type-name
                              #:automated-reasoning-policy-definition-type-name-list
                              #:automated-reasoning-policy-definition-type-value
                              #:automated-reasoning-policy-definition-type-value-description
                              #:automated-reasoning-policy-definition-type-value-list
                              #:automated-reasoning-policy-definition-type-value-name
                              #:automated-reasoning-policy-definition-type-value-pair
                              #:automated-reasoning-policy-definition-type-value-pair-list
                              #:automated-reasoning-policy-definition-variable
                              #:automated-reasoning-policy-definition-variable-description
                              #:automated-reasoning-policy-definition-variable-list
                              #:automated-reasoning-policy-definition-variable-name
                              #:automated-reasoning-policy-definition-variable-name-list
                              #:automated-reasoning-policy-delete-rule-annotation
                              #:automated-reasoning-policy-delete-rule-mutation
                              #:automated-reasoning-policy-delete-type-annotation
                              #:automated-reasoning-policy-delete-type-mutation
                              #:automated-reasoning-policy-delete-type-value
                              #:automated-reasoning-policy-delete-variable-annotation
                              #:automated-reasoning-policy-delete-variable-mutation
                              #:automated-reasoning-policy-description
                              #:automated-reasoning-policy-disjoint-rule-set
                              #:automated-reasoning-policy-disjoint-rule-set-list
                              #:automated-reasoning-policy-disjointed-rule-id-list
                              #:automated-reasoning-policy-format-version
                              #:automated-reasoning-policy-hash
                              #:automated-reasoning-policy-id
                              #:automated-reasoning-policy-ingest-content-annotation
                              #:automated-reasoning-policy-mutation
                              #:automated-reasoning-policy-name
                              #:automated-reasoning-policy-planning
                              #:automated-reasoning-policy-resource
                              #:automated-reasoning-policy-scenario
                              #:automated-reasoning-policy-scenario-alternate-expression
                              #:automated-reasoning-policy-scenario-expression
                              #:automated-reasoning-policy-summaries
                              #:automated-reasoning-policy-summary
                              #:automated-reasoning-policy-test-case
                              #:automated-reasoning-policy-test-case-id
                              #:automated-reasoning-policy-test-case-id-list
                              #:automated-reasoning-policy-test-case-list
                              #:automated-reasoning-policy-test-guard-content
                              #:automated-reasoning-policy-test-list
                              #:automated-reasoning-policy-test-query-content
                              #:automated-reasoning-policy-test-result
                              #:automated-reasoning-policy-test-run-result
                              #:automated-reasoning-policy-test-run-status
                              #:automated-reasoning-policy-type-value-annotation
                              #:automated-reasoning-policy-type-value-annotation-list
                              #:automated-reasoning-policy-update-from-rule-feedback-annotation
                              #:automated-reasoning-policy-update-from-scenario-feedback-annotation
                              #:automated-reasoning-policy-update-rule-annotation
                              #:automated-reasoning-policy-update-rule-mutation
                              #:automated-reasoning-policy-update-type-annotation
                              #:automated-reasoning-policy-update-type-mutation
                              #:automated-reasoning-policy-update-type-value
                              #:automated-reasoning-policy-update-variable-annotation
                              #:automated-reasoning-policy-update-variable-mutation
                              #:automated-reasoning-policy-version
                              #:automated-reasoning-policy-workflow-type-content
                              #:base-model-identifier
                              #:batch-delete-evaluation-job
                              #:batch-delete-evaluation-job-error
                              #:batch-delete-evaluation-job-errors
                              #:batch-delete-evaluation-job-item
                              #:batch-delete-evaluation-job-items
                              #:bedrock-evaluator-model
                              #:bedrock-evaluator-models
                              #:bedrock-marketplace-resource
                              #:bedrock-model-arn #:bedrock-model-id
                              #:bedrock-reranking-model-arn #:branded-name
                              #:bucket-name #:byte-content-blob
                              #:byte-content-doc
                              #:cancel-automated-reasoning-policy-build-workflow
                              #:cloud-watch-config #:commitment-duration
                              #:content-type
                              #:create-automated-reasoning-policy
                              #:create-automated-reasoning-policy-test-case
                              #:create-automated-reasoning-policy-version
                              #:create-custom-model
                              #:create-custom-model-deployment
                              #:create-evaluation-job
                              #:create-foundation-model-agreement
                              #:create-guardrail #:create-guardrail-version
                              #:create-inference-profile
                              #:create-marketplace-model-endpoint
                              #:create-model-copy-job
                              #:create-model-customization-job
                              #:create-model-import-job
                              #:create-model-invocation-job
                              #:create-prompt-router
                              #:create-provisioned-model-throughput
                              #:custom-metric-bedrock-evaluator-model
                              #:custom-metric-bedrock-evaluator-models
                              #:custom-metric-definition
                              #:custom-metric-evaluator-model-config
                              #:custom-metric-instructions #:custom-model-arn
                              #:custom-model-deployment-arn
                              #:custom-model-deployment-description
                              #:custom-model-deployment-identifier
                              #:custom-model-deployment-resource
                              #:custom-model-deployment-status
                              #:custom-model-deployment-summary
                              #:custom-model-deployment-summary-list
                              #:custom-model-name #:custom-model-resource
                              #:custom-model-summary
                              #:custom-model-summary-list #:custom-model-units
                              #:custom-model-units-version
                              #:customization-config #:customization-type
                              #:data-processing-details
                              #:delete-automated-reasoning-policy
                              #:delete-automated-reasoning-policy-build-workflow
                              #:delete-automated-reasoning-policy-test-case
                              #:delete-custom-model
                              #:delete-custom-model-deployment
                              #:delete-foundation-model-agreement
                              #:delete-guardrail #:delete-imported-model
                              #:delete-inference-profile
                              #:delete-marketplace-model-endpoint
                              #:delete-model-invocation-logging-configuration
                              #:delete-prompt-router
                              #:delete-provisioned-model-throughput
                              #:deregister-marketplace-model-endpoint
                              #:dimensional-price-rate #:distillation-config
                              #:endpoint-config #:endpoint-name
                              #:entitlement-availability #:error-message
                              #:error-messages
                              #:evaluation-bedrock-knowledge-base-identifiers
                              #:evaluation-bedrock-model
                              #:evaluation-bedrock-model-identifier
                              #:evaluation-bedrock-model-identifiers
                              #:evaluation-config #:evaluation-dataset
                              #:evaluation-dataset-location
                              #:evaluation-dataset-metric-config
                              #:evaluation-dataset-metric-configs
                              #:evaluation-dataset-name
                              #:evaluation-inference-config
                              #:evaluation-inference-config-summary
                              #:evaluation-job-arn #:evaluation-job-description
                              #:evaluation-job-identifier
                              #:evaluation-job-identifiers
                              #:evaluation-job-name #:evaluation-job-resource
                              #:evaluation-job-status #:evaluation-job-type
                              #:evaluation-metric-description
                              #:evaluation-metric-name
                              #:evaluation-metric-names
                              #:evaluation-model-config
                              #:evaluation-model-config-summary
                              #:evaluation-model-configs
                              #:evaluation-model-inference-params
                              #:evaluation-output-data-config
                              #:evaluation-precomputed-inference-source
                              #:evaluation-precomputed-inference-source-identifier
                              #:evaluation-precomputed-inference-source-identifiers
                              #:evaluation-precomputed-rag-source-config
                              #:evaluation-precomputed-rag-source-identifier
                              #:evaluation-precomputed-rag-source-identifiers
                              #:evaluation-precomputed-retrieve-and-generate-source-config
                              #:evaluation-precomputed-retrieve-source-config
                              #:evaluation-rag-config-summary
                              #:evaluation-rating-method #:evaluation-summaries
                              #:evaluation-summary #:evaluation-task-type
                              #:evaluation-task-types #:evaluator-model-config
                              #:evaluator-model-identifier
                              #:evaluator-model-identifiers
                              #:export-automated-reasoning-policy-version
                              #:external-source #:external-source-type
                              #:external-sources
                              #:external-sources-generation-configuration
                              #:external-sources-retrieve-and-generate-configuration
                              #:field-for-reranking #:fields-for-reranking
                              #:filter-attribute #:filter-key #:filter-value
                              #:fine-tuning-job-status #:foundation-model-arn
                              #:foundation-model-details
                              #:foundation-model-lifecycle
                              #:foundation-model-lifecycle-status
                              #:foundation-model-summary
                              #:foundation-model-summary-list
                              #:generation-configuration
                              #:get-automated-reasoning-policy
                              #:get-automated-reasoning-policy-annotations
                              #:get-automated-reasoning-policy-build-workflow
                              #:get-automated-reasoning-policy-build-workflow-result-assets
                              #:get-automated-reasoning-policy-next-scenario
                              #:get-automated-reasoning-policy-test-case
                              #:get-automated-reasoning-policy-test-result
                              #:get-custom-model #:get-custom-model-deployment
                              #:get-evaluation-job #:get-foundation-model
                              #:get-foundation-model-availability
                              #:get-guardrail #:get-imported-model
                              #:get-inference-profile
                              #:get-marketplace-model-endpoint
                              #:get-model-copy-job
                              #:get-model-customization-job
                              #:get-model-import-job #:get-model-invocation-job
                              #:get-model-invocation-logging-configuration
                              #:get-prompt-router
                              #:get-provisioned-model-throughput
                              #:get-use-case-for-model-access #:guardrail-arn
                              #:guardrail-automated-reasoning-policy
                              #:guardrail-automated-reasoning-policy-config
                              #:guardrail-blocked-messaging
                              #:guardrail-configuration
                              #:guardrail-content-filter
                              #:guardrail-content-filter-action
                              #:guardrail-content-filter-config
                              #:guardrail-content-filter-type
                              #:guardrail-content-filters
                              #:guardrail-content-filters-config
                              #:guardrail-content-filters-tier
                              #:guardrail-content-filters-tier-config
                              #:guardrail-content-filters-tier-name
                              #:guardrail-content-policy
                              #:guardrail-content-policy-config
                              #:guardrail-contextual-grounding-action
                              #:guardrail-contextual-grounding-filter
                              #:guardrail-contextual-grounding-filter-config
                              #:guardrail-contextual-grounding-filter-type
                              #:guardrail-contextual-grounding-filters
                              #:guardrail-contextual-grounding-filters-config
                              #:guardrail-contextual-grounding-policy
                              #:guardrail-contextual-grounding-policy-config
                              #:guardrail-cross-region-config
                              #:guardrail-cross-region-details
                              #:guardrail-cross-region-guardrail-profile-arn
                              #:guardrail-cross-region-guardrail-profile-id
                              #:guardrail-cross-region-guardrail-profile-identifier
                              #:guardrail-description #:guardrail-draft-version
                              #:guardrail-failure-recommendation
                              #:guardrail-failure-recommendations
                              #:guardrail-filter-strength #:guardrail-id
                              #:guardrail-identifier
                              #:guardrail-managed-word-lists
                              #:guardrail-managed-word-lists-config
                              #:guardrail-managed-words
                              #:guardrail-managed-words-config
                              #:guardrail-managed-words-type
                              #:guardrail-modalities #:guardrail-modality
                              #:guardrail-name #:guardrail-numerical-version
                              #:guardrail-pii-entities
                              #:guardrail-pii-entities-config
                              #:guardrail-pii-entity
                              #:guardrail-pii-entity-config
                              #:guardrail-pii-entity-type #:guardrail-regex
                              #:guardrail-regex-config #:guardrail-regexes
                              #:guardrail-regexes-config
                              #:guardrail-sensitive-information-action
                              #:guardrail-sensitive-information-policy
                              #:guardrail-sensitive-information-policy-config
                              #:guardrail-status #:guardrail-status-reason
                              #:guardrail-status-reasons #:guardrail-summaries
                              #:guardrail-summary #:guardrail-topic
                              #:guardrail-topic-action #:guardrail-topic-config
                              #:guardrail-topic-definition
                              #:guardrail-topic-example
                              #:guardrail-topic-examples #:guardrail-topic-name
                              #:guardrail-topic-policy
                              #:guardrail-topic-policy-config
                              #:guardrail-topic-type #:guardrail-topics
                              #:guardrail-topics-config #:guardrail-topics-tier
                              #:guardrail-topics-tier-config
                              #:guardrail-topics-tier-name #:guardrail-version
                              #:guardrail-word #:guardrail-word-action
                              #:guardrail-word-config #:guardrail-word-policy
                              #:guardrail-word-policy-config #:guardrail-words
                              #:guardrail-words-config #:guardrails-resource
                              #:human-evaluation-config
                              #:human-evaluation-custom-metric
                              #:human-evaluation-custom-metrics
                              #:human-task-instructions #:human-workflow-config
                              #:idempotency-token #:identifier
                              #:implicit-filter-configuration
                              #:imported-model-arn #:imported-model-identifier
                              #:imported-model-name #:imported-model-summary
                              #:imported-model-summary-list
                              #:inference-profile-arn
                              #:inference-profile-description
                              #:inference-profile-id
                              #:inference-profile-identifier
                              #:inference-profile-model
                              #:inference-profile-model-source
                              #:inference-profile-model-source-arn
                              #:inference-profile-models
                              #:inference-profile-name
                              #:inference-profile-resource
                              #:inference-profile-status
                              #:inference-profile-summaries
                              #:inference-profile-summary
                              #:inference-profile-type #:inference-type
                              #:inference-type-list #:instance-count
                              #:instance-type #:instruct-supported
                              #:invocation-log-source #:invocation-logs-config
                              #:job-name #:job-status-details
                              #:kb-inference-config #:key-prefix #:kms-key-arn
                              #:kms-key-id #:knowledge-base-config
                              #:knowledge-base-id
                              #:knowledge-base-retrieval-configuration
                              #:knowledge-base-retrieve-and-generate-configuration
                              #:knowledge-base-vector-search-configuration
                              #:legal-term #:list-automated-reasoning-policies
                              #:list-automated-reasoning-policy-build-workflows
                              #:list-automated-reasoning-policy-test-cases
                              #:list-automated-reasoning-policy-test-results
                              #:list-custom-model-deployments
                              #:list-custom-models #:list-evaluation-jobs
                              #:list-foundation-model-agreement-offers
                              #:list-foundation-models #:list-guardrails
                              #:list-imported-models #:list-inference-profiles
                              #:list-marketplace-model-endpoints
                              #:list-model-copy-jobs
                              #:list-model-customization-jobs
                              #:list-model-import-jobs
                              #:list-model-invocation-jobs
                              #:list-prompt-routers
                              #:list-provisioned-model-throughputs
                              #:list-tags-for-resource #:log-group-name
                              #:logging-config #:logging-resource
                              #:marketplace-model-endpoint
                              #:marketplace-model-endpoint-summaries
                              #:marketplace-model-endpoint-summary
                              #:max-results #:max-tokens #:message
                              #:metadata-attribute-schema
                              #:metadata-attribute-schema-list
                              #:metadata-configuration-for-reranking
                              #:metric-float #:metric-name #:model-architecture
                              #:model-arn #:model-copy-job-arn
                              #:model-copy-job-status
                              #:model-copy-job-summaries
                              #:model-copy-job-summary #:model-copy-resource
                              #:model-customization
                              #:model-customization-hyper-parameters
                              #:model-customization-job-arn
                              #:model-customization-job-identifier
                              #:model-customization-job-status
                              #:model-customization-job-summaries
                              #:model-customization-job-summary
                              #:model-customization-list #:model-data-source
                              #:model-deployment-name #:model-id
                              #:model-identifier #:model-import-job-arn
                              #:model-import-job-identifier
                              #:model-import-job-status
                              #:model-import-job-summaries
                              #:model-import-job-summary
                              #:model-import-resource
                              #:model-invocation-idempotency-token
                              #:model-invocation-job-arn
                              #:model-invocation-job-identifier
                              #:model-invocation-job-input-data-config
                              #:model-invocation-job-name
                              #:model-invocation-job-output-data-config
                              #:model-invocation-job-resource
                              #:model-invocation-job-s3input-data-config
                              #:model-invocation-job-s3output-data-config
                              #:model-invocation-job-status
                              #:model-invocation-job-summaries
                              #:model-invocation-job-summary
                              #:model-invocation-job-timeout-duration-in-hours
                              #:model-modality #:model-modality-list
                              #:model-name #:model-resource
                              #:model-source-identifier #:model-status
                              #:non-blank-string #:offer #:offer-id
                              #:offer-token #:offer-type #:offers
                              #:orchestration-configuration
                              #:output-data-config #:pagination-token
                              #:performance-config-latency
                              #:performance-configuration #:positive-integer
                              #:pricing-term #:prompt-router-arn
                              #:prompt-router-description #:prompt-router-name
                              #:prompt-router-resource #:prompt-router-status
                              #:prompt-router-summaries #:prompt-router-summary
                              #:prompt-router-target-model
                              #:prompt-router-target-model-arn
                              #:prompt-router-target-models
                              #:prompt-router-type #:prompt-template #:provider
                              #:provisioned-model-arn #:provisioned-model-id
                              #:provisioned-model-name
                              #:provisioned-model-status
                              #:provisioned-model-summaries
                              #:provisioned-model-summary
                              #:provisioned-model-throughput-resource
                              #:put-model-invocation-logging-configuration
                              #:put-use-case-for-model-access
                              #:query-transformation-configuration
                              #:query-transformation-type #:ragconfig
                              #:ragstop-sequences #:rag-configs #:rate-card
                              #:rating-scale #:rating-scale-item
                              #:rating-scale-item-definition
                              #:rating-scale-item-value #:region-availability
                              #:register-marketplace-model-endpoint
                              #:request-metadata-base-filters
                              #:request-metadata-filters
                              #:request-metadata-filters-list
                              #:request-metadata-map
                              #:reranking-metadata-selection-mode
                              #:reranking-metadata-selective-mode-configuration
                              #:retrieval-filter #:retrieval-filter-list
                              #:retrieve-and-generate-configuration
                              #:retrieve-and-generate-type #:retrieve-config
                              #:role-arn #:routing-criteria #:s3config
                              #:s3data-source #:s3input-format #:s3object-doc
                              #:s3uri #:sage-maker-endpoint
                              #:sage-maker-flow-definition-arn #:search-type
                              #:security-group-id #:security-group-ids
                              #:sort-by-provisioned-models #:sort-jobs-by
                              #:sort-models-by #:sort-order
                              #:start-automated-reasoning-policy-build-workflow
                              #:start-automated-reasoning-policy-test-workflow
                              #:status #:status-details #:stop-evaluation-job
                              #:stop-model-customization-job
                              #:stop-model-invocation-job #:subnet-id
                              #:subnet-ids #:subscription-resource
                              #:support-term #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:taggable-resources-arn #:tagging-resource
                              #:teacher-model-config #:teacher-model-identifier
                              #:temperature #:term-details
                              #:text-inference-config #:text-prompt-template
                              #:timestamp #:top-p #:training-data-config
                              #:training-details #:training-metrics
                              #:training-resource #:untag-resource
                              #:update-automated-reasoning-policy
                              #:update-automated-reasoning-policy-annotations
                              #:update-automated-reasoning-policy-test-case
                              #:update-guardrail
                              #:update-marketplace-model-endpoint
                              #:update-provisioned-model-throughput
                              #:use-prompt-response #:validation-data-config
                              #:validation-details #:validation-metrics
                              #:validator #:validator-metric #:validators
                              #:validity-term
                              #:vector-search-bedrock-reranking-configuration
                              #:vector-search-bedrock-reranking-model-configuration
                              #:vector-search-reranking-configuration
                              #:vector-search-reranking-configuration-type
                              #:vpc-config #:k-bs3uri))
(common-lisp:in-package #:pira/bedrock)

(smithy/sdk/service:define-service amazon-bedrock-control-plane-service
                                   :shape-name
                                   "AmazonBedrockControlPlaneService" :version
                                   "2023-04-20" :title "Amazon Bedrock"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service" ("sdkId" . "Bedrock")
                                      ("endpointPrefix" . "bedrock"))
                                     ("aws.auth#sigv4" ("name" . "bedrock"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type accept-eula smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type acknowledgement-form-data-body
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-map additional-model-request-fields :key
                              additional-model-request-fields-key :value
                              additional-model-request-fields-value)

(smithy/sdk/shapes:define-type additional-model-request-fields-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type additional-model-request-fields-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure agreement-availability common-lisp:nil
                                    ((status :target-type agreement-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "AgreementAvailability"))

(smithy/sdk/shapes:define-enum agreement-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending "PENDING")
  (:not-available "NOT_AVAILABLE")
  (:error "ERROR"))

common-lisp:nil

(smithy/sdk/shapes:define-enum application-type
    common-lisp:nil
  (:model-evaluation "ModelEvaluation")
  (:rag-evaluation "RagEvaluation"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attribute-type
    common-lisp:nil
  (:string "STRING")
  (:number "NUMBER")
  (:boolean "BOOLEAN")
  (:string-list "STRING_LIST"))

(smithy/sdk/shapes:define-enum authorization-status
    common-lisp:nil
  (:authorized "AUTHORIZED")
  (:not-authorized "NOT_AUTHORIZED"))

(smithy/sdk/shapes:define-structure automated-evaluation-config common-lisp:nil
                                    ((dataset-metric-configs :target-type
                                      evaluation-dataset-metric-configs
                                      :required common-lisp:t :member-name
                                      "datasetMetricConfigs")
                                     (evaluator-model-config :target-type
                                      evaluator-model-config :member-name
                                      "evaluatorModelConfig")
                                     (custom-metric-config :target-type
                                      automated-evaluation-custom-metric-config
                                      :member-name "customMetricConfig"))
                                    (:shape-name "AutomatedEvaluationConfig"))

(smithy/sdk/shapes:define-structure automated-evaluation-custom-metric-config
                                    common-lisp:nil
                                    ((custom-metrics :target-type
                                      automated-evaluation-custom-metrics
                                      :required common-lisp:t :member-name
                                      "customMetrics")
                                     (evaluator-model-config :target-type
                                      custom-metric-evaluator-model-config
                                      :required common-lisp:t :member-name
                                      "evaluatorModelConfig"))
                                    (:shape-name
                                     "AutomatedEvaluationCustomMetricConfig"))

(smithy/sdk/shapes:define-union automated-evaluation-custom-metric-source
                                common-lisp:nil
                                ((custom-metric-definition :target-type
                                  custom-metric-definition :member-name
                                  "customMetricDefinition"))
                                (:shape-name
                                 "AutomatedEvaluationCustomMetricSource"))

(smithy/sdk/shapes:define-list automated-evaluation-custom-metrics :member
                               automated-evaluation-custom-metric-source)

(smithy/sdk/shapes:define-list
 automated-reasoning-check-difference-scenario-list :member
 automated-reasoning-check-scenario)

(smithy/sdk/shapes:define-union automated-reasoning-check-finding
                                common-lisp:nil
                                ((valid :target-type
                                  automated-reasoning-check-valid-finding
                                  :member-name "valid")
                                 (invalid :target-type
                                  automated-reasoning-check-invalid-finding
                                  :member-name "invalid")
                                 (satisfiable :target-type
                                  automated-reasoning-check-satisfiable-finding
                                  :member-name "satisfiable")
                                 (impossible :target-type
                                  automated-reasoning-check-impossible-finding
                                  :member-name "impossible")
                                 (translation-ambiguous :target-type
                                  automated-reasoning-check-translation-ambiguous-finding
                                  :member-name "translationAmbiguous")
                                 (too-complex :target-type
                                  automated-reasoning-check-too-complex-finding
                                  :member-name "tooComplex")
                                 (no-translations :target-type
                                  automated-reasoning-check-no-translations-finding
                                  :member-name "noTranslations"))
                                (:shape-name "AutomatedReasoningCheckFinding"))

(smithy/sdk/shapes:define-list automated-reasoning-check-finding-list :member
                               automated-reasoning-check-finding)

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-impossible-finding common-lisp:nil
 ((translation :target-type automated-reasoning-check-translation :member-name
   "translation")
  (contradicting-rules :target-type automated-reasoning-check-rule-list
   :member-name "contradictingRules")
  (logic-warning :target-type automated-reasoning-check-logic-warning
   :member-name "logicWarning"))
 (:shape-name "AutomatedReasoningCheckImpossibleFinding"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-input-text-reference common-lisp:nil
 ((text :target-type automated-reasoning-natural-language-statement-content
   :member-name "text"))
 (:shape-name "AutomatedReasoningCheckInputTextReference"))

(smithy/sdk/shapes:define-list
 automated-reasoning-check-input-text-reference-list :member
 automated-reasoning-check-input-text-reference)

(smithy/sdk/shapes:define-structure automated-reasoning-check-invalid-finding
                                    common-lisp:nil
                                    ((translation :target-type
                                      automated-reasoning-check-translation
                                      :member-name "translation")
                                     (contradicting-rules :target-type
                                      automated-reasoning-check-rule-list
                                      :member-name "contradictingRules")
                                     (logic-warning :target-type
                                      automated-reasoning-check-logic-warning
                                      :member-name "logicWarning"))
                                    (:shape-name
                                     "AutomatedReasoningCheckInvalidFinding"))

(smithy/sdk/shapes:define-structure automated-reasoning-check-logic-warning
                                    common-lisp:nil
                                    ((type :target-type
                                      automated-reasoning-check-logic-warning-type
                                      :member-name "type")
                                     (premises :target-type
                                      automated-reasoning-logic-statement-list
                                      :member-name "premises")
                                     (claims :target-type
                                      automated-reasoning-logic-statement-list
                                      :member-name "claims"))
                                    (:shape-name
                                     "AutomatedReasoningCheckLogicWarning"))

(smithy/sdk/shapes:define-enum automated-reasoning-check-logic-warning-type
    common-lisp:nil
  (:always-true "ALWAYS_TRUE")
  (:always-false "ALWAYS_FALSE"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-no-translations-finding common-lisp:nil
 common-lisp:nil (:shape-name "AutomatedReasoningCheckNoTranslationsFinding"))

(smithy/sdk/shapes:define-enum automated-reasoning-check-result
    common-lisp:nil
  (:valid "VALID")
  (:invalid "INVALID")
  (:satisfiable "SATISFIABLE")
  (:impossible "IMPOSSIBLE")
  (:translation-ambiguous "TRANSLATION_AMBIGUOUS")
  (:too-complex "TOO_COMPLEX")
  (:no-translation "NO_TRANSLATION"))

(smithy/sdk/shapes:define-structure automated-reasoning-check-rule
                                    common-lisp:nil
                                    ((id :target-type
                                      automated-reasoning-policy-definition-rule-id
                                      :member-name "id")
                                     (policy-version-arn :target-type
                                      automated-reasoning-policy-arn
                                      :member-name "policyVersionArn"))
                                    (:shape-name "AutomatedReasoningCheckRule"))

(smithy/sdk/shapes:define-list automated-reasoning-check-rule-list :member
                               automated-reasoning-check-rule)

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-satisfiable-finding common-lisp:nil
 ((translation :target-type automated-reasoning-check-translation :member-name
   "translation")
  (claims-true-scenario :target-type automated-reasoning-check-scenario
   :member-name "claimsTrueScenario")
  (claims-false-scenario :target-type automated-reasoning-check-scenario
   :member-name "claimsFalseScenario")
  (logic-warning :target-type automated-reasoning-check-logic-warning
   :member-name "logicWarning"))
 (:shape-name "AutomatedReasoningCheckSatisfiableFinding"))

(smithy/sdk/shapes:define-structure automated-reasoning-check-scenario
                                    common-lisp:nil
                                    ((statements :target-type
                                      automated-reasoning-logic-statement-list
                                      :member-name "statements"))
                                    (:shape-name
                                     "AutomatedReasoningCheckScenario"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-too-complex-finding common-lisp:nil common-lisp:nil
 (:shape-name "AutomatedReasoningCheckTooComplexFinding"))

(smithy/sdk/shapes:define-structure automated-reasoning-check-translation
                                    common-lisp:nil
                                    ((premises :target-type
                                      automated-reasoning-logic-statement-list
                                      :member-name "premises")
                                     (claims :target-type
                                      automated-reasoning-logic-statement-list
                                      :required common-lisp:t :member-name
                                      "claims")
                                     (untranslated-premises :target-type
                                      automated-reasoning-check-input-text-reference-list
                                      :member-name "untranslatedPremises")
                                     (untranslated-claims :target-type
                                      automated-reasoning-check-input-text-reference-list
                                      :member-name "untranslatedClaims")
                                     (confidence :target-type
                                      automated-reasoning-check-translation-confidence
                                      :required common-lisp:t :member-name
                                      "confidence"))
                                    (:shape-name
                                     "AutomatedReasoningCheckTranslation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-translation-ambiguous-finding common-lisp:nil
 ((options :target-type automated-reasoning-check-translation-option-list
   :member-name "options")
  (difference-scenarios :target-type
   automated-reasoning-check-difference-scenario-list :member-name
   "differenceScenarios"))
 (:shape-name "AutomatedReasoningCheckTranslationAmbiguousFinding"))

(smithy/sdk/shapes:define-type automated-reasoning-check-translation-confidence
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list automated-reasoning-check-translation-list
                               :member automated-reasoning-check-translation)

(smithy/sdk/shapes:define-structure
 automated-reasoning-check-translation-option common-lisp:nil
 ((translations :target-type automated-reasoning-check-translation-list
   :member-name "translations"))
 (:shape-name "AutomatedReasoningCheckTranslationOption"))

(smithy/sdk/shapes:define-list
 automated-reasoning-check-translation-option-list :member
 automated-reasoning-check-translation-option)

(smithy/sdk/shapes:define-structure automated-reasoning-check-valid-finding
                                    common-lisp:nil
                                    ((translation :target-type
                                      automated-reasoning-check-translation
                                      :member-name "translation")
                                     (claims-true-scenario :target-type
                                      automated-reasoning-check-scenario
                                      :member-name "claimsTrueScenario")
                                     (supporting-rules :target-type
                                      automated-reasoning-check-rule-list
                                      :member-name "supportingRules")
                                     (logic-warning :target-type
                                      automated-reasoning-check-logic-warning
                                      :member-name "logicWarning"))
                                    (:shape-name
                                     "AutomatedReasoningCheckValidFinding"))

(smithy/sdk/shapes:define-type automated-reasoning-confidence-filter-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure automated-reasoning-logic-statement
                                    common-lisp:nil
                                    ((logic :target-type
                                      automated-reasoning-logic-statement-content
                                      :required common-lisp:t :member-name
                                      "logic")
                                     (natural-language :target-type
                                      automated-reasoning-natural-language-statement-content
                                      :member-name "naturalLanguage"))
                                    (:shape-name
                                     "AutomatedReasoningLogicStatement"))

(smithy/sdk/shapes:define-type automated-reasoning-logic-statement-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-logic-statement-list :member
                               automated-reasoning-logic-statement)

(smithy/sdk/shapes:define-type
 automated-reasoning-natural-language-statement-content
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-rule-annotation common-lisp:nil
 ((expression :target-type
   automated-reasoning-policy-definition-rule-expression :required
   common-lisp:t :member-name "expression"))
 (:shape-name "AutomatedReasoningPolicyAddRuleAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-rule-from-natural-language-annotation
 common-lisp:nil
 ((natural-language :target-type
   automated-reasoning-policy-annotation-rule-natural-language :required
   common-lisp:t :member-name "naturalLanguage"))
 (:shape-name "AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-rule-mutation common-lisp:nil
 ((rule :target-type automated-reasoning-policy-definition-rule :required
   common-lisp:t :member-name "rule"))
 (:shape-name "AutomatedReasoningPolicyAddRuleMutation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-type-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "name")
  (description :target-type
   automated-reasoning-policy-definition-type-description :required
   common-lisp:t :member-name "description")
  (values :target-type automated-reasoning-policy-definition-type-value-list
   :required common-lisp:t :member-name "values"))
 (:shape-name "AutomatedReasoningPolicyAddTypeAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-type-mutation common-lisp:nil
 ((type :target-type automated-reasoning-policy-definition-type :required
   common-lisp:t :member-name "type"))
 (:shape-name "AutomatedReasoningPolicyAddTypeMutation"))

(smithy/sdk/shapes:define-structure automated-reasoning-policy-add-type-value
                                    common-lisp:nil
                                    ((value :target-type
                                      automated-reasoning-policy-definition-type-value-name
                                      :required common-lisp:t :member-name
                                      "value")
                                     (description :target-type
                                      automated-reasoning-policy-definition-type-value-description
                                      :member-name "description"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyAddTypeValue"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-variable-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-variable-name
   :required common-lisp:t :member-name "name")
  (type :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "type")
  (description :target-type
   automated-reasoning-policy-definition-variable-description :required
   common-lisp:t :member-name "description"))
 (:shape-name "AutomatedReasoningPolicyAddVariableAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-add-variable-mutation common-lisp:nil
 ((variable :target-type automated-reasoning-policy-definition-variable
   :required common-lisp:t :member-name "variable"))
 (:shape-name "AutomatedReasoningPolicyAddVariableMutation"))

(smithy/sdk/shapes:define-union automated-reasoning-policy-annotation
                                common-lisp:nil
                                ((add-type :target-type
                                  automated-reasoning-policy-add-type-annotation
                                  :member-name "addType")
                                 (update-type :target-type
                                  automated-reasoning-policy-update-type-annotation
                                  :member-name "updateType")
                                 (delete-type :target-type
                                  automated-reasoning-policy-delete-type-annotation
                                  :member-name "deleteType")
                                 (add-variable :target-type
                                  automated-reasoning-policy-add-variable-annotation
                                  :member-name "addVariable")
                                 (update-variable :target-type
                                  automated-reasoning-policy-update-variable-annotation
                                  :member-name "updateVariable")
                                 (delete-variable :target-type
                                  automated-reasoning-policy-delete-variable-annotation
                                  :member-name "deleteVariable")
                                 (add-rule :target-type
                                  automated-reasoning-policy-add-rule-annotation
                                  :member-name "addRule")
                                 (update-rule :target-type
                                  automated-reasoning-policy-update-rule-annotation
                                  :member-name "updateRule")
                                 (delete-rule :target-type
                                  automated-reasoning-policy-delete-rule-annotation
                                  :member-name "deleteRule")
                                 (add-rule-from-natural-language :target-type
                                  automated-reasoning-policy-add-rule-from-natural-language-annotation
                                  :member-name "addRuleFromNaturalLanguage")
                                 (update-from-rules-feedback :target-type
                                  automated-reasoning-policy-update-from-rule-feedback-annotation
                                  :member-name "updateFromRulesFeedback")
                                 (update-from-scenario-feedback :target-type
                                  automated-reasoning-policy-update-from-scenario-feedback-annotation
                                  :member-name "updateFromScenarioFeedback")
                                 (ingest-content :target-type
                                  automated-reasoning-policy-ingest-content-annotation
                                  :member-name "ingestContent"))
                                (:shape-name
                                 "AutomatedReasoningPolicyAnnotation"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-annotation-feedback-natural-language
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-annotation-ingest-content
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-annotation-list
                               :member automated-reasoning-policy-annotation)

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-annotation-rule-natural-language
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum automated-reasoning-policy-annotation-status
    common-lisp:nil
  (:applied "APPLIED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type automated-reasoning-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-arn-list :member
                               automated-reasoning-policy-arn)

(smithy/sdk/shapes:define-enum automated-reasoning-policy-build-document-content-type
    common-lisp:nil
  (:pdf "pdf")
  (:text "txt"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-build-document-description
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automated-reasoning-policy-build-document-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-build-log
                                    common-lisp:nil
                                    ((entries :target-type
                                      automated-reasoning-policy-build-log-entry-list
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyBuildLog"))

(smithy/sdk/shapes:define-structure automated-reasoning-policy-build-log-entry
                                    common-lisp:nil
                                    ((annotation :target-type
                                      automated-reasoning-policy-annotation
                                      :required common-lisp:t :member-name
                                      "annotation")
                                     (status :target-type
                                      automated-reasoning-policy-annotation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (build-steps :target-type
                                      automated-reasoning-policy-build-step-list
                                      :required common-lisp:t :member-name
                                      "buildSteps"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyBuildLogEntry"))

(smithy/sdk/shapes:define-list automated-reasoning-policy-build-log-entry-list
                               :member
                               automated-reasoning-policy-build-log-entry)

(smithy/sdk/shapes:define-enum automated-reasoning-policy-build-message-type
    common-lisp:nil
  (:info "INFO")
  (:warning "WARNING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum automated-reasoning-policy-build-result-asset-type
    common-lisp:nil
  (:build-log "BUILD_LOG")
  (:quality-report "QUALITY_REPORT")
  (:policy-definition "POLICY_DEFINITION"))

(smithy/sdk/shapes:define-union automated-reasoning-policy-build-result-assets
                                common-lisp:nil
                                ((policy-definition :target-type
                                  automated-reasoning-policy-definition
                                  :member-name "policyDefinition")
                                 (quality-report :target-type
                                  automated-reasoning-policy-definition-quality-report
                                  :member-name "qualityReport")
                                 (build-log :target-type
                                  automated-reasoning-policy-build-log
                                  :member-name "buildLog"))
                                (:shape-name
                                 "AutomatedReasoningPolicyBuildResultAssets"))

(smithy/sdk/shapes:define-structure automated-reasoning-policy-build-step
                                    common-lisp:nil
                                    ((context :target-type
                                      automated-reasoning-policy-build-step-context
                                      :required common-lisp:t :member-name
                                      "context")
                                     (prior-element :target-type
                                      automated-reasoning-policy-definition-element
                                      :member-name "priorElement")
                                     (messages :target-type
                                      automated-reasoning-policy-build-step-message-list
                                      :required common-lisp:t :member-name
                                      "messages"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyBuildStep"))

(smithy/sdk/shapes:define-union automated-reasoning-policy-build-step-context
                                common-lisp:nil
                                ((planning :target-type
                                  automated-reasoning-policy-planning
                                  :member-name "planning")
                                 (mutation :target-type
                                  automated-reasoning-policy-mutation
                                  :member-name "mutation"))
                                (:shape-name
                                 "AutomatedReasoningPolicyBuildStepContext"))

(smithy/sdk/shapes:define-list automated-reasoning-policy-build-step-list
                               :member automated-reasoning-policy-build-step)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-build-step-message common-lisp:nil
 ((message :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "message")
  (message-type :target-type automated-reasoning-policy-build-message-type
   :required common-lisp:t :member-name "messageType"))
 (:shape-name "AutomatedReasoningPolicyBuildStepMessage"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-build-step-message-list :member
 automated-reasoning-policy-build-step-message)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-build-workflow-document common-lisp:nil
 ((document :target-type smithy/sdk/smithy-types:blob :required common-lisp:t
   :member-name "document")
  (document-content-type :target-type
   automated-reasoning-policy-build-document-content-type :required
   common-lisp:t :member-name "documentContentType")
  (document-name :target-type automated-reasoning-policy-build-document-name
   :required common-lisp:t :member-name "documentName")
  (document-description :target-type
   automated-reasoning-policy-build-document-description :member-name
   "documentDescription"))
 (:shape-name "AutomatedReasoningPolicyBuildWorkflowDocument"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-build-workflow-document-list :member
 automated-reasoning-policy-build-workflow-document)

(smithy/sdk/shapes:define-type automated-reasoning-policy-build-workflow-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-build-workflow-repair-content common-lisp:nil
 ((annotations :target-type automated-reasoning-policy-annotation-list
   :required common-lisp:t :member-name "annotations"))
 (:shape-name "AutomatedReasoningPolicyBuildWorkflowRepairContent"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-build-workflow-source common-lisp:nil
 ((policy-definition :target-type automated-reasoning-policy-definition
   :member-name "policyDefinition")
  (workflow-content :target-type
   automated-reasoning-policy-workflow-type-content :member-name
   "workflowContent"))
 (:shape-name "AutomatedReasoningPolicyBuildWorkflowSource"))

(smithy/sdk/shapes:define-enum automated-reasoning-policy-build-workflow-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:cancel-requested "CANCEL_REQUESTED")
  (:preprocessing "PREPROCESSING")
  (:building "BUILDING")
  (:testing "TESTING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-build-workflow-summaries :member
 automated-reasoning-policy-build-workflow-summary)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-build-workflow-summary common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId")
  (status :target-type automated-reasoning-policy-build-workflow-status
   :required common-lisp:t :member-name "status")
  (build-workflow-type :target-type
   automated-reasoning-policy-build-workflow-type :required common-lisp:t
   :member-name "buildWorkflowType")
  (created-at :target-type timestamp :required common-lisp:t :member-name
   "createdAt")
  (updated-at :target-type timestamp :required common-lisp:t :member-name
   "updatedAt"))
 (:shape-name "AutomatedReasoningPolicyBuildWorkflowSummary"))

(smithy/sdk/shapes:define-enum automated-reasoning-policy-build-workflow-type
    common-lisp:nil
  (:ingest-content "INGEST_CONTENT")
  (:refine-policy "REFINE_POLICY")
  (:import-policy "IMPORT_POLICY"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-conflicted-rule-id-list :member
 automated-reasoning-policy-definition-rule-id)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-definition
                                    common-lisp:nil
                                    ((version :target-type
                                      automated-reasoning-policy-format-version
                                      :member-name "version")
                                     (types :target-type
                                      automated-reasoning-policy-definition-type-list
                                      :member-name "types")
                                     (rules :target-type
                                      automated-reasoning-policy-definition-rule-list
                                      :member-name "rules")
                                     (variables :target-type
                                      automated-reasoning-policy-definition-variable-list
                                      :member-name "variables"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyDefinition"))

(smithy/sdk/shapes:define-union automated-reasoning-policy-definition-element
                                common-lisp:nil
                                ((policy-definition-variable :target-type
                                  automated-reasoning-policy-definition-variable
                                  :member-name "policyDefinitionVariable")
                                 (policy-definition-type :target-type
                                  automated-reasoning-policy-definition-type
                                  :member-name "policyDefinitionType")
                                 (policy-definition-rule :target-type
                                  automated-reasoning-policy-definition-rule
                                  :member-name "policyDefinitionRule"))
                                (:shape-name
                                 "AutomatedReasoningPolicyDefinitionElement"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-definition-quality-report common-lisp:nil
 ((type-count :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "typeCount")
  (variable-count :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "variableCount")
  (rule-count :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "ruleCount")
  (unused-types :target-type
   automated-reasoning-policy-definition-type-name-list :required common-lisp:t
   :member-name "unusedTypes")
  (unused-type-values :target-type
   automated-reasoning-policy-definition-type-value-pair-list :required
   common-lisp:t :member-name "unusedTypeValues")
  (unused-variables :target-type
   automated-reasoning-policy-definition-variable-name-list :required
   common-lisp:t :member-name "unusedVariables")
  (conflicting-rules :target-type
   automated-reasoning-policy-conflicted-rule-id-list :required common-lisp:t
   :member-name "conflictingRules")
  (disjoint-rule-sets :target-type
   automated-reasoning-policy-disjoint-rule-set-list :required common-lisp:t
   :member-name "disjointRuleSets"))
 (:shape-name "AutomatedReasoningPolicyDefinitionQualityReport"))

(smithy/sdk/shapes:define-structure automated-reasoning-policy-definition-rule
                                    common-lisp:nil
                                    ((id :target-type
                                      automated-reasoning-policy-definition-rule-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (expression :target-type
                                      automated-reasoning-policy-definition-rule-expression
                                      :required common-lisp:t :member-name
                                      "expression")
                                     (alternate-expression :target-type
                                      automated-reasoning-policy-definition-rule-alternate-expression
                                      :member-name "alternateExpression"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyDefinitionRule"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-rule-alternate-expression
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-rule-expression
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automated-reasoning-policy-definition-rule-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-rule-id-list :member
 automated-reasoning-policy-definition-rule-id)

(smithy/sdk/shapes:define-list automated-reasoning-policy-definition-rule-list
                               :member
                               automated-reasoning-policy-definition-rule)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-definition-type
                                    common-lisp:nil
                                    ((name :target-type
                                      automated-reasoning-policy-definition-type-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      automated-reasoning-policy-definition-type-description
                                      :member-name "description")
                                     (values :target-type
                                      automated-reasoning-policy-definition-type-value-list
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyDefinitionType"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-type-description
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-definition-type-list
                               :member
                               automated-reasoning-policy-definition-type)

(smithy/sdk/shapes:define-type automated-reasoning-policy-definition-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-type-name-list :member
 automated-reasoning-policy-definition-type-name)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-definition-type-value common-lisp:nil
 ((value :target-type automated-reasoning-policy-definition-type-value-name
   :required common-lisp:t :member-name "value")
  (description :target-type
   automated-reasoning-policy-definition-type-value-description :member-name
   "description"))
 (:shape-name "AutomatedReasoningPolicyDefinitionTypeValue"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-type-value-description
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-type-value-list :member
 automated-reasoning-policy-definition-type-value)

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-type-value-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-definition-type-value-pair common-lisp:nil
 ((type-name :target-type automated-reasoning-policy-definition-type-name
   :required common-lisp:t :member-name "typeName")
  (value-name :target-type
   automated-reasoning-policy-definition-type-value-name :required
   common-lisp:t :member-name "valueName"))
 (:shape-name "AutomatedReasoningPolicyDefinitionTypeValuePair"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-type-value-pair-list :member
 automated-reasoning-policy-definition-type-value-pair)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-definition-variable common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-variable-name
   :required common-lisp:t :member-name "name")
  (type :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "type")
  (description :target-type
   automated-reasoning-policy-definition-variable-description :required
   common-lisp:t :member-name "description"))
 (:shape-name "AutomatedReasoningPolicyDefinitionVariable"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-variable-description
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-variable-list :member
 automated-reasoning-policy-definition-variable)

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-definition-variable-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-definition-variable-name-list :member
 automated-reasoning-policy-definition-variable-name)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-rule-annotation common-lisp:nil
 ((rule-id :target-type automated-reasoning-policy-definition-rule-id :required
   common-lisp:t :member-name "ruleId"))
 (:shape-name "AutomatedReasoningPolicyDeleteRuleAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-rule-mutation common-lisp:nil
 ((id :target-type automated-reasoning-policy-definition-rule-id :required
   common-lisp:t :member-name "id"))
 (:shape-name "AutomatedReasoningPolicyDeleteRuleMutation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-type-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "name"))
 (:shape-name "AutomatedReasoningPolicyDeleteTypeAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-type-mutation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "name"))
 (:shape-name "AutomatedReasoningPolicyDeleteTypeMutation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-type-value common-lisp:nil
 ((value :target-type automated-reasoning-policy-definition-type-value-name
   :required common-lisp:t :member-name "value"))
 (:shape-name "AutomatedReasoningPolicyDeleteTypeValue"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-variable-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-variable-name
   :required common-lisp:t :member-name "name"))
 (:shape-name "AutomatedReasoningPolicyDeleteVariableAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-delete-variable-mutation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-variable-name
   :required common-lisp:t :member-name "name"))
 (:shape-name "AutomatedReasoningPolicyDeleteVariableMutation"))

(smithy/sdk/shapes:define-type automated-reasoning-policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-disjoint-rule-set common-lisp:nil
 ((variables :target-type
   automated-reasoning-policy-definition-variable-name-list :required
   common-lisp:t :member-name "variables")
  (rules :target-type automated-reasoning-policy-disjointed-rule-id-list
   :required common-lisp:t :member-name "rules"))
 (:shape-name "AutomatedReasoningPolicyDisjointRuleSet"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-disjoint-rule-set-list :member
 automated-reasoning-policy-disjoint-rule-set)

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-disjointed-rule-id-list :member
 automated-reasoning-policy-definition-rule-id)

(smithy/sdk/shapes:define-type automated-reasoning-policy-format-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automated-reasoning-policy-hash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automated-reasoning-policy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-ingest-content-annotation common-lisp:nil
 ((content :target-type automated-reasoning-policy-annotation-ingest-content
   :required common-lisp:t :member-name "content"))
 (:shape-name "AutomatedReasoningPolicyIngestContentAnnotation"))

(smithy/sdk/shapes:define-union automated-reasoning-policy-mutation
                                common-lisp:nil
                                ((add-type :target-type
                                  automated-reasoning-policy-add-type-mutation
                                  :member-name "addType")
                                 (update-type :target-type
                                  automated-reasoning-policy-update-type-mutation
                                  :member-name "updateType")
                                 (delete-type :target-type
                                  automated-reasoning-policy-delete-type-mutation
                                  :member-name "deleteType")
                                 (add-variable :target-type
                                  automated-reasoning-policy-add-variable-mutation
                                  :member-name "addVariable")
                                 (update-variable :target-type
                                  automated-reasoning-policy-update-variable-mutation
                                  :member-name "updateVariable")
                                 (delete-variable :target-type
                                  automated-reasoning-policy-delete-variable-mutation
                                  :member-name "deleteVariable")
                                 (add-rule :target-type
                                  automated-reasoning-policy-add-rule-mutation
                                  :member-name "addRule")
                                 (update-rule :target-type
                                  automated-reasoning-policy-update-rule-mutation
                                  :member-name "updateRule")
                                 (delete-rule :target-type
                                  automated-reasoning-policy-delete-rule-mutation
                                  :member-name "deleteRule"))
                                (:shape-name
                                 "AutomatedReasoningPolicyMutation"))

(smithy/sdk/shapes:define-type automated-reasoning-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-planning
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AutomatedReasoningPolicyPlanning"))

common-lisp:nil

(smithy/sdk/shapes:define-structure automated-reasoning-policy-scenario
                                    common-lisp:nil
                                    ((expression :target-type
                                      automated-reasoning-policy-scenario-expression
                                      :required common-lisp:t :member-name
                                      "expression")
                                     (alternate-expression :target-type
                                      automated-reasoning-policy-scenario-alternate-expression
                                      :required common-lisp:t :member-name
                                      "alternateExpression")
                                     (rule-ids :target-type
                                      automated-reasoning-policy-definition-rule-id-list
                                      :required common-lisp:t :member-name
                                      "ruleIds")
                                     (expected-result :target-type
                                      automated-reasoning-check-result
                                      :required common-lisp:t :member-name
                                      "expectedResult"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyScenario"))

(smithy/sdk/shapes:define-type
 automated-reasoning-policy-scenario-alternate-expression
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automated-reasoning-policy-scenario-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-summaries :member
                               automated-reasoning-policy-summary)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-summary
                                    common-lisp:nil
                                    ((policy-arn :target-type
                                      automated-reasoning-policy-arn :required
                                      common-lisp:t :member-name "policyArn")
                                     (name :target-type
                                      automated-reasoning-policy-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      automated-reasoning-policy-description
                                      :member-name "description")
                                     (version :target-type
                                      automated-reasoning-policy-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (policy-id :target-type
                                      automated-reasoning-policy-id :required
                                      common-lisp:t :member-name "policyId")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name
                                     "AutomatedReasoningPolicySummary"))

(smithy/sdk/shapes:define-structure automated-reasoning-policy-test-case
                                    common-lisp:nil
                                    ((test-case-id :target-type
                                      automated-reasoning-policy-test-case-id
                                      :required common-lisp:t :member-name
                                      "testCaseId")
                                     (guard-content :target-type
                                      automated-reasoning-policy-test-guard-content
                                      :required common-lisp:t :member-name
                                      "guardContent")
                                     (query-content :target-type
                                      automated-reasoning-policy-test-query-content
                                      :member-name "queryContent")
                                     (expected-aggregated-findings-result
                                      :target-type
                                      automated-reasoning-check-result
                                      :member-name
                                      "expectedAggregatedFindingsResult")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (confidence-threshold :target-type
                                      automated-reasoning-check-translation-confidence
                                      :member-name "confidenceThreshold"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyTestCase"))

(smithy/sdk/shapes:define-type automated-reasoning-policy-test-case-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-test-case-id-list
                               :member automated-reasoning-policy-test-case-id)

(smithy/sdk/shapes:define-list automated-reasoning-policy-test-case-list
                               :member automated-reasoning-policy-test-case)

(smithy/sdk/shapes:define-type automated-reasoning-policy-test-guard-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automated-reasoning-policy-test-list :member
                               automated-reasoning-policy-test-result)

(smithy/sdk/shapes:define-type automated-reasoning-policy-test-query-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automated-reasoning-policy-test-result
                                    common-lisp:nil
                                    ((test-case :target-type
                                      automated-reasoning-policy-test-case
                                      :required common-lisp:t :member-name
                                      "testCase")
                                     (policy-arn :target-type
                                      automated-reasoning-policy-arn :required
                                      common-lisp:t :member-name "policyArn")
                                     (test-run-status :target-type
                                      automated-reasoning-policy-test-run-status
                                      :required common-lisp:t :member-name
                                      "testRunStatus")
                                     (test-findings :target-type
                                      automated-reasoning-check-finding-list
                                      :member-name "testFindings")
                                     (test-run-result :target-type
                                      automated-reasoning-policy-test-run-result
                                      :member-name "testRunResult")
                                     (aggregated-test-findings-result
                                      :target-type
                                      automated-reasoning-check-result
                                      :member-name
                                      "aggregatedTestFindingsResult")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name
                                     "AutomatedReasoningPolicyTestResult"))

(smithy/sdk/shapes:define-enum automated-reasoning-policy-test-run-result
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum automated-reasoning-policy-test-run-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:scheduled "SCHEDULED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-union
 automated-reasoning-policy-type-value-annotation common-lisp:nil
 ((add-type-value :target-type automated-reasoning-policy-add-type-value
   :member-name "addTypeValue")
  (update-type-value :target-type automated-reasoning-policy-update-type-value
   :member-name "updateTypeValue")
  (delete-type-value :target-type automated-reasoning-policy-delete-type-value
   :member-name "deleteTypeValue"))
 (:shape-name "AutomatedReasoningPolicyTypeValueAnnotation"))

(smithy/sdk/shapes:define-list
 automated-reasoning-policy-type-value-annotation-list :member
 automated-reasoning-policy-type-value-annotation)

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-from-rule-feedback-annotation
 common-lisp:nil
 ((rule-ids :target-type automated-reasoning-policy-definition-rule-id-list
   :member-name "ruleIds")
  (feedback :target-type
   automated-reasoning-policy-annotation-feedback-natural-language :required
   common-lisp:t :member-name "feedback"))
 (:shape-name "AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-from-scenario-feedback-annotation
 common-lisp:nil
 ((rule-ids :target-type automated-reasoning-policy-definition-rule-id-list
   :member-name "ruleIds")
  (scenario-expression :target-type
   automated-reasoning-policy-scenario-expression :required common-lisp:t
   :member-name "scenarioExpression")
  (feedback :target-type
   automated-reasoning-policy-annotation-feedback-natural-language :member-name
   "feedback"))
 (:shape-name "AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-rule-annotation common-lisp:nil
 ((rule-id :target-type automated-reasoning-policy-definition-rule-id :required
   common-lisp:t :member-name "ruleId")
  (expression :target-type
   automated-reasoning-policy-definition-rule-expression :required
   common-lisp:t :member-name "expression"))
 (:shape-name "AutomatedReasoningPolicyUpdateRuleAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-rule-mutation common-lisp:nil
 ((rule :target-type automated-reasoning-policy-definition-rule :required
   common-lisp:t :member-name "rule"))
 (:shape-name "AutomatedReasoningPolicyUpdateRuleMutation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-type-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-type-name :required
   common-lisp:t :member-name "name")
  (new-name :target-type automated-reasoning-policy-definition-type-name
   :member-name "newName")
  (description :target-type
   automated-reasoning-policy-definition-type-description :member-name
   "description")
  (values :target-type automated-reasoning-policy-type-value-annotation-list
   :required common-lisp:t :member-name "values"))
 (:shape-name "AutomatedReasoningPolicyUpdateTypeAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-type-mutation common-lisp:nil
 ((type :target-type automated-reasoning-policy-definition-type :required
   common-lisp:t :member-name "type"))
 (:shape-name "AutomatedReasoningPolicyUpdateTypeMutation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-type-value common-lisp:nil
 ((value :target-type automated-reasoning-policy-definition-type-value-name
   :required common-lisp:t :member-name "value")
  (new-value :target-type automated-reasoning-policy-definition-type-value-name
   :member-name "newValue")
  (description :target-type
   automated-reasoning-policy-definition-type-value-description :member-name
   "description"))
 (:shape-name "AutomatedReasoningPolicyUpdateTypeValue"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-variable-annotation common-lisp:nil
 ((name :target-type automated-reasoning-policy-definition-variable-name
   :required common-lisp:t :member-name "name")
  (new-name :target-type automated-reasoning-policy-definition-variable-name
   :member-name "newName")
  (description :target-type
   automated-reasoning-policy-definition-variable-description :member-name
   "description"))
 (:shape-name "AutomatedReasoningPolicyUpdateVariableAnnotation"))

(smithy/sdk/shapes:define-structure
 automated-reasoning-policy-update-variable-mutation common-lisp:nil
 ((variable :target-type automated-reasoning-policy-definition-variable
   :required common-lisp:t :member-name "variable"))
 (:shape-name "AutomatedReasoningPolicyUpdateVariableMutation"))

(smithy/sdk/shapes:define-type automated-reasoning-policy-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union
 automated-reasoning-policy-workflow-type-content common-lisp:nil
 ((documents :target-type
   automated-reasoning-policy-build-workflow-document-list :member-name
   "documents")
  (policy-repair-assets :target-type
   automated-reasoning-policy-build-workflow-repair-content :member-name
   "policyRepairAssets"))
 (:shape-name "AutomatedReasoningPolicyWorkflowTypeContent"))

(smithy/sdk/shapes:define-type base-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-delete-evaluation-job-error
                                    common-lisp:nil
                                    ((job-identifier :target-type
                                      evaluation-job-identifier :required
                                      common-lisp:t :member-name
                                      "jobIdentifier")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name
                                     "BatchDeleteEvaluationJobError"))

(smithy/sdk/shapes:define-list batch-delete-evaluation-job-errors :member
                               batch-delete-evaluation-job-error)

(smithy/sdk/shapes:define-structure batch-delete-evaluation-job-item
                                    common-lisp:nil
                                    ((job-identifier :target-type
                                      evaluation-job-identifier :required
                                      common-lisp:t :member-name
                                      "jobIdentifier")
                                     (job-status :target-type
                                      evaluation-job-status :required
                                      common-lisp:t :member-name "jobStatus"))
                                    (:shape-name
                                     "BatchDeleteEvaluationJobItem"))

(smithy/sdk/shapes:define-list batch-delete-evaluation-job-items :member
                               batch-delete-evaluation-job-item)

(smithy/sdk/shapes:define-input batch-delete-evaluation-job-request
                                common-lisp:nil
                                ((job-identifiers :target-type
                                  evaluation-job-identifiers :required
                                  common-lisp:t :member-name "jobIdentifiers"))
                                (:shape-name "BatchDeleteEvaluationJobRequest"))

(smithy/sdk/shapes:define-output batch-delete-evaluation-job-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-evaluation-job-errors :required
                                   common-lisp:t :member-name "errors")
                                  (evaluation-jobs :target-type
                                   batch-delete-evaluation-job-items :required
                                   common-lisp:t :member-name
                                   "evaluationJobs"))
                                 (:shape-name
                                  "BatchDeleteEvaluationJobResponse"))

(smithy/sdk/shapes:define-structure bedrock-evaluator-model common-lisp:nil
                                    ((model-identifier :target-type
                                      evaluator-model-identifier :required
                                      common-lisp:t :member-name
                                      "modelIdentifier"))
                                    (:shape-name "BedrockEvaluatorModel"))

(smithy/sdk/shapes:define-list bedrock-evaluator-models :member
                               bedrock-evaluator-model)

common-lisp:nil

(smithy/sdk/shapes:define-type bedrock-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-model-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-reranking-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type branded-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type byte-content-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure byte-content-doc common-lisp:nil
                                    ((identifier :target-type identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "contentType")
                                     (data :target-type byte-content-blob
                                      :required common-lisp:t :member-name
                                      "data"))
                                    (:shape-name "ByteContentDoc"))

(smithy/sdk/shapes:define-input
 cancel-automated-reasoning-policy-build-workflow-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t))
 (:shape-name "CancelAutomatedReasoningPolicyBuildWorkflowRequest"))

(smithy/sdk/shapes:define-output
 cancel-automated-reasoning-policy-build-workflow-response common-lisp:nil
 common-lisp:nil
 (:shape-name "CancelAutomatedReasoningPolicyBuildWorkflowResponse"))

(smithy/sdk/shapes:define-structure cloud-watch-config common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :required common-lisp:t
                                      :member-name "logGroupName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (large-data-delivery-s3config :target-type
                                      s3config :member-name
                                      "largeDataDeliveryS3Config"))
                                    (:shape-name "CloudWatchConfig"))

(smithy/sdk/shapes:define-enum commitment-duration
    common-lisp:nil
  (:one-month "OneMonth")
  (:six-months "SixMonths"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-automated-reasoning-policy-request
                                common-lisp:nil
                                ((name :target-type
                                  automated-reasoning-policy-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  automated-reasoning-policy-description
                                  :member-name "description")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (policy-definition :target-type
                                  automated-reasoning-policy-definition
                                  :member-name "policyDefinition")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateAutomatedReasoningPolicyRequest"))

(smithy/sdk/shapes:define-output create-automated-reasoning-policy-response
                                 common-lisp:nil
                                 ((policy-arn :target-type
                                   automated-reasoning-policy-arn :required
                                   common-lisp:t :member-name "policyArn")
                                  (version :target-type
                                   automated-reasoning-policy-version :required
                                   common-lisp:t :member-name "version")
                                  (name :target-type
                                   automated-reasoning-policy-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   automated-reasoning-policy-description
                                   :member-name "description")
                                  (definition-hash :target-type
                                   automated-reasoning-policy-hash :member-name
                                   "definitionHash")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt"))
                                 (:shape-name
                                  "CreateAutomatedReasoningPolicyResponse"))

(smithy/sdk/shapes:define-input
 create-automated-reasoning-policy-test-case-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (guard-content :target-type automated-reasoning-policy-test-guard-content
   :required common-lisp:t :member-name "guardContent")
  (query-content :target-type automated-reasoning-policy-test-query-content
   :member-name "queryContent")
  (expected-aggregated-findings-result :target-type
   automated-reasoning-check-result :required common-lisp:t :member-name
   "expectedAggregatedFindingsResult")
  (client-request-token :target-type idempotency-token :member-name
   "clientRequestToken")
  (confidence-threshold :target-type
   automated-reasoning-check-translation-confidence :member-name
   "confidenceThreshold"))
 (:shape-name "CreateAutomatedReasoningPolicyTestCaseRequest"))

(smithy/sdk/shapes:define-output
 create-automated-reasoning-policy-test-case-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId"))
 (:shape-name "CreateAutomatedReasoningPolicyTestCaseResponse"))

(smithy/sdk/shapes:define-input
 create-automated-reasoning-policy-version-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (client-request-token :target-type idempotency-token :member-name
   "clientRequestToken")
  (last-updated-definition-hash :target-type automated-reasoning-policy-hash
   :required common-lisp:t :member-name "lastUpdatedDefinitionHash")
  (tags :target-type tag-list :member-name "tags"))
 (:shape-name "CreateAutomatedReasoningPolicyVersionRequest"))

(smithy/sdk/shapes:define-output
 create-automated-reasoning-policy-version-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (version :target-type automated-reasoning-policy-version :required
   common-lisp:t :member-name "version")
  (name :target-type automated-reasoning-policy-name :required common-lisp:t
   :member-name "name")
  (description :target-type automated-reasoning-policy-description :member-name
   "description")
  (definition-hash :target-type automated-reasoning-policy-hash :required
   common-lisp:t :member-name "definitionHash")
  (created-at :target-type timestamp :required common-lisp:t :member-name
   "createdAt"))
 (:shape-name "CreateAutomatedReasoningPolicyVersionResponse"))

(smithy/sdk/shapes:define-input create-custom-model-deployment-request
                                common-lisp:nil
                                ((model-deployment-name :target-type
                                  model-deployment-name :required common-lisp:t
                                  :member-name "modelDeploymentName")
                                 (model-arn :target-type custom-model-arn
                                  :required common-lisp:t :member-name
                                  "modelArn")
                                 (description :target-type
                                  custom-model-deployment-description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name
                                 "CreateCustomModelDeploymentRequest"))

(smithy/sdk/shapes:define-output create-custom-model-deployment-response
                                 common-lisp:nil
                                 ((custom-model-deployment-arn :target-type
                                   custom-model-deployment-arn :required
                                   common-lisp:t :member-name
                                   "customModelDeploymentArn"))
                                 (:shape-name
                                  "CreateCustomModelDeploymentResponse"))

(smithy/sdk/shapes:define-input create-custom-model-request common-lisp:nil
                                ((model-name :target-type custom-model-name
                                  :required common-lisp:t :member-name
                                  "modelName")
                                 (model-source-config :target-type
                                  model-data-source :required common-lisp:t
                                  :member-name "modelSourceConfig")
                                 (model-kms-key-arn :target-type kms-key-arn
                                  :member-name "modelKmsKeyArn")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (model-tags :target-type tag-list :member-name
                                  "modelTags")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "CreateCustomModelRequest"))

(smithy/sdk/shapes:define-output create-custom-model-response common-lisp:nil
                                 ((model-arn :target-type model-arn :required
                                   common-lisp:t :member-name "modelArn"))
                                 (:shape-name "CreateCustomModelResponse"))

(smithy/sdk/shapes:define-input create-evaluation-job-request common-lisp:nil
                                ((job-name :target-type evaluation-job-name
                                  :required common-lisp:t :member-name
                                  "jobName")
                                 (job-description :target-type
                                  evaluation-job-description :member-name
                                  "jobDescription")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (customer-encryption-key-id :target-type
                                  kms-key-id :member-name
                                  "customerEncryptionKeyId")
                                 (job-tags :target-type tag-list :member-name
                                  "jobTags")
                                 (application-type :target-type
                                  application-type :member-name
                                  "applicationType")
                                 (evaluation-config :target-type
                                  evaluation-config :required common-lisp:t
                                  :member-name "evaluationConfig")
                                 (inference-config :target-type
                                  evaluation-inference-config :required
                                  common-lisp:t :member-name "inferenceConfig")
                                 (output-data-config :target-type
                                  evaluation-output-data-config :required
                                  common-lisp:t :member-name
                                  "outputDataConfig"))
                                (:shape-name "CreateEvaluationJobRequest"))

(smithy/sdk/shapes:define-output create-evaluation-job-response common-lisp:nil
                                 ((job-arn :target-type evaluation-job-arn
                                   :required common-lisp:t :member-name
                                   "jobArn"))
                                 (:shape-name "CreateEvaluationJobResponse"))

(smithy/sdk/shapes:define-input create-foundation-model-agreement-request
                                common-lisp:nil
                                ((offer-token :target-type offer-token
                                  :required common-lisp:t :member-name
                                  "offerToken")
                                 (model-id :target-type bedrock-model-id
                                  :required common-lisp:t :member-name
                                  "modelId"))
                                (:shape-name
                                 "CreateFoundationModelAgreementRequest"))

(smithy/sdk/shapes:define-output create-foundation-model-agreement-response
                                 common-lisp:nil
                                 ((model-id :target-type bedrock-model-id
                                   :required common-lisp:t :member-name
                                   "modelId"))
                                 (:shape-name
                                  "CreateFoundationModelAgreementResponse"))

(smithy/sdk/shapes:define-input create-guardrail-request common-lisp:nil
                                ((name :target-type guardrail-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  guardrail-description :member-name
                                  "description")
                                 (topic-policy-config :target-type
                                  guardrail-topic-policy-config :member-name
                                  "topicPolicyConfig")
                                 (content-policy-config :target-type
                                  guardrail-content-policy-config :member-name
                                  "contentPolicyConfig")
                                 (word-policy-config :target-type
                                  guardrail-word-policy-config :member-name
                                  "wordPolicyConfig")
                                 (sensitive-information-policy-config
                                  :target-type
                                  guardrail-sensitive-information-policy-config
                                  :member-name
                                  "sensitiveInformationPolicyConfig")
                                 (contextual-grounding-policy-config
                                  :target-type
                                  guardrail-contextual-grounding-policy-config
                                  :member-name
                                  "contextualGroundingPolicyConfig")
                                 (automated-reasoning-policy-config
                                  :target-type
                                  guardrail-automated-reasoning-policy-config
                                  :member-name
                                  "automatedReasoningPolicyConfig")
                                 (cross-region-config :target-type
                                  guardrail-cross-region-config :member-name
                                  "crossRegionConfig")
                                 (blocked-input-messaging :target-type
                                  guardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedInputMessaging")
                                 (blocked-outputs-messaging :target-type
                                  guardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedOutputsMessaging")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "CreateGuardrailRequest"))

(smithy/sdk/shapes:define-output create-guardrail-response common-lisp:nil
                                 ((guardrail-id :target-type guardrail-id
                                   :required common-lisp:t :member-name
                                   "guardrailId")
                                  (guardrail-arn :target-type guardrail-arn
                                   :required common-lisp:t :member-name
                                   "guardrailArn")
                                  (version :target-type guardrail-draft-version
                                   :required common-lisp:t :member-name
                                   "version")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt"))
                                 (:shape-name "CreateGuardrailResponse"))

(smithy/sdk/shapes:define-input create-guardrail-version-request
                                common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :required common-lisp:t
                                  :member-name "guardrailIdentifier"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  guardrail-description :member-name
                                  "description")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "CreateGuardrailVersionRequest"))

(smithy/sdk/shapes:define-output create-guardrail-version-response
                                 common-lisp:nil
                                 ((guardrail-id :target-type guardrail-id
                                   :required common-lisp:t :member-name
                                   "guardrailId")
                                  (version :target-type
                                   guardrail-numerical-version :required
                                   common-lisp:t :member-name "version"))
                                 (:shape-name "CreateGuardrailVersionResponse"))

(smithy/sdk/shapes:define-input create-inference-profile-request
                                common-lisp:nil
                                ((inference-profile-name :target-type
                                  inference-profile-name :required
                                  common-lisp:t :member-name
                                  "inferenceProfileName")
                                 (description :target-type
                                  inference-profile-description :member-name
                                  "description")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (model-source :target-type
                                  inference-profile-model-source :required
                                  common-lisp:t :member-name "modelSource")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateInferenceProfileRequest"))

(smithy/sdk/shapes:define-output create-inference-profile-response
                                 common-lisp:nil
                                 ((inference-profile-arn :target-type
                                   inference-profile-arn :required
                                   common-lisp:t :member-name
                                   "inferenceProfileArn")
                                  (status :target-type inference-profile-status
                                   :member-name "status"))
                                 (:shape-name "CreateInferenceProfileResponse"))

(smithy/sdk/shapes:define-input create-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((model-source-identifier :target-type
                                  model-source-identifier :required
                                  common-lisp:t :member-name
                                  "modelSourceIdentifier")
                                 (endpoint-config :target-type endpoint-config
                                  :required common-lisp:t :member-name
                                  "endpointConfig")
                                 (accept-eula :target-type accept-eula
                                  :member-name "acceptEula")
                                 (endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "endpointName")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output create-marketplace-model-endpoint-response
                                 common-lisp:nil
                                 ((marketplace-model-endpoint :target-type
                                   marketplace-model-endpoint :required
                                   common-lisp:t :member-name
                                   "marketplaceModelEndpoint"))
                                 (:shape-name
                                  "CreateMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-input create-model-copy-job-request common-lisp:nil
                                ((source-model-arn :target-type model-arn
                                  :required common-lisp:t :member-name
                                  "sourceModelArn")
                                 (target-model-name :target-type
                                  custom-model-name :required common-lisp:t
                                  :member-name "targetModelName")
                                 (model-kms-key-id :target-type kms-key-id
                                  :member-name "modelKmsKeyId")
                                 (target-model-tags :target-type tag-list
                                  :member-name "targetModelTags")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "CreateModelCopyJobRequest"))

(smithy/sdk/shapes:define-output create-model-copy-job-response common-lisp:nil
                                 ((job-arn :target-type model-copy-job-arn
                                   :required common-lisp:t :member-name
                                   "jobArn"))
                                 (:shape-name "CreateModelCopyJobResponse"))

(smithy/sdk/shapes:define-input create-model-customization-job-request
                                common-lisp:nil
                                ((job-name :target-type job-name :required
                                  common-lisp:t :member-name "jobName")
                                 (custom-model-name :target-type
                                  custom-model-name :required common-lisp:t
                                  :member-name "customModelName")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (base-model-identifier :target-type
                                  base-model-identifier :required common-lisp:t
                                  :member-name "baseModelIdentifier")
                                 (customization-type :target-type
                                  customization-type :member-name
                                  "customizationType")
                                 (custom-model-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "customModelKmsKeyId")
                                 (job-tags :target-type tag-list :member-name
                                  "jobTags")
                                 (custom-model-tags :target-type tag-list
                                  :member-name "customModelTags")
                                 (training-data-config :target-type
                                  training-data-config :required common-lisp:t
                                  :member-name "trainingDataConfig")
                                 (validation-data-config :target-type
                                  validation-data-config :member-name
                                  "validationDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "outputDataConfig")
                                 (hyper-parameters :target-type
                                  model-customization-hyper-parameters
                                  :member-name "hyperParameters")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (customization-config :target-type
                                  customization-config :member-name
                                  "customizationConfig"))
                                (:shape-name
                                 "CreateModelCustomizationJobRequest"))

(smithy/sdk/shapes:define-output create-model-customization-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type
                                   model-customization-job-arn :required
                                   common-lisp:t :member-name "jobArn"))
                                 (:shape-name
                                  "CreateModelCustomizationJobResponse"))

(smithy/sdk/shapes:define-input create-model-import-job-request common-lisp:nil
                                ((job-name :target-type job-name :required
                                  common-lisp:t :member-name "jobName")
                                 (imported-model-name :target-type
                                  imported-model-name :required common-lisp:t
                                  :member-name "importedModelName")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (model-data-source :target-type
                                  model-data-source :required common-lisp:t
                                  :member-name "modelDataSource")
                                 (job-tags :target-type tag-list :member-name
                                  "jobTags")
                                 (imported-model-tags :target-type tag-list
                                  :member-name "importedModelTags")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (imported-model-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "importedModelKmsKeyId"))
                                (:shape-name "CreateModelImportJobRequest"))

(smithy/sdk/shapes:define-output create-model-import-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type model-import-job-arn
                                   :required common-lisp:t :member-name
                                   "jobArn"))
                                 (:shape-name "CreateModelImportJobResponse"))

(smithy/sdk/shapes:define-input create-model-invocation-job-request
                                common-lisp:nil
                                ((job-name :target-type
                                  model-invocation-job-name :required
                                  common-lisp:t :member-name "jobName")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-request-token :target-type
                                  model-invocation-idempotency-token
                                  :member-name "clientRequestToken")
                                 (model-id :target-type model-id :required
                                  common-lisp:t :member-name "modelId")
                                 (input-data-config :target-type
                                  model-invocation-job-input-data-config
                                  :required common-lisp:t :member-name
                                  "inputDataConfig")
                                 (output-data-config :target-type
                                  model-invocation-job-output-data-config
                                  :required common-lisp:t :member-name
                                  "outputDataConfig")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (timeout-duration-in-hours :target-type
                                  model-invocation-job-timeout-duration-in-hours
                                  :member-name "timeoutDurationInHours")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateModelInvocationJobRequest"))

(smithy/sdk/shapes:define-output create-model-invocation-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type
                                   model-invocation-job-arn :required
                                   common-lisp:t :member-name "jobArn"))
                                 (:shape-name
                                  "CreateModelInvocationJobResponse"))

(smithy/sdk/shapes:define-input create-prompt-router-request common-lisp:nil
                                ((client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (prompt-router-name :target-type
                                  prompt-router-name :required common-lisp:t
                                  :member-name "promptRouterName")
                                 (models :target-type
                                  prompt-router-target-models :required
                                  common-lisp:t :member-name "models")
                                 (description :target-type
                                  prompt-router-description :member-name
                                  "description")
                                 (routing-criteria :target-type
                                  routing-criteria :required common-lisp:t
                                  :member-name "routingCriteria")
                                 (fallback-model :target-type
                                  prompt-router-target-model :required
                                  common-lisp:t :member-name "fallbackModel")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePromptRouterRequest"))

(smithy/sdk/shapes:define-output create-prompt-router-response common-lisp:nil
                                 ((prompt-router-arn :target-type
                                   prompt-router-arn :member-name
                                   "promptRouterArn"))
                                 (:shape-name "CreatePromptRouterResponse"))

(smithy/sdk/shapes:define-input create-provisioned-model-throughput-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken")
                                 (model-units :target-type positive-integer
                                  :required common-lisp:t :member-name
                                  "modelUnits")
                                 (provisioned-model-name :target-type
                                  provisioned-model-name :required
                                  common-lisp:t :member-name
                                  "provisionedModelName")
                                 (model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (commitment-duration :target-type
                                  commitment-duration :member-name
                                  "commitmentDuration")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateProvisionedModelThroughputRequest"))

(smithy/sdk/shapes:define-output create-provisioned-model-throughput-response
                                 common-lisp:nil
                                 ((provisioned-model-arn :target-type
                                   provisioned-model-arn :required
                                   common-lisp:t :member-name
                                   "provisionedModelArn"))
                                 (:shape-name
                                  "CreateProvisionedModelThroughputResponse"))

(smithy/sdk/shapes:define-structure custom-metric-bedrock-evaluator-model
                                    common-lisp:nil
                                    ((model-identifier :target-type
                                      evaluator-model-identifier :required
                                      common-lisp:t :member-name
                                      "modelIdentifier"))
                                    (:shape-name
                                     "CustomMetricBedrockEvaluatorModel"))

(smithy/sdk/shapes:define-list custom-metric-bedrock-evaluator-models :member
                               custom-metric-bedrock-evaluator-model)

(smithy/sdk/shapes:define-structure custom-metric-definition common-lisp:nil
                                    ((name :target-type metric-name :required
                                      common-lisp:t :member-name "name")
                                     (instructions :target-type
                                      custom-metric-instructions :required
                                      common-lisp:t :member-name
                                      "instructions")
                                     (rating-scale :target-type rating-scale
                                      :member-name "ratingScale"))
                                    (:shape-name "CustomMetricDefinition"))

(smithy/sdk/shapes:define-structure custom-metric-evaluator-model-config
                                    common-lisp:nil
                                    ((bedrock-evaluator-models :target-type
                                      custom-metric-bedrock-evaluator-models
                                      :required common-lisp:t :member-name
                                      "bedrockEvaluatorModels"))
                                    (:shape-name
                                     "CustomMetricEvaluatorModelConfig"))

(smithy/sdk/shapes:define-type custom-metric-instructions
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-model-deployment-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-model-deployment-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-model-deployment-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum custom-model-deployment-status
    common-lisp:nil
  (:creating "Creating")
  (:active "Active")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure custom-model-deployment-summary
                                    common-lisp:nil
                                    ((custom-model-deployment-arn :target-type
                                      custom-model-deployment-arn :required
                                      common-lisp:t :member-name
                                      "customModelDeploymentArn")
                                     (custom-model-deployment-name :target-type
                                      model-deployment-name :required
                                      common-lisp:t :member-name
                                      "customModelDeploymentName")
                                     (model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (status :target-type
                                      custom-model-deployment-status :required
                                      common-lisp:t :member-name "status")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (failure-message :target-type
                                      error-message :member-name
                                      "failureMessage"))
                                    (:shape-name
                                     "CustomModelDeploymentSummary"))

(smithy/sdk/shapes:define-list custom-model-deployment-summary-list :member
                               custom-model-deployment-summary)

(smithy/sdk/shapes:define-type custom-model-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure custom-model-summary common-lisp:nil
                                    ((model-arn :target-type custom-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (model-name :target-type custom-model-name
                                      :required common-lisp:t :member-name
                                      "modelName")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (base-model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "baseModelArn")
                                     (base-model-name :target-type model-name
                                      :required common-lisp:t :member-name
                                      "baseModelName")
                                     (customization-type :target-type
                                      customization-type :member-name
                                      "customizationType")
                                     (owner-account-id :target-type account-id
                                      :member-name "ownerAccountId")
                                     (model-status :target-type model-status
                                      :member-name "modelStatus"))
                                    (:shape-name "CustomModelSummary"))

(smithy/sdk/shapes:define-list custom-model-summary-list :member
                               custom-model-summary)

(smithy/sdk/shapes:define-structure custom-model-units common-lisp:nil
                                    ((custom-model-units-per-model-copy
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "customModelUnitsPerModelCopy")
                                     (custom-model-units-version :target-type
                                      custom-model-units-version :member-name
                                      "customModelUnitsVersion"))
                                    (:shape-name "CustomModelUnits"))

(smithy/sdk/shapes:define-type custom-model-units-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union customization-config common-lisp:nil
                                ((distillation-config :target-type
                                  distillation-config :member-name
                                  "distillationConfig"))
                                (:shape-name "CustomizationConfig"))

(smithy/sdk/shapes:define-enum customization-type
    common-lisp:nil
  (:fine-tuning "FINE_TUNING")
  (:continued-pre-training "CONTINUED_PRE_TRAINING")
  (:distillation "DISTILLATION")
  (:imported "IMPORTED"))

(smithy/sdk/shapes:define-structure data-processing-details common-lisp:nil
                                    ((status :target-type job-status-details
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime"))
                                    (:shape-name "DataProcessingDetails"))

(smithy/sdk/shapes:define-input
 delete-automated-reasoning-policy-build-workflow-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (last-updated-at :target-type timestamp :required common-lisp:t :member-name
   "lastUpdatedAt" :http-query "updatedAt"))
 (:shape-name "DeleteAutomatedReasoningPolicyBuildWorkflowRequest"))

(smithy/sdk/shapes:define-output
 delete-automated-reasoning-policy-build-workflow-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteAutomatedReasoningPolicyBuildWorkflowResponse"))

(smithy/sdk/shapes:define-input delete-automated-reasoning-policy-request
                                common-lisp:nil
                                ((policy-arn :target-type
                                  automated-reasoning-policy-arn :required
                                  common-lisp:t :member-name "policyArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteAutomatedReasoningPolicyRequest"))

(smithy/sdk/shapes:define-output delete-automated-reasoning-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAutomatedReasoningPolicyResponse"))

(smithy/sdk/shapes:define-input
 delete-automated-reasoning-policy-test-case-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId" :http-label common-lisp:t)
  (last-updated-at :target-type timestamp :required common-lisp:t :member-name
   "lastUpdatedAt" :http-query "updatedAt"))
 (:shape-name "DeleteAutomatedReasoningPolicyTestCaseRequest"))

(smithy/sdk/shapes:define-output
 delete-automated-reasoning-policy-test-case-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteAutomatedReasoningPolicyTestCaseResponse"))

(smithy/sdk/shapes:define-input delete-custom-model-deployment-request
                                common-lisp:nil
                                ((custom-model-deployment-identifier
                                  :target-type
                                  custom-model-deployment-identifier :required
                                  common-lisp:t :member-name
                                  "customModelDeploymentIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteCustomModelDeploymentRequest"))

(smithy/sdk/shapes:define-output delete-custom-model-deployment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCustomModelDeploymentResponse"))

(smithy/sdk/shapes:define-input delete-custom-model-request common-lisp:nil
                                ((model-identifier :target-type
                                  model-identifier :required common-lisp:t
                                  :member-name "modelIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCustomModelRequest"))

(smithy/sdk/shapes:define-output delete-custom-model-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCustomModelResponse"))

(smithy/sdk/shapes:define-input delete-foundation-model-agreement-request
                                common-lisp:nil
                                ((model-id :target-type bedrock-model-id
                                  :required common-lisp:t :member-name
                                  "modelId"))
                                (:shape-name
                                 "DeleteFoundationModelAgreementRequest"))

(smithy/sdk/shapes:define-output delete-foundation-model-agreement-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteFoundationModelAgreementResponse"))

(smithy/sdk/shapes:define-input delete-guardrail-request common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :required common-lisp:t
                                  :member-name "guardrailIdentifier"
                                  :http-label common-lisp:t)
                                 (guardrail-version :target-type
                                  guardrail-numerical-version :member-name
                                  "guardrailVersion" :http-query
                                  "guardrailVersion"))
                                (:shape-name "DeleteGuardrailRequest"))

(smithy/sdk/shapes:define-output delete-guardrail-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGuardrailResponse"))

(smithy/sdk/shapes:define-input delete-imported-model-request common-lisp:nil
                                ((model-identifier :target-type
                                  imported-model-identifier :required
                                  common-lisp:t :member-name "modelIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteImportedModelRequest"))

(smithy/sdk/shapes:define-output delete-imported-model-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteImportedModelResponse"))

(smithy/sdk/shapes:define-input delete-inference-profile-request
                                common-lisp:nil
                                ((inference-profile-identifier :target-type
                                  inference-profile-identifier :required
                                  common-lisp:t :member-name
                                  "inferenceProfileIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteInferenceProfileRequest"))

(smithy/sdk/shapes:define-output delete-inference-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteInferenceProfileResponse"))

(smithy/sdk/shapes:define-input delete-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((endpoint-arn :target-type arn :required
                                  common-lisp:t :member-name "endpointArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output delete-marketplace-model-endpoint-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-input
 delete-model-invocation-logging-configuration-request common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteModelInvocationLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-model-invocation-logging-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteModelInvocationLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-prompt-router-request common-lisp:nil
                                ((prompt-router-arn :target-type
                                  prompt-router-arn :required common-lisp:t
                                  :member-name "promptRouterArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeletePromptRouterRequest"))

(smithy/sdk/shapes:define-output delete-prompt-router-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePromptRouterResponse"))

(smithy/sdk/shapes:define-input delete-provisioned-model-throughput-request
                                common-lisp:nil
                                ((provisioned-model-id :target-type
                                  provisioned-model-id :required common-lisp:t
                                  :member-name "provisionedModelId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteProvisionedModelThroughputRequest"))

(smithy/sdk/shapes:define-output delete-provisioned-model-throughput-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProvisionedModelThroughputResponse"))

(smithy/sdk/shapes:define-input deregister-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((endpoint-arn :target-type arn :required
                                  common-lisp:t :member-name "endpointArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeregisterMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output deregister-marketplace-model-endpoint-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-structure dimensional-price-rate common-lisp:nil
                                    ((dimension :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dimension")
                                     (price :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "price")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit"))
                                    (:shape-name "DimensionalPriceRate"))

(smithy/sdk/shapes:define-structure distillation-config common-lisp:nil
                                    ((teacher-model-config :target-type
                                      teacher-model-config :required
                                      common-lisp:t :member-name
                                      "teacherModelConfig"))
                                    (:shape-name "DistillationConfig"))

(smithy/sdk/shapes:define-union endpoint-config common-lisp:nil
                                ((sage-maker :target-type sage-maker-endpoint
                                  :member-name "sageMaker"))
                                (:shape-name "EndpointConfig"))

(smithy/sdk/shapes:define-type endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entitlement-availability
    common-lisp:nil
  (:available "AVAILABLE")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list error-messages :member error-message)

(smithy/sdk/shapes:define-list evaluation-bedrock-knowledge-base-identifiers
                               :member knowledge-base-id)

(smithy/sdk/shapes:define-structure evaluation-bedrock-model common-lisp:nil
                                    ((model-identifier :target-type
                                      evaluation-bedrock-model-identifier
                                      :required common-lisp:t :member-name
                                      "modelIdentifier")
                                     (inference-params :target-type
                                      evaluation-model-inference-params
                                      :member-name "inferenceParams")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name "EvaluationBedrockModel"))

(smithy/sdk/shapes:define-type evaluation-bedrock-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluation-bedrock-model-identifiers :member
                               evaluation-bedrock-model-identifier)

(smithy/sdk/shapes:define-union evaluation-config common-lisp:nil
                                ((automated :target-type
                                  automated-evaluation-config :member-name
                                  "automated")
                                 (human :target-type human-evaluation-config
                                  :member-name "human"))
                                (:shape-name "EvaluationConfig"))

(smithy/sdk/shapes:define-structure evaluation-dataset common-lisp:nil
                                    ((name :target-type evaluation-dataset-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (dataset-location :target-type
                                      evaluation-dataset-location :member-name
                                      "datasetLocation"))
                                    (:shape-name "EvaluationDataset"))

(smithy/sdk/shapes:define-union evaluation-dataset-location common-lisp:nil
                                ((s3uri :target-type s3uri :member-name
                                  "s3Uri"))
                                (:shape-name "EvaluationDatasetLocation"))

(smithy/sdk/shapes:define-structure evaluation-dataset-metric-config
                                    common-lisp:nil
                                    ((task-type :target-type
                                      evaluation-task-type :required
                                      common-lisp:t :member-name "taskType")
                                     (dataset :target-type evaluation-dataset
                                      :required common-lisp:t :member-name
                                      "dataset")
                                     (metric-names :target-type
                                      evaluation-metric-names :required
                                      common-lisp:t :member-name
                                      "metricNames"))
                                    (:shape-name
                                     "EvaluationDatasetMetricConfig"))

(smithy/sdk/shapes:define-list evaluation-dataset-metric-configs :member
                               evaluation-dataset-metric-config)

(smithy/sdk/shapes:define-type evaluation-dataset-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union evaluation-inference-config common-lisp:nil
                                ((models :target-type evaluation-model-configs
                                  :member-name "models")
                                 (rag-configs :target-type rag-configs
                                  :member-name "ragConfigs"))
                                (:shape-name "EvaluationInferenceConfig"))

(smithy/sdk/shapes:define-structure evaluation-inference-config-summary
                                    common-lisp:nil
                                    ((model-config-summary :target-type
                                      evaluation-model-config-summary
                                      :member-name "modelConfigSummary")
                                     (rag-config-summary :target-type
                                      evaluation-rag-config-summary
                                      :member-name "ragConfigSummary"))
                                    (:shape-name
                                     "EvaluationInferenceConfigSummary"))

(smithy/sdk/shapes:define-type evaluation-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-job-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluation-job-identifiers :member
                               evaluation-job-identifier)

(smithy/sdk/shapes:define-type evaluation-job-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum evaluation-job-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-enum evaluation-job-type
    common-lisp:nil
  (:human "Human")
  (:automated "Automated"))

(smithy/sdk/shapes:define-type evaluation-metric-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluation-metric-names :member
                               evaluation-metric-name)

(smithy/sdk/shapes:define-union evaluation-model-config common-lisp:nil
                                ((bedrock-model :target-type
                                  evaluation-bedrock-model :member-name
                                  "bedrockModel")
                                 (precomputed-inference-source :target-type
                                  evaluation-precomputed-inference-source
                                  :member-name "precomputedInferenceSource"))
                                (:shape-name "EvaluationModelConfig"))

(smithy/sdk/shapes:define-structure evaluation-model-config-summary
                                    common-lisp:nil
                                    ((bedrock-model-identifiers :target-type
                                      evaluation-bedrock-model-identifiers
                                      :member-name "bedrockModelIdentifiers")
                                     (precomputed-inference-source-identifiers
                                      :target-type
                                      evaluation-precomputed-inference-source-identifiers
                                      :member-name
                                      "precomputedInferenceSourceIdentifiers"))
                                    (:shape-name
                                     "EvaluationModelConfigSummary"))

(smithy/sdk/shapes:define-list evaluation-model-configs :member
                               evaluation-model-config)

(smithy/sdk/shapes:define-type evaluation-model-inference-params
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-output-data-config
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "EvaluationOutputDataConfig"))

(smithy/sdk/shapes:define-structure evaluation-precomputed-inference-source
                                    common-lisp:nil
                                    ((inference-source-identifier :target-type
                                      evaluation-precomputed-inference-source-identifier
                                      :required common-lisp:t :member-name
                                      "inferenceSourceIdentifier"))
                                    (:shape-name
                                     "EvaluationPrecomputedInferenceSource"))

(smithy/sdk/shapes:define-type
 evaluation-precomputed-inference-source-identifier
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 evaluation-precomputed-inference-source-identifiers :member
 evaluation-precomputed-inference-source-identifier)

(smithy/sdk/shapes:define-union evaluation-precomputed-rag-source-config
                                common-lisp:nil
                                ((retrieve-source-config :target-type
                                  evaluation-precomputed-retrieve-source-config
                                  :member-name "retrieveSourceConfig")
                                 (retrieve-and-generate-source-config
                                  :target-type
                                  evaluation-precomputed-retrieve-and-generate-source-config
                                  :member-name
                                  "retrieveAndGenerateSourceConfig"))
                                (:shape-name
                                 "EvaluationPrecomputedRagSourceConfig"))

(smithy/sdk/shapes:define-type evaluation-precomputed-rag-source-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluation-precomputed-rag-source-identifiers
                               :member
                               evaluation-precomputed-rag-source-identifier)

(smithy/sdk/shapes:define-structure
 evaluation-precomputed-retrieve-and-generate-source-config common-lisp:nil
 ((rag-source-identifier :target-type
   evaluation-precomputed-rag-source-identifier :required common-lisp:t
   :member-name "ragSourceIdentifier"))
 (:shape-name "EvaluationPrecomputedRetrieveAndGenerateSourceConfig"))

(smithy/sdk/shapes:define-structure
 evaluation-precomputed-retrieve-source-config common-lisp:nil
 ((rag-source-identifier :target-type
   evaluation-precomputed-rag-source-identifier :required common-lisp:t
   :member-name "ragSourceIdentifier"))
 (:shape-name "EvaluationPrecomputedRetrieveSourceConfig"))

(smithy/sdk/shapes:define-structure evaluation-rag-config-summary
                                    common-lisp:nil
                                    ((bedrock-knowledge-base-identifiers
                                      :target-type
                                      evaluation-bedrock-knowledge-base-identifiers
                                      :member-name
                                      "bedrockKnowledgeBaseIdentifiers")
                                     (precomputed-rag-source-identifiers
                                      :target-type
                                      evaluation-precomputed-rag-source-identifiers
                                      :member-name
                                      "precomputedRagSourceIdentifiers"))
                                    (:shape-name "EvaluationRagConfigSummary"))

(smithy/sdk/shapes:define-type evaluation-rating-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluation-summaries :member evaluation-summary)

(smithy/sdk/shapes:define-structure evaluation-summary common-lisp:nil
                                    ((job-arn :target-type evaluation-job-arn
                                      :required common-lisp:t :member-name
                                      "jobArn")
                                     (job-name :target-type evaluation-job-name
                                      :required common-lisp:t :member-name
                                      "jobName")
                                     (status :target-type evaluation-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (job-type :target-type evaluation-job-type
                                      :required common-lisp:t :member-name
                                      "jobType")
                                     (evaluation-task-types :target-type
                                      evaluation-task-types :required
                                      common-lisp:t :member-name
                                      "evaluationTaskTypes")
                                     (model-identifiers :target-type
                                      evaluation-bedrock-model-identifiers
                                      :member-name "modelIdentifiers")
                                     (rag-identifiers :target-type
                                      evaluation-bedrock-knowledge-base-identifiers
                                      :member-name "ragIdentifiers")
                                     (evaluator-model-identifiers :target-type
                                      evaluator-model-identifiers :member-name
                                      "evaluatorModelIdentifiers")
                                     (custom-metrics-evaluator-model-identifiers
                                      :target-type evaluator-model-identifiers
                                      :member-name
                                      "customMetricsEvaluatorModelIdentifiers")
                                     (inference-config-summary :target-type
                                      evaluation-inference-config-summary
                                      :member-name "inferenceConfigSummary")
                                     (application-type :target-type
                                      application-type :member-name
                                      "applicationType"))
                                    (:shape-name "EvaluationSummary"))

(smithy/sdk/shapes:define-enum evaluation-task-type
    common-lisp:nil
  (:summarization "Summarization")
  (:classification "Classification")
  (:question-and-answer "QuestionAndAnswer")
  (:generation "Generation")
  (:custom "Custom"))

(smithy/sdk/shapes:define-list evaluation-task-types :member
                               evaluation-task-type)

(smithy/sdk/shapes:define-union evaluator-model-config common-lisp:nil
                                ((bedrock-evaluator-models :target-type
                                  bedrock-evaluator-models :member-name
                                  "bedrockEvaluatorModels"))
                                (:shape-name "EvaluatorModelConfig"))

(smithy/sdk/shapes:define-type evaluator-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evaluator-model-identifiers :member
                               evaluator-model-identifier)

(smithy/sdk/shapes:define-input
 export-automated-reasoning-policy-version-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t))
 (:shape-name "ExportAutomatedReasoningPolicyVersionRequest"))

(smithy/sdk/shapes:define-output
 export-automated-reasoning-policy-version-response common-lisp:nil
 ((policy-definition :target-type automated-reasoning-policy-definition
   :required common-lisp:t :member-name "policyDefinition" :http-payload
   common-lisp:t))
 (:shape-name "ExportAutomatedReasoningPolicyVersionResponse"))

(smithy/sdk/shapes:define-structure external-source common-lisp:nil
                                    ((source-type :target-type
                                      external-source-type :required
                                      common-lisp:t :member-name "sourceType")
                                     (s3location :target-type s3object-doc
                                      :member-name "s3Location")
                                     (byte-content :target-type
                                      byte-content-doc :member-name
                                      "byteContent"))
                                    (:shape-name "ExternalSource"))

(smithy/sdk/shapes:define-enum external-source-type
    common-lisp:nil
  (:s3 "S3")
  (:byte-content "BYTE_CONTENT"))

(smithy/sdk/shapes:define-list external-sources :member external-source)

(smithy/sdk/shapes:define-structure external-sources-generation-configuration
                                    common-lisp:nil
                                    ((prompt-template :target-type
                                      prompt-template :member-name
                                      "promptTemplate")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (kb-inference-config :target-type
                                      kb-inference-config :member-name
                                      "kbInferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields"))
                                    (:shape-name
                                     "ExternalSourcesGenerationConfiguration"))

(smithy/sdk/shapes:define-structure
 external-sources-retrieve-and-generate-configuration common-lisp:nil
 ((model-arn :target-type bedrock-model-arn :required common-lisp:t
   :member-name "modelArn")
  (sources :target-type external-sources :required common-lisp:t :member-name
   "sources")
  (generation-configuration :target-type
   external-sources-generation-configuration :member-name
   "generationConfiguration"))
 (:shape-name "ExternalSourcesRetrieveAndGenerateConfiguration"))

(smithy/sdk/shapes:define-structure field-for-reranking common-lisp:nil
                                    ((field-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fieldName"))
                                    (:shape-name "FieldForReranking"))

(smithy/sdk/shapes:define-list fields-for-reranking :member field-for-reranking)

(smithy/sdk/shapes:define-structure filter-attribute common-lisp:nil
                                    ((key :target-type filter-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type filter-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "FilterAttribute"))

(smithy/sdk/shapes:define-type filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-enum fine-tuning-job-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-type foundation-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure foundation-model-details common-lisp:nil
                                    ((model-arn :target-type
                                      foundation-model-arn :required
                                      common-lisp:t :member-name "modelArn")
                                     (model-id :target-type bedrock-model-id
                                      :required common-lisp:t :member-name
                                      "modelId")
                                     (model-name :target-type branded-name
                                      :member-name "modelName")
                                     (provider-name :target-type branded-name
                                      :member-name "providerName")
                                     (input-modalities :target-type
                                      model-modality-list :member-name
                                      "inputModalities")
                                     (output-modalities :target-type
                                      model-modality-list :member-name
                                      "outputModalities")
                                     (response-streaming-supported :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "responseStreamingSupported")
                                     (customizations-supported :target-type
                                      model-customization-list :member-name
                                      "customizationsSupported")
                                     (inference-types-supported :target-type
                                      inference-type-list :member-name
                                      "inferenceTypesSupported")
                                     (model-lifecycle :target-type
                                      foundation-model-lifecycle :member-name
                                      "modelLifecycle"))
                                    (:shape-name "FoundationModelDetails"))

(smithy/sdk/shapes:define-structure foundation-model-lifecycle common-lisp:nil
                                    ((status :target-type
                                      foundation-model-lifecycle-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "FoundationModelLifecycle"))

(smithy/sdk/shapes:define-enum foundation-model-lifecycle-status
    common-lisp:nil
  (:active "ACTIVE")
  (:legacy "LEGACY"))

(smithy/sdk/shapes:define-structure foundation-model-summary common-lisp:nil
                                    ((model-arn :target-type
                                      foundation-model-arn :required
                                      common-lisp:t :member-name "modelArn")
                                     (model-id :target-type bedrock-model-id
                                      :required common-lisp:t :member-name
                                      "modelId")
                                     (model-name :target-type branded-name
                                      :member-name "modelName")
                                     (provider-name :target-type branded-name
                                      :member-name "providerName")
                                     (input-modalities :target-type
                                      model-modality-list :member-name
                                      "inputModalities")
                                     (output-modalities :target-type
                                      model-modality-list :member-name
                                      "outputModalities")
                                     (response-streaming-supported :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "responseStreamingSupported")
                                     (customizations-supported :target-type
                                      model-customization-list :member-name
                                      "customizationsSupported")
                                     (inference-types-supported :target-type
                                      inference-type-list :member-name
                                      "inferenceTypesSupported")
                                     (model-lifecycle :target-type
                                      foundation-model-lifecycle :member-name
                                      "modelLifecycle"))
                                    (:shape-name "FoundationModelSummary"))

(smithy/sdk/shapes:define-list foundation-model-summary-list :member
                               foundation-model-summary)

(smithy/sdk/shapes:define-structure generation-configuration common-lisp:nil
                                    ((prompt-template :target-type
                                      prompt-template :member-name
                                      "promptTemplate")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (kb-inference-config :target-type
                                      kb-inference-config :member-name
                                      "kbInferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields"))
                                    (:shape-name "GenerationConfiguration"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-annotations-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t))
 (:shape-name "GetAutomatedReasoningPolicyAnnotationsRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-annotations-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (name :target-type automated-reasoning-policy-name :required common-lisp:t
   :member-name "name")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId")
  (annotations :target-type automated-reasoning-policy-annotation-list
   :required common-lisp:t :member-name "annotations")
  (annotation-set-hash :target-type automated-reasoning-policy-hash :required
   common-lisp:t :member-name "annotationSetHash")
  (updated-at :target-type timestamp :required common-lisp:t :member-name
   "updatedAt"))
 (:shape-name "GetAutomatedReasoningPolicyAnnotationsResponse"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-build-workflow-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t))
 (:shape-name "GetAutomatedReasoningPolicyBuildWorkflowRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-build-workflow-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId")
  (status :target-type automated-reasoning-policy-build-workflow-status
   :required common-lisp:t :member-name "status")
  (build-workflow-type :target-type
   automated-reasoning-policy-build-workflow-type :required common-lisp:t
   :member-name "buildWorkflowType")
  (document-name :target-type automated-reasoning-policy-build-document-name
   :member-name "documentName")
  (document-content-type :target-type
   automated-reasoning-policy-build-document-content-type :member-name
   "documentContentType")
  (document-description :target-type
   automated-reasoning-policy-build-document-description :member-name
   "documentDescription")
  (created-at :target-type timestamp :required common-lisp:t :member-name
   "createdAt")
  (updated-at :target-type timestamp :required common-lisp:t :member-name
   "updatedAt"))
 (:shape-name "GetAutomatedReasoningPolicyBuildWorkflowResponse"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-build-workflow-result-assets-request
 common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (asset-type :target-type automated-reasoning-policy-build-result-asset-type
   :required common-lisp:t :member-name "assetType" :http-query "assetType"))
 (:shape-name "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-build-workflow-result-assets-response
 common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId")
  (build-workflow-assets :target-type
   automated-reasoning-policy-build-result-assets :member-name
   "buildWorkflowAssets"))
 (:shape-name "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-next-scenario-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t))
 (:shape-name "GetAutomatedReasoningPolicyNextScenarioRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-next-scenario-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (scenario :target-type automated-reasoning-policy-scenario :member-name
   "scenario"))
 (:shape-name "GetAutomatedReasoningPolicyNextScenarioResponse"))

(smithy/sdk/shapes:define-input get-automated-reasoning-policy-request
                                common-lisp:nil
                                ((policy-arn :target-type
                                  automated-reasoning-policy-arn :required
                                  common-lisp:t :member-name "policyArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetAutomatedReasoningPolicyRequest"))

(smithy/sdk/shapes:define-output get-automated-reasoning-policy-response
                                 common-lisp:nil
                                 ((policy-arn :target-type
                                   automated-reasoning-policy-arn :required
                                   common-lisp:t :member-name "policyArn")
                                  (name :target-type
                                   automated-reasoning-policy-name :required
                                   common-lisp:t :member-name "name")
                                  (version :target-type
                                   automated-reasoning-policy-version :required
                                   common-lisp:t :member-name "version")
                                  (policy-id :target-type
                                   automated-reasoning-policy-id :required
                                   common-lisp:t :member-name "policyId")
                                  (description :target-type
                                   automated-reasoning-policy-description
                                   :member-name "description")
                                  (definition-hash :target-type
                                   automated-reasoning-policy-hash :required
                                   common-lisp:t :member-name "definitionHash")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt"))
                                 (:shape-name
                                  "GetAutomatedReasoningPolicyResponse"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-test-case-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId" :http-label common-lisp:t))
 (:shape-name "GetAutomatedReasoningPolicyTestCaseRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-test-case-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (test-case :target-type automated-reasoning-policy-test-case :required
   common-lisp:t :member-name "testCase"))
 (:shape-name "GetAutomatedReasoningPolicyTestCaseResponse"))

(smithy/sdk/shapes:define-input
 get-automated-reasoning-policy-test-result-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId" :http-label common-lisp:t))
 (:shape-name "GetAutomatedReasoningPolicyTestResultRequest"))

(smithy/sdk/shapes:define-output
 get-automated-reasoning-policy-test-result-response common-lisp:nil
 ((test-result :target-type automated-reasoning-policy-test-result :required
   common-lisp:t :member-name "testResult"))
 (:shape-name "GetAutomatedReasoningPolicyTestResultResponse"))

(smithy/sdk/shapes:define-input get-custom-model-deployment-request
                                common-lisp:nil
                                ((custom-model-deployment-identifier
                                  :target-type
                                  custom-model-deployment-identifier :required
                                  common-lisp:t :member-name
                                  "customModelDeploymentIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCustomModelDeploymentRequest"))

(smithy/sdk/shapes:define-output get-custom-model-deployment-response
                                 common-lisp:nil
                                 ((custom-model-deployment-arn :target-type
                                   custom-model-deployment-arn :required
                                   common-lisp:t :member-name
                                   "customModelDeploymentArn")
                                  (model-deployment-name :target-type
                                   model-deployment-name :required
                                   common-lisp:t :member-name
                                   "modelDeploymentName")
                                  (model-arn :target-type custom-model-arn
                                   :required common-lisp:t :member-name
                                   "modelArn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (status :target-type
                                   custom-model-deployment-status :required
                                   common-lisp:t :member-name "status")
                                  (description :target-type
                                   custom-model-deployment-description
                                   :member-name "description")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name
                                  "GetCustomModelDeploymentResponse"))

(smithy/sdk/shapes:define-input get-custom-model-request common-lisp:nil
                                ((model-identifier :target-type
                                  model-identifier :required common-lisp:t
                                  :member-name "modelIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCustomModelRequest"))

(smithy/sdk/shapes:define-output get-custom-model-response common-lisp:nil
                                 ((model-arn :target-type model-arn :required
                                   common-lisp:t :member-name "modelArn")
                                  (model-name :target-type custom-model-name
                                   :required common-lisp:t :member-name
                                   "modelName")
                                  (job-name :target-type job-name :member-name
                                   "jobName")
                                  (job-arn :target-type
                                   model-customization-job-arn :member-name
                                   "jobArn")
                                  (base-model-arn :target-type model-arn
                                   :member-name "baseModelArn")
                                  (customization-type :target-type
                                   customization-type :member-name
                                   "customizationType")
                                  (model-kms-key-arn :target-type kms-key-arn
                                   :member-name "modelKmsKeyArn")
                                  (hyper-parameters :target-type
                                   model-customization-hyper-parameters
                                   :member-name "hyperParameters")
                                  (training-data-config :target-type
                                   training-data-config :member-name
                                   "trainingDataConfig")
                                  (validation-data-config :target-type
                                   validation-data-config :member-name
                                   "validationDataConfig")
                                  (output-data-config :target-type
                                   output-data-config :member-name
                                   "outputDataConfig")
                                  (training-metrics :target-type
                                   training-metrics :member-name
                                   "trainingMetrics")
                                  (validation-metrics :target-type
                                   validation-metrics :member-name
                                   "validationMetrics")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (customization-config :target-type
                                   customization-config :member-name
                                   "customizationConfig")
                                  (model-status :target-type model-status
                                   :member-name "modelStatus")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage"))
                                 (:shape-name "GetCustomModelResponse"))

(smithy/sdk/shapes:define-input get-evaluation-job-request common-lisp:nil
                                ((job-identifier :target-type
                                  evaluation-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEvaluationJobRequest"))

(smithy/sdk/shapes:define-output get-evaluation-job-response common-lisp:nil
                                 ((job-name :target-type evaluation-job-name
                                   :required common-lisp:t :member-name
                                   "jobName")
                                  (status :target-type evaluation-job-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (job-arn :target-type evaluation-job-arn
                                   :required common-lisp:t :member-name
                                   "jobArn")
                                  (job-description :target-type
                                   evaluation-job-description :member-name
                                   "jobDescription")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (customer-encryption-key-id :target-type
                                   kms-key-id :member-name
                                   "customerEncryptionKeyId")
                                  (job-type :target-type evaluation-job-type
                                   :required common-lisp:t :member-name
                                   "jobType")
                                  (application-type :target-type
                                   application-type :member-name
                                   "applicationType")
                                  (evaluation-config :target-type
                                   evaluation-config :required common-lisp:t
                                   :member-name "evaluationConfig")
                                  (inference-config :target-type
                                   evaluation-inference-config :required
                                   common-lisp:t :member-name
                                   "inferenceConfig")
                                  (output-data-config :target-type
                                   evaluation-output-data-config :required
                                   common-lisp:t :member-name
                                   "outputDataConfig")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (failure-messages :target-type error-messages
                                   :member-name "failureMessages"))
                                 (:shape-name "GetEvaluationJobResponse"))

(smithy/sdk/shapes:define-input get-foundation-model-availability-request
                                common-lisp:nil
                                ((model-id :target-type bedrock-model-id
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetFoundationModelAvailabilityRequest"))

(smithy/sdk/shapes:define-output get-foundation-model-availability-response
                                 common-lisp:nil
                                 ((model-id :target-type bedrock-model-id
                                   :required common-lisp:t :member-name
                                   "modelId")
                                  (agreement-availability :target-type
                                   agreement-availability :required
                                   common-lisp:t :member-name
                                   "agreementAvailability")
                                  (authorization-status :target-type
                                   authorization-status :required common-lisp:t
                                   :member-name "authorizationStatus")
                                  (entitlement-availability :target-type
                                   entitlement-availability :required
                                   common-lisp:t :member-name
                                   "entitlementAvailability")
                                  (region-availability :target-type
                                   region-availability :required common-lisp:t
                                   :member-name "regionAvailability"))
                                 (:shape-name
                                  "GetFoundationModelAvailabilityResponse"))

(smithy/sdk/shapes:define-input get-foundation-model-request common-lisp:nil
                                ((model-identifier :target-type
                                  model-identifier :required common-lisp:t
                                  :member-name "modelIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFoundationModelRequest"))

(smithy/sdk/shapes:define-output get-foundation-model-response common-lisp:nil
                                 ((model-details :target-type
                                   foundation-model-details :member-name
                                   "modelDetails"))
                                 (:shape-name "GetFoundationModelResponse"))

(smithy/sdk/shapes:define-input get-guardrail-request common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :required common-lisp:t
                                  :member-name "guardrailIdentifier"
                                  :http-label common-lisp:t)
                                 (guardrail-version :target-type
                                  guardrail-version :member-name
                                  "guardrailVersion" :http-query
                                  "guardrailVersion"))
                                (:shape-name "GetGuardrailRequest"))

(smithy/sdk/shapes:define-output get-guardrail-response common-lisp:nil
                                 ((name :target-type guardrail-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   guardrail-description :member-name
                                   "description")
                                  (guardrail-id :target-type guardrail-id
                                   :required common-lisp:t :member-name
                                   "guardrailId")
                                  (guardrail-arn :target-type guardrail-arn
                                   :required common-lisp:t :member-name
                                   "guardrailArn")
                                  (version :target-type guardrail-version
                                   :required common-lisp:t :member-name
                                   "version")
                                  (status :target-type guardrail-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (topic-policy :target-type
                                   guardrail-topic-policy :member-name
                                   "topicPolicy")
                                  (content-policy :target-type
                                   guardrail-content-policy :member-name
                                   "contentPolicy")
                                  (word-policy :target-type
                                   guardrail-word-policy :member-name
                                   "wordPolicy")
                                  (sensitive-information-policy :target-type
                                   guardrail-sensitive-information-policy
                                   :member-name "sensitiveInformationPolicy")
                                  (contextual-grounding-policy :target-type
                                   guardrail-contextual-grounding-policy
                                   :member-name "contextualGroundingPolicy")
                                  (automated-reasoning-policy :target-type
                                   guardrail-automated-reasoning-policy
                                   :member-name "automatedReasoningPolicy")
                                  (cross-region-details :target-type
                                   guardrail-cross-region-details :member-name
                                   "crossRegionDetails")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (status-reasons :target-type
                                   guardrail-status-reasons :member-name
                                   "statusReasons")
                                  (failure-recommendations :target-type
                                   guardrail-failure-recommendations
                                   :member-name "failureRecommendations")
                                  (blocked-input-messaging :target-type
                                   guardrail-blocked-messaging :required
                                   common-lisp:t :member-name
                                   "blockedInputMessaging")
                                  (blocked-outputs-messaging :target-type
                                   guardrail-blocked-messaging :required
                                   common-lisp:t :member-name
                                   "blockedOutputsMessaging")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn"))
                                 (:shape-name "GetGuardrailResponse"))

(smithy/sdk/shapes:define-input get-imported-model-request common-lisp:nil
                                ((model-identifier :target-type
                                  imported-model-identifier :required
                                  common-lisp:t :member-name "modelIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetImportedModelRequest"))

(smithy/sdk/shapes:define-output get-imported-model-response common-lisp:nil
                                 ((model-arn :target-type imported-model-arn
                                   :member-name "modelArn")
                                  (model-name :target-type imported-model-name
                                   :member-name "modelName")
                                  (job-name :target-type job-name :member-name
                                   "jobName")
                                  (job-arn :target-type model-import-job-arn
                                   :member-name "jobArn")
                                  (model-data-source :target-type
                                   model-data-source :member-name
                                   "modelDataSource")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (model-architecture :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "modelArchitecture")
                                  (model-kms-key-arn :target-type kms-key-arn
                                   :member-name "modelKmsKeyArn")
                                  (instruct-supported :target-type
                                   instruct-supported :member-name
                                   "instructSupported")
                                  (custom-model-units :target-type
                                   custom-model-units :member-name
                                   "customModelUnits"))
                                 (:shape-name "GetImportedModelResponse"))

(smithy/sdk/shapes:define-input get-inference-profile-request common-lisp:nil
                                ((inference-profile-identifier :target-type
                                  inference-profile-identifier :required
                                  common-lisp:t :member-name
                                  "inferenceProfileIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetInferenceProfileRequest"))

(smithy/sdk/shapes:define-output get-inference-profile-response common-lisp:nil
                                 ((inference-profile-name :target-type
                                   inference-profile-name :required
                                   common-lisp:t :member-name
                                   "inferenceProfileName")
                                  (description :target-type
                                   inference-profile-description :member-name
                                   "description")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (inference-profile-arn :target-type
                                   inference-profile-arn :required
                                   common-lisp:t :member-name
                                   "inferenceProfileArn")
                                  (models :target-type inference-profile-models
                                   :required common-lisp:t :member-name
                                   "models")
                                  (inference-profile-id :target-type
                                   inference-profile-id :required common-lisp:t
                                   :member-name "inferenceProfileId")
                                  (status :target-type inference-profile-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (type :target-type inference-profile-type
                                   :required common-lisp:t :member-name
                                   "type"))
                                 (:shape-name "GetInferenceProfileResponse"))

(smithy/sdk/shapes:define-input get-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((endpoint-arn :target-type arn :required
                                  common-lisp:t :member-name "endpointArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output get-marketplace-model-endpoint-response
                                 common-lisp:nil
                                 ((marketplace-model-endpoint :target-type
                                   marketplace-model-endpoint :member-name
                                   "marketplaceModelEndpoint"))
                                 (:shape-name
                                  "GetMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-input get-model-copy-job-request common-lisp:nil
                                ((job-arn :target-type model-copy-job-arn
                                  :required common-lisp:t :member-name "jobArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelCopyJobRequest"))

(smithy/sdk/shapes:define-output get-model-copy-job-response common-lisp:nil
                                 ((job-arn :target-type model-copy-job-arn
                                   :required common-lisp:t :member-name
                                   "jobArn")
                                  (status :target-type model-copy-job-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (target-model-arn :target-type
                                   custom-model-arn :required common-lisp:t
                                   :member-name "targetModelArn")
                                  (target-model-name :target-type
                                   custom-model-name :member-name
                                   "targetModelName")
                                  (source-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "sourceAccountId")
                                  (source-model-arn :target-type model-arn
                                   :required common-lisp:t :member-name
                                   "sourceModelArn")
                                  (target-model-kms-key-arn :target-type
                                   kms-key-arn :member-name
                                   "targetModelKmsKeyArn")
                                  (target-model-tags :target-type tag-list
                                   :member-name "targetModelTags")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage")
                                  (source-model-name :target-type
                                   custom-model-name :member-name
                                   "sourceModelName"))
                                 (:shape-name "GetModelCopyJobResponse"))

(smithy/sdk/shapes:define-input get-model-customization-job-request
                                common-lisp:nil
                                ((job-identifier :target-type
                                  model-customization-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelCustomizationJobRequest"))

(smithy/sdk/shapes:define-output get-model-customization-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type
                                   model-customization-job-arn :required
                                   common-lisp:t :member-name "jobArn")
                                  (job-name :target-type job-name :required
                                   common-lisp:t :member-name "jobName")
                                  (output-model-name :target-type
                                   custom-model-name :required common-lisp:t
                                   :member-name "outputModelName")
                                  (output-model-arn :target-type
                                   custom-model-arn :member-name
                                   "outputModelArn")
                                  (client-request-token :target-type
                                   idempotency-token :member-name
                                   "clientRequestToken")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   model-customization-job-status :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (base-model-arn :target-type
                                   foundation-model-arn :required common-lisp:t
                                   :member-name "baseModelArn")
                                  (hyper-parameters :target-type
                                   model-customization-hyper-parameters
                                   :member-name "hyperParameters")
                                  (training-data-config :target-type
                                   training-data-config :required common-lisp:t
                                   :member-name "trainingDataConfig")
                                  (validation-data-config :target-type
                                   validation-data-config :required
                                   common-lisp:t :member-name
                                   "validationDataConfig")
                                  (output-data-config :target-type
                                   output-data-config :required common-lisp:t
                                   :member-name "outputDataConfig")
                                  (customization-type :target-type
                                   customization-type :member-name
                                   "customizationType")
                                  (output-model-kms-key-arn :target-type
                                   kms-key-arn :member-name
                                   "outputModelKmsKeyArn")
                                  (training-metrics :target-type
                                   training-metrics :member-name
                                   "trainingMetrics")
                                  (validation-metrics :target-type
                                   validation-metrics :member-name
                                   "validationMetrics")
                                  (vpc-config :target-type vpc-config
                                   :member-name "vpcConfig")
                                  (customization-config :target-type
                                   customization-config :member-name
                                   "customizationConfig"))
                                 (:shape-name
                                  "GetModelCustomizationJobResponse"))

(smithy/sdk/shapes:define-input get-model-import-job-request common-lisp:nil
                                ((job-identifier :target-type
                                  model-import-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelImportJobRequest"))

(smithy/sdk/shapes:define-output get-model-import-job-response common-lisp:nil
                                 ((job-arn :target-type model-import-job-arn
                                   :member-name "jobArn")
                                  (job-name :target-type job-name :member-name
                                   "jobName")
                                  (imported-model-name :target-type
                                   imported-model-name :member-name
                                   "importedModelName")
                                  (imported-model-arn :target-type
                                   imported-model-arn :member-name
                                   "importedModelArn")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (model-data-source :target-type
                                   model-data-source :member-name
                                   "modelDataSource")
                                  (status :target-type model-import-job-status
                                   :member-name "status")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (vpc-config :target-type vpc-config
                                   :member-name "vpcConfig")
                                  (imported-model-kms-key-arn :target-type
                                   kms-key-arn :member-name
                                   "importedModelKmsKeyArn"))
                                 (:shape-name "GetModelImportJobResponse"))

(smithy/sdk/shapes:define-input get-model-invocation-job-request
                                common-lisp:nil
                                ((job-identifier :target-type
                                  model-invocation-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelInvocationJobRequest"))

(smithy/sdk/shapes:define-output get-model-invocation-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type
                                   model-invocation-job-arn :required
                                   common-lisp:t :member-name "jobArn")
                                  (job-name :target-type
                                   model-invocation-job-name :member-name
                                   "jobName")
                                  (model-id :target-type model-id :required
                                   common-lisp:t :member-name "modelId")
                                  (client-request-token :target-type
                                   model-invocation-idempotency-token
                                   :member-name "clientRequestToken")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   model-invocation-job-status :member-name
                                   "status")
                                  (message :target-type message :member-name
                                   "message")
                                  (submit-time :target-type timestamp :required
                                   common-lisp:t :member-name "submitTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (input-data-config :target-type
                                   model-invocation-job-input-data-config
                                   :required common-lisp:t :member-name
                                   "inputDataConfig")
                                  (output-data-config :target-type
                                   model-invocation-job-output-data-config
                                   :required common-lisp:t :member-name
                                   "outputDataConfig")
                                  (vpc-config :target-type vpc-config
                                   :member-name "vpcConfig")
                                  (timeout-duration-in-hours :target-type
                                   model-invocation-job-timeout-duration-in-hours
                                   :member-name "timeoutDurationInHours")
                                  (job-expiration-time :target-type timestamp
                                   :member-name "jobExpirationTime"))
                                 (:shape-name "GetModelInvocationJobResponse"))

(smithy/sdk/shapes:define-input
 get-model-invocation-logging-configuration-request common-lisp:nil
 common-lisp:nil (:shape-name "GetModelInvocationLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-model-invocation-logging-configuration-response common-lisp:nil
 ((logging-config :target-type logging-config :member-name "loggingConfig"))
 (:shape-name "GetModelInvocationLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-prompt-router-request common-lisp:nil
                                ((prompt-router-arn :target-type
                                  prompt-router-arn :required common-lisp:t
                                  :member-name "promptRouterArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPromptRouterRequest"))

(smithy/sdk/shapes:define-output get-prompt-router-response common-lisp:nil
                                 ((prompt-router-name :target-type
                                   prompt-router-name :required common-lisp:t
                                   :member-name "promptRouterName")
                                  (routing-criteria :target-type
                                   routing-criteria :required common-lisp:t
                                   :member-name "routingCriteria")
                                  (description :target-type
                                   prompt-router-description :member-name
                                   "description")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (prompt-router-arn :target-type
                                   prompt-router-arn :required common-lisp:t
                                   :member-name "promptRouterArn")
                                  (models :target-type
                                   prompt-router-target-models :required
                                   common-lisp:t :member-name "models")
                                  (fallback-model :target-type
                                   prompt-router-target-model :required
                                   common-lisp:t :member-name "fallbackModel")
                                  (status :target-type prompt-router-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (type :target-type prompt-router-type
                                   :required common-lisp:t :member-name
                                   "type"))
                                 (:shape-name "GetPromptRouterResponse"))

(smithy/sdk/shapes:define-input get-provisioned-model-throughput-request
                                common-lisp:nil
                                ((provisioned-model-id :target-type
                                  provisioned-model-id :required common-lisp:t
                                  :member-name "provisionedModelId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetProvisionedModelThroughputRequest"))

(smithy/sdk/shapes:define-output get-provisioned-model-throughput-response
                                 common-lisp:nil
                                 ((model-units :target-type positive-integer
                                   :required common-lisp:t :member-name
                                   "modelUnits")
                                  (desired-model-units :target-type
                                   positive-integer :required common-lisp:t
                                   :member-name "desiredModelUnits")
                                  (provisioned-model-name :target-type
                                   provisioned-model-name :required
                                   common-lisp:t :member-name
                                   "provisionedModelName")
                                  (provisioned-model-arn :target-type
                                   provisioned-model-arn :required
                                   common-lisp:t :member-name
                                   "provisionedModelArn")
                                  (model-arn :target-type model-arn :required
                                   common-lisp:t :member-name "modelArn")
                                  (desired-model-arn :target-type model-arn
                                   :required common-lisp:t :member-name
                                   "desiredModelArn")
                                  (foundation-model-arn :target-type
                                   foundation-model-arn :required common-lisp:t
                                   :member-name "foundationModelArn")
                                  (status :target-type provisioned-model-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (last-modified-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastModifiedTime")
                                  (failure-message :target-type error-message
                                   :member-name "failureMessage")
                                  (commitment-duration :target-type
                                   commitment-duration :member-name
                                   "commitmentDuration")
                                  (commitment-expiration-time :target-type
                                   timestamp :member-name
                                   "commitmentExpirationTime"))
                                 (:shape-name
                                  "GetProvisionedModelThroughputResponse"))

(smithy/sdk/shapes:define-input get-use-case-for-model-access-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetUseCaseForModelAccessRequest"))

(smithy/sdk/shapes:define-output get-use-case-for-model-access-response
                                 common-lisp:nil
                                 ((form-data :target-type
                                   acknowledgement-form-data-body :required
                                   common-lisp:t :member-name "formData"))
                                 (:shape-name
                                  "GetUseCaseForModelAccessResponse"))

(smithy/sdk/shapes:define-type guardrail-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-policy
                                    common-lisp:nil
                                    ((policies :target-type
                                      automated-reasoning-policy-arn-list
                                      :required common-lisp:t :member-name
                                      "policies")
                                     (confidence-threshold :target-type
                                      automated-reasoning-confidence-filter-threshold
                                      :member-name "confidenceThreshold"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningPolicy"))

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-policy-config
                                    common-lisp:nil
                                    ((policies :target-type
                                      automated-reasoning-policy-arn-list
                                      :required common-lisp:t :member-name
                                      "policies")
                                     (confidence-threshold :target-type
                                      automated-reasoning-confidence-filter-threshold
                                      :member-name "confidenceThreshold"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningPolicyConfig"))

(smithy/sdk/shapes:define-type guardrail-blocked-messaging
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-configuration common-lisp:nil
                                    ((guardrail-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "guardrailId")
                                     (guardrail-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "guardrailVersion"))
                                    (:shape-name "GuardrailConfiguration"))

(smithy/sdk/shapes:define-structure guardrail-content-filter common-lisp:nil
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
                                      "outputStrength")
                                     (input-modalities :target-type
                                      guardrail-modalities :member-name
                                      "inputModalities")
                                     (output-modalities :target-type
                                      guardrail-modalities :member-name
                                      "outputModalities")
                                     (input-action :target-type
                                      guardrail-content-filter-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-content-filter-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailContentFilter"))

(smithy/sdk/shapes:define-enum guardrail-content-filter-action
    common-lisp:nil
  (:block "BLOCK")
  (:none "NONE"))

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
                                      "outputStrength")
                                     (input-modalities :target-type
                                      guardrail-modalities :member-name
                                      "inputModalities")
                                     (output-modalities :target-type
                                      guardrail-modalities :member-name
                                      "outputModalities")
                                     (input-action :target-type
                                      guardrail-content-filter-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-content-filter-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name
                                     "GuardrailContentFilterConfig"))

(smithy/sdk/shapes:define-enum guardrail-content-filter-type
    common-lisp:nil
  (:sexual "SEXUAL")
  (:violence "VIOLENCE")
  (:hate "HATE")
  (:insults "INSULTS")
  (:misconduct "MISCONDUCT")
  (:prompt-attack "PROMPT_ATTACK"))

(smithy/sdk/shapes:define-list guardrail-content-filters :member
                               guardrail-content-filter)

(smithy/sdk/shapes:define-list guardrail-content-filters-config :member
                               guardrail-content-filter-config)

(smithy/sdk/shapes:define-structure guardrail-content-filters-tier
                                    common-lisp:nil
                                    ((tier-name :target-type
                                      guardrail-content-filters-tier-name
                                      :required common-lisp:t :member-name
                                      "tierName"))
                                    (:shape-name "GuardrailContentFiltersTier"))

(smithy/sdk/shapes:define-structure guardrail-content-filters-tier-config
                                    common-lisp:nil
                                    ((tier-name :target-type
                                      guardrail-content-filters-tier-name
                                      :required common-lisp:t :member-name
                                      "tierName"))
                                    (:shape-name
                                     "GuardrailContentFiltersTierConfig"))

(smithy/sdk/shapes:define-enum guardrail-content-filters-tier-name
    common-lisp:nil
  (:classic "CLASSIC")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure guardrail-content-policy common-lisp:nil
                                    ((filters :target-type
                                      guardrail-content-filters :member-name
                                      "filters")
                                     (tier :target-type
                                      guardrail-content-filters-tier
                                      :member-name "tier"))
                                    (:shape-name "GuardrailContentPolicy"))

(smithy/sdk/shapes:define-structure guardrail-content-policy-config
                                    common-lisp:nil
                                    ((filters-config :target-type
                                      guardrail-content-filters-config
                                      :required common-lisp:t :member-name
                                      "filtersConfig")
                                     (tier-config :target-type
                                      guardrail-content-filters-tier-config
                                      :member-name "tierConfig"))
                                    (:shape-name
                                     "GuardrailContentPolicyConfig"))

(smithy/sdk/shapes:define-enum guardrail-contextual-grounding-action
    common-lisp:nil
  (:block "BLOCK")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-contextual-grounding-filter
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-contextual-grounding-filter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "threshold")
                                     (action :target-type
                                      guardrail-contextual-grounding-action
                                      :member-name "action")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled"))
                                    (:shape-name
                                     "GuardrailContextualGroundingFilter"))

(smithy/sdk/shapes:define-structure
 guardrail-contextual-grounding-filter-config common-lisp:nil
 ((type :target-type guardrail-contextual-grounding-filter-type :required
   common-lisp:t :member-name "type")
  (threshold :target-type smithy/sdk/smithy-types:double :required
   common-lisp:t :member-name "threshold")
  (action :target-type guardrail-contextual-grounding-action :member-name
   "action")
  (enabled :target-type smithy/sdk/smithy-types:boolean :member-name
   "enabled"))
 (:shape-name "GuardrailContextualGroundingFilterConfig"))

(smithy/sdk/shapes:define-enum guardrail-contextual-grounding-filter-type
    common-lisp:nil
  (:grounding "GROUNDING")
  (:relevance "RELEVANCE"))

(smithy/sdk/shapes:define-list guardrail-contextual-grounding-filters :member
                               guardrail-contextual-grounding-filter)

(smithy/sdk/shapes:define-list guardrail-contextual-grounding-filters-config
                               :member
                               guardrail-contextual-grounding-filter-config)

(smithy/sdk/shapes:define-structure guardrail-contextual-grounding-policy
                                    common-lisp:nil
                                    ((filters :target-type
                                      guardrail-contextual-grounding-filters
                                      :required common-lisp:t :member-name
                                      "filters"))
                                    (:shape-name
                                     "GuardrailContextualGroundingPolicy"))

(smithy/sdk/shapes:define-structure
 guardrail-contextual-grounding-policy-config common-lisp:nil
 ((filters-config :target-type guardrail-contextual-grounding-filters-config
   :required common-lisp:t :member-name "filtersConfig"))
 (:shape-name "GuardrailContextualGroundingPolicyConfig"))

(smithy/sdk/shapes:define-structure guardrail-cross-region-config
                                    common-lisp:nil
                                    ((guardrail-profile-identifier :target-type
                                      guardrail-cross-region-guardrail-profile-identifier
                                      :required common-lisp:t :member-name
                                      "guardrailProfileIdentifier"))
                                    (:shape-name "GuardrailCrossRegionConfig"))

(smithy/sdk/shapes:define-structure guardrail-cross-region-details
                                    common-lisp:nil
                                    ((guardrail-profile-id :target-type
                                      guardrail-cross-region-guardrail-profile-id
                                      :member-name "guardrailProfileId")
                                     (guardrail-profile-arn :target-type
                                      guardrail-cross-region-guardrail-profile-arn
                                      :member-name "guardrailProfileArn"))
                                    (:shape-name "GuardrailCrossRegionDetails"))

(smithy/sdk/shapes:define-type guardrail-cross-region-guardrail-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-cross-region-guardrail-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 guardrail-cross-region-guardrail-profile-identifier
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-draft-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-failure-recommendation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-failure-recommendations :member
                               guardrail-failure-recommendation)

(smithy/sdk/shapes:define-enum guardrail-filter-strength
    common-lisp:nil
  (:none "NONE")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-type guardrail-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-managed-word-lists :member
                               guardrail-managed-words)

(smithy/sdk/shapes:define-list guardrail-managed-word-lists-config :member
                               guardrail-managed-words-config)

(smithy/sdk/shapes:define-structure guardrail-managed-words common-lisp:nil
                                    ((type :target-type
                                      guardrail-managed-words-type :required
                                      common-lisp:t :member-name "type")
                                     (input-action :target-type
                                      guardrail-word-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-word-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailManagedWords"))

(smithy/sdk/shapes:define-structure guardrail-managed-words-config
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-managed-words-type :required
                                      common-lisp:t :member-name "type")
                                     (input-action :target-type
                                      guardrail-word-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-word-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailManagedWordsConfig"))

(smithy/sdk/shapes:define-enum guardrail-managed-words-type
    common-lisp:nil
  (:profanity "PROFANITY"))

(smithy/sdk/shapes:define-list guardrail-modalities :member guardrail-modality)

(smithy/sdk/shapes:define-enum guardrail-modality
    common-lisp:nil
  (:text "TEXT")
  (:image "IMAGE"))

(smithy/sdk/shapes:define-type guardrail-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-numerical-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-pii-entities :member
                               guardrail-pii-entity)

(smithy/sdk/shapes:define-list guardrail-pii-entities-config :member
                               guardrail-pii-entity-config)

(smithy/sdk/shapes:define-structure guardrail-pii-entity common-lisp:nil
                                    ((type :target-type
                                      guardrail-pii-entity-type :required
                                      common-lisp:t :member-name "type")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (input-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailPiiEntity"))

(smithy/sdk/shapes:define-structure guardrail-pii-entity-config common-lisp:nil
                                    ((type :target-type
                                      guardrail-pii-entity-type :required
                                      common-lisp:t :member-name "type")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (input-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailPiiEntityConfig"))

(smithy/sdk/shapes:define-enum guardrail-pii-entity-type
    common-lisp:nil
  (:address "ADDRESS")
  (:age "AGE")
  (:aws-access-key "AWS_ACCESS_KEY")
  (:aws-secret-key "AWS_SECRET_KEY")
  (:ca-health-number "CA_HEALTH_NUMBER")
  (:ca-social-insurance-number "CA_SOCIAL_INSURANCE_NUMBER")
  (:credit-debit-card-cvv "CREDIT_DEBIT_CARD_CVV")
  (:credit-debit-card-expiry "CREDIT_DEBIT_CARD_EXPIRY")
  (:credit-debit-card-number "CREDIT_DEBIT_CARD_NUMBER")
  (:driver-id "DRIVER_ID")
  (:email "EMAIL")
  (:international-bank-account-number "INTERNATIONAL_BANK_ACCOUNT_NUMBER")
  (:ip-address "IP_ADDRESS")
  (:license-plate "LICENSE_PLATE")
  (:mac-address "MAC_ADDRESS")
  (:name "NAME")
  (:password "PASSWORD")
  (:phone "PHONE")
  (:pin "PIN")
  (:swift-code "SWIFT_CODE")
  (:uk-national-health-service-number "UK_NATIONAL_HEALTH_SERVICE_NUMBER")
  (:uk-national-insurance-number "UK_NATIONAL_INSURANCE_NUMBER")
  (:uk-unique-taxpayer-reference-number "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER")
  (:url "URL")
  (:username "USERNAME")
  (:us-bank-account-number "US_BANK_ACCOUNT_NUMBER")
  (:us-bank-routing-number "US_BANK_ROUTING_NUMBER")
  (:us-individual-tax-identification-number
   "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER")
  (:us-passport-number "US_PASSPORT_NUMBER")
  (:us-social-security-number "US_SOCIAL_SECURITY_NUMBER")
  (:vehicle-identification-number "VEHICLE_IDENTIFICATION_NUMBER"))

(smithy/sdk/shapes:define-structure guardrail-regex common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (pattern :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "pattern")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (input-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailRegex"))

(smithy/sdk/shapes:define-structure guardrail-regex-config common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (pattern :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "pattern")
                                     (action :target-type
                                      guardrail-sensitive-information-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (input-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "inputAction")
                                     (output-action :target-type
                                      guardrail-sensitive-information-action
                                      :member-name "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailRegexConfig"))

(smithy/sdk/shapes:define-list guardrail-regexes :member guardrail-regex)

(smithy/sdk/shapes:define-list guardrail-regexes-config :member
                               guardrail-regex-config)

(smithy/sdk/shapes:define-enum guardrail-sensitive-information-action
    common-lisp:nil
  (:block "BLOCK")
  (:anonymize "ANONYMIZE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-sensitive-information-policy
                                    common-lisp:nil
                                    ((pii-entities :target-type
                                      guardrail-pii-entities :member-name
                                      "piiEntities")
                                     (regexes :target-type guardrail-regexes
                                      :member-name "regexes"))
                                    (:shape-name
                                     "GuardrailSensitiveInformationPolicy"))

(smithy/sdk/shapes:define-structure
 guardrail-sensitive-information-policy-config common-lisp:nil
 ((pii-entities-config :target-type guardrail-pii-entities-config :member-name
   "piiEntitiesConfig")
  (regexes-config :target-type guardrail-regexes-config :member-name
   "regexesConfig"))
 (:shape-name "GuardrailSensitiveInformationPolicyConfig"))

(smithy/sdk/shapes:define-enum guardrail-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:versioning "VERSIONING")
  (:ready "READY")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type guardrail-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-status-reasons :member
                               guardrail-status-reason)

(smithy/sdk/shapes:define-list guardrail-summaries :member guardrail-summary)

(smithy/sdk/shapes:define-structure guardrail-summary common-lisp:nil
                                    ((id :target-type guardrail-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type guardrail-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type guardrail-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (name :target-type guardrail-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      guardrail-description :member-name
                                      "description")
                                     (version :target-type guardrail-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (cross-region-details :target-type
                                      guardrail-cross-region-details
                                      :member-name "crossRegionDetails"))
                                    (:shape-name "GuardrailSummary"))

(smithy/sdk/shapes:define-structure guardrail-topic common-lisp:nil
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
                                      :member-name "type")
                                     (input-action :target-type
                                      guardrail-topic-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-topic-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailTopic"))

(smithy/sdk/shapes:define-enum guardrail-topic-action
    common-lisp:nil
  (:block "BLOCK")
  (:none "NONE"))

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
                                      "type")
                                     (input-action :target-type
                                      guardrail-topic-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-topic-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailTopicConfig"))

(smithy/sdk/shapes:define-type guardrail-topic-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-topic-example
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-topic-examples :member
                               guardrail-topic-example)

(smithy/sdk/shapes:define-type guardrail-topic-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-topic-policy common-lisp:nil
                                    ((topics :target-type guardrail-topics
                                      :required common-lisp:t :member-name
                                      "topics")
                                     (tier :target-type guardrail-topics-tier
                                      :member-name "tier"))
                                    (:shape-name "GuardrailTopicPolicy"))

(smithy/sdk/shapes:define-structure guardrail-topic-policy-config
                                    common-lisp:nil
                                    ((topics-config :target-type
                                      guardrail-topics-config :required
                                      common-lisp:t :member-name
                                      "topicsConfig")
                                     (tier-config :target-type
                                      guardrail-topics-tier-config :member-name
                                      "tierConfig"))
                                    (:shape-name "GuardrailTopicPolicyConfig"))

(smithy/sdk/shapes:define-enum guardrail-topic-type
    common-lisp:nil
  (:deny "DENY"))

(smithy/sdk/shapes:define-list guardrail-topics :member guardrail-topic)

(smithy/sdk/shapes:define-list guardrail-topics-config :member
                               guardrail-topic-config)

(smithy/sdk/shapes:define-structure guardrail-topics-tier common-lisp:nil
                                    ((tier-name :target-type
                                      guardrail-topics-tier-name :required
                                      common-lisp:t :member-name "tierName"))
                                    (:shape-name "GuardrailTopicsTier"))

(smithy/sdk/shapes:define-structure guardrail-topics-tier-config
                                    common-lisp:nil
                                    ((tier-name :target-type
                                      guardrail-topics-tier-name :required
                                      common-lisp:t :member-name "tierName"))
                                    (:shape-name "GuardrailTopicsTierConfig"))

(smithy/sdk/shapes:define-enum guardrail-topics-tier-name
    common-lisp:nil
  (:classic "CLASSIC")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-type guardrail-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-word common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (input-action :target-type
                                      guardrail-word-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-word-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailWord"))

(smithy/sdk/shapes:define-enum guardrail-word-action
    common-lisp:nil
  (:block "BLOCK")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-word-config common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (input-action :target-type
                                      guardrail-word-action :member-name
                                      "inputAction")
                                     (output-action :target-type
                                      guardrail-word-action :member-name
                                      "outputAction")
                                     (input-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inputEnabled")
                                     (output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "outputEnabled"))
                                    (:shape-name "GuardrailWordConfig"))

(smithy/sdk/shapes:define-structure guardrail-word-policy common-lisp:nil
                                    ((words :target-type guardrail-words
                                      :member-name "words")
                                     (managed-word-lists :target-type
                                      guardrail-managed-word-lists :member-name
                                      "managedWordLists"))
                                    (:shape-name "GuardrailWordPolicy"))

(smithy/sdk/shapes:define-structure guardrail-word-policy-config
                                    common-lisp:nil
                                    ((words-config :target-type
                                      guardrail-words-config :member-name
                                      "wordsConfig")
                                     (managed-word-lists-config :target-type
                                      guardrail-managed-word-lists-config
                                      :member-name "managedWordListsConfig"))
                                    (:shape-name "GuardrailWordPolicyConfig"))

(smithy/sdk/shapes:define-list guardrail-words :member guardrail-word)

(smithy/sdk/shapes:define-list guardrail-words-config :member
                               guardrail-word-config)

common-lisp:nil

(smithy/sdk/shapes:define-structure human-evaluation-config common-lisp:nil
                                    ((human-workflow-config :target-type
                                      human-workflow-config :member-name
                                      "humanWorkflowConfig")
                                     (custom-metrics :target-type
                                      human-evaluation-custom-metrics
                                      :member-name "customMetrics")
                                     (dataset-metric-configs :target-type
                                      evaluation-dataset-metric-configs
                                      :required common-lisp:t :member-name
                                      "datasetMetricConfigs"))
                                    (:shape-name "HumanEvaluationConfig"))

(smithy/sdk/shapes:define-structure human-evaluation-custom-metric
                                    common-lisp:nil
                                    ((name :target-type evaluation-metric-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      evaluation-metric-description
                                      :member-name "description")
                                     (rating-method :target-type
                                      evaluation-rating-method :required
                                      common-lisp:t :member-name
                                      "ratingMethod"))
                                    (:shape-name "HumanEvaluationCustomMetric"))

(smithy/sdk/shapes:define-list human-evaluation-custom-metrics :member
                               human-evaluation-custom-metric)

(smithy/sdk/shapes:define-type human-task-instructions
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure human-workflow-config common-lisp:nil
                                    ((flow-definition-arn :target-type
                                      sage-maker-flow-definition-arn :required
                                      common-lisp:t :member-name
                                      "flowDefinitionArn")
                                     (instructions :target-type
                                      human-task-instructions :member-name
                                      "instructions"))
                                    (:shape-name "HumanWorkflowConfig"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure implicit-filter-configuration
                                    common-lisp:nil
                                    ((metadata-attributes :target-type
                                      metadata-attribute-schema-list :required
                                      common-lisp:t :member-name
                                      "metadataAttributes")
                                     (model-arn :target-type bedrock-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn"))
                                    (:shape-name "ImplicitFilterConfiguration"))

(smithy/sdk/shapes:define-type imported-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type imported-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type imported-model-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure imported-model-summary common-lisp:nil
                                    ((model-arn :target-type imported-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (model-name :target-type
                                      imported-model-name :required
                                      common-lisp:t :member-name "modelName")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (instruct-supported :target-type
                                      instruct-supported :member-name
                                      "instructSupported")
                                     (model-architecture :target-type
                                      model-architecture :member-name
                                      "modelArchitecture"))
                                    (:shape-name "ImportedModelSummary"))

(smithy/sdk/shapes:define-list imported-model-summary-list :member
                               imported-model-summary)

(smithy/sdk/shapes:define-type inference-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-profile-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-profile-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inference-profile-model common-lisp:nil
                                    ((model-arn :target-type
                                      foundation-model-arn :member-name
                                      "modelArn"))
                                    (:shape-name "InferenceProfileModel"))

(smithy/sdk/shapes:define-union inference-profile-model-source common-lisp:nil
                                ((copy-from :target-type
                                  inference-profile-model-source-arn
                                  :member-name "copyFrom"))
                                (:shape-name "InferenceProfileModelSource"))

(smithy/sdk/shapes:define-type inference-profile-model-source-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inference-profile-models :member
                               inference-profile-model)

(smithy/sdk/shapes:define-type inference-profile-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum inference-profile-status
    common-lisp:nil
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list inference-profile-summaries :member
                               inference-profile-summary)

(smithy/sdk/shapes:define-structure inference-profile-summary common-lisp:nil
                                    ((inference-profile-name :target-type
                                      inference-profile-name :required
                                      common-lisp:t :member-name
                                      "inferenceProfileName")
                                     (description :target-type
                                      inference-profile-description
                                      :member-name "description")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (inference-profile-arn :target-type
                                      inference-profile-arn :required
                                      common-lisp:t :member-name
                                      "inferenceProfileArn")
                                     (models :target-type
                                      inference-profile-models :required
                                      common-lisp:t :member-name "models")
                                     (inference-profile-id :target-type
                                      inference-profile-id :required
                                      common-lisp:t :member-name
                                      "inferenceProfileId")
                                     (status :target-type
                                      inference-profile-status :required
                                      common-lisp:t :member-name "status")
                                     (type :target-type inference-profile-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "InferenceProfileSummary"))

(smithy/sdk/shapes:define-enum inference-profile-type
    common-lisp:nil
  (:system-defined "SYSTEM_DEFINED")
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-enum inference-type
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:provisioned "PROVISIONED"))

(smithy/sdk/shapes:define-list inference-type-list :member inference-type)

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instruct-supported
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-union invocation-log-source common-lisp:nil
                                ((s3uri :target-type s3uri :member-name
                                  "s3Uri"))
                                (:shape-name "InvocationLogSource"))

(smithy/sdk/shapes:define-structure invocation-logs-config common-lisp:nil
                                    ((use-prompt-response :target-type
                                      use-prompt-response :member-name
                                      "usePromptResponse")
                                     (invocation-log-source :target-type
                                      invocation-log-source :required
                                      common-lisp:t :member-name
                                      "invocationLogSource")
                                     (request-metadata-filters :target-type
                                      request-metadata-filters :member-name
                                      "requestMetadataFilters"))
                                    (:shape-name "InvocationLogsConfig"))

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status-details
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:failed "Failed")
  (:not-started "NotStarted"))

(smithy/sdk/shapes:define-structure kb-inference-config common-lisp:nil
                                    ((text-inference-config :target-type
                                      text-inference-config :member-name
                                      "textInferenceConfig"))
                                    (:shape-name "KbInferenceConfig"))

(smithy/sdk/shapes:define-type key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union knowledge-base-config common-lisp:nil
                                ((retrieve-config :target-type retrieve-config
                                  :member-name "retrieveConfig")
                                 (retrieve-and-generate-config :target-type
                                  retrieve-and-generate-configuration
                                  :member-name "retrieveAndGenerateConfig"))
                                (:shape-name "KnowledgeBaseConfig"))

(smithy/sdk/shapes:define-type knowledge-base-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-retrieval-configuration
                                    common-lisp:nil
                                    ((vector-search-configuration :target-type
                                      knowledge-base-vector-search-configuration
                                      :required common-lisp:t :member-name
                                      "vectorSearchConfiguration"))
                                    (:shape-name
                                     "KnowledgeBaseRetrievalConfiguration"))

(smithy/sdk/shapes:define-structure
 knowledge-base-retrieve-and-generate-configuration common-lisp:nil
 ((knowledge-base-id :target-type knowledge-base-id :required common-lisp:t
   :member-name "knowledgeBaseId")
  (model-arn :target-type bedrock-model-arn :required common-lisp:t
   :member-name "modelArn")
  (retrieval-configuration :target-type knowledge-base-retrieval-configuration
   :member-name "retrievalConfiguration")
  (generation-configuration :target-type generation-configuration :member-name
   "generationConfiguration")
  (orchestration-configuration :target-type orchestration-configuration
   :member-name "orchestrationConfiguration"))
 (:shape-name "KnowledgeBaseRetrieveAndGenerateConfiguration"))

(smithy/sdk/shapes:define-structure knowledge-base-vector-search-configuration
                                    common-lisp:nil
                                    ((number-of-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfResults")
                                     (override-search-type :target-type
                                      search-type :member-name
                                      "overrideSearchType")
                                     (filter :target-type retrieval-filter
                                      :member-name "filter")
                                     (implicit-filter-configuration
                                      :target-type
                                      implicit-filter-configuration
                                      :member-name
                                      "implicitFilterConfiguration")
                                     (reranking-configuration :target-type
                                      vector-search-reranking-configuration
                                      :member-name "rerankingConfiguration"))
                                    (:shape-name
                                     "KnowledgeBaseVectorSearchConfiguration"))

(smithy/sdk/shapes:define-structure legal-term common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name "LegalTerm"))

(smithy/sdk/shapes:define-input list-automated-reasoning-policies-request
                                common-lisp:nil
                                ((policy-arn :target-type
                                  automated-reasoning-policy-arn :member-name
                                  "policyArn" :http-query "policyArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAutomatedReasoningPoliciesRequest"))

(smithy/sdk/shapes:define-output list-automated-reasoning-policies-response
                                 common-lisp:nil
                                 ((automated-reasoning-policy-summaries
                                   :target-type
                                   automated-reasoning-policy-summaries
                                   :required common-lisp:t :member-name
                                   "automatedReasoningPolicySummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAutomatedReasoningPoliciesResponse"))

(smithy/sdk/shapes:define-input
 list-automated-reasoning-policy-build-workflows-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListAutomatedReasoningPolicyBuildWorkflowsRequest"))

(smithy/sdk/shapes:define-output
 list-automated-reasoning-policy-build-workflows-response common-lisp:nil
 ((automated-reasoning-policy-build-workflow-summaries :target-type
   automated-reasoning-policy-build-workflow-summaries :required common-lisp:t
   :member-name "automatedReasoningPolicyBuildWorkflowSummaries")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListAutomatedReasoningPolicyBuildWorkflowsResponse"))

(smithy/sdk/shapes:define-input
 list-automated-reasoning-policy-test-cases-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListAutomatedReasoningPolicyTestCasesRequest"))

(smithy/sdk/shapes:define-output
 list-automated-reasoning-policy-test-cases-response common-lisp:nil
 ((test-cases :target-type automated-reasoning-policy-test-case-list :required
   common-lisp:t :member-name "testCases")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListAutomatedReasoningPolicyTestCasesResponse"))

(smithy/sdk/shapes:define-input
 list-automated-reasoning-policy-test-results-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListAutomatedReasoningPolicyTestResultsRequest"))

(smithy/sdk/shapes:define-output
 list-automated-reasoning-policy-test-results-response common-lisp:nil
 ((test-results :target-type automated-reasoning-policy-test-list :required
   common-lisp:t :member-name "testResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListAutomatedReasoningPolicyTestResultsResponse"))

(smithy/sdk/shapes:define-input list-custom-model-deployments-request
                                common-lisp:nil
                                ((created-before :target-type timestamp
                                  :member-name "createdBefore" :http-query
                                  "createdBefore")
                                 (created-after :target-type timestamp
                                  :member-name "createdAfter" :http-query
                                  "createdAfter")
                                 (name-contains :target-type
                                  model-deployment-name :member-name
                                  "nameContains" :http-query "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-models-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (status-equals :target-type
                                  custom-model-deployment-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (model-arn-equals :target-type
                                  custom-model-arn :member-name
                                  "modelArnEquals" :http-query
                                  "modelArnEquals"))
                                (:shape-name
                                 "ListCustomModelDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-custom-model-deployments-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-deployment-summaries :target-type
                                   custom-model-deployment-summary-list
                                   :member-name "modelDeploymentSummaries"))
                                 (:shape-name
                                  "ListCustomModelDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-custom-models-request common-lisp:nil
                                ((creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (name-contains :target-type custom-model-name
                                  :member-name "nameContains" :http-query
                                  "nameContains")
                                 (base-model-arn-equals :target-type model-arn
                                  :member-name "baseModelArnEquals" :http-query
                                  "baseModelArnEquals")
                                 (foundation-model-arn-equals :target-type
                                  foundation-model-arn :member-name
                                  "foundationModelArnEquals" :http-query
                                  "foundationModelArnEquals")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-models-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (is-owned :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isOwned" :http-query "isOwned")
                                 (model-status :target-type model-status
                                  :member-name "modelStatus" :http-query
                                  "modelStatus"))
                                (:shape-name "ListCustomModelsRequest"))

(smithy/sdk/shapes:define-output list-custom-models-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-summaries :target-type
                                   custom-model-summary-list :member-name
                                   "modelSummaries"))
                                 (:shape-name "ListCustomModelsResponse"))

(smithy/sdk/shapes:define-input list-evaluation-jobs-request common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (status-equals :target-type
                                  evaluation-job-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (application-type-equals :target-type
                                  application-type :member-name
                                  "applicationTypeEquals" :http-query
                                  "applicationTypeEquals")
                                 (name-contains :target-type
                                  evaluation-job-name :member-name
                                  "nameContains" :http-query "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-jobs-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListEvaluationJobsRequest"))

(smithy/sdk/shapes:define-output list-evaluation-jobs-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (job-summaries :target-type
                                   evaluation-summaries :member-name
                                   "jobSummaries"))
                                 (:shape-name "ListEvaluationJobsResponse"))

(smithy/sdk/shapes:define-input list-foundation-model-agreement-offers-request
                                common-lisp:nil
                                ((model-id :target-type bedrock-model-id
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (offer-type :target-type offer-type
                                  :member-name "offerType" :http-query
                                  "offerType"))
                                (:shape-name
                                 "ListFoundationModelAgreementOffersRequest"))

(smithy/sdk/shapes:define-output
 list-foundation-model-agreement-offers-response common-lisp:nil
 ((model-id :target-type bedrock-model-id :required common-lisp:t :member-name
   "modelId")
  (offers :target-type offers :required common-lisp:t :member-name "offers"))
 (:shape-name "ListFoundationModelAgreementOffersResponse"))

(smithy/sdk/shapes:define-input list-foundation-models-request common-lisp:nil
                                ((by-provider :target-type provider
                                  :member-name "byProvider" :http-query
                                  "byProvider")
                                 (by-customization-type :target-type
                                  model-customization :member-name
                                  "byCustomizationType" :http-query
                                  "byCustomizationType")
                                 (by-output-modality :target-type
                                  model-modality :member-name
                                  "byOutputModality" :http-query
                                  "byOutputModality")
                                 (by-inference-type :target-type inference-type
                                  :member-name "byInferenceType" :http-query
                                  "byInferenceType"))
                                (:shape-name "ListFoundationModelsRequest"))

(smithy/sdk/shapes:define-output list-foundation-models-response
                                 common-lisp:nil
                                 ((model-summaries :target-type
                                   foundation-model-summary-list :member-name
                                   "modelSummaries"))
                                 (:shape-name "ListFoundationModelsResponse"))

(smithy/sdk/shapes:define-input list-guardrails-request common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :member-name
                                  "guardrailIdentifier" :http-query
                                  "guardrailIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListGuardrailsRequest"))

(smithy/sdk/shapes:define-output list-guardrails-response common-lisp:nil
                                 ((guardrails :target-type guardrail-summaries
                                   :required common-lisp:t :member-name
                                   "guardrails")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGuardrailsResponse"))

(smithy/sdk/shapes:define-input list-imported-models-request common-lisp:nil
                                ((creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (name-contains :target-type
                                  imported-model-name :member-name
                                  "nameContains" :http-query "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-models-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListImportedModelsRequest"))

(smithy/sdk/shapes:define-output list-imported-models-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-summaries :target-type
                                   imported-model-summary-list :member-name
                                   "modelSummaries"))
                                 (:shape-name "ListImportedModelsResponse"))

(smithy/sdk/shapes:define-input list-inference-profiles-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (type-equals :target-type
                                  inference-profile-type :member-name
                                  "typeEquals" :http-query "type"))
                                (:shape-name "ListInferenceProfilesRequest"))

(smithy/sdk/shapes:define-output list-inference-profiles-response
                                 common-lisp:nil
                                 ((inference-profile-summaries :target-type
                                   inference-profile-summaries :member-name
                                   "inferenceProfileSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInferenceProfilesResponse"))

(smithy/sdk/shapes:define-input list-marketplace-model-endpoints-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (model-source-equals :target-type
                                  model-source-identifier :member-name
                                  "modelSourceEquals" :http-query
                                  "modelSourceIdentifier"))
                                (:shape-name
                                 "ListMarketplaceModelEndpointsRequest"))

(smithy/sdk/shapes:define-output list-marketplace-model-endpoints-response
                                 common-lisp:nil
                                 ((marketplace-model-endpoints :target-type
                                   marketplace-model-endpoint-summaries
                                   :member-name "marketplaceModelEndpoints")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListMarketplaceModelEndpointsResponse"))

(smithy/sdk/shapes:define-input list-model-copy-jobs-request common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (status-equals :target-type
                                  model-copy-job-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (source-account-equals :target-type account-id
                                  :member-name "sourceAccountEquals"
                                  :http-query "sourceAccountEquals")
                                 (source-model-arn-equals :target-type
                                  model-arn :member-name "sourceModelArnEquals"
                                  :http-query "sourceModelArnEquals")
                                 (target-model-name-contains :target-type
                                  custom-model-name :member-name
                                  "targetModelNameContains" :http-query
                                  "outputModelNameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-jobs-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListModelCopyJobsRequest"))

(smithy/sdk/shapes:define-output list-model-copy-jobs-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-copy-job-summaries :target-type
                                   model-copy-job-summaries :member-name
                                   "modelCopyJobSummaries"))
                                 (:shape-name "ListModelCopyJobsResponse"))

(smithy/sdk/shapes:define-input list-model-customization-jobs-request
                                common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (status-equals :target-type
                                  fine-tuning-job-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (name-contains :target-type job-name
                                  :member-name "nameContains" :http-query
                                  "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-jobs-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name
                                 "ListModelCustomizationJobsRequest"))

(smithy/sdk/shapes:define-output list-model-customization-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-customization-job-summaries
                                   :target-type
                                   model-customization-job-summaries
                                   :member-name
                                   "modelCustomizationJobSummaries"))
                                 (:shape-name
                                  "ListModelCustomizationJobsResponse"))

(smithy/sdk/shapes:define-input list-model-import-jobs-request common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (status-equals :target-type
                                  model-import-job-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (name-contains :target-type job-name
                                  :member-name "nameContains" :http-query
                                  "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-jobs-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListModelImportJobsRequest"))

(smithy/sdk/shapes:define-output list-model-import-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (model-import-job-summaries :target-type
                                   model-import-job-summaries :member-name
                                   "modelImportJobSummaries"))
                                 (:shape-name "ListModelImportJobsResponse"))

(smithy/sdk/shapes:define-input list-model-invocation-jobs-request
                                common-lisp:nil
                                ((submit-time-after :target-type timestamp
                                  :member-name "submitTimeAfter" :http-query
                                  "submitTimeAfter")
                                 (submit-time-before :target-type timestamp
                                  :member-name "submitTimeBefore" :http-query
                                  "submitTimeBefore")
                                 (status-equals :target-type
                                  model-invocation-job-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (name-contains :target-type
                                  model-invocation-job-name :member-name
                                  "nameContains" :http-query "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-jobs-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListModelInvocationJobsRequest"))

(smithy/sdk/shapes:define-output list-model-invocation-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (invocation-job-summaries :target-type
                                   model-invocation-job-summaries :member-name
                                   "invocationJobSummaries"))
                                 (:shape-name
                                  "ListModelInvocationJobsResponse"))

(smithy/sdk/shapes:define-input list-prompt-routers-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (type :target-type prompt-router-type
                                  :member-name "type" :http-query "type"))
                                (:shape-name "ListPromptRoutersRequest"))

(smithy/sdk/shapes:define-output list-prompt-routers-response common-lisp:nil
                                 ((prompt-router-summaries :target-type
                                   prompt-router-summaries :member-name
                                   "promptRouterSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPromptRoutersResponse"))

(smithy/sdk/shapes:define-input list-provisioned-model-throughputs-request
                                common-lisp:nil
                                ((creation-time-after :target-type timestamp
                                  :member-name "creationTimeAfter" :http-query
                                  "creationTimeAfter")
                                 (creation-time-before :target-type timestamp
                                  :member-name "creationTimeBefore" :http-query
                                  "creationTimeBefore")
                                 (status-equals :target-type
                                  provisioned-model-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (model-arn-equals :target-type model-arn
                                  :member-name "modelArnEquals" :http-query
                                  "modelArnEquals")
                                 (name-contains :target-type
                                  provisioned-model-name :member-name
                                  "nameContains" :http-query "nameContains")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type
                                  sort-by-provisioned-models :member-name
                                  "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name
                                 "ListProvisionedModelThroughputsRequest"))

(smithy/sdk/shapes:define-output list-provisioned-model-throughputs-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (provisioned-model-summaries :target-type
                                   provisioned-model-summaries :member-name
                                   "provisionedModelSummaries"))
                                 (:shape-name
                                  "ListProvisionedModelThroughputsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-config common-lisp:nil
                                    ((cloud-watch-config :target-type
                                      cloud-watch-config :member-name
                                      "cloudWatchConfig")
                                     (s3config :target-type s3config
                                      :member-name "s3Config")
                                     (text-data-delivery-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "textDataDeliveryEnabled")
                                     (image-data-delivery-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "imageDataDeliveryEnabled")
                                     (embedding-data-delivery-enabled
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "embeddingDataDeliveryEnabled")
                                     (video-data-delivery-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "videoDataDeliveryEnabled"))
                                    (:shape-name "LoggingConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-structure marketplace-model-endpoint common-lisp:nil
                                    ((endpoint-arn :target-type arn :required
                                      common-lisp:t :member-name "endpointArn")
                                     (model-source-identifier :target-type
                                      model-source-identifier :required
                                      common-lisp:t :member-name
                                      "modelSourceIdentifier")
                                     (status :target-type status :member-name
                                      "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (endpoint-config :target-type
                                      endpoint-config :required common-lisp:t
                                      :member-name "endpointConfig")
                                     (endpoint-status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "endpointStatus")
                                     (endpoint-status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpointStatusMessage"))
                                    (:shape-name "MarketplaceModelEndpoint"))

(smithy/sdk/shapes:define-list marketplace-model-endpoint-summaries :member
                               marketplace-model-endpoint-summary)

(smithy/sdk/shapes:define-structure marketplace-model-endpoint-summary
                                    common-lisp:nil
                                    ((endpoint-arn :target-type arn :required
                                      common-lisp:t :member-name "endpointArn")
                                     (model-source-identifier :target-type
                                      model-source-identifier :required
                                      common-lisp:t :member-name
                                      "modelSourceIdentifier")
                                     (status :target-type status :member-name
                                      "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name
                                     "MarketplaceModelEndpointSummary"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-tokens smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-attribute-schema common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (type :target-type attribute-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "description"))
                                    (:shape-name "MetadataAttributeSchema"))

(smithy/sdk/shapes:define-list metadata-attribute-schema-list :member
                               metadata-attribute-schema)

(smithy/sdk/shapes:define-structure metadata-configuration-for-reranking
                                    common-lisp:nil
                                    ((selection-mode :target-type
                                      reranking-metadata-selection-mode
                                      :required common-lisp:t :member-name
                                      "selectionMode")
                                     (selective-mode-configuration :target-type
                                      reranking-metadata-selective-mode-configuration
                                      :member-name
                                      "selectiveModeConfiguration"))
                                    (:shape-name
                                     "MetadataConfigurationForReranking"))

(smithy/sdk/shapes:define-type metric-float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-architecture
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-copy-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-copy-job-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list model-copy-job-summaries :member
                               model-copy-job-summary)

(smithy/sdk/shapes:define-structure model-copy-job-summary common-lisp:nil
                                    ((job-arn :target-type model-copy-job-arn
                                      :required common-lisp:t :member-name
                                      "jobArn")
                                     (status :target-type model-copy-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (target-model-arn :target-type
                                      custom-model-arn :required common-lisp:t
                                      :member-name "targetModelArn")
                                     (target-model-name :target-type
                                      custom-model-name :member-name
                                      "targetModelName")
                                     (source-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "sourceAccountId")
                                     (source-model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "sourceModelArn")
                                     (target-model-kms-key-arn :target-type
                                      kms-key-arn :member-name
                                      "targetModelKmsKeyArn")
                                     (target-model-tags :target-type tag-list
                                      :member-name "targetModelTags")
                                     (failure-message :target-type
                                      error-message :member-name
                                      "failureMessage")
                                     (source-model-name :target-type
                                      custom-model-name :member-name
                                      "sourceModelName"))
                                    (:shape-name "ModelCopyJobSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-enum model-customization
    common-lisp:nil
  (:fine-tuning "FINE_TUNING")
  (:continued-pre-training "CONTINUED_PRE_TRAINING")
  (:distillation "DISTILLATION"))

(smithy/sdk/shapes:define-map model-customization-hyper-parameters :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-customization-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-customization-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-customization-job-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-list model-customization-job-summaries :member
                               model-customization-job-summary)

(smithy/sdk/shapes:define-structure model-customization-job-summary
                                    common-lisp:nil
                                    ((job-arn :target-type
                                      model-customization-job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (base-model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "baseModelArn")
                                     (job-name :target-type job-name :required
                                      common-lisp:t :member-name "jobName")
                                     (status :target-type
                                      model-customization-job-status :required
                                      common-lisp:t :member-name "status")
                                     (status-details :target-type
                                      status-details :member-name
                                      "statusDetails")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (custom-model-arn :target-type
                                      custom-model-arn :member-name
                                      "customModelArn")
                                     (custom-model-name :target-type
                                      custom-model-name :member-name
                                      "customModelName")
                                     (customization-type :target-type
                                      customization-type :member-name
                                      "customizationType"))
                                    (:shape-name
                                     "ModelCustomizationJobSummary"))

(smithy/sdk/shapes:define-list model-customization-list :member
                               model-customization)

(smithy/sdk/shapes:define-union model-data-source common-lisp:nil
                                ((s3data-source :target-type s3data-source
                                  :member-name "s3DataSource"))
                                (:shape-name "ModelDataSource"))

(smithy/sdk/shapes:define-type model-deployment-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-import-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-import-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-import-job-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list model-import-job-summaries :member
                               model-import-job-summary)

(smithy/sdk/shapes:define-structure model-import-job-summary common-lisp:nil
                                    ((job-arn :target-type model-import-job-arn
                                      :required common-lisp:t :member-name
                                      "jobArn")
                                     (job-name :target-type job-name :required
                                      common-lisp:t :member-name "jobName")
                                     (status :target-type
                                      model-import-job-status :required
                                      common-lisp:t :member-name "status")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (imported-model-arn :target-type
                                      imported-model-arn :member-name
                                      "importedModelArn")
                                     (imported-model-name :target-type
                                      imported-model-name :member-name
                                      "importedModelName"))
                                    (:shape-name "ModelImportJobSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type model-invocation-idempotency-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-invocation-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-invocation-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union model-invocation-job-input-data-config
                                common-lisp:nil
                                ((s3input-data-config :target-type
                                  model-invocation-job-s3input-data-config
                                  :member-name "s3InputDataConfig"))
                                (:shape-name
                                 "ModelInvocationJobInputDataConfig"))

(smithy/sdk/shapes:define-type model-invocation-job-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union model-invocation-job-output-data-config
                                common-lisp:nil
                                ((s3output-data-config :target-type
                                  model-invocation-job-s3output-data-config
                                  :member-name "s3OutputDataConfig"))
                                (:shape-name
                                 "ModelInvocationJobOutputDataConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-structure model-invocation-job-s3input-data-config
                                    common-lisp:nil
                                    ((s3input-format :target-type
                                      s3input-format :member-name
                                      "s3InputFormat")
                                     (s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (s3bucket-owner :target-type account-id
                                      :member-name "s3BucketOwner"))
                                    (:shape-name
                                     "ModelInvocationJobS3InputDataConfig"))

(smithy/sdk/shapes:define-structure model-invocation-job-s3output-data-config
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (s3encryption-key-id :target-type
                                      kms-key-id :member-name
                                      "s3EncryptionKeyId")
                                     (s3bucket-owner :target-type account-id
                                      :member-name "s3BucketOwner"))
                                    (:shape-name
                                     "ModelInvocationJobS3OutputDataConfig"))

(smithy/sdk/shapes:define-enum model-invocation-job-status
    common-lisp:nil
  (:submitted "Submitted")
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:partially-completed "PartiallyCompleted")
  (:expired "Expired")
  (:validating "Validating")
  (:scheduled "Scheduled"))

(smithy/sdk/shapes:define-list model-invocation-job-summaries :member
                               model-invocation-job-summary)

(smithy/sdk/shapes:define-structure model-invocation-job-summary
                                    common-lisp:nil
                                    ((job-arn :target-type
                                      model-invocation-job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (job-name :target-type
                                      model-invocation-job-name :required
                                      common-lisp:t :member-name "jobName")
                                     (model-id :target-type model-id :required
                                      common-lisp:t :member-name "modelId")
                                     (client-request-token :target-type
                                      model-invocation-idempotency-token
                                      :member-name "clientRequestToken")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type
                                      model-invocation-job-status :member-name
                                      "status")
                                     (message :target-type message :member-name
                                      "message")
                                     (submit-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "submitTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (input-data-config :target-type
                                      model-invocation-job-input-data-config
                                      :required common-lisp:t :member-name
                                      "inputDataConfig")
                                     (output-data-config :target-type
                                      model-invocation-job-output-data-config
                                      :required common-lisp:t :member-name
                                      "outputDataConfig")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (timeout-duration-in-hours :target-type
                                      model-invocation-job-timeout-duration-in-hours
                                      :member-name "timeoutDurationInHours")
                                     (job-expiration-time :target-type
                                      timestamp :member-name
                                      "jobExpirationTime"))
                                    (:shape-name "ModelInvocationJobSummary"))

(smithy/sdk/shapes:define-type model-invocation-job-timeout-duration-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum model-modality
    common-lisp:nil
  (:text "TEXT")
  (:image "IMAGE")
  (:embedding "EMBEDDING"))

(smithy/sdk/shapes:define-list model-modality-list :member model-modality)

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type model-source-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:active "Active")
  (:creating "Creating")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer common-lisp:nil
                                    ((offer-id :target-type offer-id
                                      :member-name "offerId")
                                     (offer-token :target-type offer-token
                                      :required common-lisp:t :member-name
                                      "offerToken")
                                     (term-details :target-type term-details
                                      :required common-lisp:t :member-name
                                      "termDetails"))
                                    (:shape-name "Offer"))

(smithy/sdk/shapes:define-type offer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offer-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum offer-type
    common-lisp:nil
  (:all "ALL")
  (:public "PUBLIC"))

(smithy/sdk/shapes:define-list offers :member offer)

(smithy/sdk/shapes:define-structure orchestration-configuration common-lisp:nil
                                    ((query-transformation-configuration
                                      :target-type
                                      query-transformation-configuration
                                      :required common-lisp:t :member-name
                                      "queryTransformationConfiguration"))
                                    (:shape-name "OrchestrationConfiguration"))

(smithy/sdk/shapes:define-structure output-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum performance-config-latency
    common-lisp:nil
  (:standard "standard")
  (:optimized "optimized"))

(smithy/sdk/shapes:define-structure performance-configuration common-lisp:nil
                                    ((latency :target-type
                                      performance-config-latency :member-name
                                      "latency"))
                                    (:shape-name "PerformanceConfiguration"))

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure pricing-term common-lisp:nil
                                    ((rate-card :target-type rate-card
                                      :required common-lisp:t :member-name
                                      "rateCard"))
                                    (:shape-name "PricingTerm"))

(smithy/sdk/shapes:define-type prompt-router-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prompt-router-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prompt-router-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum prompt-router-status
    common-lisp:nil
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-list prompt-router-summaries :member
                               prompt-router-summary)

(smithy/sdk/shapes:define-structure prompt-router-summary common-lisp:nil
                                    ((prompt-router-name :target-type
                                      prompt-router-name :required
                                      common-lisp:t :member-name
                                      "promptRouterName")
                                     (routing-criteria :target-type
                                      routing-criteria :required common-lisp:t
                                      :member-name "routingCriteria")
                                     (description :target-type
                                      prompt-router-description :member-name
                                      "description")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (prompt-router-arn :target-type
                                      prompt-router-arn :required common-lisp:t
                                      :member-name "promptRouterArn")
                                     (models :target-type
                                      prompt-router-target-models :required
                                      common-lisp:t :member-name "models")
                                     (fallback-model :target-type
                                      prompt-router-target-model :required
                                      common-lisp:t :member-name
                                      "fallbackModel")
                                     (status :target-type prompt-router-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (type :target-type prompt-router-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "PromptRouterSummary"))

(smithy/sdk/shapes:define-structure prompt-router-target-model common-lisp:nil
                                    ((model-arn :target-type
                                      prompt-router-target-model-arn :required
                                      common-lisp:t :member-name "modelArn"))
                                    (:shape-name "PromptRouterTargetModel"))

(smithy/sdk/shapes:define-type prompt-router-target-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list prompt-router-target-models :member
                               prompt-router-target-model)

(smithy/sdk/shapes:define-enum prompt-router-type
    common-lisp:nil
  (:custom "custom")
  (:default "default"))

(smithy/sdk/shapes:define-structure prompt-template common-lisp:nil
                                    ((text-prompt-template :target-type
                                      text-prompt-template :member-name
                                      "textPromptTemplate"))
                                    (:shape-name "PromptTemplate"))

(smithy/sdk/shapes:define-type provider smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-model-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-model-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provisioned-model-status
    common-lisp:nil
  (:creating "Creating")
  (:in-service "InService")
  (:updating "Updating")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list provisioned-model-summaries :member
                               provisioned-model-summary)

(smithy/sdk/shapes:define-structure provisioned-model-summary common-lisp:nil
                                    ((provisioned-model-name :target-type
                                      provisioned-model-name :required
                                      common-lisp:t :member-name
                                      "provisionedModelName")
                                     (provisioned-model-arn :target-type
                                      provisioned-model-arn :required
                                      common-lisp:t :member-name
                                      "provisionedModelArn")
                                     (model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (desired-model-arn :target-type model-arn
                                      :required common-lisp:t :member-name
                                      "desiredModelArn")
                                     (foundation-model-arn :target-type
                                      foundation-model-arn :required
                                      common-lisp:t :member-name
                                      "foundationModelArn")
                                     (model-units :target-type positive-integer
                                      :required common-lisp:t :member-name
                                      "modelUnits")
                                     (desired-model-units :target-type
                                      positive-integer :required common-lisp:t
                                      :member-name "desiredModelUnits")
                                     (status :target-type
                                      provisioned-model-status :required
                                      common-lisp:t :member-name "status")
                                     (commitment-duration :target-type
                                      commitment-duration :member-name
                                      "commitmentDuration")
                                     (commitment-expiration-time :target-type
                                      timestamp :member-name
                                      "commitmentExpirationTime")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "ProvisionedModelSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-input
 put-model-invocation-logging-configuration-request common-lisp:nil
 ((logging-config :target-type logging-config :required common-lisp:t
   :member-name "loggingConfig"))
 (:shape-name "PutModelInvocationLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-model-invocation-logging-configuration-response common-lisp:nil
 common-lisp:nil (:shape-name "PutModelInvocationLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input put-use-case-for-model-access-request
                                common-lisp:nil
                                ((form-data :target-type
                                  acknowledgement-form-data-body :required
                                  common-lisp:t :member-name "formData"))
                                (:shape-name "PutUseCaseForModelAccessRequest"))

(smithy/sdk/shapes:define-output put-use-case-for-model-access-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutUseCaseForModelAccessResponse"))

(smithy/sdk/shapes:define-structure query-transformation-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      query-transformation-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name
                                     "QueryTransformationConfiguration"))

(smithy/sdk/shapes:define-enum query-transformation-type
    common-lisp:nil
  (:query-decomposition "QUERY_DECOMPOSITION"))

(smithy/sdk/shapes:define-union ragconfig common-lisp:nil
                                ((knowledge-base-config :target-type
                                  knowledge-base-config :member-name
                                  "knowledgeBaseConfig")
                                 (precomputed-rag-source-config :target-type
                                  evaluation-precomputed-rag-source-config
                                  :member-name "precomputedRagSourceConfig"))
                                (:shape-name "RAGConfig"))

(smithy/sdk/shapes:define-list ragstop-sequences :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rag-configs :member ragconfig)

(smithy/sdk/shapes:define-list rate-card :member dimensional-price-rate)

(smithy/sdk/shapes:define-list rating-scale :member rating-scale-item)

(smithy/sdk/shapes:define-structure rating-scale-item common-lisp:nil
                                    ((definition :target-type
                                      rating-scale-item-definition :required
                                      common-lisp:t :member-name "definition")
                                     (value :target-type
                                      rating-scale-item-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "RatingScaleItem"))

(smithy/sdk/shapes:define-type rating-scale-item-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union rating-scale-item-value common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (float-value :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "floatValue"))
                                (:shape-name "RatingScaleItemValue"))

(smithy/sdk/shapes:define-enum region-availability
    common-lisp:nil
  (:available "AVAILABLE")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-input register-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((endpoint-identifier :target-type arn
                                  :required common-lisp:t :member-name
                                  "endpointIdentifier" :http-label
                                  common-lisp:t)
                                 (model-source-identifier :target-type
                                  model-source-identifier :required
                                  common-lisp:t :member-name
                                  "modelSourceIdentifier"))
                                (:shape-name
                                 "RegisterMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output register-marketplace-model-endpoint-response
                                 common-lisp:nil
                                 ((marketplace-model-endpoint :target-type
                                   marketplace-model-endpoint :required
                                   common-lisp:t :member-name
                                   "marketplaceModelEndpoint"))
                                 (:shape-name
                                  "RegisterMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-structure request-metadata-base-filters
                                    common-lisp:nil
                                    ((equals :target-type request-metadata-map
                                      :member-name "equals")
                                     (not-equals :target-type
                                      request-metadata-map :member-name
                                      "notEquals"))
                                    (:shape-name "RequestMetadataBaseFilters"))

(smithy/sdk/shapes:define-union request-metadata-filters common-lisp:nil
                                ((equals :target-type request-metadata-map
                                  :member-name "equals")
                                 (not-equals :target-type request-metadata-map
                                  :member-name "notEquals")
                                 (and-all :target-type
                                  request-metadata-filters-list :member-name
                                  "andAll")
                                 (or-all :target-type
                                  request-metadata-filters-list :member-name
                                  "orAll"))
                                (:shape-name "RequestMetadataFilters"))

(smithy/sdk/shapes:define-list request-metadata-filters-list :member
                               request-metadata-base-filters)

(smithy/sdk/shapes:define-map request-metadata-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reranking-metadata-selection-mode
    common-lisp:nil
  (:selective "SELECTIVE")
  (:all "ALL"))

(smithy/sdk/shapes:define-union reranking-metadata-selective-mode-configuration
                                common-lisp:nil
                                ((fields-to-include :target-type
                                  fields-for-reranking :member-name
                                  "fieldsToInclude")
                                 (fields-to-exclude :target-type
                                  fields-for-reranking :member-name
                                  "fieldsToExclude"))
                                (:shape-name
                                 "RerankingMetadataSelectiveModeConfiguration"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-union retrieval-filter common-lisp:nil
                                ((equals :target-type filter-attribute
                                  :member-name "equals")
                                 (not-equals :target-type filter-attribute
                                  :member-name "notEquals")
                                 (greater-than :target-type filter-attribute
                                  :member-name "greaterThan")
                                 (greater-than-or-equals :target-type
                                  filter-attribute :member-name
                                  "greaterThanOrEquals")
                                 (less-than :target-type filter-attribute
                                  :member-name "lessThan")
                                 (less-than-or-equals :target-type
                                  filter-attribute :member-name
                                  "lessThanOrEquals")
                                 (in :target-type filter-attribute :member-name
                                  "in")
                                 (not-in :target-type filter-attribute
                                  :member-name "notIn")
                                 (starts-with :target-type filter-attribute
                                  :member-name "startsWith")
                                 (list-contains :target-type filter-attribute
                                  :member-name "listContains")
                                 (string-contains :target-type filter-attribute
                                  :member-name "stringContains")
                                 (and-all :target-type retrieval-filter-list
                                  :member-name "andAll")
                                 (or-all :target-type retrieval-filter-list
                                  :member-name "orAll"))
                                (:shape-name "RetrievalFilter"))

(smithy/sdk/shapes:define-list retrieval-filter-list :member retrieval-filter)

(smithy/sdk/shapes:define-structure retrieve-and-generate-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      retrieve-and-generate-type :required
                                      common-lisp:t :member-name "type")
                                     (knowledge-base-configuration :target-type
                                      knowledge-base-retrieve-and-generate-configuration
                                      :member-name
                                      "knowledgeBaseConfiguration")
                                     (external-sources-configuration
                                      :target-type
                                      external-sources-retrieve-and-generate-configuration
                                      :member-name
                                      "externalSourcesConfiguration"))
                                    (:shape-name
                                     "RetrieveAndGenerateConfiguration"))

(smithy/sdk/shapes:define-enum retrieve-and-generate-type
    common-lisp:nil
  (:knowledge-base "KNOWLEDGE_BASE")
  (:external-sources "EXTERNAL_SOURCES"))

(smithy/sdk/shapes:define-structure retrieve-config common-lisp:nil
                                    ((knowledge-base-id :target-type
                                      knowledge-base-id :required common-lisp:t
                                      :member-name "knowledgeBaseId")
                                     (knowledge-base-retrieval-configuration
                                      :target-type
                                      knowledge-base-retrieval-configuration
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseRetrievalConfiguration"))
                                    (:shape-name "RetrieveConfig"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure routing-criteria common-lisp:nil
                                    ((response-quality-difference :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "responseQualityDifference"))
                                    (:shape-name "RoutingCriteria"))

(smithy/sdk/shapes:define-structure s3config common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (key-prefix :target-type key-prefix
                                      :member-name "keyPrefix"))
                                    (:shape-name "S3Config"))

(smithy/sdk/shapes:define-structure s3data-source common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "S3DataSource"))

(smithy/sdk/shapes:define-enum s3input-format
    common-lisp:nil
  (:jsonl "JSONL"))

(smithy/sdk/shapes:define-structure s3object-doc common-lisp:nil
                                    ((uri :target-type k-bs3uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "S3ObjectDoc"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sage-maker-endpoint common-lisp:nil
                                    ((initial-instance-count :target-type
                                      instance-count :required common-lisp:t
                                      :member-name "initialInstanceCount")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (execution-role :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "executionRole")
                                     (kms-encryption-key :target-type
                                      kms-key-id :member-name
                                      "kmsEncryptionKey")
                                     (vpc :target-type vpc-config :member-name
                                      "vpc"))
                                    (:shape-name "SageMakerEndpoint"))

(smithy/sdk/shapes:define-type sage-maker-flow-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum search-type
    common-lisp:nil
  (:hybrid "HYBRID")
  (:semantic "SEMANTIC"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-enum sort-by-provisioned-models
    common-lisp:nil
  (:creation-time "CreationTime"))

(smithy/sdk/shapes:define-enum sort-jobs-by
    common-lisp:nil
  (:creation-time "CreationTime"))

(smithy/sdk/shapes:define-enum sort-models-by
    common-lisp:nil
  (:creation-time "CreationTime"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-input
 start-automated-reasoning-policy-build-workflow-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-type :target-type
   automated-reasoning-policy-build-workflow-type :required common-lisp:t
   :member-name "buildWorkflowType" :http-label common-lisp:t)
  (client-request-token :target-type idempotency-token :member-name
   "clientRequestToken" :http-header "x-amz-client-token")
  (source-content :target-type automated-reasoning-policy-build-workflow-source
   :required common-lisp:t :member-name "sourceContent" :http-payload
   common-lisp:t))
 (:shape-name "StartAutomatedReasoningPolicyBuildWorkflowRequest"))

(smithy/sdk/shapes:define-output
 start-automated-reasoning-policy-build-workflow-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId"))
 (:shape-name "StartAutomatedReasoningPolicyBuildWorkflowResponse"))

(smithy/sdk/shapes:define-input
 start-automated-reasoning-policy-test-workflow-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (test-case-ids :target-type automated-reasoning-policy-test-case-id-list
   :member-name "testCaseIds")
  (client-request-token :target-type idempotency-token :member-name
   "clientRequestToken"))
 (:shape-name "StartAutomatedReasoningPolicyTestWorkflowRequest"))

(smithy/sdk/shapes:define-output
 start-automated-reasoning-policy-test-workflow-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn"))
 (:shape-name "StartAutomatedReasoningPolicyTestWorkflowResponse"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:registered "REGISTERED")
  (:incompatible-endpoint "INCOMPATIBLE_ENDPOINT"))

(smithy/sdk/shapes:define-structure status-details common-lisp:nil
                                    ((validation-details :target-type
                                      validation-details :member-name
                                      "validationDetails")
                                     (data-processing-details :target-type
                                      data-processing-details :member-name
                                      "dataProcessingDetails")
                                     (training-details :target-type
                                      training-details :member-name
                                      "trainingDetails"))
                                    (:shape-name "StatusDetails"))

(smithy/sdk/shapes:define-input stop-evaluation-job-request common-lisp:nil
                                ((job-identifier :target-type
                                  evaluation-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "StopEvaluationJobRequest"))

(smithy/sdk/shapes:define-output stop-evaluation-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopEvaluationJobResponse"))

(smithy/sdk/shapes:define-input stop-model-customization-job-request
                                common-lisp:nil
                                ((job-identifier :target-type
                                  model-customization-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopModelCustomizationJobRequest"))

(smithy/sdk/shapes:define-output stop-model-customization-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopModelCustomizationJobResponse"))

(smithy/sdk/shapes:define-input stop-model-invocation-job-request
                                common-lisp:nil
                                ((job-identifier :target-type
                                  model-invocation-job-identifier :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "StopModelInvocationJobRequest"))

(smithy/sdk/shapes:define-output stop-model-invocation-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopModelInvocationJobResponse"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

common-lisp:nil

(smithy/sdk/shapes:define-structure support-term common-lisp:nil
                                    ((refund-policy-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "refundPolicyDescription"))
                                    (:shape-name "SupportTerm"))

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
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resources-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure teacher-model-config common-lisp:nil
                                    ((teacher-model-identifier :target-type
                                      teacher-model-identifier :required
                                      common-lisp:t :member-name
                                      "teacherModelIdentifier")
                                     (max-response-length-for-inference
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "maxResponseLengthForInference"))
                                    (:shape-name "TeacherModelConfig"))

(smithy/sdk/shapes:define-type teacher-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type temperature smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure term-details common-lisp:nil
                                    ((usage-based-pricing-term :target-type
                                      pricing-term :required common-lisp:t
                                      :member-name "usageBasedPricingTerm")
                                     (legal-term :target-type legal-term
                                      :required common-lisp:t :member-name
                                      "legalTerm")
                                     (support-term :target-type support-term
                                      :required common-lisp:t :member-name
                                      "supportTerm")
                                     (validity-term :target-type validity-term
                                      :member-name "validityTerm"))
                                    (:shape-name "TermDetails"))

(smithy/sdk/shapes:define-structure text-inference-config common-lisp:nil
                                    ((temperature :target-type temperature
                                      :member-name "temperature")
                                     (top-p :target-type top-p :member-name
                                      "topP")
                                     (max-tokens :target-type max-tokens
                                      :member-name "maxTokens")
                                     (stop-sequences :target-type
                                      ragstop-sequences :member-name
                                      "stopSequences"))
                                    (:shape-name "TextInferenceConfig"))

(smithy/sdk/shapes:define-type text-prompt-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (resource-name :target-type
                                  taggable-resources-arn :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type top-p smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure training-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :member-name
                                      "s3Uri")
                                     (invocation-logs-config :target-type
                                      invocation-logs-config :member-name
                                      "invocationLogsConfig"))
                                    (:shape-name "TrainingDataConfig"))

(smithy/sdk/shapes:define-structure training-details common-lisp:nil
                                    ((status :target-type job-status-details
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime"))
                                    (:shape-name "TrainingDetails"))

(smithy/sdk/shapes:define-structure training-metrics common-lisp:nil
                                    ((training-loss :target-type metric-float
                                      :member-name "trainingLoss"))
                                    (:shape-name "TrainingMetrics"))

common-lisp:nil

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-automated-reasoning-policy-annotations-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId" :http-label
   common-lisp:t)
  (annotations :target-type automated-reasoning-policy-annotation-list
   :required common-lisp:t :member-name "annotations")
  (last-updated-annotation-set-hash :target-type
   automated-reasoning-policy-hash :required common-lisp:t :member-name
   "lastUpdatedAnnotationSetHash"))
 (:shape-name "UpdateAutomatedReasoningPolicyAnnotationsRequest"))

(smithy/sdk/shapes:define-output
 update-automated-reasoning-policy-annotations-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (build-workflow-id :target-type automated-reasoning-policy-build-workflow-id
   :required common-lisp:t :member-name "buildWorkflowId")
  (annotation-set-hash :target-type automated-reasoning-policy-hash :required
   common-lisp:t :member-name "annotationSetHash")
  (updated-at :target-type timestamp :required common-lisp:t :member-name
   "updatedAt"))
 (:shape-name "UpdateAutomatedReasoningPolicyAnnotationsResponse"))

(smithy/sdk/shapes:define-input update-automated-reasoning-policy-request
                                common-lisp:nil
                                ((policy-arn :target-type
                                  automated-reasoning-policy-arn :required
                                  common-lisp:t :member-name "policyArn"
                                  :http-label common-lisp:t)
                                 (policy-definition :target-type
                                  automated-reasoning-policy-definition
                                  :required common-lisp:t :member-name
                                  "policyDefinition")
                                 (name :target-type
                                  automated-reasoning-policy-name :member-name
                                  "name")
                                 (description :target-type
                                  automated-reasoning-policy-description
                                  :member-name "description"))
                                (:shape-name
                                 "UpdateAutomatedReasoningPolicyRequest"))

(smithy/sdk/shapes:define-output update-automated-reasoning-policy-response
                                 common-lisp:nil
                                 ((policy-arn :target-type
                                   automated-reasoning-policy-arn :required
                                   common-lisp:t :member-name "policyArn")
                                  (name :target-type
                                   automated-reasoning-policy-name :required
                                   common-lisp:t :member-name "name")
                                  (definition-hash :target-type
                                   automated-reasoning-policy-hash :required
                                   common-lisp:t :member-name "definitionHash")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt"))
                                 (:shape-name
                                  "UpdateAutomatedReasoningPolicyResponse"))

(smithy/sdk/shapes:define-input
 update-automated-reasoning-policy-test-case-request common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn" :http-label common-lisp:t)
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId" :http-label common-lisp:t)
  (guard-content :target-type automated-reasoning-policy-test-guard-content
   :required common-lisp:t :member-name "guardContent")
  (query-content :target-type automated-reasoning-policy-test-query-content
   :member-name "queryContent")
  (last-updated-at :target-type timestamp :required common-lisp:t :member-name
   "lastUpdatedAt")
  (expected-aggregated-findings-result :target-type
   automated-reasoning-check-result :required common-lisp:t :member-name
   "expectedAggregatedFindingsResult")
  (confidence-threshold :target-type
   automated-reasoning-check-translation-confidence :member-name
   "confidenceThreshold")
  (kms-key-arn :target-type kms-key-arn :member-name "kmsKeyArn")
  (client-request-token :target-type idempotency-token :member-name
   "clientRequestToken"))
 (:shape-name "UpdateAutomatedReasoningPolicyTestCaseRequest"))

(smithy/sdk/shapes:define-output
 update-automated-reasoning-policy-test-case-response common-lisp:nil
 ((policy-arn :target-type automated-reasoning-policy-arn :required
   common-lisp:t :member-name "policyArn")
  (test-case-id :target-type automated-reasoning-policy-test-case-id :required
   common-lisp:t :member-name "testCaseId"))
 (:shape-name "UpdateAutomatedReasoningPolicyTestCaseResponse"))

(smithy/sdk/shapes:define-input update-guardrail-request common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :required common-lisp:t
                                  :member-name "guardrailIdentifier"
                                  :http-label common-lisp:t)
                                 (name :target-type guardrail-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  guardrail-description :member-name
                                  "description")
                                 (topic-policy-config :target-type
                                  guardrail-topic-policy-config :member-name
                                  "topicPolicyConfig")
                                 (content-policy-config :target-type
                                  guardrail-content-policy-config :member-name
                                  "contentPolicyConfig")
                                 (word-policy-config :target-type
                                  guardrail-word-policy-config :member-name
                                  "wordPolicyConfig")
                                 (sensitive-information-policy-config
                                  :target-type
                                  guardrail-sensitive-information-policy-config
                                  :member-name
                                  "sensitiveInformationPolicyConfig")
                                 (contextual-grounding-policy-config
                                  :target-type
                                  guardrail-contextual-grounding-policy-config
                                  :member-name
                                  "contextualGroundingPolicyConfig")
                                 (automated-reasoning-policy-config
                                  :target-type
                                  guardrail-automated-reasoning-policy-config
                                  :member-name
                                  "automatedReasoningPolicyConfig")
                                 (cross-region-config :target-type
                                  guardrail-cross-region-config :member-name
                                  "crossRegionConfig")
                                 (blocked-input-messaging :target-type
                                  guardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedInputMessaging")
                                 (blocked-outputs-messaging :target-type
                                  guardrail-blocked-messaging :required
                                  common-lisp:t :member-name
                                  "blockedOutputsMessaging")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId"))
                                (:shape-name "UpdateGuardrailRequest"))

(smithy/sdk/shapes:define-output update-guardrail-response common-lisp:nil
                                 ((guardrail-id :target-type guardrail-id
                                   :required common-lisp:t :member-name
                                   "guardrailId")
                                  (guardrail-arn :target-type guardrail-arn
                                   :required common-lisp:t :member-name
                                   "guardrailArn")
                                  (version :target-type guardrail-draft-version
                                   :required common-lisp:t :member-name
                                   "version")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt"))
                                 (:shape-name "UpdateGuardrailResponse"))

(smithy/sdk/shapes:define-input update-marketplace-model-endpoint-request
                                common-lisp:nil
                                ((endpoint-arn :target-type arn :required
                                  common-lisp:t :member-name "endpointArn"
                                  :http-label common-lisp:t)
                                 (endpoint-config :target-type endpoint-config
                                  :required common-lisp:t :member-name
                                  "endpointConfig")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "clientRequestToken"))
                                (:shape-name
                                 "UpdateMarketplaceModelEndpointRequest"))

(smithy/sdk/shapes:define-output update-marketplace-model-endpoint-response
                                 common-lisp:nil
                                 ((marketplace-model-endpoint :target-type
                                   marketplace-model-endpoint :required
                                   common-lisp:t :member-name
                                   "marketplaceModelEndpoint"))
                                 (:shape-name
                                  "UpdateMarketplaceModelEndpointResponse"))

(smithy/sdk/shapes:define-input update-provisioned-model-throughput-request
                                common-lisp:nil
                                ((provisioned-model-id :target-type
                                  provisioned-model-id :required common-lisp:t
                                  :member-name "provisionedModelId" :http-label
                                  common-lisp:t)
                                 (desired-provisioned-model-name :target-type
                                  provisioned-model-name :member-name
                                  "desiredProvisionedModelName")
                                 (desired-model-id :target-type
                                  model-identifier :member-name
                                  "desiredModelId"))
                                (:shape-name
                                 "UpdateProvisionedModelThroughputRequest"))

(smithy/sdk/shapes:define-output update-provisioned-model-throughput-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateProvisionedModelThroughputResponse"))

(smithy/sdk/shapes:define-type use-prompt-response
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure validation-data-config common-lisp:nil
                                    ((validators :target-type validators
                                      :required common-lisp:t :member-name
                                      "validators"))
                                    (:shape-name "ValidationDataConfig"))

(smithy/sdk/shapes:define-structure validation-details common-lisp:nil
                                    ((status :target-type job-status-details
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime"))
                                    (:shape-name "ValidationDetails"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list validation-metrics :member validator-metric)

(smithy/sdk/shapes:define-structure validator common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "Validator"))

(smithy/sdk/shapes:define-structure validator-metric common-lisp:nil
                                    ((validation-loss :target-type metric-float
                                      :member-name "validationLoss"))
                                    (:shape-name "ValidatorMetric"))

(smithy/sdk/shapes:define-list validators :member validator)

(smithy/sdk/shapes:define-structure validity-term common-lisp:nil
                                    ((agreement-duration :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agreementDuration"))
                                    (:shape-name "ValidityTerm"))

(smithy/sdk/shapes:define-structure
 vector-search-bedrock-reranking-configuration common-lisp:nil
 ((model-configuration :target-type
   vector-search-bedrock-reranking-model-configuration :required common-lisp:t
   :member-name "modelConfiguration")
  (number-of-reranked-results :target-type smithy/sdk/smithy-types:integer
   :member-name "numberOfRerankedResults")
  (metadata-configuration :target-type metadata-configuration-for-reranking
   :member-name "metadataConfiguration"))
 (:shape-name "VectorSearchBedrockRerankingConfiguration"))

(smithy/sdk/shapes:define-structure
 vector-search-bedrock-reranking-model-configuration common-lisp:nil
 ((model-arn :target-type bedrock-reranking-model-arn :required common-lisp:t
   :member-name "modelArn")
  (additional-model-request-fields :target-type additional-model-request-fields
   :member-name "additionalModelRequestFields"))
 (:shape-name "VectorSearchBedrockRerankingModelConfiguration"))

(smithy/sdk/shapes:define-structure vector-search-reranking-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      vector-search-reranking-configuration-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (bedrock-reranking-configuration
                                      :target-type
                                      vector-search-bedrock-reranking-configuration
                                      :member-name
                                      "bedrockRerankingConfiguration"))
                                    (:shape-name
                                     "VectorSearchRerankingConfiguration"))

(smithy/sdk/shapes:define-enum vector-search-reranking-configuration-type
    common-lisp:nil
  (:bedrock-reranking-model "BEDROCK_RERANKING_MODEL"))

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "securityGroupIds"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-type k-bs3uri smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-delete-evaluation-job :shape-name
                                       "BatchDeleteEvaluationJob" :input
                                       batch-delete-evaluation-job-request
                                       :output
                                       batch-delete-evaluation-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/evaluation-jobs/batch-delete" :code
                                       202)

(smithy/sdk/operation:define-operation
 cancel-automated-reasoning-policy-build-workflow :shape-name
 "CancelAutomatedReasoningPolicyBuildWorkflow" :input
 cancel-automated-reasoning-policy-build-workflow-request :output
 cancel-automated-reasoning-policy-build-workflow-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/cancel"
 :code 202)

(smithy/sdk/operation:define-operation create-automated-reasoning-policy
                                       :shape-name
                                       "CreateAutomatedReasoningPolicy" :input
                                       create-automated-reasoning-policy-request
                                       :output
                                       create-automated-reasoning-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/automated-reasoning-policies" :code
                                       200)

(smithy/sdk/operation:define-operation
 create-automated-reasoning-policy-test-case :shape-name
 "CreateAutomatedReasoningPolicyTestCase" :input
 create-automated-reasoning-policy-test-case-request :output
 create-automated-reasoning-policy-test-case-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/automated-reasoning-policies/{policyArn}/test-cases"
 :code 200)

(smithy/sdk/operation:define-operation
 create-automated-reasoning-policy-version :shape-name
 "CreateAutomatedReasoningPolicyVersion" :input
 create-automated-reasoning-policy-version-request :output
 create-automated-reasoning-policy-version-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/automated-reasoning-policies/{policyArn}/versions" :code
 200)

(smithy/sdk/operation:define-operation create-custom-model :shape-name
                                       "CreateCustomModel" :input
                                       create-custom-model-request :output
                                       create-custom-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/custom-models/create-custom-model"
                                       :code 202)

(smithy/sdk/operation:define-operation create-custom-model-deployment
                                       :shape-name
                                       "CreateCustomModelDeployment" :input
                                       create-custom-model-deployment-request
                                       :output
                                       create-custom-model-deployment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-customization/custom-model-deployments"
                                       :code 202)

(smithy/sdk/operation:define-operation create-evaluation-job :shape-name
                                       "CreateEvaluationJob" :input
                                       create-evaluation-job-request :output
                                       create-evaluation-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/evaluation-jobs"
                                       :code 202)

(smithy/sdk/operation:define-operation create-foundation-model-agreement
                                       :shape-name
                                       "CreateFoundationModelAgreement" :input
                                       create-foundation-model-agreement-request
                                       :output
                                       create-foundation-model-agreement-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-foundation-model-agreement"
                                       :code 202)

(smithy/sdk/operation:define-operation create-guardrail :shape-name
                                       "CreateGuardrail" :input
                                       create-guardrail-request :output
                                       create-guardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/guardrails" :code
                                       202)

(smithy/sdk/operation:define-operation create-guardrail-version :shape-name
                                       "CreateGuardrailVersion" :input
                                       create-guardrail-version-request :output
                                       create-guardrail-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/guardrails/{guardrailIdentifier}"
                                       :code 202)

(smithy/sdk/operation:define-operation create-inference-profile :shape-name
                                       "CreateInferenceProfile" :input
                                       create-inference-profile-request :output
                                       create-inference-profile-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/inference-profiles" :code 201)

(smithy/sdk/operation:define-operation create-marketplace-model-endpoint
                                       :shape-name
                                       "CreateMarketplaceModelEndpoint" :input
                                       create-marketplace-model-endpoint-request
                                       :output
                                       create-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/marketplace-model/endpoints" :code 200)

(smithy/sdk/operation:define-operation create-model-copy-job :shape-name
                                       "CreateModelCopyJob" :input
                                       create-model-copy-job-request :output
                                       create-model-copy-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/model-copy-jobs"
                                       :code 201)

(smithy/sdk/operation:define-operation create-model-customization-job
                                       :shape-name
                                       "CreateModelCustomizationJob" :input
                                       create-model-customization-job-request
                                       :output
                                       create-model-customization-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-customization-jobs" :code 201)

(smithy/sdk/operation:define-operation create-model-import-job :shape-name
                                       "CreateModelImportJob" :input
                                       create-model-import-job-request :output
                                       create-model-import-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/model-import-jobs"
                                       :code 201)

(smithy/sdk/operation:define-operation create-model-invocation-job :shape-name
                                       "CreateModelInvocationJob" :input
                                       create-model-invocation-job-request
                                       :output
                                       create-model-invocation-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-invocation-job" :code 200)

(smithy/sdk/operation:define-operation create-prompt-router :shape-name
                                       "CreatePromptRouter" :input
                                       create-prompt-router-request :output
                                       create-prompt-router-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/prompt-routers"
                                       :code 200)

(smithy/sdk/operation:define-operation create-provisioned-model-throughput
                                       :shape-name
                                       "CreateProvisionedModelThroughput"
                                       :input
                                       create-provisioned-model-throughput-request
                                       :output
                                       create-provisioned-model-throughput-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/provisioned-model-throughput" :code
                                       201)

(smithy/sdk/operation:define-operation delete-automated-reasoning-policy
                                       :shape-name
                                       "DeleteAutomatedReasoningPolicy" :input
                                       delete-automated-reasoning-policy-request
                                       :output
                                       delete-automated-reasoning-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/automated-reasoning-policies/{policyArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation
 delete-automated-reasoning-policy-build-workflow :shape-name
 "DeleteAutomatedReasoningPolicyBuildWorkflow" :input
 delete-automated-reasoning-policy-build-workflow-request :output
 delete-automated-reasoning-policy-build-workflow-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"
 :code 202)

(smithy/sdk/operation:define-operation
 delete-automated-reasoning-policy-test-case :shape-name
 "DeleteAutomatedReasoningPolicyTestCase" :input
 delete-automated-reasoning-policy-test-case-request :output
 delete-automated-reasoning-policy-test-case-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-in-use-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "DELETE" :uri
 "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}" :code 202)

(smithy/sdk/operation:define-operation delete-custom-model :shape-name
                                       "DeleteCustomModel" :input
                                       delete-custom-model-request :output
                                       delete-custom-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/custom-models/{modelIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-custom-model-deployment
                                       :shape-name
                                       "DeleteCustomModelDeployment" :input
                                       delete-custom-model-deployment-request
                                       :output
                                       delete-custom-model-deployment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-foundation-model-agreement
                                       :shape-name
                                       "DeleteFoundationModelAgreement" :input
                                       delete-foundation-model-agreement-request
                                       :output
                                       delete-foundation-model-agreement-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-foundation-model-agreement"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-guardrail :shape-name
                                       "DeleteGuardrail" :input
                                       delete-guardrail-request :output
                                       delete-guardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/guardrails/{guardrailIdentifier}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-imported-model :shape-name
                                       "DeleteImportedModel" :input
                                       delete-imported-model-request :output
                                       delete-imported-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/imported-models/{modelIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-inference-profile :shape-name
                                       "DeleteInferenceProfile" :input
                                       delete-inference-profile-request :output
                                       delete-inference-profile-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/inference-profiles/{inferenceProfileIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-marketplace-model-endpoint
                                       :shape-name
                                       "DeleteMarketplaceModelEndpoint" :input
                                       delete-marketplace-model-endpoint-request
                                       :output
                                       delete-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/marketplace-model/endpoints/{endpointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-model-invocation-logging-configuration :shape-name
 "DeleteModelInvocationLoggingConfiguration" :input
 delete-model-invocation-logging-configuration-request :output
 delete-model-invocation-logging-configuration-response :errors
 (access-denied-exception internal-server-exception throttling-exception)
 :method "DELETE" :uri "/logging/modelinvocations" :code 200)

(smithy/sdk/operation:define-operation delete-prompt-router :shape-name
                                       "DeletePromptRouter" :input
                                       delete-prompt-router-request :output
                                       delete-prompt-router-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/prompt-routers/{promptRouterArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-provisioned-model-throughput
                                       :shape-name
                                       "DeleteProvisionedModelThroughput"
                                       :input
                                       delete-provisioned-model-throughput-request
                                       :output
                                       delete-provisioned-model-throughput-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/provisioned-model-throughput/{provisionedModelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-marketplace-model-endpoint
                                       :shape-name
                                       "DeregisterMarketplaceModelEndpoint"
                                       :input
                                       deregister-marketplace-model-endpoint-request
                                       :output
                                       deregister-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/marketplace-model/endpoints/{endpointArn}/registration"
                                       :code 200)

(smithy/sdk/operation:define-operation
 export-automated-reasoning-policy-version :shape-name
 "ExportAutomatedReasoningPolicyVersion" :input
 export-automated-reasoning-policy-version-request :output
 export-automated-reasoning-policy-version-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/automated-reasoning-policies/{policyArn}/export" :code
 200)

(smithy/sdk/operation:define-operation get-automated-reasoning-policy
                                       :shape-name
                                       "GetAutomatedReasoningPolicy" :input
                                       get-automated-reasoning-policy-request
                                       :output
                                       get-automated-reasoning-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/automated-reasoning-policies/{policyArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-automated-reasoning-policy-annotations :shape-name
 "GetAutomatedReasoningPolicyAnnotations" :input
 get-automated-reasoning-policy-annotations-request :output
 get-automated-reasoning-policy-annotations-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"
 :code 200)

(smithy/sdk/operation:define-operation
 get-automated-reasoning-policy-build-workflow :shape-name
 "GetAutomatedReasoningPolicyBuildWorkflow" :input
 get-automated-reasoning-policy-build-workflow-request :output
 get-automated-reasoning-policy-build-workflow-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"
 :code 200)

(smithy/sdk/operation:define-operation
 get-automated-reasoning-policy-build-workflow-result-assets :shape-name
 "GetAutomatedReasoningPolicyBuildWorkflowResultAssets" :input
 get-automated-reasoning-policy-build-workflow-result-assets-request :output
 get-automated-reasoning-policy-build-workflow-result-assets-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/result-assets"
 :code 200)

(smithy/sdk/operation:define-operation
 get-automated-reasoning-policy-next-scenario :shape-name
 "GetAutomatedReasoningPolicyNextScenario" :input
 get-automated-reasoning-policy-next-scenario-request :output
 get-automated-reasoning-policy-next-scenario-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/scenarios"
 :code 200)

(smithy/sdk/operation:define-operation get-automated-reasoning-policy-test-case
                                       :shape-name
                                       "GetAutomatedReasoningPolicyTestCase"
                                       :input
                                       get-automated-reasoning-policy-test-case-request
                                       :output
                                       get-automated-reasoning-policy-test-case-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-automated-reasoning-policy-test-result :shape-name
 "GetAutomatedReasoningPolicyTestResult" :input
 get-automated-reasoning-policy-test-result-request :output
 get-automated-reasoning-policy-test-result-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-cases/{testCaseId}/test-results"
 :code 200)

(smithy/sdk/operation:define-operation get-custom-model :shape-name
                                       "GetCustomModel" :input
                                       get-custom-model-request :output
                                       get-custom-model-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/custom-models/{modelIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-custom-model-deployment :shape-name
                                       "GetCustomModelDeployment" :input
                                       get-custom-model-deployment-request
                                       :output
                                       get-custom-model-deployment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-evaluation-job :shape-name
                                       "GetEvaluationJob" :input
                                       get-evaluation-job-request :output
                                       get-evaluation-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/evaluation-jobs/{jobIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-foundation-model :shape-name
                                       "GetFoundationModel" :input
                                       get-foundation-model-request :output
                                       get-foundation-model-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/foundation-models/{modelIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-foundation-model-availability
                                       :shape-name
                                       "GetFoundationModelAvailability" :input
                                       get-foundation-model-availability-request
                                       :output
                                       get-foundation-model-availability-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/foundation-model-availability/{modelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-guardrail :shape-name "GetGuardrail"
                                       :input get-guardrail-request :output
                                       get-guardrail-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/guardrails/{guardrailIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-imported-model :shape-name
                                       "GetImportedModel" :input
                                       get-imported-model-request :output
                                       get-imported-model-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/imported-models/{modelIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-inference-profile :shape-name
                                       "GetInferenceProfile" :input
                                       get-inference-profile-request :output
                                       get-inference-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/inference-profiles/{inferenceProfileIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-marketplace-model-endpoint
                                       :shape-name
                                       "GetMarketplaceModelEndpoint" :input
                                       get-marketplace-model-endpoint-request
                                       :output
                                       get-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/marketplace-model/endpoints/{endpointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-copy-job :shape-name
                                       "GetModelCopyJob" :input
                                       get-model-copy-job-request :output
                                       get-model-copy-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-copy-jobs/{jobArn}" :code 200)

(smithy/sdk/operation:define-operation get-model-customization-job :shape-name
                                       "GetModelCustomizationJob" :input
                                       get-model-customization-job-request
                                       :output
                                       get-model-customization-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-customization-jobs/{jobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-import-job :shape-name
                                       "GetModelImportJob" :input
                                       get-model-import-job-request :output
                                       get-model-import-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-import-jobs/{jobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-invocation-job :shape-name
                                       "GetModelInvocationJob" :input
                                       get-model-invocation-job-request :output
                                       get-model-invocation-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-invocation-job/{jobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-model-invocation-logging-configuration :shape-name
 "GetModelInvocationLoggingConfiguration" :input
 get-model-invocation-logging-configuration-request :output
 get-model-invocation-logging-configuration-response :errors
 (access-denied-exception internal-server-exception throttling-exception)
 :method "GET" :uri "/logging/modelinvocations" :code 200)

(smithy/sdk/operation:define-operation get-prompt-router :shape-name
                                       "GetPromptRouter" :input
                                       get-prompt-router-request :output
                                       get-prompt-router-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/prompt-routers/{promptRouterArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-provisioned-model-throughput
                                       :shape-name
                                       "GetProvisionedModelThroughput" :input
                                       get-provisioned-model-throughput-request
                                       :output
                                       get-provisioned-model-throughput-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/provisioned-model-throughput/{provisionedModelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-use-case-for-model-access
                                       :shape-name "GetUseCaseForModelAccess"
                                       :input
                                       get-use-case-for-model-access-request
                                       :output
                                       get-use-case-for-model-access-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/use-case-for-model-access" :code 200)

(smithy/sdk/operation:define-operation list-automated-reasoning-policies
                                       :shape-name
                                       "ListAutomatedReasoningPolicies" :input
                                       list-automated-reasoning-policies-request
                                       :output
                                       list-automated-reasoning-policies-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/automated-reasoning-policies" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-automated-reasoning-policy-build-workflows :shape-name
 "ListAutomatedReasoningPolicyBuildWorkflows" :input
 list-automated-reasoning-policy-build-workflows-request :output
 list-automated-reasoning-policy-build-workflows-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/automated-reasoning-policies/{policyArn}/build-workflows"
 :code 200)

(smithy/sdk/operation:define-operation
 list-automated-reasoning-policy-test-cases :shape-name
 "ListAutomatedReasoningPolicyTestCases" :input
 list-automated-reasoning-policy-test-cases-request :output
 list-automated-reasoning-policy-test-cases-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/automated-reasoning-policies/{policyArn}/test-cases"
 :code 200)

(smithy/sdk/operation:define-operation
 list-automated-reasoning-policy-test-results :shape-name
 "ListAutomatedReasoningPolicyTestResults" :input
 list-automated-reasoning-policy-test-results-request :output
 list-automated-reasoning-policy-test-results-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "GET" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-results"
 :code 200)

(smithy/sdk/operation:define-operation list-custom-model-deployments
                                       :shape-name "ListCustomModelDeployments"
                                       :input
                                       list-custom-model-deployments-request
                                       :output
                                       list-custom-model-deployments-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-customization/custom-model-deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-custom-models :shape-name
                                       "ListCustomModels" :input
                                       list-custom-models-request :output
                                       list-custom-models-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/custom-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-evaluation-jobs :shape-name
                                       "ListEvaluationJobs" :input
                                       list-evaluation-jobs-request :output
                                       list-evaluation-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/evaluation-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-foundation-model-agreement-offers
                                       :shape-name
                                       "ListFoundationModelAgreementOffers"
                                       :input
                                       list-foundation-model-agreement-offers-request
                                       :output
                                       list-foundation-model-agreement-offers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-foundation-model-agreement-offers/{modelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-foundation-models :shape-name
                                       "ListFoundationModels" :input
                                       list-foundation-models-request :output
                                       list-foundation-models-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/foundation-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-guardrails :shape-name
                                       "ListGuardrails" :input
                                       list-guardrails-request :output
                                       list-guardrails-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/guardrails" :code
                                       200)

(smithy/sdk/operation:define-operation list-imported-models :shape-name
                                       "ListImportedModels" :input
                                       list-imported-models-request :output
                                       list-imported-models-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/imported-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-inference-profiles :shape-name
                                       "ListInferenceProfiles" :input
                                       list-inference-profiles-request :output
                                       list-inference-profiles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/inference-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-marketplace-model-endpoints
                                       :shape-name
                                       "ListMarketplaceModelEndpoints" :input
                                       list-marketplace-model-endpoints-request
                                       :output
                                       list-marketplace-model-endpoints-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/marketplace-model/endpoints" :code 200)

(smithy/sdk/operation:define-operation list-model-copy-jobs :shape-name
                                       "ListModelCopyJobs" :input
                                       list-model-copy-jobs-request :output
                                       list-model-copy-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/model-copy-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-model-customization-jobs
                                       :shape-name "ListModelCustomizationJobs"
                                       :input
                                       list-model-customization-jobs-request
                                       :output
                                       list-model-customization-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-customization-jobs" :code 200)

(smithy/sdk/operation:define-operation list-model-import-jobs :shape-name
                                       "ListModelImportJobs" :input
                                       list-model-import-jobs-request :output
                                       list-model-import-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/model-import-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-model-invocation-jobs :shape-name
                                       "ListModelInvocationJobs" :input
                                       list-model-invocation-jobs-request
                                       :output
                                       list-model-invocation-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-invocation-jobs" :code 200)

(smithy/sdk/operation:define-operation list-prompt-routers :shape-name
                                       "ListPromptRouters" :input
                                       list-prompt-routers-request :output
                                       list-prompt-routers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/prompt-routers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-provisioned-model-throughputs
                                       :shape-name
                                       "ListProvisionedModelThroughputs" :input
                                       list-provisioned-model-throughputs-request
                                       :output
                                       list-provisioned-model-throughputs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/provisioned-model-throughputs" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listTagsForResource" :code 200)

(smithy/sdk/operation:define-operation
 put-model-invocation-logging-configuration :shape-name
 "PutModelInvocationLoggingConfiguration" :input
 put-model-invocation-logging-configuration-request :output
 put-model-invocation-logging-configuration-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "PUT" :uri "/logging/modelinvocations" :code 200)

(smithy/sdk/operation:define-operation put-use-case-for-model-access
                                       :shape-name "PutUseCaseForModelAccess"
                                       :input
                                       put-use-case-for-model-access-request
                                       :output
                                       put-use-case-for-model-access-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/use-case-for-model-access" :code 201)

(smithy/sdk/operation:define-operation register-marketplace-model-endpoint
                                       :shape-name
                                       "RegisterMarketplaceModelEndpoint"
                                       :input
                                       register-marketplace-model-endpoint-request
                                       :output
                                       register-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/marketplace-model/endpoints/{endpointIdentifier}/registration"
                                       :code 200)

(smithy/sdk/operation:define-operation
 start-automated-reasoning-policy-build-workflow :shape-name
 "StartAutomatedReasoningPolicyBuildWorkflow" :input
 start-automated-reasoning-policy-build-workflow-request :output
 start-automated-reasoning-policy-build-workflow-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-in-use-exception resource-not-found-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowType}/start"
 :code 200)

(smithy/sdk/operation:define-operation
 start-automated-reasoning-policy-test-workflow :shape-name
 "StartAutomatedReasoningPolicyTestWorkflow" :input
 start-automated-reasoning-policy-test-workflow-request :output
 start-automated-reasoning-policy-test-workflow-response :errors
 (access-denied-exception internal-server-exception resource-in-use-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-workflows"
 :code 200)

(smithy/sdk/operation:define-operation stop-evaluation-job :shape-name
                                       "StopEvaluationJob" :input
                                       stop-evaluation-job-request :output
                                       stop-evaluation-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/evaluation-job/{jobIdentifier}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-model-customization-job :shape-name
                                       "StopModelCustomizationJob" :input
                                       stop-model-customization-job-request
                                       :output
                                       stop-model-customization-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-customization-jobs/{jobIdentifier}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-model-invocation-job :shape-name
                                       "StopModelInvocationJob" :input
                                       stop-model-invocation-job-request
                                       :output
                                       stop-model-invocation-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-invocation-job/{jobIdentifier}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/tagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/untagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-automated-reasoning-policy
                                       :shape-name
                                       "UpdateAutomatedReasoningPolicy" :input
                                       update-automated-reasoning-policy-request
                                       :output
                                       update-automated-reasoning-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/automated-reasoning-policies/{policyArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-automated-reasoning-policy-annotations :shape-name
 "UpdateAutomatedReasoningPolicyAnnotations" :input
 update-automated-reasoning-policy-annotations-request :output
 update-automated-reasoning-policy-annotations-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PATCH" :uri
 "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"
 :code 200)

(smithy/sdk/operation:define-operation
 update-automated-reasoning-policy-test-case :shape-name
 "UpdateAutomatedReasoningPolicyTestCase" :input
 update-automated-reasoning-policy-test-case-request :output
 update-automated-reasoning-policy-test-case-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-in-use-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "PATCH" :uri
 "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}" :code 200)

(smithy/sdk/operation:define-operation update-guardrail :shape-name
                                       "UpdateGuardrail" :input
                                       update-guardrail-request :output
                                       update-guardrail-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/guardrails/{guardrailIdentifier}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-marketplace-model-endpoint
                                       :shape-name
                                       "UpdateMarketplaceModelEndpoint" :input
                                       update-marketplace-model-endpoint-request
                                       :output
                                       update-marketplace-model-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/marketplace-model/endpoints/{endpointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-provisioned-model-throughput
                                       :shape-name
                                       "UpdateProvisionedModelThroughput"
                                       :input
                                       update-provisioned-model-throughput-request
                                       :output
                                       update-provisioned-model-throughput-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/provisioned-model-throughput/{provisionedModelId}"
                                       :code 200)
