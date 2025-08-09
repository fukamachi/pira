(uiop/package:define-package #:pira/bedrock-agent (:use)
                             (:export #:apischema #:access-denied-exception
                              #:action-group-executor #:action-group-resource
                              #:action-group-signature
                              #:action-group-signature-params
                              #:action-group-state #:action-group-summaries
                              #:action-group-summary
                              #:additional-model-request-fields
                              #:additional-model-request-fields-key
                              #:additional-model-request-fields-value #:agent
                              #:agent-action-group #:agent-alias
                              #:agent-alias-arn #:agent-alias-history-event
                              #:agent-alias-history-events #:agent-alias-id
                              #:agent-alias-routing-configuration
                              #:agent-alias-routing-configuration-list-item
                              #:agent-alias-status #:agent-alias-summaries
                              #:agent-alias-summary #:agent-arn
                              #:agent-collaboration #:agent-collaborator
                              #:agent-collaborator-resource
                              #:agent-collaborator-summaries
                              #:agent-collaborator-summary #:agent-descriptor
                              #:agent-flow-node-configuration
                              #:agent-knowledge-base
                              #:agent-knowledge-base-summaries
                              #:agent-knowledge-base-summary #:agent-resource
                              #:agent-role-arn #:agent-status #:agent-summaries
                              #:agent-summary #:agent-version
                              #:agent-version-summaries #:agent-version-summary
                              #:alias-invocation-state #:alias-resource
                              #:amazon-bedrock-agent-build-time-lambda
                              #:any-tool-choice #:associate-agent-collaborator
                              #:associate-agent-collaborator-request
                              #:associate-agent-collaborator-response
                              #:associate-agent-knowledge-base
                              #:associate-agent-knowledge-base-request
                              #:associate-agent-knowledge-base-response
                              #:auto-tool-choice #:aws-data-catalog-table-name
                              #:aws-data-catalog-table-names
                              #:base-prompt-template
                              #:bedrock-data-automation-configuration
                              #:bedrock-embedding-model-arn
                              #:bedrock-embedding-model-configuration
                              #:bedrock-foundation-model-configuration
                              #:bedrock-foundation-model-context-enrichment-configuration
                              #:bedrock-model-arn #:bedrock-reranking-model-arn
                              #:bucket-owner-account-id #:byte-content-blob
                              #:byte-content-doc #:cache-point-block
                              #:cache-point-type
                              #:chat-prompt-template-configuration
                              #:chunking-configuration #:chunking-strategy
                              #:client-token #:collaboration-instruction
                              #:collector-flow-node-configuration #:column-name
                              #:concurrency-type
                              #:condition-flow-node-configuration
                              #:conflict-exception #:confluence-auth-type
                              #:confluence-crawler-configuration
                              #:confluence-data-source-configuration
                              #:confluence-host-type
                              #:confluence-source-configuration #:content-block
                              #:content-blocks #:content-data-source-type
                              #:context-enrichment-configuration
                              #:context-enrichment-type #:conversation-role
                              #:crawl-filter-configuration
                              #:crawl-filter-configuration-type #:create-agent
                              #:create-agent-action-group
                              #:create-agent-action-group-request
                              #:create-agent-action-group-response
                              #:create-agent-alias #:create-agent-alias-request
                              #:create-agent-alias-response
                              #:create-agent-request #:create-agent-response
                              #:create-data-source #:create-data-source-request
                              #:create-data-source-response #:create-flow
                              #:create-flow-alias #:create-flow-alias-request
                              #:create-flow-alias-response
                              #:create-flow-request #:create-flow-response
                              #:create-flow-version
                              #:create-flow-version-request
                              #:create-flow-version-response
                              #:create-knowledge-base
                              #:create-knowledge-base-request
                              #:create-knowledge-base-response #:create-prompt
                              #:create-prompt-request #:create-prompt-response
                              #:create-prompt-version
                              #:create-prompt-version-request
                              #:create-prompt-version-response #:creation-mode
                              #:curated-queries #:curated-query
                              #:custom-content #:custom-control-method
                              #:custom-document-identifier
                              #:custom-orchestration #:custom-s3location
                              #:custom-source-type
                              #:custom-transformation-configuration
                              #:cyclic-connection-flow-validation-details
                              #:data #:data-deletion-policy #:data-source
                              #:data-source-configuration
                              #:data-source-resource #:data-source-status
                              #:data-source-summaries #:data-source-summary
                              #:data-source-type #:date-timestamp
                              #:delete-agent #:delete-agent-action-group
                              #:delete-agent-action-group-request
                              #:delete-agent-action-group-response
                              #:delete-agent-alias #:delete-agent-alias-request
                              #:delete-agent-alias-response
                              #:delete-agent-request #:delete-agent-response
                              #:delete-agent-version
                              #:delete-agent-version-request
                              #:delete-agent-version-response
                              #:delete-data-source #:delete-data-source-request
                              #:delete-data-source-response #:delete-flow
                              #:delete-flow-alias #:delete-flow-alias-request
                              #:delete-flow-alias-response
                              #:delete-flow-request #:delete-flow-response
                              #:delete-flow-version
                              #:delete-flow-version-request
                              #:delete-flow-version-response
                              #:delete-knowledge-base
                              #:delete-knowledge-base-documents
                              #:delete-knowledge-base-documents-request
                              #:delete-knowledge-base-documents-response
                              #:delete-knowledge-base-request
                              #:delete-knowledge-base-response #:delete-prompt
                              #:delete-prompt-request #:delete-prompt-response
                              #:description #:description-string #:dimensions
                              #:disassociate-agent-collaborator
                              #:disassociate-agent-collaborator-request
                              #:disassociate-agent-collaborator-response
                              #:disassociate-agent-knowledge-base
                              #:disassociate-agent-knowledge-base-request
                              #:disassociate-agent-knowledge-base-response
                              #:document-content #:document-identifier
                              #:document-identifiers #:document-metadata
                              #:document-status #:draft-version
                              #:duplicate-condition-expression-flow-validation-details
                              #:duplicate-connections-flow-validation-details
                              #:embedding-data-type
                              #:embedding-model-configuration
                              #:enabled-memory-types
                              #:enrichment-strategy-configuration
                              #:enrichment-strategy-method #:error-message
                              #:failure-reason #:failure-reasons
                              #:field-for-reranking #:field-name
                              #:fields-for-reranking #:filter-list
                              #:filter-pattern #:filtered-object-type
                              #:fixed-size-chunking-configuration
                              #:flow-alias-arn
                              #:flow-alias-concurrency-configuration
                              #:flow-alias-id #:flow-alias-identifier
                              #:flow-alias-resource
                              #:flow-alias-routing-configuration
                              #:flow-alias-routing-configuration-list-item
                              #:flow-alias-summaries #:flow-alias-summary
                              #:flow-arn #:flow-condition
                              #:flow-condition-expression #:flow-condition-name
                              #:flow-conditional-connection-configuration
                              #:flow-conditions #:flow-connection
                              #:flow-connection-configuration
                              #:flow-connection-name #:flow-connection-type
                              #:flow-connections
                              #:flow-data-connection-configuration
                              #:flow-definition #:flow-description
                              #:flow-execution-role-arn #:flow-id
                              #:flow-identifier #:flow-name #:flow-node
                              #:flow-node-configuration #:flow-node-iodata-type
                              #:flow-node-input #:flow-node-input-category
                              #:flow-node-input-expression
                              #:flow-node-input-name #:flow-node-inputs
                              #:flow-node-name #:flow-node-output
                              #:flow-node-output-name #:flow-node-outputs
                              #:flow-node-type #:flow-nodes #:flow-resource
                              #:flow-status #:flow-summaries #:flow-summary
                              #:flow-validation #:flow-validation-details
                              #:flow-validation-severity #:flow-validation-type
                              #:flow-validations #:flow-version-resource
                              #:flow-version-summaries #:flow-version-summary
                              #:function #:function-description
                              #:function-schema #:functions #:get-agent
                              #:get-agent-action-group
                              #:get-agent-action-group-request
                              #:get-agent-action-group-response
                              #:get-agent-alias #:get-agent-alias-request
                              #:get-agent-alias-response
                              #:get-agent-collaborator
                              #:get-agent-collaborator-request
                              #:get-agent-collaborator-response
                              #:get-agent-knowledge-base
                              #:get-agent-knowledge-base-request
                              #:get-agent-knowledge-base-response
                              #:get-agent-request #:get-agent-response
                              #:get-agent-version #:get-agent-version-request
                              #:get-agent-version-response #:get-data-source
                              #:get-data-source-request
                              #:get-data-source-response #:get-flow
                              #:get-flow-alias #:get-flow-alias-request
                              #:get-flow-alias-response #:get-flow-request
                              #:get-flow-response #:get-flow-version
                              #:get-flow-version-request
                              #:get-flow-version-response #:get-ingestion-job
                              #:get-ingestion-job-request
                              #:get-ingestion-job-response #:get-knowledge-base
                              #:get-knowledge-base-documents
                              #:get-knowledge-base-documents-request
                              #:get-knowledge-base-documents-response
                              #:get-knowledge-base-request
                              #:get-knowledge-base-response #:get-prompt
                              #:get-prompt-request #:get-prompt-response
                              #:graph-arn #:guardrail-configuration
                              #:guardrail-identifier #:guardrail-version
                              #:hierarchical-chunking-configuration
                              #:hierarchical-chunking-level-configuration
                              #:hierarchical-chunking-level-configurations
                              #:https-url #:id #:include-exclude
                              #:incompatible-connection-data-type-flow-validation-details
                              #:incompatible-loop-node-type #:index-arn
                              #:index-name #:inference-configuration
                              #:ingest-knowledge-base-documents
                              #:ingest-knowledge-base-documents-request
                              #:ingest-knowledge-base-documents-response
                              #:ingestion-job #:ingestion-job-filter
                              #:ingestion-job-filter-attribute
                              #:ingestion-job-filter-operator
                              #:ingestion-job-filter-value
                              #:ingestion-job-filter-values
                              #:ingestion-job-filters #:ingestion-job-resource
                              #:ingestion-job-sort-by
                              #:ingestion-job-sort-by-attribute
                              #:ingestion-job-statistics #:ingestion-job-status
                              #:ingestion-job-summaries #:ingestion-job-summary
                              #:inline-code
                              #:inline-code-flow-node-configuration
                              #:inline-content #:inline-content-type
                              #:input-flow-node-configuration #:instruction
                              #:intermediate-storage
                              #:internal-server-exception
                              #:invalid-loop-boundary-flow-validation-details
                              #:iterator-flow-node-configuration
                              #:kendra-index-arn
                              #:kendra-knowledge-base-configuration #:key
                              #:kms-key-arn #:knowledge-base
                              #:knowledge-base-arn
                              #:knowledge-base-configuration
                              #:knowledge-base-document
                              #:knowledge-base-document-detail
                              #:knowledge-base-document-details
                              #:knowledge-base-document-resource
                              #:knowledge-base-documents
                              #:knowledge-base-flow-node-configuration
                              #:knowledge-base-id
                              #:knowledge-base-model-identifier
                              #:knowledge-base-orchestration-configuration
                              #:knowledge-base-prompt-template
                              #:knowledge-base-resource
                              #:knowledge-base-role-arn #:knowledge-base-state
                              #:knowledge-base-status
                              #:knowledge-base-storage-type
                              #:knowledge-base-summaries
                              #:knowledge-base-summary
                              #:knowledge-base-text-prompt
                              #:knowledge-base-type #:lambda-arn
                              #:lambda-function-flow-node-configuration
                              #:lex-bot-alias-arn #:lex-bot-locale-id
                              #:lex-flow-node-configuration
                              #:list-agent-action-groups
                              #:list-agent-action-groups-request
                              #:list-agent-action-groups-response
                              #:list-agent-aliases #:list-agent-aliases-request
                              #:list-agent-aliases-response
                              #:list-agent-collaborators
                              #:list-agent-collaborators-request
                              #:list-agent-collaborators-response
                              #:list-agent-knowledge-bases
                              #:list-agent-knowledge-bases-request
                              #:list-agent-knowledge-bases-response
                              #:list-agent-versions
                              #:list-agent-versions-request
                              #:list-agent-versions-response #:list-agents
                              #:list-agents-request #:list-agents-response
                              #:list-data-sources #:list-data-sources-request
                              #:list-data-sources-response #:list-flow-aliases
                              #:list-flow-aliases-request
                              #:list-flow-aliases-response #:list-flow-versions
                              #:list-flow-versions-request
                              #:list-flow-versions-response #:list-flows
                              #:list-flows-request #:list-flows-response
                              #:list-ingestion-jobs
                              #:list-ingestion-jobs-request
                              #:list-ingestion-jobs-response
                              #:list-knowledge-base-documents
                              #:list-knowledge-base-documents-request
                              #:list-knowledge-base-documents-response
                              #:list-knowledge-bases
                              #:list-knowledge-bases-request
                              #:list-knowledge-bases-response #:list-prompts
                              #:list-prompts-request #:list-prompts-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:loop-controller-flow-node-configuration
                              #:loop-flow-node-configuration
                              #:loop-incompatible-node-type-flow-validation-details
                              #:loop-input-flow-node-configuration
                              #:malformed-condition-expression-flow-validation-details
                              #:malformed-node-input-expression-flow-validation-details
                              #:max-recent-sessions #:max-results
                              #:maximum-length #:memory-configuration
                              #:memory-type #:message #:messages
                              #:metadata-attribute #:metadata-attribute-value
                              #:metadata-attributes
                              #:metadata-configuration-for-reranking
                              #:metadata-source-type #:metadata-value-type
                              #:microsoft365tenant-id
                              #:mismatched-node-input-type-flow-validation-details
                              #:mismatched-node-output-type-flow-validation-details
                              #:missing-connection-configuration-flow-validation-details
                              #:missing-default-condition-flow-validation-details
                              #:missing-ending-nodes-flow-validation-details
                              #:missing-loop-controller-node-flow-validation-details
                              #:missing-loop-input-node-flow-validation-details
                              #:missing-node-configuration-flow-validation-details
                              #:missing-node-input-flow-validation-details
                              #:missing-node-output-flow-validation-details
                              #:missing-starting-nodes-flow-validation-details
                              #:model-identifier
                              #:mongo-db-atlas-collection-name
                              #:mongo-db-atlas-configuration
                              #:mongo-db-atlas-database-name
                              #:mongo-db-atlas-endpoint
                              #:mongo-db-atlas-endpoint-service-name
                              #:mongo-db-atlas-field-mapping
                              #:mongo-db-atlas-index-name
                              #:multiple-loop-controller-nodes-flow-validation-details
                              #:multiple-loop-input-nodes-flow-validation-details
                              #:multiple-node-input-connections-flow-validation-details
                              #:name #:natural-language-string
                              #:neptune-analytics-configuration
                              #:neptune-analytics-field-mapping #:next-token
                              #:non-blank-string #:non-empty-string
                              #:number-value #:numerical-version
                              #:open-search-managed-cluster-configuration
                              #:open-search-managed-cluster-domain-arn
                              #:open-search-managed-cluster-domain-endpoint
                              #:open-search-managed-cluster-field-mapping
                              #:open-search-managed-cluster-index-name
                              #:open-search-serverless-collection-arn
                              #:open-search-serverless-configuration
                              #:open-search-serverless-field-mapping
                              #:open-search-serverless-index-name
                              #:orchestration-executor #:orchestration-type
                              #:output-flow-node-configuration
                              #:parameter-description #:parameter-detail
                              #:parameter-map #:parsing-configuration
                              #:parsing-modality #:parsing-prompt
                              #:parsing-prompt-text #:parsing-strategy
                              #:pattern-object-filter
                              #:pattern-object-filter-configuration
                              #:pattern-object-filter-list #:payload
                              #:performance-config-latency
                              #:performance-configuration
                              #:pinecone-configuration
                              #:pinecone-connection-string
                              #:pinecone-field-mapping #:pinecone-namespace
                              #:prepare-agent #:prepare-agent-request
                              #:prepare-agent-response #:prepare-flow
                              #:prepare-flow-request #:prepare-flow-response
                              #:prompt-agent-resource #:prompt-arn
                              #:prompt-configuration #:prompt-configurations
                              #:prompt-description
                              #:prompt-flow-node-configuration
                              #:prompt-flow-node-inline-configuration
                              #:prompt-flow-node-resource-configuration
                              #:prompt-flow-node-source-configuration
                              #:prompt-gen-ai-resource #:prompt-id
                              #:prompt-identifier
                              #:prompt-inference-configuration
                              #:prompt-input-variable
                              #:prompt-input-variable-name
                              #:prompt-input-variables-list
                              #:prompt-metadata-entry #:prompt-metadata-key
                              #:prompt-metadata-list #:prompt-metadata-value
                              #:prompt-model-identifier
                              #:prompt-model-inference-configuration
                              #:prompt-name #:prompt-override-configuration
                              #:prompt-resource #:prompt-state
                              #:prompt-summaries #:prompt-summary
                              #:prompt-template-configuration
                              #:prompt-template-type #:prompt-type
                              #:prompt-variant #:prompt-variant-list
                              #:prompt-variant-name
                              #:provisioned-model-identifier
                              #:query-engine-type
                              #:query-execution-timeout-seconds
                              #:query-generation-column
                              #:query-generation-column-name
                              #:query-generation-columns
                              #:query-generation-configuration
                              #:query-generation-context
                              #:query-generation-table
                              #:query-generation-table-name
                              #:query-generation-tables #:rds-arn
                              #:rds-configuration #:rds-database-name
                              #:rds-field-mapping #:rds-table-name
                              #:recommended-action #:recommended-actions
                              #:redis-enterprise-cloud-configuration
                              #:redis-enterprise-cloud-endpoint
                              #:redis-enterprise-cloud-field-mapping
                              #:redis-enterprise-cloud-index-name
                              #:redshift-cluster-identifier
                              #:redshift-configuration #:redshift-database
                              #:redshift-provisioned-auth-configuration
                              #:redshift-provisioned-auth-type
                              #:redshift-provisioned-configuration
                              #:redshift-query-engine-aws-data-catalog-storage-configuration
                              #:redshift-query-engine-configuration
                              #:redshift-query-engine-redshift-storage-configuration
                              #:redshift-query-engine-storage-configuration
                              #:redshift-query-engine-storage-configurations
                              #:redshift-query-engine-storage-type
                              #:redshift-query-engine-type
                              #:redshift-serverless-auth-configuration
                              #:redshift-serverless-auth-type
                              #:redshift-serverless-configuration
                              #:relay-conversation-history
                              #:require-confirmation
                              #:reranking-metadata-selection-mode
                              #:reranking-metadata-selective-mode-configuration
                              #:resource-not-found-exception
                              #:retrieval-flow-node-configuration
                              #:retrieval-flow-node-s3configuration
                              #:retrieval-flow-node-service-configuration
                              #:s3bucket-arn #:s3bucket-name #:s3bucket-uri
                              #:s3content #:s3data-source-configuration
                              #:s3identifier #:s3location #:s3object-key
                              #:s3object-uri #:s3prefix #:s3prefixes
                              #:s3vectors-configuration #:salesforce-auth-type
                              #:salesforce-crawler-configuration
                              #:salesforce-data-source-configuration
                              #:salesforce-source-configuration #:secret-arn
                              #:seed-url #:seed-urls
                              #:semantic-chunking-configuration
                              #:server-side-encryption-configuration
                              #:service-quota-exceeded-exception
                              #:session-summary-configuration #:session-ttl
                              #:share-point-auth-type
                              #:share-point-crawler-configuration
                              #:share-point-data-source-configuration
                              #:share-point-domain #:share-point-host-type
                              #:share-point-site-urls
                              #:share-point-source-configuration #:sort-order
                              #:specific-tool-choice
                              #:sql-knowledge-base-configuration #:sql-string
                              #:start-ingestion-job
                              #:start-ingestion-job-request
                              #:start-ingestion-job-response #:step-type
                              #:stop-ingestion-job #:stop-ingestion-job-request
                              #:stop-ingestion-job-response #:stop-sequences
                              #:storage-configuration #:storage-days
                              #:storage-flow-node-configuration
                              #:storage-flow-node-s3configuration
                              #:storage-flow-node-service-configuration
                              #:string-list-value #:string-value
                              #:supplemental-data-storage-configuration
                              #:supplemental-data-storage-location
                              #:supplemental-data-storage-location-type
                              #:supplemental-data-storage-locations
                              #:supported-languages #:system-content-block
                              #:system-content-blocks #:tag-key #:tag-key-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:taggable-resources-arn #:tagging-resource
                              #:tags-map #:temperature #:text-content-doc
                              #:text-prompt
                              #:text-prompt-template-configuration
                              #:throttling-exception #:tool #:tool-choice
                              #:tool-configuration #:tool-input-schema
                              #:tool-name #:tool-specification #:tools #:top-k
                              #:top-p #:transformation
                              #:transformation-function
                              #:transformation-lambda-configuration
                              #:transformations #:type
                              #:unfulfilled-node-input-flow-validation-details
                              #:unknown-connection-condition-flow-validation-details
                              #:unknown-connection-source-flow-validation-details
                              #:unknown-connection-source-output-flow-validation-details
                              #:unknown-connection-target-flow-validation-details
                              #:unknown-connection-target-input-flow-validation-details
                              #:unknown-node-input-flow-validation-details
                              #:unknown-node-output-flow-validation-details
                              #:unreachable-node-flow-validation-details
                              #:unsatisfied-connection-conditions-flow-validation-details
                              #:unspecified-flow-validation-details
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-agent
                              #:update-agent-action-group
                              #:update-agent-action-group-request
                              #:update-agent-action-group-response
                              #:update-agent-alias #:update-agent-alias-request
                              #:update-agent-alias-response
                              #:update-agent-collaborator
                              #:update-agent-collaborator-request
                              #:update-agent-collaborator-response
                              #:update-agent-knowledge-base
                              #:update-agent-knowledge-base-request
                              #:update-agent-knowledge-base-response
                              #:update-agent-request #:update-agent-response
                              #:update-data-source #:update-data-source-request
                              #:update-data-source-response #:update-flow
                              #:update-flow-alias #:update-flow-alias-request
                              #:update-flow-alias-response
                              #:update-flow-request #:update-flow-response
                              #:update-knowledge-base
                              #:update-knowledge-base-request
                              #:update-knowledge-base-response #:update-prompt
                              #:update-prompt-request #:update-prompt-response
                              #:url #:url-configuration #:user-agent
                              #:user-agent-header #:validate-flow-definition
                              #:validate-flow-definition-request
                              #:validate-flow-definition-response
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:vector-bucket-arn
                              #:vector-ingestion-configuration
                              #:vector-knowledge-base-configuration
                              #:vector-search-bedrock-reranking-configuration
                              #:vector-search-bedrock-reranking-model-configuration
                              #:vector-search-reranking-configuration
                              #:vector-search-reranking-configuration-type
                              #:version #:version-resource
                              #:web-crawler-configuration #:web-crawler-limits
                              #:web-data-source-configuration #:web-scope-type
                              #:web-source-configuration #:workgroup-arn))
(common-lisp:in-package #:pira/bedrock-agent)

(smithy/sdk/service:define-service amazon-bedrock-agent-build-time-lambda
                                   :shape-name
                                   "AmazonBedrockAgentBuildTimeLambda" :version
                                   "2023-06-05" :title
                                   "Agents for Amazon Bedrock" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock Agent")
                                      ("arnNamespace" . "bedrock")
                                      ("endpointPrefix" . "bedrock-agent")
                                      ("cloudTrailEventSource"
                                       . "bedrock.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "bedrock"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-union apischema common-lisp:nil
                                ((s3 :target-type s3identifier :member-name
                                  "s3")
                                 (payload :target-type payload :member-name
                                  "payload"))
                                (:shape-name "APISchema"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-union action-group-executor common-lisp:nil
                                ((lambda :target-type lambda-arn :member-name
                                  "lambda")
                                 (custom-control :target-type
                                  custom-control-method :member-name
                                  "customControl"))
                                (:shape-name "ActionGroupExecutor"))

common-lisp:nil

(smithy/sdk/shapes:define-enum action-group-signature
    common-lisp:nil
  (:amazon-userinput "AMAZON.UserInput")
  (:amazon-codeinterpreter "AMAZON.CodeInterpreter")
  (:anthropic-computer "ANTHROPIC.Computer")
  (:anthropic-bash "ANTHROPIC.Bash")
  (:anthropic-texteditor "ANTHROPIC.TextEditor"))

(smithy/sdk/shapes:define-map action-group-signature-params :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action-group-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list action-group-summaries :member
                               action-group-summary)

(smithy/sdk/shapes:define-structure action-group-summary common-lisp:nil
                                    ((action-group-id :target-type id :required
                                      common-lisp:t :member-name
                                      "actionGroupId")
                                     (action-group-name :target-type name
                                      :required common-lisp:t :member-name
                                      "actionGroupName")
                                     (action-group-state :target-type
                                      action-group-state :required
                                      common-lisp:t :member-name
                                      "actionGroupState")
                                     (description :target-type description
                                      :member-name "description")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "ActionGroupSummary"))

(smithy/sdk/shapes:define-map additional-model-request-fields :key
                              additional-model-request-fields-key :value
                              additional-model-request-fields-value)

(smithy/sdk/shapes:define-type additional-model-request-fields-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type additional-model-request-fields-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure agent common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-name :target-type name :required
                                      common-lisp:t :member-name "agentName")
                                     (agent-arn :target-type agent-arn
                                      :required common-lisp:t :member-name
                                      "agentArn")
                                     (agent-version :target-type draft-version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (instruction :target-type instruction
                                      :member-name "instruction")
                                     (agent-status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "agentStatus")
                                     (foundation-model :target-type
                                      model-identifier :member-name
                                      "foundationModel")
                                     (description :target-type description
                                      :member-name "description")
                                     (orchestration-type :target-type
                                      orchestration-type :member-name
                                      "orchestrationType")
                                     (custom-orchestration :target-type
                                      custom-orchestration :member-name
                                      "customOrchestration")
                                     (idle-session-ttlin-seconds :target-type
                                      session-ttl :required common-lisp:t
                                      :member-name "idleSessionTTLInSeconds")
                                     (agent-resource-role-arn :target-type
                                      agent-role-arn :required common-lisp:t
                                      :member-name "agentResourceRoleArn")
                                     (customer-encryption-key-arn :target-type
                                      kms-key-arn :member-name
                                      "customerEncryptionKeyArn")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (prepared-at :target-type date-timestamp
                                      :member-name "preparedAt")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons")
                                     (recommended-actions :target-type
                                      recommended-actions :member-name
                                      "recommendedActions")
                                     (prompt-override-configuration
                                      :target-type
                                      prompt-override-configuration
                                      :member-name
                                      "promptOverrideConfiguration")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (memory-configuration :target-type
                                      memory-configuration :member-name
                                      "memoryConfiguration")
                                     (agent-collaboration :target-type
                                      agent-collaboration :member-name
                                      "agentCollaboration"))
                                    (:shape-name "Agent"))

(smithy/sdk/shapes:define-structure agent-action-group common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (action-group-id :target-type id :required
                                      common-lisp:t :member-name
                                      "actionGroupId")
                                     (action-group-name :target-type name
                                      :required common-lisp:t :member-name
                                      "actionGroupName")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (parent-action-signature :target-type
                                      action-group-signature :member-name
                                      "parentActionSignature")
                                     (parent-action-group-signature-params
                                      :target-type
                                      action-group-signature-params
                                      :member-name
                                      "parentActionGroupSignatureParams")
                                     (action-group-executor :target-type
                                      action-group-executor :member-name
                                      "actionGroupExecutor")
                                     (api-schema :target-type apischema
                                      :member-name "apiSchema")
                                     (function-schema :target-type
                                      function-schema :member-name
                                      "functionSchema")
                                     (action-group-state :target-type
                                      action-group-state :required
                                      common-lisp:t :member-name
                                      "actionGroupState"))
                                    (:shape-name "AgentActionGroup"))

(smithy/sdk/shapes:define-structure agent-alias common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-alias-id :target-type
                                      agent-alias-id :required common-lisp:t
                                      :member-name "agentAliasId")
                                     (agent-alias-name :target-type name
                                      :required common-lisp:t :member-name
                                      "agentAliasName")
                                     (agent-alias-arn :target-type
                                      agent-alias-arn :required common-lisp:t
                                      :member-name "agentAliasArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (description :target-type description
                                      :member-name "description")
                                     (routing-configuration :target-type
                                      agent-alias-routing-configuration
                                      :required common-lisp:t :member-name
                                      "routingConfiguration")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (agent-alias-history-events :target-type
                                      agent-alias-history-events :member-name
                                      "agentAliasHistoryEvents")
                                     (agent-alias-status :target-type
                                      agent-alias-status :required
                                      common-lisp:t :member-name
                                      "agentAliasStatus")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons")
                                     (alias-invocation-state :target-type
                                      alias-invocation-state :member-name
                                      "aliasInvocationState"))
                                    (:shape-name "AgentAlias"))

(smithy/sdk/shapes:define-type agent-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure agent-alias-history-event common-lisp:nil
                                    ((routing-configuration :target-type
                                      agent-alias-routing-configuration
                                      :member-name "routingConfiguration")
                                     (end-date :target-type date-timestamp
                                      :member-name "endDate")
                                     (start-date :target-type date-timestamp
                                      :member-name "startDate"))
                                    (:shape-name "AgentAliasHistoryEvent"))

(smithy/sdk/shapes:define-list agent-alias-history-events :member
                               agent-alias-history-event)

(smithy/sdk/shapes:define-type agent-alias-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list agent-alias-routing-configuration :member
                               agent-alias-routing-configuration-list-item)

(smithy/sdk/shapes:define-structure agent-alias-routing-configuration-list-item
                                    common-lisp:nil
                                    ((agent-version :target-type version
                                      :member-name "agentVersion")
                                     (provisioned-throughput :target-type
                                      provisioned-model-identifier :member-name
                                      "provisionedThroughput"))
                                    (:shape-name
                                     "AgentAliasRoutingConfigurationListItem"))

(smithy/sdk/shapes:define-enum agent-alias-status
    common-lisp:nil
  (:creating "CREATING")
  (:prepared "PREPARED")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:dissociated "DISSOCIATED"))

(smithy/sdk/shapes:define-list agent-alias-summaries :member
                               agent-alias-summary)

(smithy/sdk/shapes:define-structure agent-alias-summary common-lisp:nil
                                    ((agent-alias-id :target-type
                                      agent-alias-id :required common-lisp:t
                                      :member-name "agentAliasId")
                                     (agent-alias-name :target-type name
                                      :required common-lisp:t :member-name
                                      "agentAliasName")
                                     (description :target-type description
                                      :member-name "description")
                                     (routing-configuration :target-type
                                      agent-alias-routing-configuration
                                      :member-name "routingConfiguration")
                                     (agent-alias-status :target-type
                                      agent-alias-status :required
                                      common-lisp:t :member-name
                                      "agentAliasStatus")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (alias-invocation-state :target-type
                                      alias-invocation-state :member-name
                                      "aliasInvocationState"))
                                    (:shape-name "AgentAliasSummary"))

(smithy/sdk/shapes:define-type agent-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum agent-collaboration
    common-lisp:nil
  (:supervisor "SUPERVISOR")
  (:supervisor-router "SUPERVISOR_ROUTER")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure agent-collaborator common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (agent-descriptor :target-type
                                      agent-descriptor :required common-lisp:t
                                      :member-name "agentDescriptor")
                                     (collaborator-id :target-type id :required
                                      common-lisp:t :member-name
                                      "collaboratorId")
                                     (collaboration-instruction :target-type
                                      collaboration-instruction :required
                                      common-lisp:t :member-name
                                      "collaborationInstruction")
                                     (collaborator-name :target-type name
                                      :required common-lisp:t :member-name
                                      "collaboratorName")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastUpdatedAt")
                                     (relay-conversation-history :target-type
                                      relay-conversation-history :member-name
                                      "relayConversationHistory")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "AgentCollaborator"))

common-lisp:nil

(smithy/sdk/shapes:define-list agent-collaborator-summaries :member
                               agent-collaborator-summary)

(smithy/sdk/shapes:define-structure agent-collaborator-summary common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (collaborator-id :target-type id :required
                                      common-lisp:t :member-name
                                      "collaboratorId")
                                     (agent-descriptor :target-type
                                      agent-descriptor :required common-lisp:t
                                      :member-name "agentDescriptor")
                                     (collaboration-instruction :target-type
                                      collaboration-instruction :required
                                      common-lisp:t :member-name
                                      "collaborationInstruction")
                                     (relay-conversation-history :target-type
                                      relay-conversation-history :required
                                      common-lisp:t :member-name
                                      "relayConversationHistory")
                                     (collaborator-name :target-type name
                                      :required common-lisp:t :member-name
                                      "collaboratorName")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "AgentCollaboratorSummary"))

(smithy/sdk/shapes:define-structure agent-descriptor common-lisp:nil
                                    ((alias-arn :target-type agent-alias-arn
                                      :member-name "aliasArn"))
                                    (:shape-name "AgentDescriptor"))

(smithy/sdk/shapes:define-structure agent-flow-node-configuration
                                    common-lisp:nil
                                    ((agent-alias-arn :target-type
                                      agent-alias-arn :required common-lisp:t
                                      :member-name "agentAliasArn"))
                                    (:shape-name "AgentFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure agent-knowledge-base common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (knowledge-base-state :target-type
                                      knowledge-base-state :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseState"))
                                    (:shape-name "AgentKnowledgeBase"))

(smithy/sdk/shapes:define-list agent-knowledge-base-summaries :member
                               agent-knowledge-base-summary)

(smithy/sdk/shapes:define-structure agent-knowledge-base-summary
                                    common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (description :target-type description
                                      :member-name "description")
                                     (knowledge-base-state :target-type
                                      knowledge-base-state :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseState")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "AgentKnowledgeBaseSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type agent-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum agent-status
    common-lisp:nil
  (:creating "CREATING")
  (:preparing "PREPARING")
  (:prepared "PREPARED")
  (:not-prepared "NOT_PREPARED")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:versioning "VERSIONING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-list agent-summaries :member agent-summary)

(smithy/sdk/shapes:define-structure agent-summary common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-name :target-type name :required
                                      common-lisp:t :member-name "agentName")
                                     (agent-status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "agentStatus")
                                     (description :target-type description
                                      :member-name "description")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (latest-agent-version :target-type version
                                      :member-name "latestAgentVersion")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration"))
                                    (:shape-name "AgentSummary"))

(smithy/sdk/shapes:define-structure agent-version common-lisp:nil
                                    ((agent-id :target-type id :required
                                      common-lisp:t :member-name "agentId")
                                     (agent-name :target-type name :required
                                      common-lisp:t :member-name "agentName")
                                     (agent-arn :target-type agent-arn
                                      :required common-lisp:t :member-name
                                      "agentArn")
                                     (version :target-type numerical-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (instruction :target-type instruction
                                      :member-name "instruction")
                                     (agent-status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "agentStatus")
                                     (foundation-model :target-type
                                      model-identifier :member-name
                                      "foundationModel")
                                     (description :target-type description
                                      :member-name "description")
                                     (idle-session-ttlin-seconds :target-type
                                      session-ttl :required common-lisp:t
                                      :member-name "idleSessionTTLInSeconds")
                                     (agent-resource-role-arn :target-type
                                      agent-role-arn :required common-lisp:t
                                      :member-name "agentResourceRoleArn")
                                     (customer-encryption-key-arn :target-type
                                      kms-key-arn :member-name
                                      "customerEncryptionKeyArn")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons")
                                     (recommended-actions :target-type
                                      recommended-actions :member-name
                                      "recommendedActions")
                                     (prompt-override-configuration
                                      :target-type
                                      prompt-override-configuration
                                      :member-name
                                      "promptOverrideConfiguration")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (memory-configuration :target-type
                                      memory-configuration :member-name
                                      "memoryConfiguration")
                                     (agent-collaboration :target-type
                                      agent-collaboration :member-name
                                      "agentCollaboration"))
                                    (:shape-name "AgentVersion"))

(smithy/sdk/shapes:define-list agent-version-summaries :member
                               agent-version-summary)

(smithy/sdk/shapes:define-structure agent-version-summary common-lisp:nil
                                    ((agent-name :target-type name :required
                                      common-lisp:t :member-name "agentName")
                                     (agent-status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "agentStatus")
                                     (agent-version :target-type version
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (description :target-type description
                                      :member-name "description")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration"))
                                    (:shape-name "AgentVersionSummary"))

(smithy/sdk/shapes:define-enum alias-invocation-state
    common-lisp:nil
  (:accept-invocations "ACCEPT_INVOCATIONS")
  (:reject-invocations "REJECT_INVOCATIONS"))

common-lisp:nil

(smithy/sdk/shapes:define-structure any-tool-choice common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AnyToolChoice"))

(smithy/sdk/shapes:define-input associate-agent-collaborator-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (agent-descriptor :target-type
                                  agent-descriptor :required common-lisp:t
                                  :member-name "agentDescriptor")
                                 (collaborator-name :target-type name :required
                                  common-lisp:t :member-name
                                  "collaboratorName")
                                 (collaboration-instruction :target-type
                                  collaboration-instruction :required
                                  common-lisp:t :member-name
                                  "collaborationInstruction")
                                 (relay-conversation-history :target-type
                                  relay-conversation-history :member-name
                                  "relayConversationHistory")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "AssociateAgentCollaboratorRequest"))

(smithy/sdk/shapes:define-output associate-agent-collaborator-response
                                 common-lisp:nil
                                 ((agent-collaborator :target-type
                                   agent-collaborator :required common-lisp:t
                                   :member-name "agentCollaborator"))
                                 (:shape-name
                                  "AssociateAgentCollaboratorResponse"))

(smithy/sdk/shapes:define-input associate-agent-knowledge-base-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "description")
                                 (knowledge-base-state :target-type
                                  knowledge-base-state :member-name
                                  "knowledgeBaseState"))
                                (:shape-name
                                 "AssociateAgentKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output associate-agent-knowledge-base-response
                                 common-lisp:nil
                                 ((agent-knowledge-base :target-type
                                   agent-knowledge-base :required common-lisp:t
                                   :member-name "agentKnowledgeBase"))
                                 (:shape-name
                                  "AssociateAgentKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-structure auto-tool-choice common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AutoToolChoice"))

(smithy/sdk/shapes:define-type aws-data-catalog-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-data-catalog-table-names :member
                               aws-data-catalog-table-name)

(smithy/sdk/shapes:define-type base-prompt-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-data-automation-configuration
                                    common-lisp:nil
                                    ((parsing-modality :target-type
                                      parsing-modality :member-name
                                      "parsingModality"))
                                    (:shape-name
                                     "BedrockDataAutomationConfiguration"))

(smithy/sdk/shapes:define-type bedrock-embedding-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-embedding-model-configuration
                                    common-lisp:nil
                                    ((dimensions :target-type dimensions
                                      :member-name "dimensions")
                                     (embedding-data-type :target-type
                                      embedding-data-type :member-name
                                      "embeddingDataType"))
                                    (:shape-name
                                     "BedrockEmbeddingModelConfiguration"))

(smithy/sdk/shapes:define-structure bedrock-foundation-model-configuration
                                    common-lisp:nil
                                    ((model-arn :target-type bedrock-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (parsing-prompt :target-type
                                      parsing-prompt :member-name
                                      "parsingPrompt")
                                     (parsing-modality :target-type
                                      parsing-modality :member-name
                                      "parsingModality"))
                                    (:shape-name
                                     "BedrockFoundationModelConfiguration"))

(smithy/sdk/shapes:define-structure
 bedrock-foundation-model-context-enrichment-configuration common-lisp:nil
 ((enrichment-strategy-configuration :target-type
   enrichment-strategy-configuration :required common-lisp:t :member-name
   "enrichmentStrategyConfiguration")
  (model-arn :target-type bedrock-model-arn :required common-lisp:t
   :member-name "modelArn"))
 (:shape-name "BedrockFoundationModelContextEnrichmentConfiguration"))

(smithy/sdk/shapes:define-type bedrock-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-reranking-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-owner-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type byte-content-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure byte-content-doc common-lisp:nil
                                    ((mime-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "mimeType")
                                     (data :target-type byte-content-blob
                                      :required common-lisp:t :member-name
                                      "data"))
                                    (:shape-name "ByteContentDoc"))

(smithy/sdk/shapes:define-structure cache-point-block common-lisp:nil
                                    ((type :target-type cache-point-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "CachePointBlock"))

(smithy/sdk/shapes:define-enum cache-point-type
    common-lisp:nil
  (:default "default"))

(smithy/sdk/shapes:define-structure chat-prompt-template-configuration
                                    common-lisp:nil
                                    ((messages :target-type messages :required
                                      common-lisp:t :member-name "messages")
                                     (system :target-type system-content-blocks
                                      :member-name "system")
                                     (input-variables :target-type
                                      prompt-input-variables-list :member-name
                                      "inputVariables")
                                     (tool-configuration :target-type
                                      tool-configuration :member-name
                                      "toolConfiguration"))
                                    (:shape-name
                                     "ChatPromptTemplateConfiguration"))

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

(smithy/sdk/shapes:define-enum chunking-strategy
    common-lisp:nil
  (:fixed-size "FIXED_SIZE")
  (:none "NONE")
  (:hierarchical "HIERARCHICAL")
  (:semantic "SEMANTIC"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type collaboration-instruction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collector-flow-node-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "CollectorFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum concurrency-type
    common-lisp:nil
  (:automatic "Automatic")
  (:manual "Manual"))

(smithy/sdk/shapes:define-structure condition-flow-node-configuration
                                    common-lisp:nil
                                    ((conditions :target-type flow-conditions
                                      :required common-lisp:t :member-name
                                      "conditions"))
                                    (:shape-name
                                     "ConditionFlowNodeConfiguration"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum confluence-auth-type
    common-lisp:nil
  (:basic "BASIC")
  (:oauth2-client-credentials "OAUTH2_CLIENT_CREDENTIALS"))

(smithy/sdk/shapes:define-structure confluence-crawler-configuration
                                    common-lisp:nil
                                    ((filter-configuration :target-type
                                      crawl-filter-configuration :member-name
                                      "filterConfiguration"))
                                    (:shape-name
                                     "ConfluenceCrawlerConfiguration"))

(smithy/sdk/shapes:define-structure confluence-data-source-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      confluence-source-configuration :required
                                      common-lisp:t :member-name
                                      "sourceConfiguration")
                                     (crawler-configuration :target-type
                                      confluence-crawler-configuration
                                      :member-name "crawlerConfiguration"))
                                    (:shape-name
                                     "ConfluenceDataSourceConfiguration"))

(smithy/sdk/shapes:define-enum confluence-host-type
    common-lisp:nil
  (:saas "SAAS"))

(smithy/sdk/shapes:define-structure confluence-source-configuration
                                    common-lisp:nil
                                    ((host-url :target-type https-url :required
                                      common-lisp:t :member-name "hostUrl")
                                     (host-type :target-type
                                      confluence-host-type :required
                                      common-lisp:t :member-name "hostType")
                                     (auth-type :target-type
                                      confluence-auth-type :required
                                      common-lisp:t :member-name "authType")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn"))
                                    (:shape-name
                                     "ConfluenceSourceConfiguration"))

(smithy/sdk/shapes:define-union content-block common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (cache-point :target-type cache-point-block
                                  :member-name "cachePoint"))
                                (:shape-name "ContentBlock"))

(smithy/sdk/shapes:define-list content-blocks :member content-block)

(smithy/sdk/shapes:define-enum content-data-source-type
    common-lisp:nil
  (:custom "CUSTOM")
  (:s3 "S3"))

(smithy/sdk/shapes:define-structure context-enrichment-configuration
                                    common-lisp:nil
                                    ((type :target-type context-enrichment-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (bedrock-foundation-model-configuration
                                      :target-type
                                      bedrock-foundation-model-context-enrichment-configuration
                                      :member-name
                                      "bedrockFoundationModelConfiguration"))
                                    (:shape-name
                                     "ContextEnrichmentConfiguration"))

(smithy/sdk/shapes:define-enum context-enrichment-type
    common-lisp:nil
  (:bedrock-foundation-model "BEDROCK_FOUNDATION_MODEL"))

(smithy/sdk/shapes:define-enum conversation-role
    common-lisp:nil
  (:user "user")
  (:assistant "assistant"))

(smithy/sdk/shapes:define-structure crawl-filter-configuration common-lisp:nil
                                    ((type :target-type
                                      crawl-filter-configuration-type :required
                                      common-lisp:t :member-name "type")
                                     (pattern-object-filter :target-type
                                      pattern-object-filter-configuration
                                      :member-name "patternObjectFilter"))
                                    (:shape-name "CrawlFilterConfiguration"))

(smithy/sdk/shapes:define-enum crawl-filter-configuration-type
    common-lisp:nil
  (:pattern "PATTERN"))

(smithy/sdk/shapes:define-input create-agent-action-group-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (action-group-name :target-type name :required
                                  common-lisp:t :member-name "actionGroupName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (description :target-type description
                                  :member-name "description")
                                 (parent-action-group-signature :target-type
                                  action-group-signature :member-name
                                  "parentActionGroupSignature")
                                 (parent-action-group-signature-params
                                  :target-type action-group-signature-params
                                  :member-name
                                  "parentActionGroupSignatureParams")
                                 (action-group-executor :target-type
                                  action-group-executor :member-name
                                  "actionGroupExecutor")
                                 (api-schema :target-type apischema
                                  :member-name "apiSchema")
                                 (action-group-state :target-type
                                  action-group-state :member-name
                                  "actionGroupState")
                                 (function-schema :target-type function-schema
                                  :member-name "functionSchema"))
                                (:shape-name "CreateAgentActionGroupRequest"))

(smithy/sdk/shapes:define-output create-agent-action-group-response
                                 common-lisp:nil
                                 ((agent-action-group :target-type
                                   agent-action-group :required common-lisp:t
                                   :member-name "agentActionGroup"))
                                 (:shape-name "CreateAgentActionGroupResponse"))

(smithy/sdk/shapes:define-input create-agent-alias-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-name :target-type name :required
                                  common-lisp:t :member-name "agentAliasName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (description :target-type description
                                  :member-name "description")
                                 (routing-configuration :target-type
                                  agent-alias-routing-configuration
                                  :member-name "routingConfiguration")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateAgentAliasRequest"))

(smithy/sdk/shapes:define-output create-agent-alias-response common-lisp:nil
                                 ((agent-alias :target-type agent-alias
                                   :required common-lisp:t :member-name
                                   "agentAlias"))
                                 (:shape-name "CreateAgentAliasResponse"))

(smithy/sdk/shapes:define-input create-agent-request common-lisp:nil
                                ((agent-name :target-type name :required
                                  common-lisp:t :member-name "agentName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (instruction :target-type instruction
                                  :member-name "instruction")
                                 (foundation-model :target-type
                                  model-identifier :member-name
                                  "foundationModel")
                                 (description :target-type description
                                  :member-name "description")
                                 (orchestration-type :target-type
                                  orchestration-type :member-name
                                  "orchestrationType")
                                 (custom-orchestration :target-type
                                  custom-orchestration :member-name
                                  "customOrchestration")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :member-name
                                  "idleSessionTTLInSeconds")
                                 (agent-resource-role-arn :target-type
                                  agent-role-arn :member-name
                                  "agentResourceRoleArn")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (tags :target-type tags-map :member-name
                                  "tags")
                                 (prompt-override-configuration :target-type
                                  prompt-override-configuration :member-name
                                  "promptOverrideConfiguration")
                                 (guardrail-configuration :target-type
                                  guardrail-configuration :member-name
                                  "guardrailConfiguration")
                                 (memory-configuration :target-type
                                  memory-configuration :member-name
                                  "memoryConfiguration")
                                 (agent-collaboration :target-type
                                  agent-collaboration :member-name
                                  "agentCollaboration"))
                                (:shape-name "CreateAgentRequest"))

(smithy/sdk/shapes:define-output create-agent-response common-lisp:nil
                                 ((agent :target-type agent :required
                                   common-lisp:t :member-name "agent"))
                                 (:shape-name "CreateAgentResponse"))

(smithy/sdk/shapes:define-input create-data-source-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (data-source-configuration :target-type
                                  data-source-configuration :required
                                  common-lisp:t :member-name
                                  "dataSourceConfiguration")
                                 (data-deletion-policy :target-type
                                  data-deletion-policy :member-name
                                  "dataDeletionPolicy")
                                 (server-side-encryption-configuration
                                  :target-type
                                  server-side-encryption-configuration
                                  :member-name
                                  "serverSideEncryptionConfiguration")
                                 (vector-ingestion-configuration :target-type
                                  vector-ingestion-configuration :member-name
                                  "vectorIngestionConfiguration"))
                                (:shape-name "CreateDataSourceRequest"))

(smithy/sdk/shapes:define-output create-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :required common-lisp:t :member-name
                                   "dataSource"))
                                 (:shape-name "CreateDataSourceResponse"))

(smithy/sdk/shapes:define-input create-flow-alias-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (routing-configuration :target-type
                                  flow-alias-routing-configuration :required
                                  common-lisp:t :member-name
                                  "routingConfiguration")
                                 (concurrency-configuration :target-type
                                  flow-alias-concurrency-configuration
                                  :member-name "concurrencyConfiguration")
                                 (flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateFlowAliasRequest"))

(smithy/sdk/shapes:define-output create-flow-alias-response common-lisp:nil
                                 ((name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (routing-configuration :target-type
                                   flow-alias-routing-configuration :required
                                   common-lisp:t :member-name
                                   "routingConfiguration")
                                  (concurrency-configuration :target-type
                                   flow-alias-concurrency-configuration
                                   :member-name "concurrencyConfiguration")
                                  (flow-id :target-type flow-id :required
                                   common-lisp:t :member-name "flowId")
                                  (id :target-type flow-alias-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-alias-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "CreateFlowAliasResponse"))

(smithy/sdk/shapes:define-input create-flow-request common-lisp:nil
                                ((name :target-type flow-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type flow-description
                                  :member-name "description")
                                 (execution-role-arn :target-type
                                  flow-execution-role-arn :required
                                  common-lisp:t :member-name
                                  "executionRoleArn")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (definition :target-type flow-definition
                                  :member-name "definition")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateFlowRequest"))

(smithy/sdk/shapes:define-output create-flow-response common-lisp:nil
                                 ((name :target-type flow-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (version :target-type draft-version :required
                                   common-lisp:t :member-name "version")
                                  (definition :target-type flow-definition
                                   :member-name "definition"))
                                 (:shape-name "CreateFlowResponse"))

(smithy/sdk/shapes:define-input create-flow-version-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (description :target-type flow-description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateFlowVersionRequest"))

(smithy/sdk/shapes:define-output create-flow-version-response common-lisp:nil
                                 ((name :target-type flow-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (version :target-type numerical-version
                                   :required common-lisp:t :member-name
                                   "version")
                                  (definition :target-type flow-definition
                                   :member-name "definition"))
                                 (:shape-name "CreateFlowVersionResponse"))

(smithy/sdk/shapes:define-input create-knowledge-base-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type knowledge-base-role-arn
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (knowledge-base-configuration :target-type
                                  knowledge-base-configuration :required
                                  common-lisp:t :member-name
                                  "knowledgeBaseConfiguration")
                                 (storage-configuration :target-type
                                  storage-configuration :member-name
                                  "storageConfiguration")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output create-knowledge-base-response common-lisp:nil
                                 ((knowledge-base :target-type knowledge-base
                                   :required common-lisp:t :member-name
                                   "knowledgeBase"))
                                 (:shape-name "CreateKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input create-prompt-request common-lisp:nil
                                ((name :target-type prompt-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type prompt-description
                                  :member-name "description")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (default-variant :target-type
                                  prompt-variant-name :member-name
                                  "defaultVariant")
                                 (variants :target-type prompt-variant-list
                                  :member-name "variants")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreatePromptRequest"))

(smithy/sdk/shapes:define-output create-prompt-response common-lisp:nil
                                 ((name :target-type prompt-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type prompt-description
                                   :member-name "description")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (default-variant :target-type
                                   prompt-variant-name :member-name
                                   "defaultVariant")
                                  (variants :target-type prompt-variant-list
                                   :member-name "variants")
                                  (id :target-type prompt-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type prompt-arn :required
                                   common-lisp:t :member-name "arn")
                                  (version :target-type version :required
                                   common-lisp:t :member-name "version")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "CreatePromptResponse"))

(smithy/sdk/shapes:define-input create-prompt-version-request common-lisp:nil
                                ((prompt-identifier :target-type
                                  prompt-identifier :required common-lisp:t
                                  :member-name "promptIdentifier" :http-label
                                  common-lisp:t)
                                 (description :target-type prompt-description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreatePromptVersionRequest"))

(smithy/sdk/shapes:define-output create-prompt-version-response common-lisp:nil
                                 ((name :target-type prompt-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type prompt-description
                                   :member-name "description")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (default-variant :target-type
                                   prompt-variant-name :member-name
                                   "defaultVariant")
                                  (variants :target-type prompt-variant-list
                                   :member-name "variants")
                                  (id :target-type prompt-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type prompt-arn :required
                                   common-lisp:t :member-name "arn")
                                  (version :target-type version :required
                                   common-lisp:t :member-name "version")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "CreatePromptVersionResponse"))

(smithy/sdk/shapes:define-enum creation-mode
    common-lisp:nil
  (:default "DEFAULT")
  (:overridden "OVERRIDDEN"))

(smithy/sdk/shapes:define-list curated-queries :member curated-query)

(smithy/sdk/shapes:define-structure curated-query common-lisp:nil
                                    ((natural-language :target-type
                                      natural-language-string :required
                                      common-lisp:t :member-name
                                      "naturalLanguage")
                                     (sql :target-type sql-string :required
                                      common-lisp:t :member-name "sql"))
                                    (:shape-name "CuratedQuery"))

(smithy/sdk/shapes:define-structure custom-content common-lisp:nil
                                    ((custom-document-identifier :target-type
                                      custom-document-identifier :required
                                      common-lisp:t :member-name
                                      "customDocumentIdentifier")
                                     (source-type :target-type
                                      custom-source-type :required
                                      common-lisp:t :member-name "sourceType")
                                     (s3location :target-type custom-s3location
                                      :member-name "s3Location")
                                     (inline-content :target-type
                                      inline-content :member-name
                                      "inlineContent"))
                                    (:shape-name "CustomContent"))

(smithy/sdk/shapes:define-enum custom-control-method
    common-lisp:nil
  (:return-control "RETURN_CONTROL"))

(smithy/sdk/shapes:define-structure custom-document-identifier common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "CustomDocumentIdentifier"))

(smithy/sdk/shapes:define-structure custom-orchestration common-lisp:nil
                                    ((executor :target-type
                                      orchestration-executor :member-name
                                      "executor"))
                                    (:shape-name "CustomOrchestration"))

(smithy/sdk/shapes:define-structure custom-s3location common-lisp:nil
                                    ((uri :target-type s3object-uri :required
                                      common-lisp:t :member-name "uri")
                                     (bucket-owner-account-id :target-type
                                      bucket-owner-account-id :member-name
                                      "bucketOwnerAccountId"))
                                    (:shape-name "CustomS3Location"))

(smithy/sdk/shapes:define-enum custom-source-type
    common-lisp:nil
  (:in-line "IN_LINE")
  (:s3-location "S3_LOCATION"))

(smithy/sdk/shapes:define-structure custom-transformation-configuration
                                    common-lisp:nil
                                    ((intermediate-storage :target-type
                                      intermediate-storage :required
                                      common-lisp:t :member-name
                                      "intermediateStorage")
                                     (transformations :target-type
                                      transformations :required common-lisp:t
                                      :member-name "transformations"))
                                    (:shape-name
                                     "CustomTransformationConfiguration"))

(smithy/sdk/shapes:define-structure cyclic-connection-flow-validation-details
                                    common-lisp:nil
                                    ((connection :target-type
                                      flow-connection-name :required
                                      common-lisp:t :member-name "connection"))
                                    (:shape-name
                                     "CyclicConnectionFlowValidationDetails"))

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-deletion-policy
    common-lisp:nil
  (:retain "RETAIN")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (data-source-id :target-type id :required
                                      common-lisp:t :member-name
                                      "dataSourceId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (data-source-configuration :target-type
                                      data-source-configuration :required
                                      common-lisp:t :member-name
                                      "dataSourceConfiguration")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "serverSideEncryptionConfiguration")
                                     (vector-ingestion-configuration
                                      :target-type
                                      vector-ingestion-configuration
                                      :member-name
                                      "vectorIngestionConfiguration")
                                     (data-deletion-policy :target-type
                                      data-deletion-policy :member-name
                                      "dataDeletionPolicy")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure data-source-configuration common-lisp:nil
                                    ((type :target-type data-source-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (s3configuration :target-type
                                      s3data-source-configuration :member-name
                                      "s3Configuration")
                                     (web-configuration :target-type
                                      web-data-source-configuration
                                      :member-name "webConfiguration")
                                     (confluence-configuration :target-type
                                      confluence-data-source-configuration
                                      :member-name "confluenceConfiguration")
                                     (salesforce-configuration :target-type
                                      salesforce-data-source-configuration
                                      :member-name "salesforceConfiguration")
                                     (share-point-configuration :target-type
                                      share-point-data-source-configuration
                                      :member-name "sharePointConfiguration"))
                                    (:shape-name "DataSourceConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:delete-unsuccessful "DELETE_UNSUCCESSFUL"))

(smithy/sdk/shapes:define-list data-source-summaries :member
                               data-source-summary)

(smithy/sdk/shapes:define-structure data-source-summary common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (data-source-id :target-type id :required
                                      common-lisp:t :member-name
                                      "dataSourceId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "DataSourceSummary"))

(smithy/sdk/shapes:define-enum data-source-type
    common-lisp:nil
  (:s3 "S3")
  (:web "WEB")
  (:confluence "CONFLUENCE")
  (:salesforce "SALESFORCE")
  (:sharepoint "SHAREPOINT")
  (:custom "CUSTOM")
  (:redshift-metadata "REDSHIFT_METADATA"))

(smithy/sdk/shapes:define-type date-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-agent-action-group-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (action-group-id :target-type id :required
                                  common-lisp:t :member-name "actionGroupId"
                                  :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteAgentActionGroupRequest"))

(smithy/sdk/shapes:define-output delete-agent-action-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAgentActionGroupResponse"))

(smithy/sdk/shapes:define-input delete-agent-alias-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t))
                                (:shape-name "DeleteAgentAliasRequest"))

(smithy/sdk/shapes:define-output delete-agent-alias-response common-lisp:nil
                                 ((agent-id :target-type id :required
                                   common-lisp:t :member-name "agentId")
                                  (agent-alias-id :target-type agent-alias-id
                                   :required common-lisp:t :member-name
                                   "agentAliasId")
                                  (agent-alias-status :target-type
                                   agent-alias-status :required common-lisp:t
                                   :member-name "agentAliasStatus"))
                                 (:shape-name "DeleteAgentAliasResponse"))

(smithy/sdk/shapes:define-input delete-agent-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteAgentRequest"))

(smithy/sdk/shapes:define-output delete-agent-response common-lisp:nil
                                 ((agent-id :target-type id :required
                                   common-lisp:t :member-name "agentId")
                                  (agent-status :target-type agent-status
                                   :required common-lisp:t :member-name
                                   "agentStatus"))
                                 (:shape-name "DeleteAgentResponse"))

(smithy/sdk/shapes:define-input delete-agent-version-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteAgentVersionRequest"))

(smithy/sdk/shapes:define-output delete-agent-version-response common-lisp:nil
                                 ((agent-id :target-type id :required
                                   common-lisp:t :member-name "agentId")
                                  (agent-version :target-type numerical-version
                                   :required common-lisp:t :member-name
                                   "agentVersion")
                                  (agent-status :target-type agent-status
                                   :required common-lisp:t :member-name
                                   "agentStatus"))
                                 (:shape-name "DeleteAgentVersionResponse"))

(smithy/sdk/shapes:define-input delete-data-source-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDataSourceRequest"))

(smithy/sdk/shapes:define-output delete-data-source-response common-lisp:nil
                                 ((knowledge-base-id :target-type id :required
                                   common-lisp:t :member-name
                                   "knowledgeBaseId")
                                  (data-source-id :target-type id :required
                                   common-lisp:t :member-name "dataSourceId")
                                  (status :target-type data-source-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "DeleteDataSourceResponse"))

(smithy/sdk/shapes:define-input delete-flow-alias-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "aliasIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFlowAliasRequest"))

(smithy/sdk/shapes:define-output delete-flow-alias-response common-lisp:nil
                                 ((flow-id :target-type flow-id :required
                                   common-lisp:t :member-name "flowId")
                                  (id :target-type flow-alias-id :required
                                   common-lisp:t :member-name "id"))
                                 (:shape-name "DeleteFlowAliasResponse"))

(smithy/sdk/shapes:define-input delete-flow-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteFlowRequest"))

(smithy/sdk/shapes:define-output delete-flow-response common-lisp:nil
                                 ((id :target-type flow-id :required
                                   common-lisp:t :member-name "id"))
                                 (:shape-name "DeleteFlowResponse"))

(smithy/sdk/shapes:define-input delete-flow-version-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "flowVersion" :http-label common-lisp:t)
                                 (skip-resource-in-use-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipResourceInUseCheck" :http-query
                                  "skipResourceInUseCheck"))
                                (:shape-name "DeleteFlowVersionRequest"))

(smithy/sdk/shapes:define-output delete-flow-version-response common-lisp:nil
                                 ((id :target-type id :required common-lisp:t
                                   :member-name "id")
                                  (version :target-type numerical-version
                                   :required common-lisp:t :member-name
                                   "version"))
                                 (:shape-name "DeleteFlowVersionResponse"))

(smithy/sdk/shapes:define-input delete-knowledge-base-documents-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (document-identifiers :target-type
                                  document-identifiers :required common-lisp:t
                                  :member-name "documentIdentifiers"))
                                (:shape-name
                                 "DeleteKnowledgeBaseDocumentsRequest"))

(smithy/sdk/shapes:define-output delete-knowledge-base-documents-response
                                 common-lisp:nil
                                 ((document-details :target-type
                                   knowledge-base-document-details :member-name
                                   "documentDetails"))
                                 (:shape-name
                                  "DeleteKnowledgeBaseDocumentsResponse"))

(smithy/sdk/shapes:define-input delete-knowledge-base-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output delete-knowledge-base-response common-lisp:nil
                                 ((knowledge-base-id :target-type id :required
                                   common-lisp:t :member-name
                                   "knowledgeBaseId")
                                  (status :target-type knowledge-base-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "DeleteKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input delete-prompt-request common-lisp:nil
                                ((prompt-identifier :target-type
                                  prompt-identifier :required common-lisp:t
                                  :member-name "promptIdentifier" :http-label
                                  common-lisp:t)
                                 (prompt-version :target-type numerical-version
                                  :member-name "promptVersion" :http-query
                                  "promptVersion"))
                                (:shape-name "DeletePromptRequest"))

(smithy/sdk/shapes:define-output delete-prompt-response common-lisp:nil
                                 ((id :target-type prompt-id :required
                                   common-lisp:t :member-name "id")
                                  (version :target-type numerical-version
                                   :member-name "version"))
                                 (:shape-name "DeletePromptResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimensions smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input disassociate-agent-collaborator-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (collaborator-id :target-type id :required
                                  common-lisp:t :member-name "collaboratorId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateAgentCollaboratorRequest"))

(smithy/sdk/shapes:define-output disassociate-agent-collaborator-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateAgentCollaboratorResponse"))

(smithy/sdk/shapes:define-input disassociate-agent-knowledge-base-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateAgentKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output disassociate-agent-knowledge-base-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateAgentKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-structure document-content common-lisp:nil
                                    ((data-source-type :target-type
                                      content-data-source-type :required
                                      common-lisp:t :member-name
                                      "dataSourceType")
                                     (custom :target-type custom-content
                                      :member-name "custom")
                                     (s3 :target-type s3content :member-name
                                      "s3"))
                                    (:shape-name "DocumentContent"))

(smithy/sdk/shapes:define-structure document-identifier common-lisp:nil
                                    ((data-source-type :target-type
                                      content-data-source-type :required
                                      common-lisp:t :member-name
                                      "dataSourceType")
                                     (s3 :target-type s3location :member-name
                                      "s3")
                                     (custom :target-type
                                      custom-document-identifier :member-name
                                      "custom"))
                                    (:shape-name "DocumentIdentifier"))

(smithy/sdk/shapes:define-list document-identifiers :member document-identifier)

(smithy/sdk/shapes:define-structure document-metadata common-lisp:nil
                                    ((type :target-type metadata-source-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (inline-attributes :target-type
                                      metadata-attributes :member-name
                                      "inlineAttributes")
                                     (s3location :target-type custom-s3location
                                      :member-name "s3Location"))
                                    (:shape-name "DocumentMetadata"))

(smithy/sdk/shapes:define-enum document-status
    common-lisp:nil
  (:indexed "INDEXED")
  (:partially-indexed "PARTIALLY_INDEXED")
  (:pending "PENDING")
  (:failed "FAILED")
  (:metadata-partially-indexed "METADATA_PARTIALLY_INDEXED")
  (:metadata-update-failed "METADATA_UPDATE_FAILED")
  (:ignored "IGNORED")
  (:not-found "NOT_FOUND")
  (:starting "STARTING")
  (:in-progress "IN_PROGRESS")
  (:deleting "DELETING")
  (:delete-in-progress "DELETE_IN_PROGRESS"))

(smithy/sdk/shapes:define-type draft-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 duplicate-condition-expression-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (expression :target-type flow-condition-expression :required common-lisp:t
   :member-name "expression"))
 (:shape-name "DuplicateConditionExpressionFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 duplicate-connections-flow-validation-details common-lisp:nil
 ((source :target-type flow-node-name :required common-lisp:t :member-name
   "source")
  (target :target-type flow-node-name :required common-lisp:t :member-name
   "target"))
 (:shape-name "DuplicateConnectionsFlowValidationDetails"))

(smithy/sdk/shapes:define-enum embedding-data-type
    common-lisp:nil
  (:float32 "FLOAT32")
  (:binary "BINARY"))

(smithy/sdk/shapes:define-structure embedding-model-configuration
                                    common-lisp:nil
                                    ((bedrock-embedding-model-configuration
                                      :target-type
                                      bedrock-embedding-model-configuration
                                      :member-name
                                      "bedrockEmbeddingModelConfiguration"))
                                    (:shape-name "EmbeddingModelConfiguration"))

(smithy/sdk/shapes:define-list enabled-memory-types :member memory-type)

(smithy/sdk/shapes:define-structure enrichment-strategy-configuration
                                    common-lisp:nil
                                    ((method :target-type
                                      enrichment-strategy-method :required
                                      common-lisp:t :member-name "method"))
                                    (:shape-name
                                     "EnrichmentStrategyConfiguration"))

(smithy/sdk/shapes:define-enum enrichment-strategy-method
    common-lisp:nil
  (:chunk-entity-extraction "CHUNK_ENTITY_EXTRACTION"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list failure-reasons :member failure-reason)

(smithy/sdk/shapes:define-structure field-for-reranking common-lisp:nil
                                    ((field-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fieldName"))
                                    (:shape-name "FieldForReranking"))

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fields-for-reranking :member field-for-reranking)

(smithy/sdk/shapes:define-list filter-list :member filter-pattern)

(smithy/sdk/shapes:define-type filter-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filtered-object-type
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type flow-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-alias-concurrency-configuration
                                    common-lisp:nil
                                    ((type :target-type concurrency-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (max-concurrency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxConcurrency"))
                                    (:shape-name
                                     "FlowAliasConcurrencyConfiguration"))

(smithy/sdk/shapes:define-type flow-alias-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-alias-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list flow-alias-routing-configuration :member
                               flow-alias-routing-configuration-list-item)

(smithy/sdk/shapes:define-structure flow-alias-routing-configuration-list-item
                                    common-lisp:nil
                                    ((flow-version :target-type version
                                      :member-name "flowVersion"))
                                    (:shape-name
                                     "FlowAliasRoutingConfigurationListItem"))

(smithy/sdk/shapes:define-list flow-alias-summaries :member flow-alias-summary)

(smithy/sdk/shapes:define-structure flow-alias-summary common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (routing-configuration :target-type
                                      flow-alias-routing-configuration
                                      :required common-lisp:t :member-name
                                      "routingConfiguration")
                                     (concurrency-configuration :target-type
                                      flow-alias-concurrency-configuration
                                      :member-name "concurrencyConfiguration")
                                     (flow-id :target-type flow-id :required
                                      common-lisp:t :member-name "flowId")
                                     (id :target-type flow-alias-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type flow-alias-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "FlowAliasSummary"))

(smithy/sdk/shapes:define-type flow-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-condition common-lisp:nil
                                    ((name :target-type flow-condition-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (expression :target-type
                                      flow-condition-expression :member-name
                                      "expression"))
                                    (:shape-name "FlowCondition"))

(smithy/sdk/shapes:define-type flow-condition-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-condition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-conditional-connection-configuration
                                    common-lisp:nil
                                    ((condition :target-type
                                      flow-condition-name :required
                                      common-lisp:t :member-name "condition"))
                                    (:shape-name
                                     "FlowConditionalConnectionConfiguration"))

(smithy/sdk/shapes:define-list flow-conditions :member flow-condition)

(smithy/sdk/shapes:define-structure flow-connection common-lisp:nil
                                    ((type :target-type flow-connection-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type flow-connection-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (source :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "source")
                                     (target :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "target")
                                     (configuration :target-type
                                      flow-connection-configuration
                                      :member-name "configuration"))
                                    (:shape-name "FlowConnection"))

(smithy/sdk/shapes:define-union flow-connection-configuration common-lisp:nil
                                ((data :target-type
                                  flow-data-connection-configuration
                                  :member-name "data")
                                 (conditional :target-type
                                  flow-conditional-connection-configuration
                                  :member-name "conditional"))
                                (:shape-name "FlowConnectionConfiguration"))

(smithy/sdk/shapes:define-type flow-connection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum flow-connection-type
    common-lisp:nil
  (:data "Data")
  (:conditional "Conditional"))

(smithy/sdk/shapes:define-list flow-connections :member flow-connection)

(smithy/sdk/shapes:define-structure flow-data-connection-configuration
                                    common-lisp:nil
                                    ((source-output :target-type
                                      flow-node-output-name :required
                                      common-lisp:t :member-name
                                      "sourceOutput")
                                     (target-input :target-type
                                      flow-node-input-name :required
                                      common-lisp:t :member-name
                                      "targetInput"))
                                    (:shape-name
                                     "FlowDataConnectionConfiguration"))

(smithy/sdk/shapes:define-structure flow-definition common-lisp:nil
                                    ((nodes :target-type flow-nodes
                                      :member-name "nodes")
                                     (connections :target-type flow-connections
                                      :member-name "connections"))
                                    (:shape-name "FlowDefinition"))

(smithy/sdk/shapes:define-type flow-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-node common-lisp:nil
                                    ((name :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type flow-node-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (configuration :target-type
                                      flow-node-configuration :member-name
                                      "configuration")
                                     (inputs :target-type flow-node-inputs
                                      :member-name "inputs")
                                     (outputs :target-type flow-node-outputs
                                      :member-name "outputs"))
                                    (:shape-name "FlowNode"))

(smithy/sdk/shapes:define-union flow-node-configuration common-lisp:nil
                                ((input :target-type
                                  input-flow-node-configuration :member-name
                                  "input")
                                 (output :target-type
                                  output-flow-node-configuration :member-name
                                  "output")
                                 (knowledge-base :target-type
                                  knowledge-base-flow-node-configuration
                                  :member-name "knowledgeBase")
                                 (condition :target-type
                                  condition-flow-node-configuration
                                  :member-name "condition")
                                 (lex :target-type lex-flow-node-configuration
                                  :member-name "lex")
                                 (prompt :target-type
                                  prompt-flow-node-configuration :member-name
                                  "prompt")
                                 (lambda-function :target-type
                                  lambda-function-flow-node-configuration
                                  :member-name "lambdaFunction")
                                 (storage :target-type
                                  storage-flow-node-configuration :member-name
                                  "storage")
                                 (agent :target-type
                                  agent-flow-node-configuration :member-name
                                  "agent")
                                 (retrieval :target-type
                                  retrieval-flow-node-configuration
                                  :member-name "retrieval")
                                 (iterator :target-type
                                  iterator-flow-node-configuration :member-name
                                  "iterator")
                                 (collector :target-type
                                  collector-flow-node-configuration
                                  :member-name "collector")
                                 (inline-code :target-type
                                  inline-code-flow-node-configuration
                                  :member-name "inlineCode")
                                 (loop :target-type
                                  loop-flow-node-configuration :member-name
                                  "loop")
                                 (loop-input :target-type
                                  loop-input-flow-node-configuration
                                  :member-name "loopInput")
                                 (loop-controller :target-type
                                  loop-controller-flow-node-configuration
                                  :member-name "loopController"))
                                (:shape-name "FlowNodeConfiguration"))

(smithy/sdk/shapes:define-enum flow-node-iodata-type
    common-lisp:nil
  (:string "String")
  (:number "Number")
  (:boolean "Boolean")
  (:object "Object")
  (:array "Array"))

(smithy/sdk/shapes:define-structure flow-node-input common-lisp:nil
                                    ((name :target-type flow-node-input-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type flow-node-iodata-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (expression :target-type
                                      flow-node-input-expression :required
                                      common-lisp:t :member-name "expression")
                                     (category :target-type
                                      flow-node-input-category :member-name
                                      "category"))
                                    (:shape-name "FlowNodeInput"))

(smithy/sdk/shapes:define-enum flow-node-input-category
    common-lisp:nil
  (:loop-condition "LoopCondition")
  (:return-value-to-loop-start "ReturnValueToLoopStart")
  (:exit-loop "ExitLoop"))

(smithy/sdk/shapes:define-type flow-node-input-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-node-input-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list flow-node-inputs :member flow-node-input)

(smithy/sdk/shapes:define-type flow-node-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-node-output common-lisp:nil
                                    ((name :target-type flow-node-output-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type flow-node-iodata-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "FlowNodeOutput"))

(smithy/sdk/shapes:define-type flow-node-output-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list flow-node-outputs :member flow-node-output)

(smithy/sdk/shapes:define-enum flow-node-type
    common-lisp:nil
  (:input "Input")
  (:output "Output")
  (:knowledge-base "KnowledgeBase")
  (:condition "Condition")
  (:lex "Lex")
  (:prompt "Prompt")
  (:lambda-function "LambdaFunction")
  (:storage "Storage")
  (:agent "Agent")
  (:retrieval "Retrieval")
  (:iterator "Iterator")
  (:collector "Collector")
  (:inline-code "InlineCode")
  (:loop "Loop")
  (:loop-input "LoopInput")
  (:loop-controller "LoopController"))

(smithy/sdk/shapes:define-list flow-nodes :member flow-node)

common-lisp:nil

(smithy/sdk/shapes:define-enum flow-status
    common-lisp:nil
  (:failed "Failed")
  (:prepared "Prepared")
  (:preparing "Preparing")
  (:not-prepared "NotPrepared"))

(smithy/sdk/shapes:define-list flow-summaries :member flow-summary)

(smithy/sdk/shapes:define-structure flow-summary common-lisp:nil
                                    ((name :target-type flow-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type flow-description
                                      :member-name "description")
                                     (id :target-type flow-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type flow-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type flow-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (version :target-type draft-version
                                      :required common-lisp:t :member-name
                                      "version"))
                                    (:shape-name "FlowSummary"))

(smithy/sdk/shapes:define-structure flow-validation common-lisp:nil
                                    ((message :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "message")
                                     (severity :target-type
                                      flow-validation-severity :required
                                      common-lisp:t :member-name "severity")
                                     (details :target-type
                                      flow-validation-details :member-name
                                      "details")
                                     (type :target-type flow-validation-type
                                      :member-name "type"))
                                    (:shape-name "FlowValidation"))

(smithy/sdk/shapes:define-union flow-validation-details common-lisp:nil
                                ((cyclic-connection :target-type
                                  cyclic-connection-flow-validation-details
                                  :member-name "cyclicConnection")
                                 (duplicate-connections :target-type
                                  duplicate-connections-flow-validation-details
                                  :member-name "duplicateConnections")
                                 (duplicate-condition-expression :target-type
                                  duplicate-condition-expression-flow-validation-details
                                  :member-name "duplicateConditionExpression")
                                 (unreachable-node :target-type
                                  unreachable-node-flow-validation-details
                                  :member-name "unreachableNode")
                                 (unknown-connection-source :target-type
                                  unknown-connection-source-flow-validation-details
                                  :member-name "unknownConnectionSource")
                                 (unknown-connection-source-output :target-type
                                  unknown-connection-source-output-flow-validation-details
                                  :member-name "unknownConnectionSourceOutput")
                                 (unknown-connection-target :target-type
                                  unknown-connection-target-flow-validation-details
                                  :member-name "unknownConnectionTarget")
                                 (unknown-connection-target-input :target-type
                                  unknown-connection-target-input-flow-validation-details
                                  :member-name "unknownConnectionTargetInput")
                                 (unknown-connection-condition :target-type
                                  unknown-connection-condition-flow-validation-details
                                  :member-name "unknownConnectionCondition")
                                 (malformed-condition-expression :target-type
                                  malformed-condition-expression-flow-validation-details
                                  :member-name "malformedConditionExpression")
                                 (malformed-node-input-expression :target-type
                                  malformed-node-input-expression-flow-validation-details
                                  :member-name "malformedNodeInputExpression")
                                 (mismatched-node-input-type :target-type
                                  mismatched-node-input-type-flow-validation-details
                                  :member-name "mismatchedNodeInputType")
                                 (mismatched-node-output-type :target-type
                                  mismatched-node-output-type-flow-validation-details
                                  :member-name "mismatchedNodeOutputType")
                                 (incompatible-connection-data-type
                                  :target-type
                                  incompatible-connection-data-type-flow-validation-details
                                  :member-name
                                  "incompatibleConnectionDataType")
                                 (missing-connection-configuration :target-type
                                  missing-connection-configuration-flow-validation-details
                                  :member-name
                                  "missingConnectionConfiguration")
                                 (missing-default-condition :target-type
                                  missing-default-condition-flow-validation-details
                                  :member-name "missingDefaultCondition")
                                 (missing-ending-nodes :target-type
                                  missing-ending-nodes-flow-validation-details
                                  :member-name "missingEndingNodes")
                                 (missing-node-configuration :target-type
                                  missing-node-configuration-flow-validation-details
                                  :member-name "missingNodeConfiguration")
                                 (missing-node-input :target-type
                                  missing-node-input-flow-validation-details
                                  :member-name "missingNodeInput")
                                 (missing-node-output :target-type
                                  missing-node-output-flow-validation-details
                                  :member-name "missingNodeOutput")
                                 (missing-starting-nodes :target-type
                                  missing-starting-nodes-flow-validation-details
                                  :member-name "missingStartingNodes")
                                 (multiple-node-input-connections :target-type
                                  multiple-node-input-connections-flow-validation-details
                                  :member-name "multipleNodeInputConnections")
                                 (unfulfilled-node-input :target-type
                                  unfulfilled-node-input-flow-validation-details
                                  :member-name "unfulfilledNodeInput")
                                 (unsatisfied-connection-conditions
                                  :target-type
                                  unsatisfied-connection-conditions-flow-validation-details
                                  :member-name
                                  "unsatisfiedConnectionConditions")
                                 (unspecified :target-type
                                  unspecified-flow-validation-details
                                  :member-name "unspecified")
                                 (unknown-node-input :target-type
                                  unknown-node-input-flow-validation-details
                                  :member-name "unknownNodeInput")
                                 (unknown-node-output :target-type
                                  unknown-node-output-flow-validation-details
                                  :member-name "unknownNodeOutput")
                                 (missing-loop-input-node :target-type
                                  missing-loop-input-node-flow-validation-details
                                  :member-name "missingLoopInputNode")
                                 (missing-loop-controller-node :target-type
                                  missing-loop-controller-node-flow-validation-details
                                  :member-name "missingLoopControllerNode")
                                 (multiple-loop-input-nodes :target-type
                                  multiple-loop-input-nodes-flow-validation-details
                                  :member-name "multipleLoopInputNodes")
                                 (multiple-loop-controller-nodes :target-type
                                  multiple-loop-controller-nodes-flow-validation-details
                                  :member-name "multipleLoopControllerNodes")
                                 (loop-incompatible-node-type :target-type
                                  loop-incompatible-node-type-flow-validation-details
                                  :member-name "loopIncompatibleNodeType")
                                 (invalid-loop-boundary :target-type
                                  invalid-loop-boundary-flow-validation-details
                                  :member-name "invalidLoopBoundary"))
                                (:shape-name "FlowValidationDetails"))

(smithy/sdk/shapes:define-enum flow-validation-severity
    common-lisp:nil
  (:warning "Warning")
  (:error "Error"))

(smithy/sdk/shapes:define-enum flow-validation-type
    common-lisp:nil
  (:cyclic-connection "CyclicConnection")
  (:duplicate-connections "DuplicateConnections")
  (:duplicate-condition-expression "DuplicateConditionExpression")
  (:unreachable-node "UnreachableNode")
  (:unknown-connection-source "UnknownConnectionSource")
  (:unknown-connection-source-output "UnknownConnectionSourceOutput")
  (:unknown-connection-target "UnknownConnectionTarget")
  (:unknown-connection-target-input "UnknownConnectionTargetInput")
  (:unknown-connection-condition "UnknownConnectionCondition")
  (:malformed-condition-expression "MalformedConditionExpression")
  (:malformed-node-input-expression "MalformedNodeInputExpression")
  (:mismatched-node-input-type "MismatchedNodeInputType")
  (:mismatched-node-output-type "MismatchedNodeOutputType")
  (:incompatible-connection-data-type "IncompatibleConnectionDataType")
  (:missing-connection-configuration "MissingConnectionConfiguration")
  (:missing-default-condition "MissingDefaultCondition")
  (:missing-ending-nodes "MissingEndingNodes")
  (:missing-node-configuration "MissingNodeConfiguration")
  (:missing-node-input "MissingNodeInput")
  (:missing-node-output "MissingNodeOutput")
  (:missing-starting-nodes "MissingStartingNodes")
  (:multiple-node-input-connections "MultipleNodeInputConnections")
  (:unfulfilled-node-input "UnfulfilledNodeInput")
  (:unsatisfied-connection-conditions "UnsatisfiedConnectionConditions")
  (:unspecified "Unspecified")
  (:unknown-node-input "UnknownNodeInput")
  (:unknown-node-output "UnknownNodeOutput")
  (:missing-loop-input-node "MissingLoopInputNode")
  (:missing-loop-controller-node "MissingLoopControllerNode")
  (:multiple-loop-input-nodes "MultipleLoopInputNodes")
  (:multiple-loop-controller-nodes "MultipleLoopControllerNodes")
  (:loop-incompatible-node-type "LoopIncompatibleNodeType")
  (:invalid-loop-boundary "InvalidLoopBoundary"))

(smithy/sdk/shapes:define-list flow-validations :member flow-validation)

common-lisp:nil

(smithy/sdk/shapes:define-list flow-version-summaries :member
                               flow-version-summary)

(smithy/sdk/shapes:define-structure flow-version-summary common-lisp:nil
                                    ((id :target-type flow-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type flow-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type flow-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (version :target-type numerical-version
                                      :required common-lisp:t :member-name
                                      "version"))
                                    (:shape-name "FlowVersionSummary"))

(smithy/sdk/shapes:define-structure function common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      function-description :member-name
                                      "description")
                                     (parameters :target-type parameter-map
                                      :member-name "parameters")
                                     (require-confirmation :target-type
                                      require-confirmation :member-name
                                      "requireConfirmation"))
                                    (:shape-name "Function"))

(smithy/sdk/shapes:define-type function-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union function-schema common-lisp:nil
                                ((functions :target-type functions :member-name
                                  "functions"))
                                (:shape-name "FunctionSchema"))

(smithy/sdk/shapes:define-list functions :member function)

(smithy/sdk/shapes:define-input get-agent-action-group-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (action-group-id :target-type id :required
                                  common-lisp:t :member-name "actionGroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAgentActionGroupRequest"))

(smithy/sdk/shapes:define-output get-agent-action-group-response
                                 common-lisp:nil
                                 ((agent-action-group :target-type
                                   agent-action-group :required common-lisp:t
                                   :member-name "agentActionGroup"))
                                 (:shape-name "GetAgentActionGroupResponse"))

(smithy/sdk/shapes:define-input get-agent-alias-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t))
                                (:shape-name "GetAgentAliasRequest"))

(smithy/sdk/shapes:define-output get-agent-alias-response common-lisp:nil
                                 ((agent-alias :target-type agent-alias
                                   :required common-lisp:t :member-name
                                   "agentAlias"))
                                 (:shape-name "GetAgentAliasResponse"))

(smithy/sdk/shapes:define-input get-agent-collaborator-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (collaborator-id :target-type id :required
                                  common-lisp:t :member-name "collaboratorId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAgentCollaboratorRequest"))

(smithy/sdk/shapes:define-output get-agent-collaborator-response
                                 common-lisp:nil
                                 ((agent-collaborator :target-type
                                   agent-collaborator :required common-lisp:t
                                   :member-name "agentCollaborator"))
                                 (:shape-name "GetAgentCollaboratorResponse"))

(smithy/sdk/shapes:define-input get-agent-knowledge-base-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAgentKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output get-agent-knowledge-base-response
                                 common-lisp:nil
                                 ((agent-knowledge-base :target-type
                                   agent-knowledge-base :required common-lisp:t
                                   :member-name "agentKnowledgeBase"))
                                 (:shape-name "GetAgentKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input get-agent-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAgentRequest"))

(smithy/sdk/shapes:define-output get-agent-response common-lisp:nil
                                 ((agent :target-type agent :required
                                   common-lisp:t :member-name "agent"))
                                 (:shape-name "GetAgentResponse"))

(smithy/sdk/shapes:define-input get-agent-version-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t))
                                (:shape-name "GetAgentVersionRequest"))

(smithy/sdk/shapes:define-output get-agent-version-response common-lisp:nil
                                 ((agent-version :target-type agent-version
                                   :required common-lisp:t :member-name
                                   "agentVersion"))
                                 (:shape-name "GetAgentVersionResponse"))

(smithy/sdk/shapes:define-input get-data-source-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataSourceRequest"))

(smithy/sdk/shapes:define-output get-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :required common-lisp:t :member-name
                                   "dataSource"))
                                 (:shape-name "GetDataSourceResponse"))

(smithy/sdk/shapes:define-input get-flow-alias-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "aliasIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFlowAliasRequest"))

(smithy/sdk/shapes:define-output get-flow-alias-response common-lisp:nil
                                 ((name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (routing-configuration :target-type
                                   flow-alias-routing-configuration :required
                                   common-lisp:t :member-name
                                   "routingConfiguration")
                                  (concurrency-configuration :target-type
                                   flow-alias-concurrency-configuration
                                   :member-name "concurrencyConfiguration")
                                  (flow-id :target-type flow-id :required
                                   common-lisp:t :member-name "flowId")
                                  (id :target-type flow-alias-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-alias-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "GetFlowAliasResponse"))

(smithy/sdk/shapes:define-input get-flow-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t))
                                (:shape-name "GetFlowRequest"))

(smithy/sdk/shapes:define-output get-flow-response common-lisp:nil
                                 ((name :target-type flow-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (version :target-type draft-version :required
                                   common-lisp:t :member-name "version")
                                  (definition :target-type flow-definition
                                   :member-name "definition")
                                  (validations :target-type flow-validations
                                   :member-name "validations"))
                                 (:shape-name "GetFlowResponse"))

(smithy/sdk/shapes:define-input get-flow-version-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-version :target-type numerical-version
                                  :required common-lisp:t :member-name
                                  "flowVersion" :http-label common-lisp:t))
                                (:shape-name "GetFlowVersionRequest"))

(smithy/sdk/shapes:define-output get-flow-version-response common-lisp:nil
                                 ((name :target-type flow-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (version :target-type numerical-version
                                   :required common-lisp:t :member-name
                                   "version")
                                  (definition :target-type flow-definition
                                   :member-name "definition"))
                                 (:shape-name "GetFlowVersionResponse"))

(smithy/sdk/shapes:define-input get-ingestion-job-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (ingestion-job-id :target-type id :required
                                  common-lisp:t :member-name "ingestionJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIngestionJobRequest"))

(smithy/sdk/shapes:define-output get-ingestion-job-response common-lisp:nil
                                 ((ingestion-job :target-type ingestion-job
                                   :required common-lisp:t :member-name
                                   "ingestionJob"))
                                 (:shape-name "GetIngestionJobResponse"))

(smithy/sdk/shapes:define-input get-knowledge-base-documents-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (document-identifiers :target-type
                                  document-identifiers :required common-lisp:t
                                  :member-name "documentIdentifiers"))
                                (:shape-name
                                 "GetKnowledgeBaseDocumentsRequest"))

(smithy/sdk/shapes:define-output get-knowledge-base-documents-response
                                 common-lisp:nil
                                 ((document-details :target-type
                                   knowledge-base-document-details :member-name
                                   "documentDetails"))
                                 (:shape-name
                                  "GetKnowledgeBaseDocumentsResponse"))

(smithy/sdk/shapes:define-input get-knowledge-base-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output get-knowledge-base-response common-lisp:nil
                                 ((knowledge-base :target-type knowledge-base
                                   :required common-lisp:t :member-name
                                   "knowledgeBase"))
                                 (:shape-name "GetKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input get-prompt-request common-lisp:nil
                                ((prompt-identifier :target-type
                                  prompt-identifier :required common-lisp:t
                                  :member-name "promptIdentifier" :http-label
                                  common-lisp:t)
                                 (prompt-version :target-type version
                                  :member-name "promptVersion" :http-query
                                  "promptVersion"))
                                (:shape-name "GetPromptRequest"))

(smithy/sdk/shapes:define-output get-prompt-response common-lisp:nil
                                 ((name :target-type prompt-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type prompt-description
                                   :member-name "description")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (default-variant :target-type
                                   prompt-variant-name :member-name
                                   "defaultVariant")
                                  (variants :target-type prompt-variant-list
                                   :member-name "variants")
                                  (id :target-type prompt-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type prompt-arn :required
                                   common-lisp:t :member-name "arn")
                                  (version :target-type version :required
                                   common-lisp:t :member-name "version")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "GetPromptResponse"))

(smithy/sdk/shapes:define-type graph-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-configuration common-lisp:nil
                                    ((guardrail-identifier :target-type
                                      guardrail-identifier :member-name
                                      "guardrailIdentifier")
                                     (guardrail-version :target-type
                                      guardrail-version :member-name
                                      "guardrailVersion"))
                                    (:shape-name "GuardrailConfiguration"))

(smithy/sdk/shapes:define-type guardrail-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type guardrail-version smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type https-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum include-exclude
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-structure
 incompatible-connection-data-type-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "IncompatibleConnectionDataTypeFlowValidationDetails"))

(smithy/sdk/shapes:define-enum incompatible-loop-node-type
    common-lisp:nil
  (:input "Input")
  (:condition "Condition")
  (:iterator "Iterator")
  (:collector "Collector"))

(smithy/sdk/shapes:define-type index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inference-configuration common-lisp:nil
                                    ((temperature :target-type temperature
                                      :member-name "temperature")
                                     (top-p :target-type top-p :member-name
                                      "topP")
                                     (top-k :target-type top-k :member-name
                                      "topK")
                                     (maximum-length :target-type
                                      maximum-length :member-name
                                      "maximumLength")
                                     (stop-sequences :target-type
                                      stop-sequences :member-name
                                      "stopSequences"))
                                    (:shape-name "InferenceConfiguration"))

(smithy/sdk/shapes:define-input ingest-knowledge-base-documents-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (documents :target-type
                                  knowledge-base-documents :required
                                  common-lisp:t :member-name "documents"))
                                (:shape-name
                                 "IngestKnowledgeBaseDocumentsRequest"))

(smithy/sdk/shapes:define-output ingest-knowledge-base-documents-response
                                 common-lisp:nil
                                 ((document-details :target-type
                                   knowledge-base-document-details :member-name
                                   "documentDetails"))
                                 (:shape-name
                                  "IngestKnowledgeBaseDocumentsResponse"))

(smithy/sdk/shapes:define-structure ingestion-job common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (data-source-id :target-type id :required
                                      common-lisp:t :member-name
                                      "dataSourceId")
                                     (ingestion-job-id :target-type id
                                      :required common-lisp:t :member-name
                                      "ingestionJobId")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type ingestion-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (statistics :target-type
                                      ingestion-job-statistics :member-name
                                      "statistics")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons")
                                     (started-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "IngestionJob"))

(smithy/sdk/shapes:define-structure ingestion-job-filter common-lisp:nil
                                    ((attribute :target-type
                                      ingestion-job-filter-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (operator :target-type
                                      ingestion-job-filter-operator :required
                                      common-lisp:t :member-name "operator")
                                     (values :target-type
                                      ingestion-job-filter-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "IngestionJobFilter"))

(smithy/sdk/shapes:define-enum ingestion-job-filter-attribute
    common-lisp:nil
  (:status "STATUS"))

(smithy/sdk/shapes:define-enum ingestion-job-filter-operator
    common-lisp:nil
  (:eq "EQ"))

(smithy/sdk/shapes:define-type ingestion-job-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ingestion-job-filter-values :member
                               ingestion-job-filter-value)

(smithy/sdk/shapes:define-list ingestion-job-filters :member
                               ingestion-job-filter)

common-lisp:nil

(smithy/sdk/shapes:define-structure ingestion-job-sort-by common-lisp:nil
                                    ((attribute :target-type
                                      ingestion-job-sort-by-attribute :required
                                      common-lisp:t :member-name "attribute")
                                     (order :target-type sort-order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name "IngestionJobSortBy"))

(smithy/sdk/shapes:define-enum ingestion-job-sort-by-attribute
    common-lisp:nil
  (:status "STATUS")
  (:started-at "STARTED_AT"))

(smithy/sdk/shapes:define-structure ingestion-job-statistics common-lisp:nil
                                    ((number-of-documents-scanned :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name "numberOfDocumentsScanned")
                                     (number-of-metadata-documents-scanned
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name
                                      "numberOfMetadataDocumentsScanned")
                                     (number-of-new-documents-indexed
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name
                                      "numberOfNewDocumentsIndexed")
                                     (number-of-modified-documents-indexed
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name
                                      "numberOfModifiedDocumentsIndexed")
                                     (number-of-metadata-documents-modified
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name
                                      "numberOfMetadataDocumentsModified")
                                     (number-of-documents-deleted :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name "numberOfDocumentsDeleted")
                                     (number-of-documents-failed :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :member-name "numberOfDocumentsFailed"))
                                    (:shape-name "IngestionJobStatistics"))

(smithy/sdk/shapes:define-enum ingestion-job-status
    common-lisp:nil
  (:starting "STARTING")
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list ingestion-job-summaries :member
                               ingestion-job-summary)

(smithy/sdk/shapes:define-structure ingestion-job-summary common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (data-source-id :target-type id :required
                                      common-lisp:t :member-name
                                      "dataSourceId")
                                     (ingestion-job-id :target-type id
                                      :required common-lisp:t :member-name
                                      "ingestionJobId")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type ingestion-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (started-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (statistics :target-type
                                      ingestion-job-statistics :member-name
                                      "statistics"))
                                    (:shape-name "IngestionJobSummary"))

(smithy/sdk/shapes:define-type inline-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inline-code-flow-node-configuration
                                    common-lisp:nil
                                    ((code :target-type inline-code :required
                                      common-lisp:t :member-name "code")
                                     (language :target-type supported-languages
                                      :required common-lisp:t :member-name
                                      "language"))
                                    (:shape-name
                                     "InlineCodeFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure inline-content common-lisp:nil
                                    ((type :target-type inline-content-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (byte-content :target-type
                                      byte-content-doc :member-name
                                      "byteContent")
                                     (text-content :target-type
                                      text-content-doc :member-name
                                      "textContent"))
                                    (:shape-name "InlineContent"))

(smithy/sdk/shapes:define-enum inline-content-type
    common-lisp:nil
  (:byte "BYTE")
  (:text "TEXT"))

(smithy/sdk/shapes:define-structure input-flow-node-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "InputFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type instruction smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure intermediate-storage common-lisp:nil
                                    ((s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "s3Location"))
                                    (:shape-name "IntermediateStorage"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure
 invalid-loop-boundary-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection")
  (source :target-type flow-node-name :required common-lisp:t :member-name
   "source")
  (target :target-type flow-node-name :required common-lisp:t :member-name
   "target"))
 (:shape-name "InvalidLoopBoundaryFlowValidationDetails"))

(smithy/sdk/shapes:define-structure iterator-flow-node-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "IteratorFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type kendra-index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kendra-knowledge-base-configuration
                                    common-lisp:nil
                                    ((kendra-index-arn :target-type
                                      kendra-index-arn :required common-lisp:t
                                      :member-name "kendraIndexArn"))
                                    (:shape-name
                                     "KendraKnowledgeBaseConfiguration"))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (knowledge-base-arn :target-type
                                      knowledge-base-arn :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (role-arn :target-type
                                      knowledge-base-role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (knowledge-base-configuration :target-type
                                      knowledge-base-configuration :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseConfiguration")
                                     (storage-configuration :target-type
                                      storage-configuration :member-name
                                      "storageConfiguration")
                                     (status :target-type knowledge-base-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons"))
                                    (:shape-name "KnowledgeBase"))

(smithy/sdk/shapes:define-type knowledge-base-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-configuration
                                    common-lisp:nil
                                    ((type :target-type knowledge-base-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (vector-knowledge-base-configuration
                                      :target-type
                                      vector-knowledge-base-configuration
                                      :member-name
                                      "vectorKnowledgeBaseConfiguration")
                                     (kendra-knowledge-base-configuration
                                      :target-type
                                      kendra-knowledge-base-configuration
                                      :member-name
                                      "kendraKnowledgeBaseConfiguration")
                                     (sql-knowledge-base-configuration
                                      :target-type
                                      sql-knowledge-base-configuration
                                      :member-name
                                      "sqlKnowledgeBaseConfiguration"))
                                    (:shape-name "KnowledgeBaseConfiguration"))

(smithy/sdk/shapes:define-structure knowledge-base-document common-lisp:nil
                                    ((metadata :target-type document-metadata
                                      :member-name "metadata")
                                     (content :target-type document-content
                                      :required common-lisp:t :member-name
                                      "content"))
                                    (:shape-name "KnowledgeBaseDocument"))

(smithy/sdk/shapes:define-structure knowledge-base-document-detail
                                    common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (data-source-id :target-type id :required
                                      common-lisp:t :member-name
                                      "dataSourceId")
                                     (status :target-type document-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (identifier :target-type
                                      document-identifier :required
                                      common-lisp:t :member-name "identifier")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (updated-at :target-type date-timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "KnowledgeBaseDocumentDetail"))

(smithy/sdk/shapes:define-list knowledge-base-document-details :member
                               knowledge-base-document-detail)

common-lisp:nil

(smithy/sdk/shapes:define-list knowledge-base-documents :member
                               knowledge-base-document)

(smithy/sdk/shapes:define-structure knowledge-base-flow-node-configuration
                                    common-lisp:nil
                                    ((knowledge-base-id :target-type
                                      knowledge-base-id :required common-lisp:t
                                      :member-name "knowledgeBaseId")
                                     (model-id :target-type
                                      knowledge-base-model-identifier
                                      :member-name "modelId")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (number-of-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfResults")
                                     (prompt-template :target-type
                                      knowledge-base-prompt-template
                                      :member-name "promptTemplate")
                                     (inference-configuration :target-type
                                      prompt-inference-configuration
                                      :member-name "inferenceConfiguration")
                                     (reranking-configuration :target-type
                                      vector-search-reranking-configuration
                                      :member-name "rerankingConfiguration")
                                     (orchestration-configuration :target-type
                                      knowledge-base-orchestration-configuration
                                      :member-name
                                      "orchestrationConfiguration"))
                                    (:shape-name
                                     "KnowledgeBaseFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type knowledge-base-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type knowledge-base-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-orchestration-configuration
                                    common-lisp:nil
                                    ((prompt-template :target-type
                                      knowledge-base-prompt-template
                                      :member-name "promptTemplate")
                                     (inference-config :target-type
                                      prompt-inference-configuration
                                      :member-name "inferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name
                                     "KnowledgeBaseOrchestrationConfiguration"))

(smithy/sdk/shapes:define-structure knowledge-base-prompt-template
                                    common-lisp:nil
                                    ((text-prompt-template :target-type
                                      knowledge-base-text-prompt :member-name
                                      "textPromptTemplate"))
                                    (:shape-name "KnowledgeBasePromptTemplate"))

common-lisp:nil

(smithy/sdk/shapes:define-type knowledge-base-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum knowledge-base-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum knowledge-base-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:failed "FAILED")
  (:delete-unsuccessful "DELETE_UNSUCCESSFUL"))

(smithy/sdk/shapes:define-enum knowledge-base-storage-type
    common-lisp:nil
  (:opensearch-serverless "OPENSEARCH_SERVERLESS")
  (:pinecone "PINECONE")
  (:redis-enterprise-cloud "REDIS_ENTERPRISE_CLOUD")
  (:rds "RDS")
  (:mongo-db-atlas "MONGO_DB_ATLAS")
  (:neptune-analytics "NEPTUNE_ANALYTICS")
  (:opensearch-managed-cluster "OPENSEARCH_MANAGED_CLUSTER")
  (:s3-vectors "S3_VECTORS"))

(smithy/sdk/shapes:define-list knowledge-base-summaries :member
                               knowledge-base-summary)

(smithy/sdk/shapes:define-structure knowledge-base-summary common-lisp:nil
                                    ((knowledge-base-id :target-type id
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type knowledge-base-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "KnowledgeBaseSummary"))

(smithy/sdk/shapes:define-type knowledge-base-text-prompt
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum knowledge-base-type
    common-lisp:nil
  (:vector "VECTOR")
  (:kendra "KENDRA")
  (:sql "SQL"))

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-flow-node-configuration
                                    common-lisp:nil
                                    ((lambda-arn :target-type lambda-arn
                                      :required common-lisp:t :member-name
                                      "lambdaArn"))
                                    (:shape-name
                                     "LambdaFunctionFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type lex-bot-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lex-bot-locale-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lex-flow-node-configuration common-lisp:nil
                                    ((bot-alias-arn :target-type
                                      lex-bot-alias-arn :required common-lisp:t
                                      :member-name "botAliasArn")
                                     (locale-id :target-type lex-bot-locale-id
                                      :required common-lisp:t :member-name
                                      "localeId"))
                                    (:shape-name "LexFlowNodeConfiguration"))

(smithy/sdk/shapes:define-input list-agent-action-groups-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentActionGroupsRequest"))

(smithy/sdk/shapes:define-output list-agent-action-groups-response
                                 common-lisp:nil
                                 ((action-group-summaries :target-type
                                   action-group-summaries :required
                                   common-lisp:t :member-name
                                   "actionGroupSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentActionGroupsResponse"))

(smithy/sdk/shapes:define-input list-agent-aliases-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentAliasesRequest"))

(smithy/sdk/shapes:define-output list-agent-aliases-response common-lisp:nil
                                 ((agent-alias-summaries :target-type
                                   agent-alias-summaries :required
                                   common-lisp:t :member-name
                                   "agentAliasSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentAliasesResponse"))

(smithy/sdk/shapes:define-input list-agent-collaborators-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentCollaboratorsRequest"))

(smithy/sdk/shapes:define-output list-agent-collaborators-response
                                 common-lisp:nil
                                 ((agent-collaborator-summaries :target-type
                                   agent-collaborator-summaries :required
                                   common-lisp:t :member-name
                                   "agentCollaboratorSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentCollaboratorsResponse"))

(smithy/sdk/shapes:define-input list-agent-knowledge-bases-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type version :required
                                  common-lisp:t :member-name "agentVersion"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentKnowledgeBasesRequest"))

(smithy/sdk/shapes:define-output list-agent-knowledge-bases-response
                                 common-lisp:nil
                                 ((agent-knowledge-base-summaries :target-type
                                   agent-knowledge-base-summaries :required
                                   common-lisp:t :member-name
                                   "agentKnowledgeBaseSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAgentKnowledgeBasesResponse"))

(smithy/sdk/shapes:define-input list-agent-versions-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentVersionsRequest"))

(smithy/sdk/shapes:define-output list-agent-versions-response common-lisp:nil
                                 ((agent-version-summaries :target-type
                                   agent-version-summaries :required
                                   common-lisp:t :member-name
                                   "agentVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentVersionsResponse"))

(smithy/sdk/shapes:define-input list-agents-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAgentsRequest"))

(smithy/sdk/shapes:define-output list-agents-response common-lisp:nil
                                 ((agent-summaries :target-type agent-summaries
                                   :required common-lisp:t :member-name
                                   "agentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentsResponse"))

(smithy/sdk/shapes:define-input list-data-sources-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-data-sources-response common-lisp:nil
                                 ((data-source-summaries :target-type
                                   data-source-summaries :required
                                   common-lisp:t :member-name
                                   "dataSourceSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-flow-aliases-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFlowAliasesRequest"))

(smithy/sdk/shapes:define-output list-flow-aliases-response common-lisp:nil
                                 ((flow-alias-summaries :target-type
                                   flow-alias-summaries :required common-lisp:t
                                   :member-name "flowAliasSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFlowAliasesResponse"))

(smithy/sdk/shapes:define-input list-flow-versions-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFlowVersionsRequest"))

(smithy/sdk/shapes:define-output list-flow-versions-response common-lisp:nil
                                 ((flow-version-summaries :target-type
                                   flow-version-summaries :required
                                   common-lisp:t :member-name
                                   "flowVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFlowVersionsResponse"))

(smithy/sdk/shapes:define-input list-flows-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFlowsRequest"))

(smithy/sdk/shapes:define-output list-flows-response common-lisp:nil
                                 ((flow-summaries :target-type flow-summaries
                                   :required common-lisp:t :member-name
                                   "flowSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFlowsResponse"))

(smithy/sdk/shapes:define-input list-ingestion-jobs-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (filters :target-type ingestion-job-filters
                                  :member-name "filters")
                                 (sort-by :target-type ingestion-job-sort-by
                                  :member-name "sortBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListIngestionJobsRequest"))

(smithy/sdk/shapes:define-output list-ingestion-jobs-response common-lisp:nil
                                 ((ingestion-job-summaries :target-type
                                   ingestion-job-summaries :required
                                   common-lisp:t :member-name
                                   "ingestionJobSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIngestionJobsResponse"))

(smithy/sdk/shapes:define-input list-knowledge-base-documents-request
                                common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListKnowledgeBaseDocumentsRequest"))

(smithy/sdk/shapes:define-output list-knowledge-base-documents-response
                                 common-lisp:nil
                                 ((document-details :target-type
                                   knowledge-base-document-details :required
                                   common-lisp:t :member-name
                                   "documentDetails")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListKnowledgeBaseDocumentsResponse"))

(smithy/sdk/shapes:define-input list-knowledge-bases-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListKnowledgeBasesRequest"))

(smithy/sdk/shapes:define-output list-knowledge-bases-response common-lisp:nil
                                 ((knowledge-base-summaries :target-type
                                   knowledge-base-summaries :required
                                   common-lisp:t :member-name
                                   "knowledgeBaseSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKnowledgeBasesResponse"))

(smithy/sdk/shapes:define-input list-prompts-request common-lisp:nil
                                ((prompt-identifier :target-type
                                  prompt-identifier :member-name
                                  "promptIdentifier" :http-query
                                  "promptIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPromptsRequest"))

(smithy/sdk/shapes:define-output list-prompts-response common-lisp:nil
                                 ((prompt-summaries :target-type
                                   prompt-summaries :required common-lisp:t
                                   :member-name "promptSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPromptsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure loop-controller-flow-node-configuration
                                    common-lisp:nil
                                    ((continue-condition :target-type
                                      flow-condition :required common-lisp:t
                                      :member-name "continueCondition")
                                     (max-iterations :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxIterations"))
                                    (:shape-name
                                     "LoopControllerFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure loop-flow-node-configuration
                                    common-lisp:nil
                                    ((definition :target-type flow-definition
                                      :required common-lisp:t :member-name
                                      "definition"))
                                    (:shape-name "LoopFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure
 loop-incompatible-node-type-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (incompatible-node-type :target-type incompatible-loop-node-type :required
   common-lisp:t :member-name "incompatibleNodeType")
  (incompatible-node-name :target-type flow-node-name :required common-lisp:t
   :member-name "incompatibleNodeName"))
 (:shape-name "LoopIncompatibleNodeTypeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure loop-input-flow-node-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "LoopInputFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure
 malformed-condition-expression-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (condition :target-type flow-condition-name :required common-lisp:t
   :member-name "condition")
  (cause :target-type error-message :required common-lisp:t :member-name
   "cause"))
 (:shape-name "MalformedConditionExpressionFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 malformed-node-input-expression-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (input :target-type flow-node-input-name :required common-lisp:t :member-name
   "input")
  (cause :target-type error-message :required common-lisp:t :member-name
   "cause"))
 (:shape-name "MalformedNodeInputExpressionFlowValidationDetails"))

(smithy/sdk/shapes:define-type max-recent-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure memory-configuration common-lisp:nil
                                    ((enabled-memory-types :target-type
                                      enabled-memory-types :required
                                      common-lisp:t :member-name
                                      "enabledMemoryTypes")
                                     (storage-days :target-type storage-days
                                      :member-name "storageDays")
                                     (session-summary-configuration
                                      :target-type
                                      session-summary-configuration
                                      :member-name
                                      "sessionSummaryConfiguration"))
                                    (:shape-name "MemoryConfiguration"))

(smithy/sdk/shapes:define-enum memory-type
    common-lisp:nil
  (:session-summary "SESSION_SUMMARY"))

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((role :target-type conversation-role
                                      :required common-lisp:t :member-name
                                      "role")
                                     (content :target-type content-blocks
                                      :required common-lisp:t :member-name
                                      "content"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-structure metadata-attribute common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      metadata-attribute-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "MetadataAttribute"))

(smithy/sdk/shapes:define-structure metadata-attribute-value common-lisp:nil
                                    ((type :target-type metadata-value-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (number-value :target-type number-value
                                      :member-name "numberValue")
                                     (boolean-value :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "booleanValue")
                                     (string-value :target-type string-value
                                      :member-name "stringValue")
                                     (string-list-value :target-type
                                      string-list-value :member-name
                                      "stringListValue"))
                                    (:shape-name "MetadataAttributeValue"))

(smithy/sdk/shapes:define-list metadata-attributes :member metadata-attribute)

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

(smithy/sdk/shapes:define-enum metadata-source-type
    common-lisp:nil
  (:in-line-attribute "IN_LINE_ATTRIBUTE")
  (:s3-location "S3_LOCATION"))

(smithy/sdk/shapes:define-enum metadata-value-type
    common-lisp:nil
  (:boolean "BOOLEAN")
  (:number "NUMBER")
  (:string "STRING")
  (:string-list "STRING_LIST"))

(smithy/sdk/shapes:define-type microsoft365tenant-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 mismatched-node-input-type-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (input :target-type flow-node-input-name :required common-lisp:t :member-name
   "input")
  (expected-type :target-type flow-node-iodata-type :required common-lisp:t
   :member-name "expectedType"))
 (:shape-name "MismatchedNodeInputTypeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 mismatched-node-output-type-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (output :target-type flow-node-output-name :required common-lisp:t
   :member-name "output")
  (expected-type :target-type flow-node-iodata-type :required common-lisp:t
   :member-name "expectedType"))
 (:shape-name "MismatchedNodeOutputTypeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-connection-configuration-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "MissingConnectionConfigurationFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-default-condition-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node"))
 (:shape-name "MissingDefaultConditionFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-ending-nodes-flow-validation-details common-lisp:nil common-lisp:nil
 (:shape-name "MissingEndingNodesFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-loop-controller-node-flow-validation-details common-lisp:nil
 ((loop-node :target-type flow-node-name :required common-lisp:t :member-name
   "loopNode"))
 (:shape-name "MissingLoopControllerNodeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-loop-input-node-flow-validation-details common-lisp:nil
 ((loop-node :target-type flow-node-name :required common-lisp:t :member-name
   "loopNode"))
 (:shape-name "MissingLoopInputNodeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-node-configuration-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node"))
 (:shape-name "MissingNodeConfigurationFlowValidationDetails"))

(smithy/sdk/shapes:define-structure missing-node-input-flow-validation-details
                                    common-lisp:nil
                                    ((node :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "node")
                                     (input :target-type flow-node-input-name
                                      :required common-lisp:t :member-name
                                      "input"))
                                    (:shape-name
                                     "MissingNodeInputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure missing-node-output-flow-validation-details
                                    common-lisp:nil
                                    ((node :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "node")
                                     (output :target-type flow-node-output-name
                                      :required common-lisp:t :member-name
                                      "output"))
                                    (:shape-name
                                     "MissingNodeOutputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 missing-starting-nodes-flow-validation-details common-lisp:nil common-lisp:nil
 (:shape-name "MissingStartingNodesFlowValidationDetails"))

(smithy/sdk/shapes:define-type model-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mongo-db-atlas-collection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mongo-db-atlas-configuration
                                    common-lisp:nil
                                    ((endpoint :target-type
                                      mongo-db-atlas-endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (database-name :target-type
                                      mongo-db-atlas-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (collection-name :target-type
                                      mongo-db-atlas-collection-name :required
                                      common-lisp:t :member-name
                                      "collectionName")
                                     (vector-index-name :target-type
                                      mongo-db-atlas-index-name :required
                                      common-lisp:t :member-name
                                      "vectorIndexName")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn")
                                     (field-mapping :target-type
                                      mongo-db-atlas-field-mapping :required
                                      common-lisp:t :member-name
                                      "fieldMapping")
                                     (endpoint-service-name :target-type
                                      mongo-db-atlas-endpoint-service-name
                                      :member-name "endpointServiceName")
                                     (text-index-name :target-type
                                      mongo-db-atlas-index-name :member-name
                                      "textIndexName"))
                                    (:shape-name "MongoDbAtlasConfiguration"))

(smithy/sdk/shapes:define-type mongo-db-atlas-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mongo-db-atlas-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mongo-db-atlas-endpoint-service-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mongo-db-atlas-field-mapping
                                    common-lisp:nil
                                    ((vector-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "vectorField")
                                     (text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name "MongoDbAtlasFieldMapping"))

(smithy/sdk/shapes:define-type mongo-db-atlas-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 multiple-loop-controller-nodes-flow-validation-details common-lisp:nil
 ((loop-node :target-type flow-node-name :required common-lisp:t :member-name
   "loopNode"))
 (:shape-name "MultipleLoopControllerNodesFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 multiple-loop-input-nodes-flow-validation-details common-lisp:nil
 ((loop-node :target-type flow-node-name :required common-lisp:t :member-name
   "loopNode"))
 (:shape-name "MultipleLoopInputNodesFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 multiple-node-input-connections-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (input :target-type flow-node-input-name :required common-lisp:t :member-name
   "input"))
 (:shape-name "MultipleNodeInputConnectionsFlowValidationDetails"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type natural-language-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure neptune-analytics-configuration
                                    common-lisp:nil
                                    ((graph-arn :target-type graph-arn
                                      :required common-lisp:t :member-name
                                      "graphArn")
                                     (field-mapping :target-type
                                      neptune-analytics-field-mapping :required
                                      common-lisp:t :member-name
                                      "fieldMapping"))
                                    (:shape-name
                                     "NeptuneAnalyticsConfiguration"))

(smithy/sdk/shapes:define-structure neptune-analytics-field-mapping
                                    common-lisp:nil
                                    ((text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name
                                     "NeptuneAnalyticsFieldMapping"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type numerical-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-managed-cluster-configuration
                                    common-lisp:nil
                                    ((domain-endpoint :target-type
                                      open-search-managed-cluster-domain-endpoint
                                      :required common-lisp:t :member-name
                                      "domainEndpoint")
                                     (domain-arn :target-type
                                      open-search-managed-cluster-domain-arn
                                      :required common-lisp:t :member-name
                                      "domainArn")
                                     (vector-index-name :target-type
                                      open-search-managed-cluster-index-name
                                      :required common-lisp:t :member-name
                                      "vectorIndexName")
                                     (field-mapping :target-type
                                      open-search-managed-cluster-field-mapping
                                      :required common-lisp:t :member-name
                                      "fieldMapping"))
                                    (:shape-name
                                     "OpenSearchManagedClusterConfiguration"))

(smithy/sdk/shapes:define-type open-search-managed-cluster-domain-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type open-search-managed-cluster-domain-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-managed-cluster-field-mapping
                                    common-lisp:nil
                                    ((vector-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "vectorField")
                                     (text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name
                                     "OpenSearchManagedClusterFieldMapping"))

(smithy/sdk/shapes:define-type open-search-managed-cluster-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type open-search-serverless-collection-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-serverless-configuration
                                    common-lisp:nil
                                    ((collection-arn :target-type
                                      open-search-serverless-collection-arn
                                      :required common-lisp:t :member-name
                                      "collectionArn")
                                     (vector-index-name :target-type
                                      open-search-serverless-index-name
                                      :required common-lisp:t :member-name
                                      "vectorIndexName")
                                     (field-mapping :target-type
                                      open-search-serverless-field-mapping
                                      :required common-lisp:t :member-name
                                      "fieldMapping"))
                                    (:shape-name
                                     "OpenSearchServerlessConfiguration"))

(smithy/sdk/shapes:define-structure open-search-serverless-field-mapping
                                    common-lisp:nil
                                    ((vector-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "vectorField")
                                     (text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name
                                     "OpenSearchServerlessFieldMapping"))

(smithy/sdk/shapes:define-type open-search-serverless-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union orchestration-executor common-lisp:nil
                                ((lambda :target-type lambda-arn :member-name
                                  "lambda"))
                                (:shape-name "OrchestrationExecutor"))

(smithy/sdk/shapes:define-enum orchestration-type
    common-lisp:nil
  (:default "DEFAULT")
  (:custom-orchestration "CUSTOM_ORCHESTRATION"))

(smithy/sdk/shapes:define-structure output-flow-node-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "OutputFlowNodeConfiguration"))

(smithy/sdk/shapes:define-type parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-detail common-lisp:nil
                                    ((description :target-type
                                      parameter-description :member-name
                                      "description")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "type")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "ParameterDetail"))

(smithy/sdk/shapes:define-map parameter-map :key name :value parameter-detail)

(smithy/sdk/shapes:define-structure parsing-configuration common-lisp:nil
                                    ((parsing-strategy :target-type
                                      parsing-strategy :required common-lisp:t
                                      :member-name "parsingStrategy")
                                     (bedrock-foundation-model-configuration
                                      :target-type
                                      bedrock-foundation-model-configuration
                                      :member-name
                                      "bedrockFoundationModelConfiguration")
                                     (bedrock-data-automation-configuration
                                      :target-type
                                      bedrock-data-automation-configuration
                                      :member-name
                                      "bedrockDataAutomationConfiguration"))
                                    (:shape-name "ParsingConfiguration"))

(smithy/sdk/shapes:define-enum parsing-modality
    common-lisp:nil
  (:multimodal "MULTIMODAL"))

(smithy/sdk/shapes:define-structure parsing-prompt common-lisp:nil
                                    ((parsing-prompt-text :target-type
                                      parsing-prompt-text :required
                                      common-lisp:t :member-name
                                      "parsingPromptText"))
                                    (:shape-name "ParsingPrompt"))

(smithy/sdk/shapes:define-type parsing-prompt-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parsing-strategy
    common-lisp:nil
  (:bedrock-foundation-model "BEDROCK_FOUNDATION_MODEL")
  (:bedrock-data-automation "BEDROCK_DATA_AUTOMATION"))

(smithy/sdk/shapes:define-structure pattern-object-filter common-lisp:nil
                                    ((object-type :target-type
                                      filtered-object-type :required
                                      common-lisp:t :member-name "objectType")
                                     (inclusion-filters :target-type
                                      filter-list :member-name
                                      "inclusionFilters")
                                     (exclusion-filters :target-type
                                      filter-list :member-name
                                      "exclusionFilters"))
                                    (:shape-name "PatternObjectFilter"))

(smithy/sdk/shapes:define-structure pattern-object-filter-configuration
                                    common-lisp:nil
                                    ((filters :target-type
                                      pattern-object-filter-list :required
                                      common-lisp:t :member-name "filters"))
                                    (:shape-name
                                     "PatternObjectFilterConfiguration"))

(smithy/sdk/shapes:define-list pattern-object-filter-list :member
                               pattern-object-filter)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum performance-config-latency
    common-lisp:nil
  (:standard "standard")
  (:optimized "optimized"))

(smithy/sdk/shapes:define-structure performance-configuration common-lisp:nil
                                    ((latency :target-type
                                      performance-config-latency :member-name
                                      "latency"))
                                    (:shape-name "PerformanceConfiguration"))

(smithy/sdk/shapes:define-structure pinecone-configuration common-lisp:nil
                                    ((connection-string :target-type
                                      pinecone-connection-string :required
                                      common-lisp:t :member-name
                                      "connectionString")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn")
                                     (namespace :target-type pinecone-namespace
                                      :member-name "namespace")
                                     (field-mapping :target-type
                                      pinecone-field-mapping :required
                                      common-lisp:t :member-name
                                      "fieldMapping"))
                                    (:shape-name "PineconeConfiguration"))

(smithy/sdk/shapes:define-type pinecone-connection-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pinecone-field-mapping common-lisp:nil
                                    ((text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name "PineconeFieldMapping"))

(smithy/sdk/shapes:define-type pinecone-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input prepare-agent-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t))
                                (:shape-name "PrepareAgentRequest"))

(smithy/sdk/shapes:define-output prepare-agent-response common-lisp:nil
                                 ((agent-id :target-type id :required
                                   common-lisp:t :member-name "agentId")
                                  (agent-status :target-type agent-status
                                   :required common-lisp:t :member-name
                                   "agentStatus")
                                  (agent-version :target-type version :required
                                   common-lisp:t :member-name "agentVersion")
                                  (prepared-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "preparedAt"))
                                 (:shape-name "PrepareAgentResponse"))

(smithy/sdk/shapes:define-input prepare-flow-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t))
                                (:shape-name "PrepareFlowRequest"))

(smithy/sdk/shapes:define-output prepare-flow-response common-lisp:nil
                                 ((id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "PrepareFlowResponse"))

(smithy/sdk/shapes:define-structure prompt-agent-resource common-lisp:nil
                                    ((agent-identifier :target-type
                                      agent-alias-arn :required common-lisp:t
                                      :member-name "agentIdentifier"))
                                    (:shape-name "PromptAgentResource"))

(smithy/sdk/shapes:define-type prompt-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prompt-configuration common-lisp:nil
                                    ((prompt-type :target-type prompt-type
                                      :member-name "promptType")
                                     (prompt-creation-mode :target-type
                                      creation-mode :member-name
                                      "promptCreationMode")
                                     (prompt-state :target-type prompt-state
                                      :member-name "promptState")
                                     (base-prompt-template :target-type
                                      base-prompt-template :member-name
                                      "basePromptTemplate")
                                     (inference-configuration :target-type
                                      inference-configuration :member-name
                                      "inferenceConfiguration")
                                     (parser-mode :target-type creation-mode
                                      :member-name "parserMode")
                                     (foundation-model :target-type
                                      model-identifier :member-name
                                      "foundationModel")
                                     (additional-model-request-fields
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "additionalModelRequestFields"))
                                    (:shape-name "PromptConfiguration"))

(smithy/sdk/shapes:define-list prompt-configurations :member
                               prompt-configuration)

(smithy/sdk/shapes:define-type prompt-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prompt-flow-node-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      prompt-flow-node-source-configuration
                                      :required common-lisp:t :member-name
                                      "sourceConfiguration")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration"))
                                    (:shape-name "PromptFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure prompt-flow-node-inline-configuration
                                    common-lisp:nil
                                    ((template-type :target-type
                                      prompt-template-type :required
                                      common-lisp:t :member-name
                                      "templateType")
                                     (template-configuration :target-type
                                      prompt-template-configuration :required
                                      common-lisp:t :member-name
                                      "templateConfiguration")
                                     (model-id :target-type
                                      prompt-model-identifier :required
                                      common-lisp:t :member-name "modelId")
                                     (inference-configuration :target-type
                                      prompt-inference-configuration
                                      :member-name "inferenceConfiguration")
                                     (additional-model-request-fields
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "additionalModelRequestFields"))
                                    (:shape-name
                                     "PromptFlowNodeInlineConfiguration"))

(smithy/sdk/shapes:define-structure prompt-flow-node-resource-configuration
                                    common-lisp:nil
                                    ((prompt-arn :target-type prompt-arn
                                      :required common-lisp:t :member-name
                                      "promptArn"))
                                    (:shape-name
                                     "PromptFlowNodeResourceConfiguration"))

(smithy/sdk/shapes:define-union prompt-flow-node-source-configuration
                                common-lisp:nil
                                ((resource :target-type
                                  prompt-flow-node-resource-configuration
                                  :member-name "resource")
                                 (inline :target-type
                                  prompt-flow-node-inline-configuration
                                  :member-name "inline"))
                                (:shape-name
                                 "PromptFlowNodeSourceConfiguration"))

(smithy/sdk/shapes:define-union prompt-gen-ai-resource common-lisp:nil
                                ((agent :target-type prompt-agent-resource
                                  :member-name "agent"))
                                (:shape-name "PromptGenAiResource"))

(smithy/sdk/shapes:define-type prompt-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prompt-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union prompt-inference-configuration common-lisp:nil
                                ((text :target-type
                                  prompt-model-inference-configuration
                                  :member-name "text"))
                                (:shape-name "PromptInferenceConfiguration"))

(smithy/sdk/shapes:define-structure prompt-input-variable common-lisp:nil
                                    ((name :target-type
                                      prompt-input-variable-name :member-name
                                      "name"))
                                    (:shape-name "PromptInputVariable"))

(smithy/sdk/shapes:define-type prompt-input-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list prompt-input-variables-list :member
                               prompt-input-variable)

(smithy/sdk/shapes:define-structure prompt-metadata-entry common-lisp:nil
                                    ((key :target-type prompt-metadata-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type prompt-metadata-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "PromptMetadataEntry"))

(smithy/sdk/shapes:define-type prompt-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list prompt-metadata-list :member
                               prompt-metadata-entry)

(smithy/sdk/shapes:define-type prompt-metadata-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prompt-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prompt-model-inference-configuration
                                    common-lisp:nil
                                    ((temperature :target-type temperature
                                      :member-name "temperature")
                                     (top-p :target-type top-p :member-name
                                      "topP")
                                     (max-tokens :target-type maximum-length
                                      :member-name "maxTokens")
                                     (stop-sequences :target-type
                                      stop-sequences :member-name
                                      "stopSequences"))
                                    (:shape-name
                                     "PromptModelInferenceConfiguration"))

(smithy/sdk/shapes:define-type prompt-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prompt-override-configuration
                                    common-lisp:nil
                                    ((prompt-configurations :target-type
                                      prompt-configurations :required
                                      common-lisp:t :member-name
                                      "promptConfigurations")
                                     (override-lambda :target-type lambda-arn
                                      :member-name "overrideLambda"))
                                    (:shape-name "PromptOverrideConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum prompt-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list prompt-summaries :member prompt-summary)

(smithy/sdk/shapes:define-structure prompt-summary common-lisp:nil
                                    ((name :target-type prompt-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      prompt-description :member-name
                                      "description")
                                     (id :target-type prompt-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type prompt-arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "PromptSummary"))

(smithy/sdk/shapes:define-union prompt-template-configuration common-lisp:nil
                                ((text :target-type
                                  text-prompt-template-configuration
                                  :member-name "text")
                                 (chat :target-type
                                  chat-prompt-template-configuration
                                  :member-name "chat"))
                                (:shape-name "PromptTemplateConfiguration"))

(smithy/sdk/shapes:define-enum prompt-template-type
    common-lisp:nil
  (:text "TEXT")
  (:chat "CHAT"))

(smithy/sdk/shapes:define-enum prompt-type
    common-lisp:nil
  (:pre-processing "PRE_PROCESSING")
  (:orchestration "ORCHESTRATION")
  (:post-processing "POST_PROCESSING")
  (:knowledge-base-response-generation "KNOWLEDGE_BASE_RESPONSE_GENERATION")
  (:memory-summarization "MEMORY_SUMMARIZATION"))

(smithy/sdk/shapes:define-structure prompt-variant common-lisp:nil
                                    ((name :target-type prompt-variant-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (template-type :target-type
                                      prompt-template-type :required
                                      common-lisp:t :member-name
                                      "templateType")
                                     (template-configuration :target-type
                                      prompt-template-configuration :required
                                      common-lisp:t :member-name
                                      "templateConfiguration")
                                     (model-id :target-type
                                      prompt-model-identifier :member-name
                                      "modelId")
                                     (inference-configuration :target-type
                                      prompt-inference-configuration
                                      :member-name "inferenceConfiguration")
                                     (metadata :target-type
                                      prompt-metadata-list :member-name
                                      "metadata")
                                     (additional-model-request-fields
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "additionalModelRequestFields")
                                     (gen-ai-resource :target-type
                                      prompt-gen-ai-resource :member-name
                                      "genAiResource"))
                                    (:shape-name "PromptVariant"))

(smithy/sdk/shapes:define-list prompt-variant-list :member prompt-variant)

(smithy/sdk/shapes:define-type prompt-variant-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-engine-type
    common-lisp:nil
  (:redshift "REDSHIFT"))

(smithy/sdk/shapes:define-type query-execution-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure query-generation-column common-lisp:nil
                                    ((name :target-type
                                      query-generation-column-name :member-name
                                      "name")
                                     (description :target-type
                                      description-string :member-name
                                      "description")
                                     (inclusion :target-type include-exclude
                                      :member-name "inclusion"))
                                    (:shape-name "QueryGenerationColumn"))

(smithy/sdk/shapes:define-type query-generation-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-generation-columns :member
                               query-generation-column)

(smithy/sdk/shapes:define-structure query-generation-configuration
                                    common-lisp:nil
                                    ((execution-timeout-seconds :target-type
                                      query-execution-timeout-seconds
                                      :member-name "executionTimeoutSeconds")
                                     (generation-context :target-type
                                      query-generation-context :member-name
                                      "generationContext"))
                                    (:shape-name
                                     "QueryGenerationConfiguration"))

(smithy/sdk/shapes:define-structure query-generation-context common-lisp:nil
                                    ((tables :target-type
                                      query-generation-tables :member-name
                                      "tables")
                                     (curated-queries :target-type
                                      curated-queries :member-name
                                      "curatedQueries"))
                                    (:shape-name "QueryGenerationContext"))

(smithy/sdk/shapes:define-structure query-generation-table common-lisp:nil
                                    ((name :target-type
                                      query-generation-table-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      description-string :member-name
                                      "description")
                                     (inclusion :target-type include-exclude
                                      :member-name "inclusion")
                                     (columns :target-type
                                      query-generation-columns :member-name
                                      "columns"))
                                    (:shape-name "QueryGenerationTable"))

(smithy/sdk/shapes:define-type query-generation-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-generation-tables :member
                               query-generation-table)

(smithy/sdk/shapes:define-type rds-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rds-configuration common-lisp:nil
                                    ((resource-arn :target-type rds-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn")
                                     (database-name :target-type
                                      rds-database-name :required common-lisp:t
                                      :member-name "databaseName")
                                     (table-name :target-type rds-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (field-mapping :target-type
                                      rds-field-mapping :required common-lisp:t
                                      :member-name "fieldMapping"))
                                    (:shape-name "RdsConfiguration"))

(smithy/sdk/shapes:define-type rds-database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rds-field-mapping common-lisp:nil
                                    ((primary-key-field :target-type
                                      column-name :required common-lisp:t
                                      :member-name "primaryKeyField")
                                     (vector-field :target-type column-name
                                      :required common-lisp:t :member-name
                                      "vectorField")
                                     (text-field :target-type column-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type column-name
                                      :required common-lisp:t :member-name
                                      "metadataField")
                                     (custom-metadata-field :target-type
                                      column-name :member-name
                                      "customMetadataField"))
                                    (:shape-name "RdsFieldMapping"))

(smithy/sdk/shapes:define-type rds-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommended-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommended-actions :member recommended-action)

(smithy/sdk/shapes:define-structure redis-enterprise-cloud-configuration
                                    common-lisp:nil
                                    ((endpoint :target-type
                                      redis-enterprise-cloud-endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (vector-index-name :target-type
                                      redis-enterprise-cloud-index-name
                                      :required common-lisp:t :member-name
                                      "vectorIndexName")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn")
                                     (field-mapping :target-type
                                      redis-enterprise-cloud-field-mapping
                                      :required common-lisp:t :member-name
                                      "fieldMapping"))
                                    (:shape-name
                                     "RedisEnterpriseCloudConfiguration"))

(smithy/sdk/shapes:define-type redis-enterprise-cloud-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redis-enterprise-cloud-field-mapping
                                    common-lisp:nil
                                    ((vector-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "vectorField")
                                     (text-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "textField")
                                     (metadata-field :target-type field-name
                                      :required common-lisp:t :member-name
                                      "metadataField"))
                                    (:shape-name
                                     "RedisEnterpriseCloudFieldMapping"))

(smithy/sdk/shapes:define-type redis-enterprise-cloud-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redshift-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-configuration common-lisp:nil
                                    ((storage-configurations :target-type
                                      redshift-query-engine-storage-configurations
                                      :required common-lisp:t :member-name
                                      "storageConfigurations")
                                     (query-engine-configuration :target-type
                                      redshift-query-engine-configuration
                                      :required common-lisp:t :member-name
                                      "queryEngineConfiguration")
                                     (query-generation-configuration
                                      :target-type
                                      query-generation-configuration
                                      :member-name
                                      "queryGenerationConfiguration"))
                                    (:shape-name "RedshiftConfiguration"))

(smithy/sdk/shapes:define-type redshift-database smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-provisioned-auth-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      redshift-provisioned-auth-type :required
                                      common-lisp:t :member-name "type")
                                     (database-user :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseUser")
                                     (username-password-secret-arn :target-type
                                      secret-arn :member-name
                                      "usernamePasswordSecretArn"))
                                    (:shape-name
                                     "RedshiftProvisionedAuthConfiguration"))

(smithy/sdk/shapes:define-enum redshift-provisioned-auth-type
    common-lisp:nil
  (:iam "IAM")
  (:username-password "USERNAME_PASSWORD")
  (:username "USERNAME"))

(smithy/sdk/shapes:define-structure redshift-provisioned-configuration
                                    common-lisp:nil
                                    ((cluster-identifier :target-type
                                      redshift-cluster-identifier :required
                                      common-lisp:t :member-name
                                      "clusterIdentifier")
                                     (auth-configuration :target-type
                                      redshift-provisioned-auth-configuration
                                      :required common-lisp:t :member-name
                                      "authConfiguration"))
                                    (:shape-name
                                     "RedshiftProvisionedConfiguration"))

(smithy/sdk/shapes:define-structure
 redshift-query-engine-aws-data-catalog-storage-configuration common-lisp:nil
 ((table-names :target-type aws-data-catalog-table-names :required
   common-lisp:t :member-name "tableNames"))
 (:shape-name "RedshiftQueryEngineAwsDataCatalogStorageConfiguration"))

(smithy/sdk/shapes:define-structure redshift-query-engine-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      redshift-query-engine-type :required
                                      common-lisp:t :member-name "type")
                                     (serverless-configuration :target-type
                                      redshift-serverless-configuration
                                      :member-name "serverlessConfiguration")
                                     (provisioned-configuration :target-type
                                      redshift-provisioned-configuration
                                      :member-name "provisionedConfiguration"))
                                    (:shape-name
                                     "RedshiftQueryEngineConfiguration"))

(smithy/sdk/shapes:define-structure
 redshift-query-engine-redshift-storage-configuration common-lisp:nil
 ((database-name :target-type redshift-database :required common-lisp:t
   :member-name "databaseName"))
 (:shape-name "RedshiftQueryEngineRedshiftStorageConfiguration"))

(smithy/sdk/shapes:define-structure redshift-query-engine-storage-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      redshift-query-engine-storage-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (aws-data-catalog-configuration
                                      :target-type
                                      redshift-query-engine-aws-data-catalog-storage-configuration
                                      :member-name
                                      "awsDataCatalogConfiguration")
                                     (redshift-configuration :target-type
                                      redshift-query-engine-redshift-storage-configuration
                                      :member-name "redshiftConfiguration"))
                                    (:shape-name
                                     "RedshiftQueryEngineStorageConfiguration"))

(smithy/sdk/shapes:define-list redshift-query-engine-storage-configurations
                               :member
                               redshift-query-engine-storage-configuration)

(smithy/sdk/shapes:define-enum redshift-query-engine-storage-type
    common-lisp:nil
  (:redshift "REDSHIFT")
  (:aws-data-catalog "AWS_DATA_CATALOG"))

(smithy/sdk/shapes:define-enum redshift-query-engine-type
    common-lisp:nil
  (:serverless "SERVERLESS")
  (:provisioned "PROVISIONED"))

(smithy/sdk/shapes:define-structure redshift-serverless-auth-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      redshift-serverless-auth-type :required
                                      common-lisp:t :member-name "type")
                                     (username-password-secret-arn :target-type
                                      secret-arn :member-name
                                      "usernamePasswordSecretArn"))
                                    (:shape-name
                                     "RedshiftServerlessAuthConfiguration"))

(smithy/sdk/shapes:define-enum redshift-serverless-auth-type
    common-lisp:nil
  (:iam "IAM")
  (:username-password "USERNAME_PASSWORD"))

(smithy/sdk/shapes:define-structure redshift-serverless-configuration
                                    common-lisp:nil
                                    ((workgroup-arn :target-type workgroup-arn
                                      :required common-lisp:t :member-name
                                      "workgroupArn")
                                     (auth-configuration :target-type
                                      redshift-serverless-auth-configuration
                                      :required common-lisp:t :member-name
                                      "authConfiguration"))
                                    (:shape-name
                                     "RedshiftServerlessConfiguration"))

(smithy/sdk/shapes:define-enum relay-conversation-history
    common-lisp:nil
  (:to-collaborator "TO_COLLABORATOR")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum require-confirmation
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

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

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure retrieval-flow-node-configuration
                                    common-lisp:nil
                                    ((service-configuration :target-type
                                      retrieval-flow-node-service-configuration
                                      :required common-lisp:t :member-name
                                      "serviceConfiguration"))
                                    (:shape-name
                                     "RetrievalFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure retrieval-flow-node-s3configuration
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName"))
                                    (:shape-name
                                     "RetrievalFlowNodeS3Configuration"))

(smithy/sdk/shapes:define-union retrieval-flow-node-service-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  retrieval-flow-node-s3configuration
                                  :member-name "s3"))
                                (:shape-name
                                 "RetrievalFlowNodeServiceConfiguration"))

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3content common-lisp:nil
                                    ((s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "s3Location"))
                                    (:shape-name "S3Content"))

(smithy/sdk/shapes:define-structure s3data-source-configuration common-lisp:nil
                                    ((bucket-arn :target-type s3bucket-arn
                                      :required common-lisp:t :member-name
                                      "bucketArn")
                                     (inclusion-prefixes :target-type
                                      s3prefixes :member-name
                                      "inclusionPrefixes")
                                     (bucket-owner-account-id :target-type
                                      bucket-owner-account-id :member-name
                                      "bucketOwnerAccountId"))
                                    (:shape-name "S3DataSourceConfiguration"))

(smithy/sdk/shapes:define-structure s3identifier common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :member-name "s3BucketName")
                                     (s3object-key :target-type s3object-key
                                      :member-name "s3ObjectKey"))
                                    (:shape-name "S3Identifier"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((uri :target-type s3bucket-uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3prefixes :member s3prefix)

(smithy/sdk/shapes:define-structure s3vectors-configuration common-lisp:nil
                                    ((vector-bucket-arn :target-type
                                      vector-bucket-arn :member-name
                                      "vectorBucketArn")
                                     (index-arn :target-type index-arn
                                      :member-name "indexArn")
                                     (index-name :target-type index-name
                                      :member-name "indexName"))
                                    (:shape-name "S3VectorsConfiguration"))

(smithy/sdk/shapes:define-enum salesforce-auth-type
    common-lisp:nil
  (:oauth2-client-credentials "OAUTH2_CLIENT_CREDENTIALS"))

(smithy/sdk/shapes:define-structure salesforce-crawler-configuration
                                    common-lisp:nil
                                    ((filter-configuration :target-type
                                      crawl-filter-configuration :member-name
                                      "filterConfiguration"))
                                    (:shape-name
                                     "SalesforceCrawlerConfiguration"))

(smithy/sdk/shapes:define-structure salesforce-data-source-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      salesforce-source-configuration :required
                                      common-lisp:t :member-name
                                      "sourceConfiguration")
                                     (crawler-configuration :target-type
                                      salesforce-crawler-configuration
                                      :member-name "crawlerConfiguration"))
                                    (:shape-name
                                     "SalesforceDataSourceConfiguration"))

(smithy/sdk/shapes:define-structure salesforce-source-configuration
                                    common-lisp:nil
                                    ((host-url :target-type https-url :required
                                      common-lisp:t :member-name "hostUrl")
                                     (auth-type :target-type
                                      salesforce-auth-type :required
                                      common-lisp:t :member-name "authType")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn"))
                                    (:shape-name
                                     "SalesforceSourceConfiguration"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure seed-url common-lisp:nil
                                    ((url :target-type url :member-name "url"))
                                    (:shape-name "SeedUrl"))

(smithy/sdk/shapes:define-list seed-urls :member seed-url)

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

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure session-summary-configuration
                                    common-lisp:nil
                                    ((max-recent-sessions :target-type
                                      max-recent-sessions :member-name
                                      "maxRecentSessions"))
                                    (:shape-name "SessionSummaryConfiguration"))

(smithy/sdk/shapes:define-type session-ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum share-point-auth-type
    common-lisp:nil
  (:oauth2-client-credentials "OAUTH2_CLIENT_CREDENTIALS")
  (:oauth2-sharepoint-app-only-client-credentials
   "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"))

(smithy/sdk/shapes:define-structure share-point-crawler-configuration
                                    common-lisp:nil
                                    ((filter-configuration :target-type
                                      crawl-filter-configuration :member-name
                                      "filterConfiguration"))
                                    (:shape-name
                                     "SharePointCrawlerConfiguration"))

(smithy/sdk/shapes:define-structure share-point-data-source-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      share-point-source-configuration
                                      :required common-lisp:t :member-name
                                      "sourceConfiguration")
                                     (crawler-configuration :target-type
                                      share-point-crawler-configuration
                                      :member-name "crawlerConfiguration"))
                                    (:shape-name
                                     "SharePointDataSourceConfiguration"))

(smithy/sdk/shapes:define-type share-point-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum share-point-host-type
    common-lisp:nil
  (:online "ONLINE"))

(smithy/sdk/shapes:define-list share-point-site-urls :member https-url)

(smithy/sdk/shapes:define-structure share-point-source-configuration
                                    common-lisp:nil
                                    ((tenant-id :target-type
                                      microsoft365tenant-id :member-name
                                      "tenantId")
                                     (domain :target-type share-point-domain
                                      :required common-lisp:t :member-name
                                      "domain")
                                     (site-urls :target-type
                                      share-point-site-urls :required
                                      common-lisp:t :member-name "siteUrls")
                                     (host-type :target-type
                                      share-point-host-type :required
                                      common-lisp:t :member-name "hostType")
                                     (auth-type :target-type
                                      share-point-auth-type :required
                                      common-lisp:t :member-name "authType")
                                     (credentials-secret-arn :target-type
                                      secret-arn :required common-lisp:t
                                      :member-name "credentialsSecretArn"))
                                    (:shape-name
                                     "SharePointSourceConfiguration"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure specific-tool-choice common-lisp:nil
                                    ((name :target-type tool-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "SpecificToolChoice"))

(smithy/sdk/shapes:define-structure sql-knowledge-base-configuration
                                    common-lisp:nil
                                    ((type :target-type query-engine-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (redshift-configuration :target-type
                                      redshift-configuration :member-name
                                      "redshiftConfiguration"))
                                    (:shape-name
                                     "SqlKnowledgeBaseConfiguration"))

(smithy/sdk/shapes:define-type sql-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-ingestion-job-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "StartIngestionJobRequest"))

(smithy/sdk/shapes:define-output start-ingestion-job-response common-lisp:nil
                                 ((ingestion-job :target-type ingestion-job
                                   :required common-lisp:t :member-name
                                   "ingestionJob"))
                                 (:shape-name "StartIngestionJobResponse"))

(smithy/sdk/shapes:define-enum step-type
    common-lisp:nil
  (:post-chunking "POST_CHUNKING"))

(smithy/sdk/shapes:define-input stop-ingestion-job-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (ingestion-job-id :target-type id :required
                                  common-lisp:t :member-name "ingestionJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopIngestionJobRequest"))

(smithy/sdk/shapes:define-output stop-ingestion-job-response common-lisp:nil
                                 ((ingestion-job :target-type ingestion-job
                                   :required common-lisp:t :member-name
                                   "ingestionJob"))
                                 (:shape-name "StopIngestionJobResponse"))

(smithy/sdk/shapes:define-list stop-sequences :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-configuration common-lisp:nil
                                    ((type :target-type
                                      knowledge-base-storage-type :required
                                      common-lisp:t :member-name "type")
                                     (opensearch-serverless-configuration
                                      :target-type
                                      open-search-serverless-configuration
                                      :member-name
                                      "opensearchServerlessConfiguration")
                                     (opensearch-managed-cluster-configuration
                                      :target-type
                                      open-search-managed-cluster-configuration
                                      :member-name
                                      "opensearchManagedClusterConfiguration")
                                     (pinecone-configuration :target-type
                                      pinecone-configuration :member-name
                                      "pineconeConfiguration")
                                     (redis-enterprise-cloud-configuration
                                      :target-type
                                      redis-enterprise-cloud-configuration
                                      :member-name
                                      "redisEnterpriseCloudConfiguration")
                                     (rds-configuration :target-type
                                      rds-configuration :member-name
                                      "rdsConfiguration")
                                     (mongo-db-atlas-configuration :target-type
                                      mongo-db-atlas-configuration :member-name
                                      "mongoDbAtlasConfiguration")
                                     (neptune-analytics-configuration
                                      :target-type
                                      neptune-analytics-configuration
                                      :member-name
                                      "neptuneAnalyticsConfiguration")
                                     (s3vectors-configuration :target-type
                                      s3vectors-configuration :member-name
                                      "s3VectorsConfiguration"))
                                    (:shape-name "StorageConfiguration"))

(smithy/sdk/shapes:define-type storage-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure storage-flow-node-configuration
                                    common-lisp:nil
                                    ((service-configuration :target-type
                                      storage-flow-node-service-configuration
                                      :required common-lisp:t :member-name
                                      "serviceConfiguration"))
                                    (:shape-name
                                     "StorageFlowNodeConfiguration"))

(smithy/sdk/shapes:define-structure storage-flow-node-s3configuration
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName"))
                                    (:shape-name
                                     "StorageFlowNodeS3Configuration"))

(smithy/sdk/shapes:define-union storage-flow-node-service-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  storage-flow-node-s3configuration
                                  :member-name "s3"))
                                (:shape-name
                                 "StorageFlowNodeServiceConfiguration"))

(smithy/sdk/shapes:define-list string-list-value :member string-value)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure supplemental-data-storage-configuration
                                    common-lisp:nil
                                    ((storage-locations :target-type
                                      supplemental-data-storage-locations
                                      :required common-lisp:t :member-name
                                      "storageLocations"))
                                    (:shape-name
                                     "SupplementalDataStorageConfiguration"))

(smithy/sdk/shapes:define-structure supplemental-data-storage-location
                                    common-lisp:nil
                                    ((type :target-type
                                      supplemental-data-storage-location-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name
                                     "SupplementalDataStorageLocation"))

(smithy/sdk/shapes:define-enum supplemental-data-storage-location-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-list supplemental-data-storage-locations :member
                               supplemental-data-storage-location)

(smithy/sdk/shapes:define-enum supported-languages
    common-lisp:nil
  (:python-3 "Python_3"))

(smithy/sdk/shapes:define-union system-content-block common-lisp:nil
                                ((text :target-type non-empty-string
                                  :member-name "text")
                                 (cache-point :target-type cache-point-block
                                  :member-name "cachePoint"))
                                (:shape-name "SystemContentBlock"))

(smithy/sdk/shapes:define-list system-content-blocks :member
                               system-content-block)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resources-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type temperature smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure text-content-doc common-lisp:nil
                                    ((data :target-type data :required
                                      common-lisp:t :member-name "data"))
                                    (:shape-name "TextContentDoc"))

(smithy/sdk/shapes:define-type text-prompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-prompt-template-configuration
                                    common-lisp:nil
                                    ((text :target-type text-prompt :required
                                      common-lisp:t :member-name "text")
                                     (cache-point :target-type
                                      cache-point-block :member-name
                                      "cachePoint")
                                     (input-variables :target-type
                                      prompt-input-variables-list :member-name
                                      "inputVariables"))
                                    (:shape-name
                                     "TextPromptTemplateConfiguration"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-union tool common-lisp:nil
                                ((tool-spec :target-type tool-specification
                                  :member-name "toolSpec")
                                 (cache-point :target-type cache-point-block
                                  :member-name "cachePoint"))
                                (:shape-name "Tool"))

(smithy/sdk/shapes:define-union tool-choice common-lisp:nil
                                ((auto :target-type auto-tool-choice
                                  :member-name "auto")
                                 (any :target-type any-tool-choice :member-name
                                  "any")
                                 (tool :target-type specific-tool-choice
                                  :member-name "tool"))
                                (:shape-name "ToolChoice"))

(smithy/sdk/shapes:define-structure tool-configuration common-lisp:nil
                                    ((tools :target-type tools :required
                                      common-lisp:t :member-name "tools")
                                     (tool-choice :target-type tool-choice
                                      :member-name "toolChoice"))
                                    (:shape-name "ToolConfiguration"))

(smithy/sdk/shapes:define-union tool-input-schema common-lisp:nil
                                ((json :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "json"))
                                (:shape-name "ToolInputSchema"))

(smithy/sdk/shapes:define-type tool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tool-specification common-lisp:nil
                                    ((name :target-type tool-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (input-schema :target-type
                                      tool-input-schema :required common-lisp:t
                                      :member-name "inputSchema"))
                                    (:shape-name "ToolSpecification"))

(smithy/sdk/shapes:define-list tools :member tool)

(smithy/sdk/shapes:define-type top-k smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type top-p smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure transformation common-lisp:nil
                                    ((transformation-function :target-type
                                      transformation-function :required
                                      common-lisp:t :member-name
                                      "transformationFunction")
                                     (step-to-apply :target-type step-type
                                      :required common-lisp:t :member-name
                                      "stepToApply"))
                                    (:shape-name "Transformation"))

(smithy/sdk/shapes:define-structure transformation-function common-lisp:nil
                                    ((transformation-lambda-configuration
                                      :target-type
                                      transformation-lambda-configuration
                                      :required common-lisp:t :member-name
                                      "transformationLambdaConfiguration"))
                                    (:shape-name "TransformationFunction"))

(smithy/sdk/shapes:define-structure transformation-lambda-configuration
                                    common-lisp:nil
                                    ((lambda-arn :target-type lambda-arn
                                      :required common-lisp:t :member-name
                                      "lambdaArn"))
                                    (:shape-name
                                     "TransformationLambdaConfiguration"))

(smithy/sdk/shapes:define-list transformations :member transformation)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:string "string")
  (:number "number")
  (:integer "integer")
  (:boolean "boolean")
  (:array "array"))

(smithy/sdk/shapes:define-structure
 unfulfilled-node-input-flow-validation-details common-lisp:nil
 ((node :target-type flow-node-name :required common-lisp:t :member-name
   "node")
  (input :target-type flow-node-input-name :required common-lisp:t :member-name
   "input"))
 (:shape-name "UnfulfilledNodeInputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unknown-connection-condition-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnknownConnectionConditionFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unknown-connection-source-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnknownConnectionSourceFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unknown-connection-source-output-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnknownConnectionSourceOutputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unknown-connection-target-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnknownConnectionTargetFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unknown-connection-target-input-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnknownConnectionTargetInputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure unknown-node-input-flow-validation-details
                                    common-lisp:nil
                                    ((node :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "node")
                                     (input :target-type flow-node-input-name
                                      :required common-lisp:t :member-name
                                      "input"))
                                    (:shape-name
                                     "UnknownNodeInputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure unknown-node-output-flow-validation-details
                                    common-lisp:nil
                                    ((node :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "node")
                                     (output :target-type flow-node-output-name
                                      :required common-lisp:t :member-name
                                      "output"))
                                    (:shape-name
                                     "UnknownNodeOutputFlowValidationDetails"))

(smithy/sdk/shapes:define-structure unreachable-node-flow-validation-details
                                    common-lisp:nil
                                    ((node :target-type flow-node-name
                                      :required common-lisp:t :member-name
                                      "node"))
                                    (:shape-name
                                     "UnreachableNodeFlowValidationDetails"))

(smithy/sdk/shapes:define-structure
 unsatisfied-connection-conditions-flow-validation-details common-lisp:nil
 ((connection :target-type flow-connection-name :required common-lisp:t
   :member-name "connection"))
 (:shape-name "UnsatisfiedConnectionConditionsFlowValidationDetails"))

(smithy/sdk/shapes:define-structure unspecified-flow-validation-details
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "UnspecifiedFlowValidationDetails"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resources-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-agent-action-group-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (action-group-id :target-type id :required
                                  common-lisp:t :member-name "actionGroupId"
                                  :http-label common-lisp:t)
                                 (action-group-name :target-type name :required
                                  common-lisp:t :member-name "actionGroupName")
                                 (description :target-type description
                                  :member-name "description")
                                 (parent-action-group-signature :target-type
                                  action-group-signature :member-name
                                  "parentActionGroupSignature")
                                 (parent-action-group-signature-params
                                  :target-type action-group-signature-params
                                  :member-name
                                  "parentActionGroupSignatureParams")
                                 (action-group-executor :target-type
                                  action-group-executor :member-name
                                  "actionGroupExecutor")
                                 (action-group-state :target-type
                                  action-group-state :member-name
                                  "actionGroupState")
                                 (api-schema :target-type apischema
                                  :member-name "apiSchema")
                                 (function-schema :target-type function-schema
                                  :member-name "functionSchema"))
                                (:shape-name "UpdateAgentActionGroupRequest"))

(smithy/sdk/shapes:define-output update-agent-action-group-response
                                 common-lisp:nil
                                 ((agent-action-group :target-type
                                   agent-action-group :required common-lisp:t
                                   :member-name "agentActionGroup"))
                                 (:shape-name "UpdateAgentActionGroupResponse"))

(smithy/sdk/shapes:define-input update-agent-alias-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t)
                                 (agent-alias-name :target-type name :required
                                  common-lisp:t :member-name "agentAliasName")
                                 (description :target-type description
                                  :member-name "description")
                                 (routing-configuration :target-type
                                  agent-alias-routing-configuration
                                  :member-name "routingConfiguration")
                                 (alias-invocation-state :target-type
                                  alias-invocation-state :member-name
                                  "aliasInvocationState"))
                                (:shape-name "UpdateAgentAliasRequest"))

(smithy/sdk/shapes:define-output update-agent-alias-response common-lisp:nil
                                 ((agent-alias :target-type agent-alias
                                   :required common-lisp:t :member-name
                                   "agentAlias"))
                                 (:shape-name "UpdateAgentAliasResponse"))

(smithy/sdk/shapes:define-input update-agent-collaborator-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (collaborator-id :target-type id :required
                                  common-lisp:t :member-name "collaboratorId"
                                  :http-label common-lisp:t)
                                 (agent-descriptor :target-type
                                  agent-descriptor :required common-lisp:t
                                  :member-name "agentDescriptor")
                                 (collaborator-name :target-type name :required
                                  common-lisp:t :member-name
                                  "collaboratorName")
                                 (collaboration-instruction :target-type
                                  collaboration-instruction :required
                                  common-lisp:t :member-name
                                  "collaborationInstruction")
                                 (relay-conversation-history :target-type
                                  relay-conversation-history :member-name
                                  "relayConversationHistory"))
                                (:shape-name "UpdateAgentCollaboratorRequest"))

(smithy/sdk/shapes:define-output update-agent-collaborator-response
                                 common-lisp:nil
                                 ((agent-collaborator :target-type
                                   agent-collaborator :required common-lisp:t
                                   :member-name "agentCollaborator"))
                                 (:shape-name
                                  "UpdateAgentCollaboratorResponse"))

(smithy/sdk/shapes:define-input update-agent-knowledge-base-request
                                common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-version :target-type draft-version
                                  :required common-lisp:t :member-name
                                  "agentVersion" :http-label common-lisp:t)
                                 (knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (knowledge-base-state :target-type
                                  knowledge-base-state :member-name
                                  "knowledgeBaseState"))
                                (:shape-name "UpdateAgentKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output update-agent-knowledge-base-response
                                 common-lisp:nil
                                 ((agent-knowledge-base :target-type
                                   agent-knowledge-base :required common-lisp:t
                                   :member-name "agentKnowledgeBase"))
                                 (:shape-name
                                  "UpdateAgentKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input update-agent-request common-lisp:nil
                                ((agent-id :target-type id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-name :target-type name :required
                                  common-lisp:t :member-name "agentName")
                                 (instruction :target-type instruction
                                  :member-name "instruction")
                                 (foundation-model :target-type
                                  model-identifier :required common-lisp:t
                                  :member-name "foundationModel")
                                 (description :target-type description
                                  :member-name "description")
                                 (orchestration-type :target-type
                                  orchestration-type :member-name
                                  "orchestrationType")
                                 (custom-orchestration :target-type
                                  custom-orchestration :member-name
                                  "customOrchestration")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :member-name
                                  "idleSessionTTLInSeconds")
                                 (agent-resource-role-arn :target-type
                                  agent-role-arn :required common-lisp:t
                                  :member-name "agentResourceRoleArn")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (prompt-override-configuration :target-type
                                  prompt-override-configuration :member-name
                                  "promptOverrideConfiguration")
                                 (guardrail-configuration :target-type
                                  guardrail-configuration :member-name
                                  "guardrailConfiguration")
                                 (memory-configuration :target-type
                                  memory-configuration :member-name
                                  "memoryConfiguration")
                                 (agent-collaboration :target-type
                                  agent-collaboration :member-name
                                  "agentCollaboration"))
                                (:shape-name "UpdateAgentRequest"))

(smithy/sdk/shapes:define-output update-agent-response common-lisp:nil
                                 ((agent :target-type agent :required
                                   common-lisp:t :member-name "agent"))
                                 (:shape-name "UpdateAgentResponse"))

(smithy/sdk/shapes:define-input update-data-source-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type id :required
                                  common-lisp:t :member-name "dataSourceId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (data-source-configuration :target-type
                                  data-source-configuration :required
                                  common-lisp:t :member-name
                                  "dataSourceConfiguration")
                                 (data-deletion-policy :target-type
                                  data-deletion-policy :member-name
                                  "dataDeletionPolicy")
                                 (server-side-encryption-configuration
                                  :target-type
                                  server-side-encryption-configuration
                                  :member-name
                                  "serverSideEncryptionConfiguration")
                                 (vector-ingestion-configuration :target-type
                                  vector-ingestion-configuration :member-name
                                  "vectorIngestionConfiguration"))
                                (:shape-name "UpdateDataSourceRequest"))

(smithy/sdk/shapes:define-output update-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :required common-lisp:t :member-name
                                   "dataSource"))
                                 (:shape-name "UpdateDataSourceResponse"))

(smithy/sdk/shapes:define-input update-flow-alias-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (routing-configuration :target-type
                                  flow-alias-routing-configuration :required
                                  common-lisp:t :member-name
                                  "routingConfiguration")
                                 (concurrency-configuration :target-type
                                  flow-alias-concurrency-configuration
                                  :member-name "concurrencyConfiguration")
                                 (flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "aliasIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateFlowAliasRequest"))

(smithy/sdk/shapes:define-output update-flow-alias-response common-lisp:nil
                                 ((name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (routing-configuration :target-type
                                   flow-alias-routing-configuration :required
                                   common-lisp:t :member-name
                                   "routingConfiguration")
                                  (concurrency-configuration :target-type
                                   flow-alias-concurrency-configuration
                                   :member-name "concurrencyConfiguration")
                                  (flow-id :target-type flow-id :required
                                   common-lisp:t :member-name "flowId")
                                  (id :target-type flow-alias-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-alias-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "UpdateFlowAliasResponse"))

(smithy/sdk/shapes:define-input update-flow-request common-lisp:nil
                                ((name :target-type flow-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type flow-description
                                  :member-name "description")
                                 (execution-role-arn :target-type
                                  flow-execution-role-arn :required
                                  common-lisp:t :member-name
                                  "executionRoleArn")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (definition :target-type flow-definition
                                  :member-name "definition")
                                 (flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t))
                                (:shape-name "UpdateFlowRequest"))

(smithy/sdk/shapes:define-output update-flow-response common-lisp:nil
                                 ((name :target-type flow-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (id :target-type flow-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type flow-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type flow-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (version :target-type draft-version :required
                                   common-lisp:t :member-name "version")
                                  (definition :target-type flow-definition
                                   :member-name "definition"))
                                 (:shape-name "UpdateFlowResponse"))

(smithy/sdk/shapes:define-input update-knowledge-base-request common-lisp:nil
                                ((knowledge-base-id :target-type id :required
                                  common-lisp:t :member-name "knowledgeBaseId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type knowledge-base-role-arn
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (knowledge-base-configuration :target-type
                                  knowledge-base-configuration :required
                                  common-lisp:t :member-name
                                  "knowledgeBaseConfiguration")
                                 (storage-configuration :target-type
                                  storage-configuration :member-name
                                  "storageConfiguration"))
                                (:shape-name "UpdateKnowledgeBaseRequest"))

(smithy/sdk/shapes:define-output update-knowledge-base-response common-lisp:nil
                                 ((knowledge-base :target-type knowledge-base
                                   :required common-lisp:t :member-name
                                   "knowledgeBase"))
                                 (:shape-name "UpdateKnowledgeBaseResponse"))

(smithy/sdk/shapes:define-input update-prompt-request common-lisp:nil
                                ((name :target-type prompt-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type prompt-description
                                  :member-name "description")
                                 (customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (default-variant :target-type
                                  prompt-variant-name :member-name
                                  "defaultVariant")
                                 (variants :target-type prompt-variant-list
                                  :member-name "variants")
                                 (prompt-identifier :target-type
                                  prompt-identifier :required common-lisp:t
                                  :member-name "promptIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdatePromptRequest"))

(smithy/sdk/shapes:define-output update-prompt-response common-lisp:nil
                                 ((name :target-type prompt-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type prompt-description
                                   :member-name "description")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn")
                                  (default-variant :target-type
                                   prompt-variant-name :member-name
                                   "defaultVariant")
                                  (variants :target-type prompt-variant-list
                                   :member-name "variants")
                                  (id :target-type prompt-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type prompt-arn :required
                                   common-lisp:t :member-name "arn")
                                  (version :target-type version :required
                                   common-lisp:t :member-name "version")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "UpdatePromptResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure url-configuration common-lisp:nil
                                    ((seed-urls :target-type seed-urls
                                      :member-name "seedUrls"))
                                    (:shape-name "UrlConfiguration"))

(smithy/sdk/shapes:define-type user-agent smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-agent-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input validate-flow-definition-request
                                common-lisp:nil
                                ((definition :target-type flow-definition
                                  :required common-lisp:t :member-name
                                  "definition"))
                                (:shape-name "ValidateFlowDefinitionRequest"))

(smithy/sdk/shapes:define-output validate-flow-definition-response
                                 common-lisp:nil
                                 ((validations :target-type flow-validations
                                   :required common-lisp:t :member-name
                                   "validations"))
                                 (:shape-name "ValidateFlowDefinitionResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (message :target-type non-blank-string
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type vector-bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vector-ingestion-configuration
                                    common-lisp:nil
                                    ((chunking-configuration :target-type
                                      chunking-configuration :member-name
                                      "chunkingConfiguration")
                                     (custom-transformation-configuration
                                      :target-type
                                      custom-transformation-configuration
                                      :member-name
                                      "customTransformationConfiguration")
                                     (parsing-configuration :target-type
                                      parsing-configuration :member-name
                                      "parsingConfiguration")
                                     (context-enrichment-configuration
                                      :target-type
                                      context-enrichment-configuration
                                      :member-name
                                      "contextEnrichmentConfiguration"))
                                    (:shape-name
                                     "VectorIngestionConfiguration"))

(smithy/sdk/shapes:define-structure vector-knowledge-base-configuration
                                    common-lisp:nil
                                    ((embedding-model-arn :target-type
                                      bedrock-embedding-model-arn :required
                                      common-lisp:t :member-name
                                      "embeddingModelArn")
                                     (embedding-model-configuration
                                      :target-type
                                      embedding-model-configuration
                                      :member-name
                                      "embeddingModelConfiguration")
                                     (supplemental-data-storage-configuration
                                      :target-type
                                      supplemental-data-storage-configuration
                                      :member-name
                                      "supplementalDataStorageConfiguration"))
                                    (:shape-name
                                     "VectorKnowledgeBaseConfiguration"))

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

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure web-crawler-configuration common-lisp:nil
                                    ((crawler-limits :target-type
                                      web-crawler-limits :member-name
                                      "crawlerLimits")
                                     (inclusion-filters :target-type
                                      filter-list :member-name
                                      "inclusionFilters")
                                     (exclusion-filters :target-type
                                      filter-list :member-name
                                      "exclusionFilters")
                                     (scope :target-type web-scope-type
                                      :member-name "scope")
                                     (user-agent :target-type user-agent
                                      :member-name "userAgent")
                                     (user-agent-header :target-type
                                      user-agent-header :member-name
                                      "userAgentHeader"))
                                    (:shape-name "WebCrawlerConfiguration"))

(smithy/sdk/shapes:define-structure web-crawler-limits common-lisp:nil
                                    ((rate-limit :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "rateLimit")
                                     (max-pages :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxPages"))
                                    (:shape-name "WebCrawlerLimits"))

(smithy/sdk/shapes:define-structure web-data-source-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      web-source-configuration :required
                                      common-lisp:t :member-name
                                      "sourceConfiguration")
                                     (crawler-configuration :target-type
                                      web-crawler-configuration :member-name
                                      "crawlerConfiguration"))
                                    (:shape-name "WebDataSourceConfiguration"))

(smithy/sdk/shapes:define-enum web-scope-type
    common-lisp:nil
  (:host-only "HOST_ONLY")
  (:subdomains "SUBDOMAINS"))

(smithy/sdk/shapes:define-structure web-source-configuration common-lisp:nil
                                    ((url-configuration :target-type
                                      url-configuration :required common-lisp:t
                                      :member-name "urlConfiguration"))
                                    (:shape-name "WebSourceConfiguration"))

(smithy/sdk/shapes:define-type workgroup-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-agent-collaborator :shape-name
                                       "AssociateAgentCollaborator" :input
                                       associate-agent-collaborator-request
                                       :output
                                       associate-agent-collaborator-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-agent-knowledge-base
                                       :shape-name
                                       "AssociateAgentKnowledgeBase" :input
                                       associate-agent-knowledge-base-request
                                       :output
                                       associate-agent-knowledge-base-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"
                                       :code 200)

(smithy/sdk/operation:define-operation create-agent :shape-name "CreateAgent"
                                       :input create-agent-request :output
                                       create-agent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/agents/" :code 202)

(smithy/sdk/operation:define-operation create-agent-action-group :shape-name
                                       "CreateAgentActionGroup" :input
                                       create-agent-action-group-request
                                       :output
                                       create-agent-action-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"
                                       :code 200)

(smithy/sdk/operation:define-operation create-agent-alias :shape-name
                                       "CreateAgentAlias" :input
                                       create-agent-alias-request :output
                                       create-agent-alias-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentaliases/" :code
                                       202)

(smithy/sdk/operation:define-operation create-data-source :shape-name
                                       "CreateDataSource" :input
                                       create-data-source-request :output
                                       create-data-source-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/"
                                       :code 200)

(smithy/sdk/operation:define-operation create-flow :shape-name "CreateFlow"
                                       :input create-flow-request :output
                                       create-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/flows/" :code 201)

(smithy/sdk/operation:define-operation create-flow-alias :shape-name
                                       "CreateFlowAlias" :input
                                       create-flow-alias-request :output
                                       create-flow-alias-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/aliases" :code
                                       201)

(smithy/sdk/operation:define-operation create-flow-version :shape-name
                                       "CreateFlowVersion" :input
                                       create-flow-version-request :output
                                       create-flow-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/versions" :code
                                       201)

(smithy/sdk/operation:define-operation create-knowledge-base :shape-name
                                       "CreateKnowledgeBase" :input
                                       create-knowledge-base-request :output
                                       create-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/knowledgebases/"
                                       :code 202)

(smithy/sdk/operation:define-operation create-prompt :shape-name "CreatePrompt"
                                       :input create-prompt-request :output
                                       create-prompt-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/prompts/" :code
                                       201)

(smithy/sdk/operation:define-operation create-prompt-version :shape-name
                                       "CreatePromptVersion" :input
                                       create-prompt-version-request :output
                                       create-prompt-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/prompts/{promptIdentifier}/versions"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-agent :shape-name "DeleteAgent"
                                       :input delete-agent-request :output
                                       delete-agent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/" :code 202)

(smithy/sdk/operation:define-operation delete-agent-action-group :shape-name
                                       "DeleteAgentActionGroup" :input
                                       delete-agent-action-group-request
                                       :output
                                       delete-agent-action-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-agent-alias :shape-name
                                       "DeleteAgentAlias" :input
                                       delete-agent-alias-request :output
                                       delete-agent-alias-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentaliases/{agentAliasId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-agent-version :shape-name
                                       "DeleteAgentVersion" :input
                                       delete-agent-version-request :output
                                       delete-agent-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-request :output
                                       delete-data-source-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-flow :shape-name "DeleteFlow"
                                       :input delete-flow-request :output
                                       delete-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/flows/{flowIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation delete-flow-alias :shape-name
                                       "DeleteFlowAlias" :input
                                       delete-flow-alias-request :output
                                       delete-flow-alias-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-flow-version :shape-name
                                       "DeleteFlowVersion" :input
                                       delete-flow-version-request :output
                                       delete-flow-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/flows/{flowIdentifier}/versions/{flowVersion}/"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-knowledge-base :shape-name
                                       "DeleteKnowledgeBase" :input
                                       delete-knowledge-base-request :output
                                       delete-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgebases/{knowledgeBaseId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-knowledge-base-documents
                                       :shape-name
                                       "DeleteKnowledgeBaseDocuments" :input
                                       delete-knowledge-base-documents-request
                                       :output
                                       delete-knowledge-base-documents-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/deleteDocuments"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-prompt :shape-name "DeletePrompt"
                                       :input delete-prompt-request :output
                                       delete-prompt-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/prompts/{promptIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation disassociate-agent-collaborator
                                       :shape-name
                                       "DisassociateAgentCollaborator" :input
                                       disassociate-agent-collaborator-request
                                       :output
                                       disassociate-agent-collaborator-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"
                                       :code 204)

(smithy/sdk/operation:define-operation disassociate-agent-knowledge-base
                                       :shape-name
                                       "DisassociateAgentKnowledgeBase" :input
                                       disassociate-agent-knowledge-base-request
                                       :output
                                       disassociate-agent-knowledge-base-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
                                       :code 204)

(smithy/sdk/operation:define-operation get-agent :shape-name "GetAgent" :input
                                       get-agent-request :output
                                       get-agent-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/agents/{agentId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-action-group :shape-name
                                       "GetAgentActionGroup" :input
                                       get-agent-action-group-request :output
                                       get-agent-action-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-alias :shape-name
                                       "GetAgentAlias" :input
                                       get-agent-alias-request :output
                                       get-agent-alias-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentaliases/{agentAliasId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-collaborator :shape-name
                                       "GetAgentCollaborator" :input
                                       get-agent-collaborator-request :output
                                       get-agent-collaborator-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-knowledge-base :shape-name
                                       "GetAgentKnowledgeBase" :input
                                       get-agent-knowledge-base-request :output
                                       get-agent-knowledge-base-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-version :shape-name
                                       "GetAgentVersion" :input
                                       get-agent-version-request :output
                                       get-agent-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source :shape-name
                                       "GetDataSource" :input
                                       get-data-source-request :output
                                       get-data-source-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-flow :shape-name "GetFlow" :input
                                       get-flow-request :output
                                       get-flow-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation get-flow-alias :shape-name
                                       "GetFlowAlias" :input
                                       get-flow-alias-request :output
                                       get-flow-alias-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-flow-version :shape-name
                                       "GetFlowVersion" :input
                                       get-flow-version-request :output
                                       get-flow-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/versions/{flowVersion}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ingestion-job :shape-name
                                       "GetIngestionJob" :input
                                       get-ingestion-job-request :output
                                       get-ingestion-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-knowledge-base :shape-name
                                       "GetKnowledgeBase" :input
                                       get-knowledge-base-request :output
                                       get-knowledge-base-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgebases/{knowledgeBaseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-knowledge-base-documents :shape-name
                                       "GetKnowledgeBaseDocuments" :input
                                       get-knowledge-base-documents-request
                                       :output
                                       get-knowledge-base-documents-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/getDocuments"
                                       :code 200)

(smithy/sdk/operation:define-operation get-prompt :shape-name "GetPrompt"
                                       :input get-prompt-request :output
                                       get-prompt-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/prompts/{promptIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation ingest-knowledge-base-documents
                                       :shape-name
                                       "IngestKnowledgeBaseDocuments" :input
                                       ingest-knowledge-base-documents-request
                                       :output
                                       ingest-knowledge-base-documents-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents"
                                       :code 202)

(smithy/sdk/operation:define-operation list-agent-action-groups :shape-name
                                       "ListAgentActionGroups" :input
                                       list-agent-action-groups-request :output
                                       list-agent-action-groups-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-agent-aliases :shape-name
                                       "ListAgentAliases" :input
                                       list-agent-aliases-request :output
                                       list-agent-aliases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentaliases/" :code
                                       200)

(smithy/sdk/operation:define-operation list-agent-collaborators :shape-name
                                       "ListAgentCollaborators" :input
                                       list-agent-collaborators-request :output
                                       list-agent-collaborators-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-agent-knowledge-bases :shape-name
                                       "ListAgentKnowledgeBases" :input
                                       list-agent-knowledge-bases-request
                                       :output
                                       list-agent-knowledge-bases-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-agent-versions :shape-name
                                       "ListAgentVersions" :input
                                       list-agent-versions-request :output
                                       list-agent-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentversions/" :code
                                       200)

(smithy/sdk/operation:define-operation list-agents :shape-name "ListAgents"
                                       :input list-agents-request :output
                                       list-agents-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/agents/" :code 200)

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-request :output
                                       list-data-sources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-flow-aliases :shape-name
                                       "ListFlowAliases" :input
                                       list-flow-aliases-request :output
                                       list-flow-aliases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/aliases" :code
                                       200)

(smithy/sdk/operation:define-operation list-flow-versions :shape-name
                                       "ListFlowVersions" :input
                                       list-flow-versions-request :output
                                       list-flow-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/versions" :code
                                       200)

(smithy/sdk/operation:define-operation list-flows :shape-name "ListFlows"
                                       :input list-flows-request :output
                                       list-flows-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/flows/" :code 200)

(smithy/sdk/operation:define-operation list-ingestion-jobs :shape-name
                                       "ListIngestionJobs" :input
                                       list-ingestion-jobs-request :output
                                       list-ingestion-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-knowledge-base-documents
                                       :shape-name "ListKnowledgeBaseDocuments"
                                       :input
                                       list-knowledge-base-documents-request
                                       :output
                                       list-knowledge-base-documents-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-knowledge-bases :shape-name
                                       "ListKnowledgeBases" :input
                                       list-knowledge-bases-request :output
                                       list-knowledge-bases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/knowledgebases/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-prompts :shape-name "ListPrompts"
                                       :input list-prompts-request :output
                                       list-prompts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/prompts/" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation prepare-agent :shape-name "PrepareAgent"
                                       :input prepare-agent-request :output
                                       prepare-agent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/agents/{agentId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation prepare-flow :shape-name "PrepareFlow"
                                       :input prepare-flow-request :output
                                       prepare-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/" :code 202)

(smithy/sdk/operation:define-operation start-ingestion-job :shape-name
                                       "StartIngestionJob" :input
                                       start-ingestion-job-request :output
                                       start-ingestion-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/"
                                       :code 202)

(smithy/sdk/operation:define-operation stop-ingestion-job :shape-name
                                       "StopIngestionJob" :input
                                       stop-ingestion-job-request :output
                                       stop-ingestion-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}/stop"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-agent :shape-name "UpdateAgent"
                                       :input update-agent-request :output
                                       update-agent-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/agents/{agentId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation update-agent-action-group :shape-name
                                       "UpdateAgentActionGroup" :input
                                       update-agent-action-group-request
                                       :output
                                       update-agent-action-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-agent-alias :shape-name
                                       "UpdateAgentAlias" :input
                                       update-agent-alias-request :output
                                       update-agent-alias-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentaliases/{agentAliasId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation update-agent-collaborator :shape-name
                                       "UpdateAgentCollaborator" :input
                                       update-agent-collaborator-request
                                       :output
                                       update-agent-collaborator-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-agent-knowledge-base :shape-name
                                       "UpdateAgentKnowledgeBase" :input
                                       update-agent-knowledge-base-request
                                       :output
                                       update-agent-knowledge-base-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-request :output
                                       update-data-source-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-flow :shape-name "UpdateFlow"
                                       :input update-flow-request :output
                                       update-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/flows/{flowIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation update-flow-alias :shape-name
                                       "UpdateFlowAlias" :input
                                       update-flow-alias-request :output
                                       update-flow-alias-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/flows/{flowIdentifier}/aliases/{aliasIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-knowledge-base :shape-name
                                       "UpdateKnowledgeBase" :input
                                       update-knowledge-base-request :output
                                       update-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/knowledgebases/{knowledgeBaseId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-prompt :shape-name "UpdatePrompt"
                                       :input update-prompt-request :output
                                       update-prompt-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/prompts/{promptIdentifier}/" :code 200)

(smithy/sdk/operation:define-operation validate-flow-definition :shape-name
                                       "ValidateFlowDefinition" :input
                                       validate-flow-definition-request :output
                                       validate-flow-definition-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/validate-definition" :code 200)
