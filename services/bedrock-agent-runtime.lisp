(uiop/package:define-package #:pira/bedrock-agent-runtime (:use)
                             (:export #:apischema #:awsresource-arn
                              #:access-denied-exception #:action-group-executor
                              #:action-group-invocation-input
                              #:action-group-invocation-output
                              #:action-group-name #:action-group-output-string
                              #:action-group-signature
                              #:action-group-signature-params
                              #:action-invocation-type
                              #:additional-model-request-fields
                              #:additional-model-request-fields-key
                              #:additional-model-request-fields-value
                              #:agent-action-group #:agent-action-groups
                              #:agent-alias-arn #:agent-alias-id
                              #:agent-collaboration
                              #:agent-collaborator-input-payload
                              #:agent-collaborator-invocation-input
                              #:agent-collaborator-invocation-output
                              #:agent-collaborator-output-payload
                              #:agent-collaborator-payload-string #:agent-id
                              #:agent-version
                              #:amazon-bedrock-agent-run-time-service
                              #:analyze-prompt-event #:api-content-map
                              #:api-invocation-input #:api-parameter
                              #:api-parameters #:api-path #:api-request-body
                              #:api-result #:attribute-type #:attribution
                              #:bad-gateway-exception #:base-prompt-template
                              #:bedrock-model-arn
                              #:bedrock-model-configurations
                              #:bedrock-reranking-configuration
                              #:bedrock-reranking-model-arn
                              #:bedrock-reranking-model-configuration
                              #:bedrock-session-content-block
                              #:bedrock-session-content-blocks
                              #:byte-content-blob #:byte-content-doc
                              #:byte-content-file #:caller #:caller-chain
                              #:citation #:citation-event #:citations
                              #:code-interpreter-invocation-input
                              #:code-interpreter-invocation-output
                              #:collaboration-instruction #:collaborator
                              #:collaborator-configuration
                              #:collaborator-configurations #:collaborators
                              #:condition-result-event #:confirmation-state
                              #:conflict-exception #:content-block
                              #:content-blocks #:content-body #:content-map
                              #:content-type #:conversation-history
                              #:conversation-role #:create-invocation
                              #:create-invocation-request
                              #:create-invocation-response #:create-session
                              #:create-session-request
                              #:create-session-response #:creation-mode
                              #:custom-control-method #:custom-orchestration
                              #:custom-orchestration-trace
                              #:custom-orchestration-trace-event
                              #:date-timestamp #:delete-agent-memory
                              #:delete-agent-memory-request
                              #:delete-agent-memory-response #:delete-session
                              #:delete-session-request
                              #:delete-session-response
                              #:dependency-failed-exception #:end-session
                              #:end-session-request #:end-session-response
                              #:execution-type #:external-source
                              #:external-source-type #:external-sources
                              #:external-sources-generation-configuration
                              #:external-sources-retrieve-and-generate-configuration
                              #:failure-reason-string #:failure-trace
                              #:field-for-reranking #:fields-for-reranking
                              #:file-body #:file-part #:file-source
                              #:file-source-type #:file-use-case #:files
                              #:filter-attribute #:filter-key #:filter-value
                              #:final-response #:final-response-string
                              #:flow-alias-identifier #:flow-completion-event
                              #:flow-completion-reason #:flow-error-code
                              #:flow-execution-content #:flow-execution-error
                              #:flow-execution-error-type
                              #:flow-execution-errors #:flow-execution-event
                              #:flow-execution-event-type
                              #:flow-execution-events #:flow-execution-id
                              #:flow-execution-identifier
                              #:flow-execution-input-event
                              #:flow-execution-name
                              #:flow-execution-output-event
                              #:flow-execution-resource
                              #:flow-execution-role-arn #:flow-execution-status
                              #:flow-execution-summaries
                              #:flow-execution-summary #:flow-failure-event
                              #:flow-identifier #:flow-input
                              #:flow-input-content #:flow-input-field
                              #:flow-input-fields #:flow-inputs
                              #:flow-multi-turn-input-content
                              #:flow-multi-turn-input-request-event
                              #:flow-output-content #:flow-output-event
                              #:flow-output-field #:flow-output-fields
                              #:flow-resource #:flow-response-stream
                              #:flow-trace #:flow-trace-condition
                              #:flow-trace-condition-node-result-event
                              #:flow-trace-conditions #:flow-trace-event
                              #:flow-trace-node-action-event
                              #:flow-trace-node-input-content
                              #:flow-trace-node-input-event
                              #:flow-trace-node-input-field
                              #:flow-trace-node-input-fields
                              #:flow-trace-node-output-content
                              #:flow-trace-node-output-event
                              #:flow-trace-node-output-field
                              #:flow-trace-node-output-fields #:function
                              #:function-definition #:function-description
                              #:function-invocation-input #:function-parameter
                              #:function-parameters #:function-result
                              #:function-schema #:functions #:generate-query
                              #:generate-query-request
                              #:generate-query-resource
                              #:generate-query-response #:generated-queries
                              #:generated-query #:generated-query-type
                              #:generated-response-part
                              #:generation-configuration #:get-agent-memory
                              #:get-agent-memory-request
                              #:get-agent-memory-response
                              #:get-execution-flow-snapshot
                              #:get-execution-flow-snapshot-request
                              #:get-execution-flow-snapshot-response
                              #:get-flow-execution #:get-flow-execution-request
                              #:get-flow-execution-response
                              #:get-invocation-step
                              #:get-invocation-step-request
                              #:get-invocation-step-response #:get-session
                              #:get-session-request #:get-session-response
                              #:guadrail-action #:guardrail-action
                              #:guardrail-assessment
                              #:guardrail-assessment-list
                              #:guardrail-configuration
                              #:guardrail-configuration-with-arn
                              #:guardrail-content-filter
                              #:guardrail-content-filter-confidence
                              #:guardrail-content-filter-list
                              #:guardrail-content-filter-type
                              #:guardrail-content-policy-action
                              #:guardrail-content-policy-assessment
                              #:guardrail-custom-word
                              #:guardrail-custom-word-list #:guardrail-event
                              #:guardrail-identifier-with-arn
                              #:guardrail-managed-word
                              #:guardrail-managed-word-list
                              #:guardrail-managed-word-type
                              #:guardrail-pii-entity-filter
                              #:guardrail-pii-entity-filter-list
                              #:guardrail-pii-entity-type
                              #:guardrail-regex-filter
                              #:guardrail-regex-filter-list
                              #:guardrail-sensitive-information-policy-action
                              #:guardrail-sensitive-information-policy-assessment
                              #:guardrail-topic #:guardrail-topic-list
                              #:guardrail-topic-policy-action
                              #:guardrail-topic-policy-assessment
                              #:guardrail-topic-type #:guardrail-trace
                              #:guardrail-version
                              #:guardrail-word-policy-action
                              #:guardrail-word-policy-assessment #:identifier
                              #:image-block #:image-format #:image-input
                              #:image-input-format #:image-input-source
                              #:image-inputs #:image-source
                              #:implicit-filter-configuration
                              #:inference-config #:inference-configuration
                              #:inference-resource #:inline-agent-file-part
                              #:inline-agent-payload-part
                              #:inline-agent-resource
                              #:inline-agent-response-stream
                              #:inline-agent-return-control-payload
                              #:inline-agent-trace-part
                              #:inline-bedrock-model-configurations
                              #:inline-session-state #:input-file #:input-files
                              #:input-prompt #:input-query-type #:input-text
                              #:instruction #:internal-server-exception
                              #:invocation-description #:invocation-identifier
                              #:invocation-input #:invocation-input-member
                              #:invocation-inputs #:invocation-resource
                              #:invocation-result-member #:invocation-step
                              #:invocation-step-payload
                              #:invocation-step-resource
                              #:invocation-step-summaries
                              #:invocation-step-summary #:invocation-summaries
                              #:invocation-summary #:invocation-type
                              #:invoke-agent #:invoke-agent-request
                              #:invoke-agent-response #:invoke-flow
                              #:invoke-flow-request #:invoke-flow-response
                              #:invoke-inline-agent
                              #:invoke-inline-agent-request
                              #:invoke-inline-agent-response #:kms-key-arn
                              #:knowledge-base #:knowledge-base-arn
                              #:knowledge-base-configuration
                              #:knowledge-base-configurations
                              #:knowledge-base-id #:knowledge-base-lookup-input
                              #:knowledge-base-lookup-input-string
                              #:knowledge-base-lookup-output
                              #:knowledge-base-query
                              #:knowledge-base-retrieval-configuration
                              #:knowledge-base-retrieval-result
                              #:knowledge-base-retrieval-results
                              #:knowledge-base-retrieve-and-generate-configuration
                              #:knowledge-base-vector-search-configuration
                              #:knowledge-bases #:lambda-arn
                              #:lambda-resource-arn
                              #:list-flow-execution-events
                              #:list-flow-execution-events-request
                              #:list-flow-execution-events-response
                              #:list-flow-executions
                              #:list-flow-executions-request
                              #:list-flow-executions-response
                              #:list-invocation-steps
                              #:list-invocation-steps-request
                              #:list-invocation-steps-response
                              #:list-invocations #:list-invocations-request
                              #:list-invocations-response #:list-sessions
                              #:list-sessions-request #:list-sessions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:max-tokens #:maximum-length #:memories #:memory
                              #:memory-id #:memory-resource
                              #:memory-session-summary #:memory-type #:message
                              #:messages #:metadata #:metadata-attribute-schema
                              #:metadata-attribute-schema-list
                              #:metadata-configuration-for-reranking
                              #:mime-type #:model-identifier
                              #:model-invocation-input
                              #:model-not-ready-exception
                              #:model-performance-configuration #:name
                              #:next-token #:node-error-code
                              #:node-execution-content #:node-failure-event
                              #:node-input-event #:node-input-field
                              #:node-input-fields #:node-input-name #:node-name
                              #:node-output-event #:node-output-field
                              #:node-output-fields #:node-output-name
                              #:node-type #:non-blank-string #:observation
                              #:optimize-prompt #:optimize-prompt-request
                              #:optimize-prompt-resource
                              #:optimize-prompt-response #:optimized-prompt
                              #:optimized-prompt-event
                              #:optimized-prompt-stream
                              #:orchestration-configuration
                              #:orchestration-executor
                              #:orchestration-model-invocation-output
                              #:orchestration-trace #:orchestration-type
                              #:output-file #:output-files #:output-string
                              #:parameter #:parameter-description
                              #:parameter-detail #:parameter-list
                              #:parameter-map #:parameter-name #:parameter-type
                              #:parameters #:part-body #:payload #:payload-part
                              #:payload-type #:performance-config-latency
                              #:performance-configuration
                              #:post-processing-model-invocation-output
                              #:post-processing-parsed-response
                              #:post-processing-trace
                              #:pre-processing-model-invocation-output
                              #:pre-processing-parsed-response
                              #:pre-processing-trace #:prompt-configuration
                              #:prompt-configurations
                              #:prompt-creation-configurations
                              #:prompt-override-configuration
                              #:prompt-session-attributes-map #:prompt-state
                              #:prompt-template #:prompt-text #:prompt-type
                              #:property-parameters #:put-invocation-step
                              #:put-invocation-step-request
                              #:put-invocation-step-response
                              #:query-generation-input
                              #:query-transformation-configuration
                              #:query-transformation-mode
                              #:query-transformation-type #:ragstop-sequences
                              #:rationale #:rationale-string #:raw-response
                              #:reasoning-content-block #:reasoning-text-block
                              #:relay-conversation-history #:reprompt-response
                              #:request-body #:require-confirmation #:rerank
                              #:rerank-document #:rerank-document-type
                              #:rerank-queries-list #:rerank-query
                              #:rerank-query-content-type #:rerank-request
                              #:rerank-resource #:rerank-response
                              #:rerank-result #:rerank-results-list
                              #:rerank-source #:rerank-source-type
                              #:rerank-sources-list #:rerank-text-document
                              #:reranking-configuration
                              #:reranking-configuration-type
                              #:reranking-metadata-selection-mode
                              #:reranking-metadata-selective-mode-configuration
                              #:resource-description #:resource-name
                              #:resource-not-found-exception #:response-body
                              #:response-state #:response-stream
                              #:retrieval-filter #:retrieval-filter-list
                              #:retrieval-result-confluence-location
                              #:retrieval-result-content
                              #:retrieval-result-content-column
                              #:retrieval-result-content-column-type
                              #:retrieval-result-content-row
                              #:retrieval-result-content-type
                              #:retrieval-result-custom-document-location
                              #:retrieval-result-kendra-document-location
                              #:retrieval-result-location
                              #:retrieval-result-location-type
                              #:retrieval-result-metadata
                              #:retrieval-result-metadata-key
                              #:retrieval-result-metadata-value
                              #:retrieval-result-s3location
                              #:retrieval-result-salesforce-location
                              #:retrieval-result-share-point-location
                              #:retrieval-result-sql-location
                              #:retrieval-result-web-location #:retrieve
                              #:retrieve-and-generate
                              #:retrieve-and-generate-configuration
                              #:retrieve-and-generate-input
                              #:retrieve-and-generate-output
                              #:retrieve-and-generate-output-event
                              #:retrieve-and-generate-request
                              #:retrieve-and-generate-resource
                              #:retrieve-and-generate-response
                              #:retrieve-and-generate-session-configuration
                              #:retrieve-and-generate-stream
                              #:retrieve-and-generate-stream-request
                              #:retrieve-and-generate-stream-resource
                              #:retrieve-and-generate-stream-response
                              #:retrieve-and-generate-stream-response-output
                              #:retrieve-and-generate-type #:retrieve-request
                              #:retrieve-resource #:retrieve-response
                              #:retrieved-reference #:retrieved-references
                              #:return-control-invocation-results
                              #:return-control-payload #:return-control-results
                              #:routing-classifier-model-invocation-output
                              #:routing-classifier-trace #:s3bucket-name
                              #:s3identifier #:s3location #:s3object-doc
                              #:s3object-file #:s3object-key #:s3uri
                              #:satisfied-condition #:satisfied-conditions
                              #:search-type #:service-quota-exceeded-exception
                              #:session-arn #:session-attributes-map
                              #:session-id #:session-identifier
                              #:session-metadata-key #:session-metadata-map
                              #:session-metadata-value #:session-resource
                              #:session-state #:session-status
                              #:session-summaries #:session-summary
                              #:session-ttl #:source #:span
                              #:start-flow-execution
                              #:start-flow-execution-request
                              #:start-flow-execution-response
                              #:stop-flow-execution
                              #:stop-flow-execution-request
                              #:stop-flow-execution-response #:stop-sequences
                              #:streaming-configurations #:summary-text
                              #:tag-key #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:taggable-resources-arn
                              #:tagging-resource #:tags-map #:temperature
                              #:text-inference-config #:text-prompt
                              #:text-prompt-template #:text-response-part
                              #:text-to-sql-configuration
                              #:text-to-sql-configuration-type
                              #:text-to-sql-knowledge-base-configuration
                              #:throttling-exception #:top-k #:top-p #:trace
                              #:trace-id #:trace-knowledge-base-id #:trace-part
                              #:transformation-configuration #:type
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-session
                              #:update-session-request
                              #:update-session-response #:usage #:uuid
                              #:validation-exception
                              #:vector-search-bedrock-reranking-configuration
                              #:vector-search-bedrock-reranking-model-configuration
                              #:vector-search-reranking-configuration
                              #:vector-search-reranking-configuration-type
                              #:verb #:version))
(common-lisp:in-package #:pira/bedrock-agent-runtime)

(smithy/sdk/service:define-service amazon-bedrock-agent-run-time-service
                                   :shape-name
                                   "AmazonBedrockAgentRunTimeService" :version
                                   "2023-07-26" :title
                                   "Agents for Amazon Bedrock Runtime" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock Agent Runtime")
                                      ("arnNamespace" . "bedrock")
                                      ("endpointPrefix"
                                       . "bedrock-agent-runtime")
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

(smithy/sdk/shapes:define-type awsresource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-union action-group-executor common-lisp:nil
                                ((lambda :target-type lambda-resource-arn
                                  :member-name "lambda")
                                 (custom-control :target-type
                                  custom-control-method :member-name
                                  "customControl"))
                                (:shape-name "ActionGroupExecutor"))

(smithy/sdk/shapes:define-structure action-group-invocation-input
                                    common-lisp:nil
                                    ((action-group-name :target-type
                                      action-group-name :member-name
                                      "actionGroupName")
                                     (verb :target-type verb :member-name
                                      "verb")
                                     (api-path :target-type api-path
                                      :member-name "apiPath")
                                     (parameters :target-type parameters
                                      :member-name "parameters")
                                     (request-body :target-type request-body
                                      :member-name "requestBody")
                                     (function :target-type function
                                      :member-name "function")
                                     (execution-type :target-type
                                      execution-type :member-name
                                      "executionType")
                                     (invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId"))
                                    (:shape-name "ActionGroupInvocationInput"))

(smithy/sdk/shapes:define-structure action-group-invocation-output
                                    common-lisp:nil
                                    ((text :target-type
                                      action-group-output-string :member-name
                                      "text")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name "ActionGroupInvocationOutput"))

(smithy/sdk/shapes:define-type action-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-group-output-string
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-enum action-invocation-type
    common-lisp:nil
  (:result "RESULT")
  (:user-confirmation "USER_CONFIRMATION")
  (:user-confirmation-and-result "USER_CONFIRMATION_AND_RESULT"))

(smithy/sdk/shapes:define-map additional-model-request-fields :key
                              additional-model-request-fields-key :value
                              additional-model-request-fields-value)

(smithy/sdk/shapes:define-type additional-model-request-fields-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type additional-model-request-fields-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure agent-action-group common-lisp:nil
                                    ((action-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "actionGroupName")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (parent-action-group-signature
                                      :target-type action-group-signature
                                      :member-name
                                      "parentActionGroupSignature")
                                     (action-group-executor :target-type
                                      action-group-executor :member-name
                                      "actionGroupExecutor")
                                     (api-schema :target-type apischema
                                      :member-name "apiSchema")
                                     (function-schema :target-type
                                      function-schema :member-name
                                      "functionSchema")
                                     (parent-action-group-signature-params
                                      :target-type
                                      action-group-signature-params
                                      :member-name
                                      "parentActionGroupSignatureParams"))
                                    (:shape-name "AgentActionGroup"))

(smithy/sdk/shapes:define-list agent-action-groups :member agent-action-group)

(smithy/sdk/shapes:define-type agent-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-alias-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum agent-collaboration
    common-lisp:nil
  (:supervisor "SUPERVISOR")
  (:supervisor-router "SUPERVISOR_ROUTER")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure agent-collaborator-input-payload
                                    common-lisp:nil
                                    ((type :target-type payload-type
                                      :member-name "type")
                                     (text :target-type
                                      agent-collaborator-payload-string
                                      :member-name "text")
                                     (return-control-results :target-type
                                      return-control-results :member-name
                                      "returnControlResults"))
                                    (:shape-name
                                     "AgentCollaboratorInputPayload"))

(smithy/sdk/shapes:define-structure agent-collaborator-invocation-input
                                    common-lisp:nil
                                    ((agent-collaborator-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentCollaboratorName")
                                     (agent-collaborator-alias-arn :target-type
                                      agent-alias-arn :member-name
                                      "agentCollaboratorAliasArn")
                                     (input :target-type
                                      agent-collaborator-input-payload
                                      :member-name "input"))
                                    (:shape-name
                                     "AgentCollaboratorInvocationInput"))

(smithy/sdk/shapes:define-structure agent-collaborator-invocation-output
                                    common-lisp:nil
                                    ((agent-collaborator-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentCollaboratorName")
                                     (agent-collaborator-alias-arn :target-type
                                      agent-alias-arn :member-name
                                      "agentCollaboratorAliasArn")
                                     (output :target-type
                                      agent-collaborator-output-payload
                                      :member-name "output")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name
                                     "AgentCollaboratorInvocationOutput"))

(smithy/sdk/shapes:define-structure agent-collaborator-output-payload
                                    common-lisp:nil
                                    ((type :target-type payload-type
                                      :member-name "type")
                                     (text :target-type
                                      agent-collaborator-payload-string
                                      :member-name "text")
                                     (return-control-payload :target-type
                                      return-control-payload :member-name
                                      "returnControlPayload"))
                                    (:shape-name
                                     "AgentCollaboratorOutputPayload"))

(smithy/sdk/shapes:define-type agent-collaborator-payload-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analyze-prompt-event common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "AnalyzePromptEvent"))

(smithy/sdk/shapes:define-map api-content-map :key
                              smithy/sdk/smithy-types:string :value
                              property-parameters)

(smithy/sdk/shapes:define-structure api-invocation-input common-lisp:nil
                                    ((action-group :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "actionGroup")
                                     (http-method :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "httpMethod")
                                     (api-path :target-type api-path
                                      :member-name "apiPath")
                                     (parameters :target-type api-parameters
                                      :member-name "parameters")
                                     (request-body :target-type
                                      api-request-body :member-name
                                      "requestBody")
                                     (action-invocation-type :target-type
                                      action-invocation-type :member-name
                                      "actionInvocationType")
                                     (agent-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentId")
                                     (collaborator-name :target-type name
                                      :member-name "collaboratorName"))
                                    (:shape-name "ApiInvocationInput"))

(smithy/sdk/shapes:define-structure api-parameter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "ApiParameter"))

(smithy/sdk/shapes:define-list api-parameters :member api-parameter)

(smithy/sdk/shapes:define-type api-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure api-request-body common-lisp:nil
                                    ((content :target-type api-content-map
                                      :member-name "content"))
                                    (:shape-name "ApiRequestBody"))

(smithy/sdk/shapes:define-structure api-result common-lisp:nil
                                    ((action-group :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "actionGroup")
                                     (http-method :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "httpMethod")
                                     (api-path :target-type api-path
                                      :member-name "apiPath")
                                     (confirmation-state :target-type
                                      confirmation-state :member-name
                                      "confirmationState")
                                     (response-state :target-type
                                      response-state :member-name
                                      "responseState")
                                     (http-status-code :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "httpStatusCode")
                                     (response-body :target-type response-body
                                      :member-name "responseBody")
                                     (agent-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentId"))
                                    (:shape-name "ApiResult"))

(smithy/sdk/shapes:define-enum attribute-type
    common-lisp:nil
  (:string "STRING")
  (:number "NUMBER")
  (:boolean "BOOLEAN")
  (:string-list "STRING_LIST"))

(smithy/sdk/shapes:define-structure attribution common-lisp:nil
                                    ((citations :target-type citations
                                      :member-name "citations"))
                                    (:shape-name "Attribution"))

(smithy/sdk/shapes:define-error bad-gateway-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (resource-name :target-type non-blank-string
                                  :member-name "resourceName"))
                                (:shape-name "BadGatewayException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type base-prompt-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bedrock-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-model-configurations
                                    common-lisp:nil
                                    ((performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name "BedrockModelConfigurations"))

(smithy/sdk/shapes:define-structure bedrock-reranking-configuration
                                    common-lisp:nil
                                    ((number-of-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfResults")
                                     (model-configuration :target-type
                                      bedrock-reranking-model-configuration
                                      :required common-lisp:t :member-name
                                      "modelConfiguration"))
                                    (:shape-name
                                     "BedrockRerankingConfiguration"))

(smithy/sdk/shapes:define-type bedrock-reranking-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bedrock-reranking-model-configuration
                                    common-lisp:nil
                                    ((model-arn :target-type bedrock-model-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields"))
                                    (:shape-name
                                     "BedrockRerankingModelConfiguration"))

(smithy/sdk/shapes:define-union bedrock-session-content-block common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (image :target-type image-block :member-name
                                  "image"))
                                (:shape-name "BedrockSessionContentBlock"))

(smithy/sdk/shapes:define-list bedrock-session-content-blocks :member
                               bedrock-session-content-block)

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

(smithy/sdk/shapes:define-structure byte-content-file common-lisp:nil
                                    ((media-type :target-type mime-type
                                      :required common-lisp:t :member-name
                                      "mediaType")
                                     (data :target-type byte-content-blob
                                      :required common-lisp:t :member-name
                                      "data"))
                                    (:shape-name "ByteContentFile"))

(smithy/sdk/shapes:define-union caller common-lisp:nil
                                ((agent-alias-arn :target-type agent-alias-arn
                                  :member-name "agentAliasArn"))
                                (:shape-name "Caller"))

(smithy/sdk/shapes:define-list caller-chain :member caller)

(smithy/sdk/shapes:define-structure citation common-lisp:nil
                                    ((generated-response-part :target-type
                                      generated-response-part :member-name
                                      "generatedResponsePart")
                                     (retrieved-references :target-type
                                      retrieved-references :member-name
                                      "retrievedReferences"))
                                    (:shape-name "Citation"))

(smithy/sdk/shapes:define-structure citation-event common-lisp:nil
                                    ((citation :target-type citation
                                      :member-name "citation")
                                     (generated-response-part :target-type
                                      generated-response-part :member-name
                                      "generatedResponsePart")
                                     (retrieved-references :target-type
                                      retrieved-references :member-name
                                      "retrievedReferences"))
                                    (:shape-name "CitationEvent"))

(smithy/sdk/shapes:define-list citations :member citation)

(smithy/sdk/shapes:define-structure code-interpreter-invocation-input
                                    common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code")
                                     (files :target-type files :member-name
                                      "files"))
                                    (:shape-name
                                     "CodeInterpreterInvocationInput"))

(smithy/sdk/shapes:define-structure code-interpreter-invocation-output
                                    common-lisp:nil
                                    ((execution-output :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "executionOutput")
                                     (execution-error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "executionError")
                                     (files :target-type files :member-name
                                      "files")
                                     (execution-timeout :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "executionTimeout")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name
                                     "CodeInterpreterInvocationOutput"))

(smithy/sdk/shapes:define-type collaboration-instruction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collaborator common-lisp:nil
                                    ((customer-encryption-key-arn :target-type
                                      kms-key-arn :member-name
                                      "customerEncryptionKeyArn")
                                     (foundation-model :target-type
                                      model-identifier :required common-lisp:t
                                      :member-name "foundationModel")
                                     (instruction :target-type instruction
                                      :required common-lisp:t :member-name
                                      "instruction")
                                     (idle-session-ttlin-seconds :target-type
                                      session-ttl :member-name
                                      "idleSessionTTLInSeconds")
                                     (action-groups :target-type
                                      agent-action-groups :member-name
                                      "actionGroups")
                                     (knowledge-bases :target-type
                                      knowledge-bases :member-name
                                      "knowledgeBases")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration-with-arn
                                      :member-name "guardrailConfiguration")
                                     (prompt-override-configuration
                                      :target-type
                                      prompt-override-configuration
                                      :member-name
                                      "promptOverrideConfiguration")
                                     (agent-collaboration :target-type
                                      agent-collaboration :member-name
                                      "agentCollaboration")
                                     (collaborator-configurations :target-type
                                      collaborator-configurations :member-name
                                      "collaboratorConfigurations")
                                     (agent-name :target-type name :member-name
                                      "agentName"))
                                    (:shape-name "Collaborator"))

(smithy/sdk/shapes:define-structure collaborator-configuration common-lisp:nil
                                    ((collaborator-name :target-type name
                                      :required common-lisp:t :member-name
                                      "collaboratorName")
                                     (collaborator-instruction :target-type
                                      collaboration-instruction :required
                                      common-lisp:t :member-name
                                      "collaboratorInstruction")
                                     (agent-alias-arn :target-type
                                      agent-alias-arn :member-name
                                      "agentAliasArn")
                                     (relay-conversation-history :target-type
                                      relay-conversation-history :member-name
                                      "relayConversationHistory"))
                                    (:shape-name "CollaboratorConfiguration"))

(smithy/sdk/shapes:define-list collaborator-configurations :member
                               collaborator-configuration)

(smithy/sdk/shapes:define-list collaborators :member collaborator)

(smithy/sdk/shapes:define-structure condition-result-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (satisfied-conditions :target-type
                                      satisfied-conditions :required
                                      common-lisp:t :member-name
                                      "satisfiedConditions"))
                                    (:shape-name "ConditionResultEvent"))

(smithy/sdk/shapes:define-enum confirmation-state
    common-lisp:nil
  (:confirm "CONFIRM")
  (:deny "DENY"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-union content-block common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text"))
                                (:shape-name "ContentBlock"))

(smithy/sdk/shapes:define-list content-blocks :member content-block)

(smithy/sdk/shapes:define-structure content-body common-lisp:nil
                                    ((body :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "body")
                                     (images :target-type image-inputs
                                      :member-name "images"))
                                    (:shape-name "ContentBody"))

(smithy/sdk/shapes:define-map content-map :key smithy/sdk/smithy-types:string
                              :value parameters)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conversation-history common-lisp:nil
                                    ((messages :target-type messages
                                      :member-name "messages"))
                                    (:shape-name "ConversationHistory"))

(smithy/sdk/shapes:define-enum conversation-role
    common-lisp:nil
  (:user "user")
  (:assistant "assistant"))

(smithy/sdk/shapes:define-input create-invocation-request common-lisp:nil
                                ((invocation-id :target-type uuid :member-name
                                  "invocationId")
                                 (description :target-type
                                  invocation-description :member-name
                                  "description")
                                 (session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "CreateInvocationRequest"))

(smithy/sdk/shapes:define-output create-invocation-response common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (invocation-id :target-type uuid :required
                                   common-lisp:t :member-name "invocationId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name "CreateInvocationResponse"))

(smithy/sdk/shapes:define-input create-session-request common-lisp:nil
                                ((session-metadata :target-type
                                  session-metadata-map :member-name
                                  "sessionMetadata")
                                 (encryption-key-arn :target-type kms-key-arn
                                  :member-name "encryptionKeyArn")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateSessionRequest"))

(smithy/sdk/shapes:define-output create-session-response common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type session-arn
                                   :required common-lisp:t :member-name
                                   "sessionArn")
                                  (session-status :target-type session-status
                                   :required common-lisp:t :member-name
                                   "sessionStatus")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name "CreateSessionResponse"))

(smithy/sdk/shapes:define-enum creation-mode
    common-lisp:nil
  (:default "DEFAULT")
  (:overridden "OVERRIDDEN"))

(smithy/sdk/shapes:define-enum custom-control-method
    common-lisp:nil
  (:return-control "RETURN_CONTROL"))

(smithy/sdk/shapes:define-structure custom-orchestration common-lisp:nil
                                    ((executor :target-type
                                      orchestration-executor :member-name
                                      "executor"))
                                    (:shape-name "CustomOrchestration"))

(smithy/sdk/shapes:define-structure custom-orchestration-trace common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (event :target-type
                                      custom-orchestration-trace-event
                                      :member-name "event"))
                                    (:shape-name "CustomOrchestrationTrace"))

(smithy/sdk/shapes:define-structure custom-orchestration-trace-event
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text"))
                                    (:shape-name
                                     "CustomOrchestrationTraceEvent"))

(smithy/sdk/shapes:define-type date-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-agent-memory-request common-lisp:nil
                                ((agent-id :target-type agent-id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t)
                                 (memory-id :target-type memory-id :member-name
                                  "memoryId" :http-query "memoryId")
                                 (session-id :target-type session-id
                                  :member-name "sessionId" :http-query
                                  "sessionId"))
                                (:shape-name "DeleteAgentMemoryRequest"))

(smithy/sdk/shapes:define-output delete-agent-memory-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAgentMemoryResponse"))

(smithy/sdk/shapes:define-input delete-session-request common-lisp:nil
                                ((session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSessionRequest"))

(smithy/sdk/shapes:define-output delete-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSessionResponse"))

(smithy/sdk/shapes:define-error dependency-failed-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (resource-name :target-type non-blank-string
                                  :member-name "resourceName"))
                                (:shape-name "DependencyFailedException")
                                (:error-code 424))

(smithy/sdk/shapes:define-input end-session-request common-lisp:nil
                                ((session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "EndSessionRequest"))

(smithy/sdk/shapes:define-output end-session-response common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type session-arn
                                   :required common-lisp:t :member-name
                                   "sessionArn")
                                  (session-status :target-type session-status
                                   :required common-lisp:t :member-name
                                   "sessionStatus"))
                                 (:shape-name "EndSessionResponse"))

(smithy/sdk/shapes:define-enum execution-type
    common-lisp:nil
  (:lambda "LAMBDA")
  (:return-control "RETURN_CONTROL"))

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
                                     (inference-config :target-type
                                      inference-config :member-name
                                      "inferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
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

(smithy/sdk/shapes:define-type failure-reason-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-trace common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (failure-reason :target-type
                                      failure-reason-string :member-name
                                      "failureReason")
                                     (failure-code :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failureCode")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name "FailureTrace"))

(smithy/sdk/shapes:define-structure field-for-reranking common-lisp:nil
                                    ((field-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fieldName"))
                                    (:shape-name "FieldForReranking"))

(smithy/sdk/shapes:define-list fields-for-reranking :member field-for-reranking)

(smithy/sdk/shapes:define-type file-body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure file-part common-lisp:nil
                                    ((files :target-type output-files
                                      :member-name "files"))
                                    (:shape-name "FilePart"))

(smithy/sdk/shapes:define-structure file-source common-lisp:nil
                                    ((source-type :target-type file-source-type
                                      :required common-lisp:t :member-name
                                      "sourceType")
                                     (s3location :target-type s3object-file
                                      :member-name "s3Location")
                                     (byte-content :target-type
                                      byte-content-file :member-name
                                      "byteContent"))
                                    (:shape-name "FileSource"))

(smithy/sdk/shapes:define-enum file-source-type
    common-lisp:nil
  (:s3 "S3")
  (:byte-content "BYTE_CONTENT"))

(smithy/sdk/shapes:define-enum file-use-case
    common-lisp:nil
  (:code-interpreter "CODE_INTERPRETER")
  (:chat "CHAT"))

(smithy/sdk/shapes:define-list files :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-attribute common-lisp:nil
                                    ((key :target-type filter-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type filter-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "FilterAttribute"))

(smithy/sdk/shapes:define-type filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure final-response common-lisp:nil
                                    ((text :target-type final-response-string
                                      :member-name "text")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name "FinalResponse"))

(smithy/sdk/shapes:define-type final-response-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-alias-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-completion-event common-lisp:nil
                                    ((completion-reason :target-type
                                      flow-completion-reason :required
                                      common-lisp:t :member-name
                                      "completionReason"))
                                    (:shape-name "FlowCompletionEvent"))

(smithy/sdk/shapes:define-enum flow-completion-reason
    common-lisp:nil
  (:success "SUCCESS")
  (:input-required "INPUT_REQUIRED"))

(smithy/sdk/shapes:define-enum flow-error-code
    common-lisp:nil
  (:validation "VALIDATION")
  (:internal-server "INTERNAL_SERVER")
  (:node-execution-failed "NODE_EXECUTION_FAILED"))

(smithy/sdk/shapes:define-union flow-execution-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowExecutionContent"))

(smithy/sdk/shapes:define-structure flow-execution-error common-lisp:nil
                                    ((node-name :target-type node-name
                                      :member-name "nodeName")
                                     (error :target-type
                                      flow-execution-error-type :member-name
                                      "error")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "FlowExecutionError"))

(smithy/sdk/shapes:define-enum flow-execution-error-type
    common-lisp:nil
  (:timed-out "ExecutionTimedOut"))

(smithy/sdk/shapes:define-list flow-execution-errors :member
                               flow-execution-error)

(smithy/sdk/shapes:define-union flow-execution-event common-lisp:nil
                                ((flow-input-event :target-type
                                  flow-execution-input-event :member-name
                                  "flowInputEvent")
                                 (flow-output-event :target-type
                                  flow-execution-output-event :member-name
                                  "flowOutputEvent")
                                 (node-input-event :target-type
                                  node-input-event :member-name
                                  "nodeInputEvent")
                                 (node-output-event :target-type
                                  node-output-event :member-name
                                  "nodeOutputEvent")
                                 (condition-result-event :target-type
                                  condition-result-event :member-name
                                  "conditionResultEvent")
                                 (node-failure-event :target-type
                                  node-failure-event :member-name
                                  "nodeFailureEvent")
                                 (flow-failure-event :target-type
                                  flow-failure-event :member-name
                                  "flowFailureEvent"))
                                (:shape-name "FlowExecutionEvent"))

(smithy/sdk/shapes:define-enum flow-execution-event-type
    common-lisp:nil
  (:node "Node")
  (:flow "Flow"))

(smithy/sdk/shapes:define-list flow-execution-events :member
                               flow-execution-event)

(smithy/sdk/shapes:define-type flow-execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-execution-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-execution-input-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type flow-input-fields
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "FlowExecutionInputEvent"))

(smithy/sdk/shapes:define-type flow-execution-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-execution-output-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type flow-output-fields
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "FlowExecutionOutputEvent"))

common-lisp:nil

(smithy/sdk/shapes:define-type flow-execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum flow-execution-status
    common-lisp:nil
  (:running "Running")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:timed-out "TimedOut")
  (:aborted "Aborted"))

(smithy/sdk/shapes:define-list flow-execution-summaries :member
                               flow-execution-summary)

(smithy/sdk/shapes:define-structure flow-execution-summary common-lisp:nil
                                    ((execution-arn :target-type
                                      flow-execution-identifier :required
                                      common-lisp:t :member-name
                                      "executionArn")
                                     (flow-alias-identifier :target-type
                                      flow-alias-identifier :required
                                      common-lisp:t :member-name
                                      "flowAliasIdentifier")
                                     (flow-identifier :target-type
                                      flow-identifier :required common-lisp:t
                                      :member-name "flowIdentifier")
                                     (flow-version :target-type version
                                      :required common-lisp:t :member-name
                                      "flowVersion")
                                     (status :target-type flow-execution-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (ended-at :target-type date-timestamp
                                      :member-name "endedAt"))
                                    (:shape-name "FlowExecutionSummary"))

(smithy/sdk/shapes:define-structure flow-failure-event common-lisp:nil
                                    ((timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (error-code :target-type flow-error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name "FlowFailureEvent"))

(smithy/sdk/shapes:define-type flow-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-input common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (node-output-name :target-type
                                      node-output-name :member-name
                                      "nodeOutputName")
                                     (content :target-type flow-input-content
                                      :required common-lisp:t :member-name
                                      "content")
                                     (node-input-name :target-type
                                      node-input-name :member-name
                                      "nodeInputName"))
                                    (:shape-name "FlowInput"))

(smithy/sdk/shapes:define-union flow-input-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowInputContent"))

(smithy/sdk/shapes:define-structure flow-input-field common-lisp:nil
                                    ((name :target-type node-input-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content :target-type
                                      flow-execution-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "FlowInputField"))

(smithy/sdk/shapes:define-list flow-input-fields :member flow-input-field)

(smithy/sdk/shapes:define-list flow-inputs :member flow-input)

(smithy/sdk/shapes:define-union flow-multi-turn-input-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowMultiTurnInputContent"))

(smithy/sdk/shapes:define-structure flow-multi-turn-input-request-event
                                    common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (node-type :target-type node-type
                                      :required common-lisp:t :member-name
                                      "nodeType")
                                     (content :target-type
                                      flow-multi-turn-input-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name
                                     "FlowMultiTurnInputRequestEvent"))

(smithy/sdk/shapes:define-union flow-output-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowOutputContent"))

(smithy/sdk/shapes:define-structure flow-output-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (node-type :target-type node-type
                                      :required common-lisp:t :member-name
                                      "nodeType")
                                     (content :target-type flow-output-content
                                      :required common-lisp:t :member-name
                                      "content"))
                                    (:shape-name "FlowOutputEvent"))

(smithy/sdk/shapes:define-structure flow-output-field common-lisp:nil
                                    ((name :target-type node-output-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content :target-type
                                      flow-execution-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "FlowOutputField"))

(smithy/sdk/shapes:define-list flow-output-fields :member flow-output-field)

common-lisp:nil

(smithy/sdk/shapes:define-union flow-response-stream common-lisp:nil
                                ((flow-output-event :target-type
                                  flow-output-event :member-name
                                  "flowOutputEvent")
                                 (flow-completion-event :target-type
                                  flow-completion-event :member-name
                                  "flowCompletionEvent")
                                 (flow-trace-event :target-type
                                  flow-trace-event :member-name
                                  "flowTraceEvent")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (service-quota-exceeded-exception :target-type
                                  service-quota-exceeded-exception :member-name
                                  "serviceQuotaExceededException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "conflictException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "dependencyFailedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "badGatewayException")
                                 (flow-multi-turn-input-request-event
                                  :target-type
                                  flow-multi-turn-input-request-event
                                  :member-name
                                  "flowMultiTurnInputRequestEvent"))
                                (:shape-name "FlowResponseStream"))

(smithy/sdk/shapes:define-union flow-trace common-lisp:nil
                                ((node-input-trace :target-type
                                  flow-trace-node-input-event :member-name
                                  "nodeInputTrace")
                                 (node-output-trace :target-type
                                  flow-trace-node-output-event :member-name
                                  "nodeOutputTrace")
                                 (condition-node-result-trace :target-type
                                  flow-trace-condition-node-result-event
                                  :member-name "conditionNodeResultTrace")
                                 (node-action-trace :target-type
                                  flow-trace-node-action-event :member-name
                                  "nodeActionTrace"))
                                (:shape-name "FlowTrace"))

(smithy/sdk/shapes:define-structure flow-trace-condition common-lisp:nil
                                    ((condition-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "conditionName"))
                                    (:shape-name "FlowTraceCondition"))

(smithy/sdk/shapes:define-structure flow-trace-condition-node-result-event
                                    common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (satisfied-conditions :target-type
                                      flow-trace-conditions :required
                                      common-lisp:t :member-name
                                      "satisfiedConditions"))
                                    (:shape-name
                                     "FlowTraceConditionNodeResultEvent"))

(smithy/sdk/shapes:define-list flow-trace-conditions :member
                               flow-trace-condition)

(smithy/sdk/shapes:define-structure flow-trace-event common-lisp:nil
                                    ((trace :target-type flow-trace :required
                                      common-lisp:t :member-name "trace"))
                                    (:shape-name "FlowTraceEvent"))

(smithy/sdk/shapes:define-structure flow-trace-node-action-event
                                    common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (request-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "requestId")
                                     (service-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "serviceName")
                                     (operation-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "operationName"))
                                    (:shape-name "FlowTraceNodeActionEvent"))

(smithy/sdk/shapes:define-union flow-trace-node-input-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowTraceNodeInputContent"))

(smithy/sdk/shapes:define-structure flow-trace-node-input-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type
                                      flow-trace-node-input-fields :required
                                      common-lisp:t :member-name "fields"))
                                    (:shape-name "FlowTraceNodeInputEvent"))

(smithy/sdk/shapes:define-structure flow-trace-node-input-field common-lisp:nil
                                    ((node-input-name :target-type
                                      node-input-name :required common-lisp:t
                                      :member-name "nodeInputName")
                                     (content :target-type
                                      flow-trace-node-input-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "FlowTraceNodeInputField"))

(smithy/sdk/shapes:define-list flow-trace-node-input-fields :member
                               flow-trace-node-input-field)

(smithy/sdk/shapes:define-union flow-trace-node-output-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "FlowTraceNodeOutputContent"))

(smithy/sdk/shapes:define-structure flow-trace-node-output-event
                                    common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type
                                      flow-trace-node-output-fields :required
                                      common-lisp:t :member-name "fields"))
                                    (:shape-name "FlowTraceNodeOutputEvent"))

(smithy/sdk/shapes:define-structure flow-trace-node-output-field
                                    common-lisp:nil
                                    ((node-output-name :target-type
                                      node-output-name :required common-lisp:t
                                      :member-name "nodeOutputName")
                                     (content :target-type
                                      flow-trace-node-output-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "FlowTraceNodeOutputField"))

(smithy/sdk/shapes:define-list flow-trace-node-output-fields :member
                               flow-trace-node-output-field)

(smithy/sdk/shapes:define-type function smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure function-definition common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      function-description :member-name
                                      "description")
                                     (parameters :target-type parameter-map
                                      :member-name "parameters")
                                     (require-confirmation :target-type
                                      require-confirmation :member-name
                                      "requireConfirmation"))
                                    (:shape-name "FunctionDefinition"))

(smithy/sdk/shapes:define-type function-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure function-invocation-input common-lisp:nil
                                    ((action-group :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "actionGroup")
                                     (parameters :target-type
                                      function-parameters :member-name
                                      "parameters")
                                     (function :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "function")
                                     (action-invocation-type :target-type
                                      action-invocation-type :member-name
                                      "actionInvocationType")
                                     (agent-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentId")
                                     (collaborator-name :target-type name
                                      :member-name "collaboratorName"))
                                    (:shape-name "FunctionInvocationInput"))

(smithy/sdk/shapes:define-structure function-parameter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "FunctionParameter"))

(smithy/sdk/shapes:define-list function-parameters :member function-parameter)

(smithy/sdk/shapes:define-structure function-result common-lisp:nil
                                    ((action-group :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "actionGroup")
                                     (confirmation-state :target-type
                                      confirmation-state :member-name
                                      "confirmationState")
                                     (function :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "function")
                                     (response-body :target-type response-body
                                      :member-name "responseBody")
                                     (response-state :target-type
                                      response-state :member-name
                                      "responseState")
                                     (agent-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "agentId"))
                                    (:shape-name "FunctionResult"))

(smithy/sdk/shapes:define-union function-schema common-lisp:nil
                                ((functions :target-type functions :member-name
                                  "functions"))
                                (:shape-name "FunctionSchema"))

(smithy/sdk/shapes:define-list functions :member function-definition)

(smithy/sdk/shapes:define-input generate-query-request common-lisp:nil
                                ((query-generation-input :target-type
                                  query-generation-input :required
                                  common-lisp:t :member-name
                                  "queryGenerationInput")
                                 (transformation-configuration :target-type
                                  transformation-configuration :required
                                  common-lisp:t :member-name
                                  "transformationConfiguration"))
                                (:shape-name "GenerateQueryRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output generate-query-response common-lisp:nil
                                 ((queries :target-type generated-queries
                                   :member-name "queries"))
                                 (:shape-name "GenerateQueryResponse"))

(smithy/sdk/shapes:define-list generated-queries :member generated-query)

(smithy/sdk/shapes:define-structure generated-query common-lisp:nil
                                    ((type :target-type generated-query-type
                                      :member-name "type")
                                     (sql :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sql"))
                                    (:shape-name "GeneratedQuery"))

(smithy/sdk/shapes:define-enum generated-query-type
    common-lisp:nil
  (:redshift-sql "REDSHIFT_SQL"))

(smithy/sdk/shapes:define-structure generated-response-part common-lisp:nil
                                    ((text-response-part :target-type
                                      text-response-part :member-name
                                      "textResponsePart"))
                                    (:shape-name "GeneratedResponsePart"))

(smithy/sdk/shapes:define-structure generation-configuration common-lisp:nil
                                    ((prompt-template :target-type
                                      prompt-template :member-name
                                      "promptTemplate")
                                     (guardrail-configuration :target-type
                                      guardrail-configuration :member-name
                                      "guardrailConfiguration")
                                     (inference-config :target-type
                                      inference-config :member-name
                                      "inferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name "GenerationConfiguration"))

(smithy/sdk/shapes:define-input get-agent-memory-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-items :target-type max-results
                                  :member-name "maxItems" :http-query
                                  "maxItems")
                                 (agent-id :target-type agent-id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t)
                                 (memory-type :target-type memory-type
                                  :required common-lisp:t :member-name
                                  "memoryType" :http-query "memoryType")
                                 (memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-query "memoryId"))
                                (:shape-name "GetAgentMemoryRequest"))

(smithy/sdk/shapes:define-output get-agent-memory-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (memory-contents :target-type memories
                                   :member-name "memoryContents"))
                                 (:shape-name "GetAgentMemoryResponse"))

(smithy/sdk/shapes:define-input get-execution-flow-snapshot-request
                                common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (execution-identifier :target-type
                                  flow-execution-identifier :required
                                  common-lisp:t :member-name
                                  "executionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetExecutionFlowSnapshotRequest"))

(smithy/sdk/shapes:define-output get-execution-flow-snapshot-response
                                 common-lisp:nil
                                 ((flow-identifier :target-type flow-identifier
                                   :required common-lisp:t :member-name
                                   "flowIdentifier")
                                  (flow-alias-identifier :target-type
                                   flow-alias-identifier :required
                                   common-lisp:t :member-name
                                   "flowAliasIdentifier")
                                  (flow-version :target-type version :required
                                   common-lisp:t :member-name "flowVersion")
                                  (execution-role-arn :target-type
                                   flow-execution-role-arn :required
                                   common-lisp:t :member-name
                                   "executionRoleArn")
                                  (definition :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "definition")
                                  (customer-encryption-key-arn :target-type
                                   kms-key-arn :member-name
                                   "customerEncryptionKeyArn"))
                                 (:shape-name
                                  "GetExecutionFlowSnapshotResponse"))

(smithy/sdk/shapes:define-input get-flow-execution-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (execution-identifier :target-type
                                  flow-execution-identifier :required
                                  common-lisp:t :member-name
                                  "executionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFlowExecutionRequest"))

(smithy/sdk/shapes:define-output get-flow-execution-response common-lisp:nil
                                 ((execution-arn :target-type
                                   flow-execution-identifier :required
                                   common-lisp:t :member-name "executionArn")
                                  (status :target-type flow-execution-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (started-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "startedAt")
                                  (ended-at :target-type date-timestamp
                                   :member-name "endedAt")
                                  (errors :target-type flow-execution-errors
                                   :member-name "errors")
                                  (flow-alias-identifier :target-type
                                   flow-alias-identifier :required
                                   common-lisp:t :member-name
                                   "flowAliasIdentifier")
                                  (flow-identifier :target-type flow-identifier
                                   :required common-lisp:t :member-name
                                   "flowIdentifier")
                                  (flow-version :target-type version :required
                                   common-lisp:t :member-name "flowVersion"))
                                 (:shape-name "GetFlowExecutionResponse"))

(smithy/sdk/shapes:define-input get-invocation-step-request common-lisp:nil
                                ((invocation-identifier :target-type
                                  invocation-identifier :required common-lisp:t
                                  :member-name "invocationIdentifier")
                                 (invocation-step-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "invocationStepId" :http-label common-lisp:t)
                                 (session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetInvocationStepRequest"))

(smithy/sdk/shapes:define-output get-invocation-step-response common-lisp:nil
                                 ((invocation-step :target-type invocation-step
                                   :required common-lisp:t :member-name
                                   "invocationStep"))
                                 (:shape-name "GetInvocationStepResponse"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type session-arn
                                   :required common-lisp:t :member-name
                                   "sessionArn")
                                  (session-status :target-type session-status
                                   :required common-lisp:t :member-name
                                   "sessionStatus")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt")
                                  (session-metadata :target-type
                                   session-metadata-map :member-name
                                   "sessionMetadata")
                                  (encryption-key-arn :target-type kms-key-arn
                                   :member-name "encryptionKeyArn"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-enum guadrail-action
    common-lisp:nil
  (:intervened "INTERVENED")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum guardrail-action
    common-lisp:nil
  (:intervened "INTERVENED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-assessment common-lisp:nil
                                    ((topic-policy :target-type
                                      guardrail-topic-policy-assessment
                                      :member-name "topicPolicy")
                                     (content-policy :target-type
                                      guardrail-content-policy-assessment
                                      :member-name "contentPolicy")
                                     (word-policy :target-type
                                      guardrail-word-policy-assessment
                                      :member-name "wordPolicy")
                                     (sensitive-information-policy :target-type
                                      guardrail-sensitive-information-policy-assessment
                                      :member-name
                                      "sensitiveInformationPolicy"))
                                    (:shape-name "GuardrailAssessment"))

(smithy/sdk/shapes:define-list guardrail-assessment-list :member
                               guardrail-assessment)

(smithy/sdk/shapes:define-structure guardrail-configuration common-lisp:nil
                                    ((guardrail-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "guardrailId")
                                     (guardrail-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "guardrailVersion"))
                                    (:shape-name "GuardrailConfiguration"))

(smithy/sdk/shapes:define-structure guardrail-configuration-with-arn
                                    common-lisp:nil
                                    ((guardrail-identifier :target-type
                                      guardrail-identifier-with-arn :required
                                      common-lisp:t :member-name
                                      "guardrailIdentifier")
                                     (guardrail-version :target-type
                                      guardrail-version :required common-lisp:t
                                      :member-name "guardrailVersion"))
                                    (:shape-name
                                     "GuardrailConfigurationWithArn"))

(smithy/sdk/shapes:define-structure guardrail-content-filter common-lisp:nil
                                    ((type :target-type
                                      guardrail-content-filter-type
                                      :member-name "type")
                                     (confidence :target-type
                                      guardrail-content-filter-confidence
                                      :member-name "confidence")
                                     (action :target-type
                                      guardrail-content-policy-action
                                      :member-name "action"))
                                    (:shape-name "GuardrailContentFilter"))

(smithy/sdk/shapes:define-enum guardrail-content-filter-confidence
    common-lisp:nil
  (:none "NONE")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-list guardrail-content-filter-list :member
                               guardrail-content-filter)

(smithy/sdk/shapes:define-enum guardrail-content-filter-type
    common-lisp:nil
  (:insults "INSULTS")
  (:hate "HATE")
  (:sexual "SEXUAL")
  (:violence "VIOLENCE")
  (:misconduct "MISCONDUCT")
  (:prompt-attack "PROMPT_ATTACK"))

(smithy/sdk/shapes:define-enum guardrail-content-policy-action
    common-lisp:nil
  (:blocked "BLOCKED"))

(smithy/sdk/shapes:define-structure guardrail-content-policy-assessment
                                    common-lisp:nil
                                    ((filters :target-type
                                      guardrail-content-filter-list
                                      :member-name "filters"))
                                    (:shape-name
                                     "GuardrailContentPolicyAssessment"))

(smithy/sdk/shapes:define-structure guardrail-custom-word common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "match")
                                     (action :target-type
                                      guardrail-word-policy-action :member-name
                                      "action"))
                                    (:shape-name "GuardrailCustomWord"))

(smithy/sdk/shapes:define-list guardrail-custom-word-list :member
                               guardrail-custom-word)

(smithy/sdk/shapes:define-structure guardrail-event common-lisp:nil
                                    ((action :target-type guadrail-action
                                      :member-name "action"))
                                    (:shape-name "GuardrailEvent"))

(smithy/sdk/shapes:define-type guardrail-identifier-with-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-managed-word common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "match")
                                     (type :target-type
                                      guardrail-managed-word-type :member-name
                                      "type")
                                     (action :target-type
                                      guardrail-word-policy-action :member-name
                                      "action"))
                                    (:shape-name "GuardrailManagedWord"))

(smithy/sdk/shapes:define-list guardrail-managed-word-list :member
                               guardrail-managed-word)

(smithy/sdk/shapes:define-enum guardrail-managed-word-type
    common-lisp:nil
  (:profanity "PROFANITY"))

(smithy/sdk/shapes:define-structure guardrail-pii-entity-filter common-lisp:nil
                                    ((type :target-type
                                      guardrail-pii-entity-type :member-name
                                      "type")
                                     (match :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "match")
                                     (action :target-type
                                      guardrail-sensitive-information-policy-action
                                      :member-name "action"))
                                    (:shape-name "GuardrailPiiEntityFilter"))

(smithy/sdk/shapes:define-list guardrail-pii-entity-filter-list :member
                               guardrail-pii-entity-filter)

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

(smithy/sdk/shapes:define-structure guardrail-regex-filter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (regex :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "regex")
                                     (match :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "match")
                                     (action :target-type
                                      guardrail-sensitive-information-policy-action
                                      :member-name "action"))
                                    (:shape-name "GuardrailRegexFilter"))

(smithy/sdk/shapes:define-list guardrail-regex-filter-list :member
                               guardrail-regex-filter)

(smithy/sdk/shapes:define-enum guardrail-sensitive-information-policy-action
    common-lisp:nil
  (:blocked "BLOCKED")
  (:anonymized "ANONYMIZED"))

(smithy/sdk/shapes:define-structure
 guardrail-sensitive-information-policy-assessment common-lisp:nil
 ((pii-entities :target-type guardrail-pii-entity-filter-list :member-name
   "piiEntities")
  (regexes :target-type guardrail-regex-filter-list :member-name "regexes"))
 (:shape-name "GuardrailSensitiveInformationPolicyAssessment"))

(smithy/sdk/shapes:define-structure guardrail-topic common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (type :target-type guardrail-topic-type
                                      :member-name "type")
                                     (action :target-type
                                      guardrail-topic-policy-action
                                      :member-name "action"))
                                    (:shape-name "GuardrailTopic"))

(smithy/sdk/shapes:define-list guardrail-topic-list :member guardrail-topic)

(smithy/sdk/shapes:define-enum guardrail-topic-policy-action
    common-lisp:nil
  (:blocked "BLOCKED"))

(smithy/sdk/shapes:define-structure guardrail-topic-policy-assessment
                                    common-lisp:nil
                                    ((topics :target-type guardrail-topic-list
                                      :member-name "topics"))
                                    (:shape-name
                                     "GuardrailTopicPolicyAssessment"))

(smithy/sdk/shapes:define-enum guardrail-topic-type
    common-lisp:nil
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure guardrail-trace common-lisp:nil
                                    ((action :target-type guardrail-action
                                      :member-name "action")
                                     (trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (input-assessments :target-type
                                      guardrail-assessment-list :member-name
                                      "inputAssessments")
                                     (output-assessments :target-type
                                      guardrail-assessment-list :member-name
                                      "outputAssessments")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name "GuardrailTrace"))

(smithy/sdk/shapes:define-type guardrail-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum guardrail-word-policy-action
    common-lisp:nil
  (:blocked "BLOCKED"))

(smithy/sdk/shapes:define-structure guardrail-word-policy-assessment
                                    common-lisp:nil
                                    ((custom-words :target-type
                                      guardrail-custom-word-list :member-name
                                      "customWords")
                                     (managed-word-lists :target-type
                                      guardrail-managed-word-list :member-name
                                      "managedWordLists"))
                                    (:shape-name
                                     "GuardrailWordPolicyAssessment"))

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-block common-lisp:nil
                                    ((format :target-type image-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type image-source
                                      :required common-lisp:t :member-name
                                      "source"))
                                    (:shape-name "ImageBlock"))

(smithy/sdk/shapes:define-enum image-format
    common-lisp:nil
  (:png "png")
  (:jpeg "jpeg")
  (:gif "gif")
  (:webp "webp"))

(smithy/sdk/shapes:define-structure image-input common-lisp:nil
                                    ((format :target-type image-input-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type image-input-source
                                      :required common-lisp:t :member-name
                                      "source"))
                                    (:shape-name "ImageInput"))

(smithy/sdk/shapes:define-enum image-input-format
    common-lisp:nil
  (:png "png")
  (:jpeg "jpeg")
  (:gif "gif")
  (:webp "webp"))

(smithy/sdk/shapes:define-union image-input-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes"))
                                (:shape-name "ImageInputSource"))

(smithy/sdk/shapes:define-list image-inputs :member image-input)

(smithy/sdk/shapes:define-union image-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes")
                                 (s3location :target-type s3location
                                  :member-name "s3Location"))
                                (:shape-name "ImageSource"))

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

(smithy/sdk/shapes:define-structure inference-config common-lisp:nil
                                    ((text-inference-config :target-type
                                      text-inference-config :member-name
                                      "textInferenceConfig"))
                                    (:shape-name "InferenceConfig"))

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

common-lisp:nil

(smithy/sdk/shapes:define-structure inline-agent-file-part common-lisp:nil
                                    ((files :target-type output-files
                                      :member-name "files"))
                                    (:shape-name "InlineAgentFilePart"))

(smithy/sdk/shapes:define-structure inline-agent-payload-part common-lisp:nil
                                    ((bytes :target-type part-body :member-name
                                      "bytes")
                                     (attribution :target-type attribution
                                      :member-name "attribution"))
                                    (:shape-name "InlineAgentPayloadPart"))

common-lisp:nil

(smithy/sdk/shapes:define-union inline-agent-response-stream common-lisp:nil
                                ((chunk :target-type inline-agent-payload-part
                                  :member-name "chunk")
                                 (trace :target-type inline-agent-trace-part
                                  :member-name "trace")
                                 (return-control :target-type
                                  inline-agent-return-control-payload
                                  :member-name "returnControl")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (service-quota-exceeded-exception :target-type
                                  service-quota-exceeded-exception :member-name
                                  "serviceQuotaExceededException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "conflictException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "dependencyFailedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "badGatewayException")
                                 (files :target-type inline-agent-file-part
                                  :member-name "files"))
                                (:shape-name "InlineAgentResponseStream"))

(smithy/sdk/shapes:define-structure inline-agent-return-control-payload
                                    common-lisp:nil
                                    ((invocation-inputs :target-type
                                      invocation-inputs :member-name
                                      "invocationInputs")
                                     (invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId"))
                                    (:shape-name
                                     "InlineAgentReturnControlPayload"))

(smithy/sdk/shapes:define-structure inline-agent-trace-part common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "sessionId")
                                     (trace :target-type trace :member-name
                                      "trace")
                                     (caller-chain :target-type caller-chain
                                      :member-name "callerChain")
                                     (event-time :target-type date-timestamp
                                      :member-name "eventTime"
                                      :timestamp-format "date-time")
                                     (collaborator-name :target-type name
                                      :member-name "collaboratorName"))
                                    (:shape-name "InlineAgentTracePart"))

(smithy/sdk/shapes:define-structure inline-bedrock-model-configurations
                                    common-lisp:nil
                                    ((performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name
                                     "InlineBedrockModelConfigurations"))

(smithy/sdk/shapes:define-structure inline-session-state common-lisp:nil
                                    ((session-attributes :target-type
                                      session-attributes-map :member-name
                                      "sessionAttributes")
                                     (prompt-session-attributes :target-type
                                      prompt-session-attributes-map
                                      :member-name "promptSessionAttributes")
                                     (return-control-invocation-results
                                      :target-type
                                      return-control-invocation-results
                                      :member-name
                                      "returnControlInvocationResults")
                                     (invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId")
                                     (files :target-type input-files
                                      :member-name "files")
                                     (conversation-history :target-type
                                      conversation-history :member-name
                                      "conversationHistory"))
                                    (:shape-name "InlineSessionState"))

(smithy/sdk/shapes:define-structure input-file common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (source :target-type file-source :required
                                      common-lisp:t :member-name "source")
                                     (use-case :target-type file-use-case
                                      :required common-lisp:t :member-name
                                      "useCase"))
                                    (:shape-name "InputFile"))

(smithy/sdk/shapes:define-list input-files :member input-file)

(smithy/sdk/shapes:define-union input-prompt common-lisp:nil
                                ((text-prompt :target-type text-prompt
                                  :member-name "textPrompt"))
                                (:shape-name "InputPrompt"))

(smithy/sdk/shapes:define-enum input-query-type
    common-lisp:nil
  (:text "TEXT"))

(smithy/sdk/shapes:define-type input-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instruction smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (reason :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "reason"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type invocation-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invocation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure invocation-input common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (invocation-type :target-type
                                      invocation-type :member-name
                                      "invocationType")
                                     (action-group-invocation-input
                                      :target-type
                                      action-group-invocation-input
                                      :member-name
                                      "actionGroupInvocationInput")
                                     (knowledge-base-lookup-input :target-type
                                      knowledge-base-lookup-input :member-name
                                      "knowledgeBaseLookupInput")
                                     (code-interpreter-invocation-input
                                      :target-type
                                      code-interpreter-invocation-input
                                      :member-name
                                      "codeInterpreterInvocationInput")
                                     (agent-collaborator-invocation-input
                                      :target-type
                                      agent-collaborator-invocation-input
                                      :member-name
                                      "agentCollaboratorInvocationInput"))
                                    (:shape-name "InvocationInput"))

(smithy/sdk/shapes:define-union invocation-input-member common-lisp:nil
                                ((api-invocation-input :target-type
                                  api-invocation-input :member-name
                                  "apiInvocationInput")
                                 (function-invocation-input :target-type
                                  function-invocation-input :member-name
                                  "functionInvocationInput"))
                                (:shape-name "InvocationInputMember"))

(smithy/sdk/shapes:define-list invocation-inputs :member
                               invocation-input-member)

common-lisp:nil

(smithy/sdk/shapes:define-union invocation-result-member common-lisp:nil
                                ((api-result :target-type api-result
                                  :member-name "apiResult")
                                 (function-result :target-type function-result
                                  :member-name "functionResult"))
                                (:shape-name "InvocationResultMember"))

(smithy/sdk/shapes:define-structure invocation-step common-lisp:nil
                                    ((session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (invocation-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "invocationId")
                                     (invocation-step-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "invocationStepId")
                                     (invocation-step-time :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "invocationStepTime")
                                     (payload :target-type
                                      invocation-step-payload :required
                                      common-lisp:t :member-name "payload"))
                                    (:shape-name "InvocationStep"))

(smithy/sdk/shapes:define-union invocation-step-payload common-lisp:nil
                                ((content-blocks :target-type
                                  bedrock-session-content-blocks :member-name
                                  "contentBlocks"))
                                (:shape-name "InvocationStepPayload"))

common-lisp:nil

(smithy/sdk/shapes:define-list invocation-step-summaries :member
                               invocation-step-summary)

(smithy/sdk/shapes:define-structure invocation-step-summary common-lisp:nil
                                    ((session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (invocation-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "invocationId")
                                     (invocation-step-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "invocationStepId")
                                     (invocation-step-time :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "invocationStepTime"))
                                    (:shape-name "InvocationStepSummary"))

(smithy/sdk/shapes:define-list invocation-summaries :member invocation-summary)

(smithy/sdk/shapes:define-structure invocation-summary common-lisp:nil
                                    ((session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (invocation-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "invocationId")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt"))
                                    (:shape-name "InvocationSummary"))

(smithy/sdk/shapes:define-enum invocation-type
    common-lisp:nil
  (:action-group "ACTION_GROUP")
  (:knowledge-base "KNOWLEDGE_BASE")
  (:finish "FINISH")
  (:action-group-code-interpreter "ACTION_GROUP_CODE_INTERPRETER")
  (:agent-collaborator "AGENT_COLLABORATOR"))

(smithy/sdk/shapes:define-input invoke-agent-request common-lisp:nil
                                ((session-state :target-type session-state
                                  :member-name "sessionState")
                                 (agent-id :target-type agent-id :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (agent-alias-id :target-type agent-alias-id
                                  :required common-lisp:t :member-name
                                  "agentAliasId" :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (end-session :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "endSession")
                                 (enable-trace :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enableTrace")
                                 (input-text :target-type input-text
                                  :member-name "inputText")
                                 (memory-id :target-type memory-id :member-name
                                  "memoryId")
                                 (bedrock-model-configurations :target-type
                                  bedrock-model-configurations :member-name
                                  "bedrockModelConfigurations")
                                 (streaming-configurations :target-type
                                  streaming-configurations :member-name
                                  "streamingConfigurations")
                                 (prompt-creation-configurations :target-type
                                  prompt-creation-configurations :member-name
                                  "promptCreationConfigurations")
                                 (source-arn :target-type awsresource-arn
                                  :member-name "sourceArn" :http-header
                                  "x-amz-source-arn"))
                                (:shape-name "InvokeAgentRequest"))

(smithy/sdk/shapes:define-output invoke-agent-response common-lisp:nil
                                 ((completion :target-type response-stream
                                   :required common-lisp:t :member-name
                                   "completion" :http-payload common-lisp:t)
                                  (content-type :target-type mime-type
                                   :required common-lisp:t :member-name
                                   "contentType" :http-header
                                   "x-amzn-bedrock-agent-content-type")
                                  (session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId"
                                   :http-header
                                   "x-amz-bedrock-agent-session-id")
                                  (memory-id :target-type memory-id
                                   :member-name "memoryId" :http-header
                                   "x-amz-bedrock-agent-memory-id"))
                                 (:shape-name "InvokeAgentResponse"))

(smithy/sdk/shapes:define-input invoke-flow-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (inputs :target-type flow-inputs :required
                                  common-lisp:t :member-name "inputs")
                                 (enable-trace :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enableTrace")
                                 (model-performance-configuration :target-type
                                  model-performance-configuration :member-name
                                  "modelPerformanceConfiguration")
                                 (execution-id :target-type flow-execution-id
                                  :member-name "executionId"))
                                (:shape-name "InvokeFlowRequest"))

(smithy/sdk/shapes:define-output invoke-flow-response common-lisp:nil
                                 ((response-stream :target-type
                                   flow-response-stream :required common-lisp:t
                                   :member-name "responseStream" :http-payload
                                   common-lisp:t)
                                  (execution-id :target-type flow-execution-id
                                   :member-name "executionId" :http-header
                                   "x-amz-bedrock-flow-execution-id"))
                                 (:shape-name "InvokeFlowResponse"))

(smithy/sdk/shapes:define-input invoke-inline-agent-request common-lisp:nil
                                ((customer-encryption-key-arn :target-type
                                  kms-key-arn :member-name
                                  "customerEncryptionKeyArn")
                                 (foundation-model :target-type
                                  model-identifier :required common-lisp:t
                                  :member-name "foundationModel")
                                 (instruction :target-type instruction
                                  :required common-lisp:t :member-name
                                  "instruction")
                                 (idle-session-ttlin-seconds :target-type
                                  session-ttl :member-name
                                  "idleSessionTTLInSeconds")
                                 (action-groups :target-type
                                  agent-action-groups :member-name
                                  "actionGroups")
                                 (knowledge-bases :target-type knowledge-bases
                                  :member-name "knowledgeBases")
                                 (guardrail-configuration :target-type
                                  guardrail-configuration-with-arn :member-name
                                  "guardrailConfiguration")
                                 (prompt-override-configuration :target-type
                                  prompt-override-configuration :member-name
                                  "promptOverrideConfiguration")
                                 (agent-collaboration :target-type
                                  agent-collaboration :member-name
                                  "agentCollaboration")
                                 (collaborator-configurations :target-type
                                  collaborator-configurations :member-name
                                  "collaboratorConfigurations")
                                 (agent-name :target-type name :member-name
                                  "agentName")
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (end-session :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "endSession")
                                 (enable-trace :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enableTrace")
                                 (input-text :target-type input-text
                                  :member-name "inputText")
                                 (streaming-configurations :target-type
                                  streaming-configurations :member-name
                                  "streamingConfigurations")
                                 (prompt-creation-configurations :target-type
                                  prompt-creation-configurations :member-name
                                  "promptCreationConfigurations")
                                 (inline-session-state :target-type
                                  inline-session-state :member-name
                                  "inlineSessionState")
                                 (collaborators :target-type collaborators
                                  :member-name "collaborators")
                                 (bedrock-model-configurations :target-type
                                  inline-bedrock-model-configurations
                                  :member-name "bedrockModelConfigurations")
                                 (orchestration-type :target-type
                                  orchestration-type :member-name
                                  "orchestrationType")
                                 (custom-orchestration :target-type
                                  custom-orchestration :member-name
                                  "customOrchestration"))
                                (:shape-name "InvokeInlineAgentRequest"))

(smithy/sdk/shapes:define-output invoke-inline-agent-response common-lisp:nil
                                 ((completion :target-type
                                   inline-agent-response-stream :required
                                   common-lisp:t :member-name "completion"
                                   :http-payload common-lisp:t)
                                  (content-type :target-type mime-type
                                   :required common-lisp:t :member-name
                                   "contentType" :http-header
                                   "x-amzn-bedrock-agent-content-type")
                                  (session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId"
                                   :http-header
                                   "x-amz-bedrock-agent-session-id"))
                                 (:shape-name "InvokeInlineAgentResponse"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base common-lisp:nil
                                    ((knowledge-base-id :target-type
                                      knowledge-base-id :required common-lisp:t
                                      :member-name "knowledgeBaseId")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "description")
                                     (retrieval-configuration :target-type
                                      knowledge-base-retrieval-configuration
                                      :member-name "retrievalConfiguration"))
                                    (:shape-name "KnowledgeBase"))

(smithy/sdk/shapes:define-type knowledge-base-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-configuration
                                    common-lisp:nil
                                    ((knowledge-base-id :target-type
                                      knowledge-base-id :required common-lisp:t
                                      :member-name "knowledgeBaseId")
                                     (retrieval-configuration :target-type
                                      knowledge-base-retrieval-configuration
                                      :required common-lisp:t :member-name
                                      "retrievalConfiguration"))
                                    (:shape-name "KnowledgeBaseConfiguration"))

(smithy/sdk/shapes:define-list knowledge-base-configurations :member
                               knowledge-base-configuration)

(smithy/sdk/shapes:define-type knowledge-base-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-lookup-input common-lisp:nil
                                    ((text :target-type
                                      knowledge-base-lookup-input-string
                                      :member-name "text")
                                     (knowledge-base-id :target-type
                                      trace-knowledge-base-id :member-name
                                      "knowledgeBaseId"))
                                    (:shape-name "KnowledgeBaseLookupInput"))

(smithy/sdk/shapes:define-type knowledge-base-lookup-input-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure knowledge-base-lookup-output
                                    common-lisp:nil
                                    ((retrieved-references :target-type
                                      retrieved-references :member-name
                                      "retrievedReferences")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name "KnowledgeBaseLookupOutput"))

(smithy/sdk/shapes:define-structure knowledge-base-query common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "KnowledgeBaseQuery"))

(smithy/sdk/shapes:define-structure knowledge-base-retrieval-configuration
                                    common-lisp:nil
                                    ((vector-search-configuration :target-type
                                      knowledge-base-vector-search-configuration
                                      :required common-lisp:t :member-name
                                      "vectorSearchConfiguration"))
                                    (:shape-name
                                     "KnowledgeBaseRetrievalConfiguration"))

(smithy/sdk/shapes:define-structure knowledge-base-retrieval-result
                                    common-lisp:nil
                                    ((content :target-type
                                      retrieval-result-content :required
                                      common-lisp:t :member-name "content")
                                     (location :target-type
                                      retrieval-result-location :member-name
                                      "location")
                                     (score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "score")
                                     (metadata :target-type
                                      retrieval-result-metadata :member-name
                                      "metadata"))
                                    (:shape-name
                                     "KnowledgeBaseRetrievalResult"))

(smithy/sdk/shapes:define-list knowledge-base-retrieval-results :member
                               knowledge-base-retrieval-result)

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
                                     (reranking-configuration :target-type
                                      vector-search-reranking-configuration
                                      :member-name "rerankingConfiguration")
                                     (implicit-filter-configuration
                                      :target-type
                                      implicit-filter-configuration
                                      :member-name
                                      "implicitFilterConfiguration"))
                                    (:shape-name
                                     "KnowledgeBaseVectorSearchConfiguration"))

(smithy/sdk/shapes:define-list knowledge-bases :member knowledge-base)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-flow-execution-events-request
                                common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (execution-identifier :target-type
                                  flow-execution-identifier :required
                                  common-lisp:t :member-name
                                  "executionIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (event-type :target-type
                                  flow-execution-event-type :required
                                  common-lisp:t :member-name "eventType"
                                  :http-query "eventType"))
                                (:shape-name "ListFlowExecutionEventsRequest"))

(smithy/sdk/shapes:define-output list-flow-execution-events-response
                                 common-lisp:nil
                                 ((flow-execution-events :target-type
                                   flow-execution-events :required
                                   common-lisp:t :member-name
                                   "flowExecutionEvents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListFlowExecutionEventsResponse"))

(smithy/sdk/shapes:define-input list-flow-executions-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :member-name
                                  "flowAliasIdentifier" :http-query
                                  "flowAliasIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFlowExecutionsRequest"))

(smithy/sdk/shapes:define-output list-flow-executions-response common-lisp:nil
                                 ((flow-execution-summaries :target-type
                                   flow-execution-summaries :required
                                   common-lisp:t :member-name
                                   "flowExecutionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFlowExecutionsResponse"))

(smithy/sdk/shapes:define-input list-invocation-steps-request common-lisp:nil
                                ((invocation-identifier :target-type
                                  invocation-identifier :member-name
                                  "invocationIdentifier")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "ListInvocationStepsRequest"))

(smithy/sdk/shapes:define-output list-invocation-steps-response common-lisp:nil
                                 ((invocation-step-summaries :target-type
                                   invocation-step-summaries :required
                                   common-lisp:t :member-name
                                   "invocationStepSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInvocationStepsResponse"))

(smithy/sdk/shapes:define-input list-invocations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "ListInvocationsRequest"))

(smithy/sdk/shapes:define-output list-invocations-response common-lisp:nil
                                 ((invocation-summaries :target-type
                                   invocation-summaries :required common-lisp:t
                                   :member-name "invocationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInvocationsResponse"))

(smithy/sdk/shapes:define-input list-sessions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSessionsRequest"))

(smithy/sdk/shapes:define-output list-sessions-response common-lisp:nil
                                 ((session-summaries :target-type
                                   session-summaries :required common-lisp:t
                                   :member-name "sessionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSessionsResponse"))

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

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-tokens smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list memories :member memory)

(smithy/sdk/shapes:define-union memory common-lisp:nil
                                ((session-summary :target-type
                                  memory-session-summary :member-name
                                  "sessionSummary"))
                                (:shape-name "Memory"))

(smithy/sdk/shapes:define-type memory-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure memory-session-summary common-lisp:nil
                                    ((memory-id :target-type memory-id
                                      :member-name "memoryId")
                                     (session-id :target-type session-id
                                      :member-name "sessionId")
                                     (session-start-time :target-type
                                      date-timestamp :member-name
                                      "sessionStartTime")
                                     (session-expiry-time :target-type
                                      date-timestamp :member-name
                                      "sessionExpiryTime")
                                     (summary-text :target-type summary-text
                                      :member-name "summaryText"))
                                    (:shape-name "MemorySessionSummary"))

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

(smithy/sdk/shapes:define-structure metadata common-lisp:nil
                                    ((start-time :target-type date-timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type date-timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (total-time-ms :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalTimeMs")
                                     (operation-total-time-ms :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "operationTotalTimeMs")
                                     (client-request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientRequestId")
                                     (usage :target-type usage :member-name
                                      "usage"))
                                    (:shape-name "Metadata"))

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

(smithy/sdk/shapes:define-type mime-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-invocation-input common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (text :target-type prompt-text
                                      :member-name "text")
                                     (type :target-type prompt-type
                                      :member-name "type")
                                     (override-lambda :target-type lambda-arn
                                      :member-name "overrideLambda")
                                     (prompt-creation-mode :target-type
                                      creation-mode :member-name
                                      "promptCreationMode")
                                     (inference-configuration :target-type
                                      inference-configuration :member-name
                                      "inferenceConfiguration")
                                     (parser-mode :target-type creation-mode
                                      :member-name "parserMode")
                                     (foundation-model :target-type
                                      model-identifier :member-name
                                      "foundationModel"))
                                    (:shape-name "ModelInvocationInput"))

(smithy/sdk/shapes:define-error model-not-ready-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ModelNotReadyException")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure model-performance-configuration
                                    common-lisp:nil
                                    ((performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name
                                     "ModelPerformanceConfiguration"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum node-error-code
    common-lisp:nil
  (:validation "VALIDATION")
  (:dependency-failed "DEPENDENCY_FAILED")
  (:bad-gateway "BAD_GATEWAY")
  (:internal-server "INTERNAL_SERVER"))

(smithy/sdk/shapes:define-union node-execution-content common-lisp:nil
                                ((document :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "document"))
                                (:shape-name "NodeExecutionContent"))

(smithy/sdk/shapes:define-structure node-failure-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (error-code :target-type node-error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name "NodeFailureEvent"))

(smithy/sdk/shapes:define-structure node-input-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type node-input-fields
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "NodeInputEvent"))

(smithy/sdk/shapes:define-structure node-input-field common-lisp:nil
                                    ((name :target-type node-input-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content :target-type
                                      node-execution-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "NodeInputField"))

(smithy/sdk/shapes:define-list node-input-fields :member node-input-field)

(smithy/sdk/shapes:define-type node-input-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-output-event common-lisp:nil
                                    ((node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "nodeName")
                                     (timestamp :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (fields :target-type node-output-fields
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "NodeOutputEvent"))

(smithy/sdk/shapes:define-structure node-output-field common-lisp:nil
                                    ((name :target-type node-output-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (content :target-type
                                      node-execution-content :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "NodeOutputField"))

(smithy/sdk/shapes:define-list node-output-fields :member node-output-field)

(smithy/sdk/shapes:define-type node-output-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum node-type
    common-lisp:nil
  (:flow-input-node "FlowInputNode")
  (:flow-output-node "FlowOutputNode")
  (:lambda-function-node "LambdaFunctionNode")
  (:knowledge-base-node "KnowledgeBaseNode")
  (:prompt-node "PromptNode")
  (:condition-node "ConditionNode")
  (:lex-node "LexNode"))

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure observation common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (type :target-type type :member-name
                                      "type")
                                     (action-group-invocation-output
                                      :target-type
                                      action-group-invocation-output
                                      :member-name
                                      "actionGroupInvocationOutput")
                                     (agent-collaborator-invocation-output
                                      :target-type
                                      agent-collaborator-invocation-output
                                      :member-name
                                      "agentCollaboratorInvocationOutput")
                                     (knowledge-base-lookup-output :target-type
                                      knowledge-base-lookup-output :member-name
                                      "knowledgeBaseLookupOutput")
                                     (final-response :target-type
                                      final-response :member-name
                                      "finalResponse")
                                     (reprompt-response :target-type
                                      reprompt-response :member-name
                                      "repromptResponse")
                                     (code-interpreter-invocation-output
                                      :target-type
                                      code-interpreter-invocation-output
                                      :member-name
                                      "codeInterpreterInvocationOutput"))
                                    (:shape-name "Observation"))

(smithy/sdk/shapes:define-input optimize-prompt-request common-lisp:nil
                                ((input :target-type input-prompt :required
                                  common-lisp:t :member-name "input")
                                 (target-model-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "targetModelId"))
                                (:shape-name "OptimizePromptRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output optimize-prompt-response common-lisp:nil
                                 ((optimized-prompt :target-type
                                   optimized-prompt-stream :required
                                   common-lisp:t :member-name "optimizedPrompt"
                                   :http-payload common-lisp:t))
                                 (:shape-name "OptimizePromptResponse"))

(smithy/sdk/shapes:define-union optimized-prompt common-lisp:nil
                                ((text-prompt :target-type text-prompt
                                  :member-name "textPrompt"))
                                (:shape-name "OptimizedPrompt"))

(smithy/sdk/shapes:define-structure optimized-prompt-event common-lisp:nil
                                    ((optimized-prompt :target-type
                                      optimized-prompt :member-name
                                      "optimizedPrompt"))
                                    (:shape-name "OptimizedPromptEvent"))

(smithy/sdk/shapes:define-union optimized-prompt-stream common-lisp:nil
                                ((optimized-prompt-event :target-type
                                  optimized-prompt-event :member-name
                                  "optimizedPromptEvent")
                                 (analyze-prompt-event :target-type
                                  analyze-prompt-event :member-name
                                  "analyzePromptEvent")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "dependencyFailedException")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "badGatewayException"))
                                (:shape-name "OptimizedPromptStream"))

(smithy/sdk/shapes:define-structure orchestration-configuration common-lisp:nil
                                    ((prompt-template :target-type
                                      prompt-template :member-name
                                      "promptTemplate")
                                     (inference-config :target-type
                                      inference-config :member-name
                                      "inferenceConfig")
                                     (additional-model-request-fields
                                      :target-type
                                      additional-model-request-fields
                                      :member-name
                                      "additionalModelRequestFields")
                                     (query-transformation-configuration
                                      :target-type
                                      query-transformation-configuration
                                      :member-name
                                      "queryTransformationConfiguration")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name "OrchestrationConfiguration"))

(smithy/sdk/shapes:define-union orchestration-executor common-lisp:nil
                                ((lambda :target-type lambda-arn :member-name
                                  "lambda"))
                                (:shape-name "OrchestrationExecutor"))

(smithy/sdk/shapes:define-structure orchestration-model-invocation-output
                                    common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (raw-response :target-type raw-response
                                      :member-name "rawResponse")
                                     (metadata :target-type metadata
                                      :member-name "metadata")
                                     (reasoning-content :target-type
                                      reasoning-content-block :member-name
                                      "reasoningContent"))
                                    (:shape-name
                                     "OrchestrationModelInvocationOutput"))

(smithy/sdk/shapes:define-union orchestration-trace common-lisp:nil
                                ((rationale :target-type rationale :member-name
                                  "rationale")
                                 (invocation-input :target-type
                                  invocation-input :member-name
                                  "invocationInput")
                                 (observation :target-type observation
                                  :member-name "observation")
                                 (model-invocation-input :target-type
                                  model-invocation-input :member-name
                                  "modelInvocationInput")
                                 (model-invocation-output :target-type
                                  orchestration-model-invocation-output
                                  :member-name "modelInvocationOutput"))
                                (:shape-name "OrchestrationTrace"))

(smithy/sdk/shapes:define-enum orchestration-type
    common-lisp:nil
  (:default "DEFAULT")
  (:custom-orchestration "CUSTOM_ORCHESTRATION"))

(smithy/sdk/shapes:define-structure output-file common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (type :target-type mime-type :member-name
                                      "type")
                                     (bytes :target-type file-body :member-name
                                      "bytes"))
                                    (:shape-name "OutputFile"))

(smithy/sdk/shapes:define-list output-files :member output-file)

(smithy/sdk/shapes:define-type output-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-type parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-detail common-lisp:nil
                                    ((description :target-type
                                      parameter-description :member-name
                                      "description")
                                     (type :target-type parameter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "ParameterDetail"))

(smithy/sdk/shapes:define-list parameter-list :member parameter)

(smithy/sdk/shapes:define-map parameter-map :key parameter-name :value
                              parameter-detail)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parameter-type
    common-lisp:nil
  (:string "string")
  (:number "number")
  (:integer "integer")
  (:boolean "boolean")
  (:array "array"))

(smithy/sdk/shapes:define-list parameters :member parameter)

(smithy/sdk/shapes:define-type part-body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure payload-part common-lisp:nil
                                    ((bytes :target-type part-body :member-name
                                      "bytes")
                                     (attribution :target-type attribution
                                      :member-name "attribution"))
                                    (:shape-name "PayloadPart"))

(smithy/sdk/shapes:define-enum payload-type
    common-lisp:nil
  (:text "TEXT")
  (:return-control "RETURN_CONTROL"))

(smithy/sdk/shapes:define-enum performance-config-latency
    common-lisp:nil
  (:standard "standard")
  (:optimized "optimized"))

(smithy/sdk/shapes:define-structure performance-configuration common-lisp:nil
                                    ((latency :target-type
                                      performance-config-latency :member-name
                                      "latency"))
                                    (:shape-name "PerformanceConfiguration"))

(smithy/sdk/shapes:define-structure post-processing-model-invocation-output
                                    common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (parsed-response :target-type
                                      post-processing-parsed-response
                                      :member-name "parsedResponse")
                                     (raw-response :target-type raw-response
                                      :member-name "rawResponse")
                                     (metadata :target-type metadata
                                      :member-name "metadata")
                                     (reasoning-content :target-type
                                      reasoning-content-block :member-name
                                      "reasoningContent"))
                                    (:shape-name
                                     "PostProcessingModelInvocationOutput"))

(smithy/sdk/shapes:define-structure post-processing-parsed-response
                                    common-lisp:nil
                                    ((text :target-type output-string
                                      :member-name "text"))
                                    (:shape-name
                                     "PostProcessingParsedResponse"))

(smithy/sdk/shapes:define-union post-processing-trace common-lisp:nil
                                ((model-invocation-input :target-type
                                  model-invocation-input :member-name
                                  "modelInvocationInput")
                                 (model-invocation-output :target-type
                                  post-processing-model-invocation-output
                                  :member-name "modelInvocationOutput"))
                                (:shape-name "PostProcessingTrace"))

(smithy/sdk/shapes:define-structure pre-processing-model-invocation-output
                                    common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (parsed-response :target-type
                                      pre-processing-parsed-response
                                      :member-name "parsedResponse")
                                     (raw-response :target-type raw-response
                                      :member-name "rawResponse")
                                     (metadata :target-type metadata
                                      :member-name "metadata")
                                     (reasoning-content :target-type
                                      reasoning-content-block :member-name
                                      "reasoningContent"))
                                    (:shape-name
                                     "PreProcessingModelInvocationOutput"))

(smithy/sdk/shapes:define-structure pre-processing-parsed-response
                                    common-lisp:nil
                                    ((rationale :target-type rationale-string
                                      :member-name "rationale")
                                     (is-valid :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isValid"))
                                    (:shape-name "PreProcessingParsedResponse"))

(smithy/sdk/shapes:define-union pre-processing-trace common-lisp:nil
                                ((model-invocation-input :target-type
                                  model-invocation-input :member-name
                                  "modelInvocationInput")
                                 (model-invocation-output :target-type
                                  pre-processing-model-invocation-output
                                  :member-name "modelInvocationOutput"))
                                (:shape-name "PreProcessingTrace"))

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

(smithy/sdk/shapes:define-structure prompt-creation-configurations
                                    common-lisp:nil
                                    ((previous-conversation-turns-to-include
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "previousConversationTurnsToInclude")
                                     (exclude-previous-thinking-steps
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "excludePreviousThinkingSteps"))
                                    (:shape-name
                                     "PromptCreationConfigurations"))

(smithy/sdk/shapes:define-structure prompt-override-configuration
                                    common-lisp:nil
                                    ((prompt-configurations :target-type
                                      prompt-configurations :required
                                      common-lisp:t :member-name
                                      "promptConfigurations")
                                     (override-lambda :target-type
                                      lambda-resource-arn :member-name
                                      "overrideLambda"))
                                    (:shape-name "PromptOverrideConfiguration"))

(smithy/sdk/shapes:define-map prompt-session-attributes-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum prompt-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure prompt-template common-lisp:nil
                                    ((text-prompt-template :target-type
                                      text-prompt-template :member-name
                                      "textPromptTemplate"))
                                    (:shape-name "PromptTemplate"))

(smithy/sdk/shapes:define-type prompt-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum prompt-type
    common-lisp:nil
  (:pre-processing "PRE_PROCESSING")
  (:orchestration "ORCHESTRATION")
  (:knowledge-base-response-generation "KNOWLEDGE_BASE_RESPONSE_GENERATION")
  (:post-processing "POST_PROCESSING")
  (:routing-classifier "ROUTING_CLASSIFIER"))

(smithy/sdk/shapes:define-structure property-parameters common-lisp:nil
                                    ((properties :target-type parameter-list
                                      :member-name "properties"))
                                    (:shape-name "PropertyParameters"))

(smithy/sdk/shapes:define-input put-invocation-step-request common-lisp:nil
                                ((session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t)
                                 (invocation-identifier :target-type
                                  invocation-identifier :required common-lisp:t
                                  :member-name "invocationIdentifier")
                                 (invocation-step-time :target-type
                                  date-timestamp :required common-lisp:t
                                  :member-name "invocationStepTime")
                                 (payload :target-type invocation-step-payload
                                  :required common-lisp:t :member-name
                                  "payload")
                                 (invocation-step-id :target-type uuid
                                  :member-name "invocationStepId"))
                                (:shape-name "PutInvocationStepRequest"))

(smithy/sdk/shapes:define-output put-invocation-step-response common-lisp:nil
                                 ((invocation-step-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "invocationStepId"))
                                 (:shape-name "PutInvocationStepResponse"))

(smithy/sdk/shapes:define-structure query-generation-input common-lisp:nil
                                    ((type :target-type input-query-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "QueryGenerationInput"))

(smithy/sdk/shapes:define-structure query-transformation-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      query-transformation-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name
                                     "QueryTransformationConfiguration"))

(smithy/sdk/shapes:define-enum query-transformation-mode
    common-lisp:nil
  (:text-to-sql "TEXT_TO_SQL"))

(smithy/sdk/shapes:define-enum query-transformation-type
    common-lisp:nil
  (:query-decomposition "QUERY_DECOMPOSITION"))

(smithy/sdk/shapes:define-list ragstop-sequences :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rationale common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (text :target-type rationale-string
                                      :member-name "text"))
                                    (:shape-name "Rationale"))

(smithy/sdk/shapes:define-type rationale-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure raw-response common-lisp:nil
                                    ((content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content"))
                                    (:shape-name "RawResponse"))

(smithy/sdk/shapes:define-union reasoning-content-block common-lisp:nil
                                ((reasoning-text :target-type
                                  reasoning-text-block :member-name
                                  "reasoningText")
                                 (redacted-content :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "redactedContent"))
                                (:shape-name "ReasoningContentBlock"))

(smithy/sdk/shapes:define-structure reasoning-text-block common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (signature :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "signature"))
                                    (:shape-name "ReasoningTextBlock"))

(smithy/sdk/shapes:define-enum relay-conversation-history
    common-lisp:nil
  (:to-collaborator "TO_COLLABORATOR")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure reprompt-response common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (source :target-type source :member-name
                                      "source"))
                                    (:shape-name "RepromptResponse"))

(smithy/sdk/shapes:define-structure request-body common-lisp:nil
                                    ((content :target-type content-map
                                      :member-name "content"))
                                    (:shape-name "RequestBody"))

(smithy/sdk/shapes:define-enum require-confirmation
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure rerank-document common-lisp:nil
                                    ((type :target-type rerank-document-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (text-document :target-type
                                      rerank-text-document :member-name
                                      "textDocument")
                                     (json-document :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "jsonDocument"))
                                    (:shape-name "RerankDocument"))

(smithy/sdk/shapes:define-enum rerank-document-type
    common-lisp:nil
  (:text "TEXT")
  (:json "JSON"))

(smithy/sdk/shapes:define-list rerank-queries-list :member rerank-query)

(smithy/sdk/shapes:define-structure rerank-query common-lisp:nil
                                    ((type :target-type
                                      rerank-query-content-type :required
                                      common-lisp:t :member-name "type")
                                     (text-query :target-type
                                      rerank-text-document :required
                                      common-lisp:t :member-name "textQuery"))
                                    (:shape-name "RerankQuery"))

(smithy/sdk/shapes:define-enum rerank-query-content-type
    common-lisp:nil
  (:text "TEXT"))

(smithy/sdk/shapes:define-input rerank-request common-lisp:nil
                                ((queries :target-type rerank-queries-list
                                  :required common-lisp:t :member-name
                                  "queries")
                                 (sources :target-type rerank-sources-list
                                  :required common-lisp:t :member-name
                                  "sources")
                                 (reranking-configuration :target-type
                                  reranking-configuration :required
                                  common-lisp:t :member-name
                                  "rerankingConfiguration")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "RerankRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output rerank-response common-lisp:nil
                                 ((results :target-type rerank-results-list
                                   :required common-lisp:t :member-name
                                   "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "RerankResponse"))

(smithy/sdk/shapes:define-structure rerank-result common-lisp:nil
                                    ((index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "index")
                                     (relevance-score :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name
                                      "relevanceScore")
                                     (document :target-type rerank-document
                                      :member-name "document"))
                                    (:shape-name "RerankResult"))

(smithy/sdk/shapes:define-list rerank-results-list :member rerank-result)

(smithy/sdk/shapes:define-structure rerank-source common-lisp:nil
                                    ((type :target-type rerank-source-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (inline-document-source :target-type
                                      rerank-document :required common-lisp:t
                                      :member-name "inlineDocumentSource"))
                                    (:shape-name "RerankSource"))

(smithy/sdk/shapes:define-enum rerank-source-type
    common-lisp:nil
  (:inline "INLINE"))

(smithy/sdk/shapes:define-list rerank-sources-list :member rerank-source)

(smithy/sdk/shapes:define-structure rerank-text-document common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text"))
                                    (:shape-name "RerankTextDocument"))

(smithy/sdk/shapes:define-structure reranking-configuration common-lisp:nil
                                    ((type :target-type
                                      reranking-configuration-type :required
                                      common-lisp:t :member-name "type")
                                     (bedrock-reranking-configuration
                                      :target-type
                                      bedrock-reranking-configuration :required
                                      common-lisp:t :member-name
                                      "bedrockRerankingConfiguration"))
                                    (:shape-name "RerankingConfiguration"))

(smithy/sdk/shapes:define-enum reranking-configuration-type
    common-lisp:nil
  (:bedrock-reranking-model "BEDROCK_RERANKING_MODEL"))

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

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-map response-body :key smithy/sdk/smithy-types:string
                              :value content-body)

(smithy/sdk/shapes:define-enum response-state
    common-lisp:nil
  (:failure "FAILURE")
  (:reprompt "REPROMPT"))

(smithy/sdk/shapes:define-union response-stream common-lisp:nil
                                ((chunk :target-type payload-part :member-name
                                  "chunk")
                                 (trace :target-type trace-part :member-name
                                  "trace")
                                 (return-control :target-type
                                  return-control-payload :member-name
                                  "returnControl")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (service-quota-exceeded-exception :target-type
                                  service-quota-exceeded-exception :member-name
                                  "serviceQuotaExceededException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "conflictException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "dependencyFailedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "badGatewayException")
                                 (model-not-ready-exception :target-type
                                  model-not-ready-exception :member-name
                                  "modelNotReadyException")
                                 (files :target-type file-part :member-name
                                  "files"))
                                (:shape-name "ResponseStream"))

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

(smithy/sdk/shapes:define-structure retrieval-result-confluence-location
                                    common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name
                                     "RetrievalResultConfluenceLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-content common-lisp:nil
                                    ((type :target-type
                                      retrieval-result-content-type
                                      :member-name "type")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (byte-content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "byteContent")
                                     (row :target-type
                                      retrieval-result-content-row :member-name
                                      "row"))
                                    (:shape-name "RetrievalResultContent"))

(smithy/sdk/shapes:define-structure retrieval-result-content-column
                                    common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "columnName")
                                     (column-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "columnValue")
                                     (type :target-type
                                      retrieval-result-content-column-type
                                      :member-name "type"))
                                    (:shape-name
                                     "RetrievalResultContentColumn"))

(smithy/sdk/shapes:define-enum retrieval-result-content-column-type
    common-lisp:nil
  (:blob "BLOB")
  (:boolean "BOOLEAN")
  (:double "DOUBLE")
  (:null "NULL")
  (:long "LONG")
  (:string "STRING"))

(smithy/sdk/shapes:define-list retrieval-result-content-row :member
                               retrieval-result-content-column)

(smithy/sdk/shapes:define-enum retrieval-result-content-type
    common-lisp:nil
  (:text "TEXT")
  (:image "IMAGE")
  (:row "ROW"))

(smithy/sdk/shapes:define-structure retrieval-result-custom-document-location
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id"))
                                    (:shape-name
                                     "RetrievalResultCustomDocumentLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-kendra-document-location
                                    common-lisp:nil
                                    ((uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "uri"))
                                    (:shape-name
                                     "RetrievalResultKendraDocumentLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-location common-lisp:nil
                                    ((type :target-type
                                      retrieval-result-location-type :required
                                      common-lisp:t :member-name "type")
                                     (s3location :target-type
                                      retrieval-result-s3location :member-name
                                      "s3Location")
                                     (web-location :target-type
                                      retrieval-result-web-location
                                      :member-name "webLocation")
                                     (confluence-location :target-type
                                      retrieval-result-confluence-location
                                      :member-name "confluenceLocation")
                                     (salesforce-location :target-type
                                      retrieval-result-salesforce-location
                                      :member-name "salesforceLocation")
                                     (share-point-location :target-type
                                      retrieval-result-share-point-location
                                      :member-name "sharePointLocation")
                                     (custom-document-location :target-type
                                      retrieval-result-custom-document-location
                                      :member-name "customDocumentLocation")
                                     (kendra-document-location :target-type
                                      retrieval-result-kendra-document-location
                                      :member-name "kendraDocumentLocation")
                                     (sql-location :target-type
                                      retrieval-result-sql-location
                                      :member-name "sqlLocation"))
                                    (:shape-name "RetrievalResultLocation"))

(smithy/sdk/shapes:define-enum retrieval-result-location-type
    common-lisp:nil
  (:s3 "S3")
  (:web "WEB")
  (:confluence "CONFLUENCE")
  (:salesforce "SALESFORCE")
  (:sharepoint "SHAREPOINT")
  (:custom "CUSTOM")
  (:kendra "KENDRA")
  (:sql "SQL"))

(smithy/sdk/shapes:define-map retrieval-result-metadata :key
                              retrieval-result-metadata-key :value
                              retrieval-result-metadata-value)

(smithy/sdk/shapes:define-type retrieval-result-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retrieval-result-metadata-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure retrieval-result-s3location common-lisp:nil
                                    ((uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "uri"))
                                    (:shape-name "RetrievalResultS3Location"))

(smithy/sdk/shapes:define-structure retrieval-result-salesforce-location
                                    common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name
                                     "RetrievalResultSalesforceLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-share-point-location
                                    common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name
                                     "RetrievalResultSharePointLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-sql-location
                                    common-lisp:nil
                                    ((query :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "query"))
                                    (:shape-name "RetrievalResultSqlLocation"))

(smithy/sdk/shapes:define-structure retrieval-result-web-location
                                    common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name "RetrievalResultWebLocation"))

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

(smithy/sdk/shapes:define-structure retrieve-and-generate-input common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "RetrieveAndGenerateInput"))

(smithy/sdk/shapes:define-structure retrieve-and-generate-output
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "RetrieveAndGenerateOutput"))

(smithy/sdk/shapes:define-structure retrieve-and-generate-output-event
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name
                                     "RetrieveAndGenerateOutputEvent"))

(smithy/sdk/shapes:define-input retrieve-and-generate-request common-lisp:nil
                                ((session-id :target-type session-id
                                  :member-name "sessionId")
                                 (input :target-type
                                  retrieve-and-generate-input :required
                                  common-lisp:t :member-name "input")
                                 (retrieve-and-generate-configuration
                                  :target-type
                                  retrieve-and-generate-configuration
                                  :member-name
                                  "retrieveAndGenerateConfiguration")
                                 (session-configuration :target-type
                                  retrieve-and-generate-session-configuration
                                  :member-name "sessionConfiguration"))
                                (:shape-name "RetrieveAndGenerateRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output retrieve-and-generate-response common-lisp:nil
                                 ((session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (output :target-type
                                   retrieve-and-generate-output :required
                                   common-lisp:t :member-name "output")
                                  (citations :target-type citations
                                   :member-name "citations")
                                  (guardrail-action :target-type
                                   guadrail-action :member-name
                                   "guardrailAction"))
                                 (:shape-name "RetrieveAndGenerateResponse"))

(smithy/sdk/shapes:define-structure retrieve-and-generate-session-configuration
                                    common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :required common-lisp:t :member-name
                                      "kmsKeyArn"))
                                    (:shape-name
                                     "RetrieveAndGenerateSessionConfiguration"))

(smithy/sdk/shapes:define-input retrieve-and-generate-stream-request
                                common-lisp:nil
                                ((session-id :target-type session-id
                                  :member-name "sessionId")
                                 (input :target-type
                                  retrieve-and-generate-input :required
                                  common-lisp:t :member-name "input")
                                 (retrieve-and-generate-configuration
                                  :target-type
                                  retrieve-and-generate-configuration
                                  :member-name
                                  "retrieveAndGenerateConfiguration")
                                 (session-configuration :target-type
                                  retrieve-and-generate-session-configuration
                                  :member-name "sessionConfiguration"))
                                (:shape-name
                                 "RetrieveAndGenerateStreamRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output retrieve-and-generate-stream-response
                                 common-lisp:nil
                                 ((stream :target-type
                                   retrieve-and-generate-stream-response-output
                                   :required common-lisp:t :member-name
                                   "stream" :http-payload common-lisp:t)
                                  (session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId"
                                   :http-header
                                   "x-amzn-bedrock-knowledge-base-session-id"))
                                 (:shape-name
                                  "RetrieveAndGenerateStreamResponse"))

(smithy/sdk/shapes:define-union retrieve-and-generate-stream-response-output
                                common-lisp:nil
                                ((output :target-type
                                  retrieve-and-generate-output-event
                                  :member-name "output")
                                 (citation :target-type citation-event
                                  :member-name "citation")
                                 (guardrail :target-type guardrail-event
                                  :member-name "guardrail")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (service-quota-exceeded-exception :target-type
                                  service-quota-exceeded-exception :member-name
                                  "serviceQuotaExceededException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "conflictException")
                                 (dependency-failed-exception :target-type
                                  dependency-failed-exception :member-name
                                  "dependencyFailedException")
                                 (bad-gateway-exception :target-type
                                  bad-gateway-exception :member-name
                                  "badGatewayException"))
                                (:shape-name
                                 "RetrieveAndGenerateStreamResponseOutput"))

(smithy/sdk/shapes:define-enum retrieve-and-generate-type
    common-lisp:nil
  (:knowledge-base "KNOWLEDGE_BASE")
  (:external-sources "EXTERNAL_SOURCES"))

(smithy/sdk/shapes:define-input retrieve-request common-lisp:nil
                                ((knowledge-base-id :target-type
                                  knowledge-base-id :required common-lisp:t
                                  :member-name "knowledgeBaseId" :http-label
                                  common-lisp:t)
                                 (retrieval-query :target-type
                                  knowledge-base-query :required common-lisp:t
                                  :member-name "retrievalQuery")
                                 (retrieval-configuration :target-type
                                  knowledge-base-retrieval-configuration
                                  :member-name "retrievalConfiguration")
                                 (guardrail-configuration :target-type
                                  guardrail-configuration :member-name
                                  "guardrailConfiguration")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "RetrieveRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-output retrieve-response common-lisp:nil
                                 ((retrieval-results :target-type
                                   knowledge-base-retrieval-results :required
                                   common-lisp:t :member-name
                                   "retrievalResults")
                                  (guardrail-action :target-type
                                   guadrail-action :member-name
                                   "guardrailAction")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "RetrieveResponse"))

(smithy/sdk/shapes:define-structure retrieved-reference common-lisp:nil
                                    ((content :target-type
                                      retrieval-result-content :member-name
                                      "content")
                                     (location :target-type
                                      retrieval-result-location :member-name
                                      "location")
                                     (metadata :target-type
                                      retrieval-result-metadata :member-name
                                      "metadata"))
                                    (:shape-name "RetrievedReference"))

(smithy/sdk/shapes:define-list retrieved-references :member retrieved-reference)

(smithy/sdk/shapes:define-list return-control-invocation-results :member
                               invocation-result-member)

(smithy/sdk/shapes:define-structure return-control-payload common-lisp:nil
                                    ((invocation-inputs :target-type
                                      invocation-inputs :member-name
                                      "invocationInputs")
                                     (invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId"))
                                    (:shape-name "ReturnControlPayload"))

(smithy/sdk/shapes:define-structure return-control-results common-lisp:nil
                                    ((invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId")
                                     (return-control-invocation-results
                                      :target-type
                                      return-control-invocation-results
                                      :member-name
                                      "returnControlInvocationResults"))
                                    (:shape-name "ReturnControlResults"))

(smithy/sdk/shapes:define-structure routing-classifier-model-invocation-output
                                    common-lisp:nil
                                    ((trace-id :target-type trace-id
                                      :member-name "traceId")
                                     (raw-response :target-type raw-response
                                      :member-name "rawResponse")
                                     (metadata :target-type metadata
                                      :member-name "metadata"))
                                    (:shape-name
                                     "RoutingClassifierModelInvocationOutput"))

(smithy/sdk/shapes:define-union routing-classifier-trace common-lisp:nil
                                ((invocation-input :target-type
                                  invocation-input :member-name
                                  "invocationInput")
                                 (observation :target-type observation
                                  :member-name "observation")
                                 (model-invocation-input :target-type
                                  model-invocation-input :member-name
                                  "modelInvocationInput")
                                 (model-invocation-output :target-type
                                  routing-classifier-model-invocation-output
                                  :member-name "modelInvocationOutput"))
                                (:shape-name "RoutingClassifierTrace"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3identifier common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :member-name "s3BucketName")
                                     (s3object-key :target-type s3object-key
                                      :member-name "s3ObjectKey"))
                                    (:shape-name "S3Identifier"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((uri :target-type s3uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure s3object-doc common-lisp:nil
                                    ((uri :target-type s3uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "S3ObjectDoc"))

(smithy/sdk/shapes:define-structure s3object-file common-lisp:nil
                                    ((uri :target-type s3uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "S3ObjectFile"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure satisfied-condition common-lisp:nil
                                    ((condition-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "conditionName"))
                                    (:shape-name "SatisfiedCondition"))

(smithy/sdk/shapes:define-list satisfied-conditions :member satisfied-condition)

(smithy/sdk/shapes:define-enum search-type
    common-lisp:nil
  (:hybrid "HYBRID")
  (:semantic "SEMANTIC"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type session-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map session-attributes-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map session-metadata-map :key session-metadata-key
                              :value session-metadata-value)

(smithy/sdk/shapes:define-type session-metadata-value
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure session-state common-lisp:nil
                                    ((session-attributes :target-type
                                      session-attributes-map :member-name
                                      "sessionAttributes")
                                     (prompt-session-attributes :target-type
                                      prompt-session-attributes-map
                                      :member-name "promptSessionAttributes")
                                     (return-control-invocation-results
                                      :target-type
                                      return-control-invocation-results
                                      :member-name
                                      "returnControlInvocationResults")
                                     (invocation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "invocationId")
                                     (files :target-type input-files
                                      :member-name "files")
                                     (knowledge-base-configurations
                                      :target-type
                                      knowledge-base-configurations
                                      :member-name
                                      "knowledgeBaseConfigurations")
                                     (conversation-history :target-type
                                      conversation-history :member-name
                                      "conversationHistory"))
                                    (:shape-name "SessionState"))

(smithy/sdk/shapes:define-enum session-status
    common-lisp:nil
  (:active "ACTIVE")
  (:expired "EXPIRED")
  (:ended "ENDED"))

(smithy/sdk/shapes:define-list session-summaries :member session-summary)

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((session-id :target-type uuid :required
                                      common-lisp:t :member-name "sessionId")
                                     (session-arn :target-type session-arn
                                      :required common-lisp:t :member-name
                                      "sessionArn")
                                     (session-status :target-type
                                      session-status :required common-lisp:t
                                      :member-name "sessionStatus")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-type session-ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum source
    common-lisp:nil
  (:action-group "ACTION_GROUP")
  (:knowledge-base "KNOWLEDGE_BASE")
  (:parser "PARSER"))

(smithy/sdk/shapes:define-structure span common-lisp:nil
                                    ((start :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "end"))
                                    (:shape-name "Span"))

(smithy/sdk/shapes:define-input start-flow-execution-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (flow-execution-name :target-type
                                  flow-execution-name :member-name
                                  "flowExecutionName")
                                 (inputs :target-type flow-inputs :required
                                  common-lisp:t :member-name "inputs")
                                 (model-performance-configuration :target-type
                                  model-performance-configuration :member-name
                                  "modelPerformanceConfiguration"))
                                (:shape-name "StartFlowExecutionRequest"))

(smithy/sdk/shapes:define-output start-flow-execution-response common-lisp:nil
                                 ((execution-arn :target-type
                                   flow-execution-identifier :member-name
                                   "executionArn"))
                                 (:shape-name "StartFlowExecutionResponse"))

(smithy/sdk/shapes:define-input stop-flow-execution-request common-lisp:nil
                                ((flow-identifier :target-type flow-identifier
                                  :required common-lisp:t :member-name
                                  "flowIdentifier" :http-label common-lisp:t)
                                 (flow-alias-identifier :target-type
                                  flow-alias-identifier :required common-lisp:t
                                  :member-name "flowAliasIdentifier"
                                  :http-label common-lisp:t)
                                 (execution-identifier :target-type
                                  flow-execution-identifier :required
                                  common-lisp:t :member-name
                                  "executionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "StopFlowExecutionRequest"))

(smithy/sdk/shapes:define-output stop-flow-execution-response common-lisp:nil
                                 ((execution-arn :target-type
                                   flow-execution-identifier :member-name
                                   "executionArn")
                                  (status :target-type flow-execution-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "StopFlowExecutionResponse"))

(smithy/sdk/shapes:define-list stop-sequences :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure streaming-configurations common-lisp:nil
                                    ((stream-final-response :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "streamFinalResponse")
                                     (apply-guardrail-interval :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "applyGuardrailInterval"))
                                    (:shape-name "StreamingConfigurations"))

(smithy/sdk/shapes:define-type summary-text smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure text-prompt common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text"))
                                    (:shape-name "TextPrompt"))

(smithy/sdk/shapes:define-type text-prompt-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-response-part common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (span :target-type span :member-name
                                      "span"))
                                    (:shape-name "TextResponsePart"))

(smithy/sdk/shapes:define-structure text-to-sql-configuration common-lisp:nil
                                    ((type :target-type
                                      text-to-sql-configuration-type :required
                                      common-lisp:t :member-name "type")
                                     (knowledge-base-configuration :target-type
                                      text-to-sql-knowledge-base-configuration
                                      :member-name
                                      "knowledgeBaseConfiguration"))
                                    (:shape-name "TextToSqlConfiguration"))

(smithy/sdk/shapes:define-enum text-to-sql-configuration-type
    common-lisp:nil
  (:knowledge-base "KNOWLEDGE_BASE"))

(smithy/sdk/shapes:define-structure text-to-sql-knowledge-base-configuration
                                    common-lisp:nil
                                    ((knowledge-base-arn :target-type
                                      knowledge-base-arn :required
                                      common-lisp:t :member-name
                                      "knowledgeBaseArn"))
                                    (:shape-name
                                     "TextToSqlKnowledgeBaseConfiguration"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type top-k smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type top-p smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-union trace common-lisp:nil
                                ((guardrail-trace :target-type guardrail-trace
                                  :member-name "guardrailTrace")
                                 (pre-processing-trace :target-type
                                  pre-processing-trace :member-name
                                  "preProcessingTrace")
                                 (orchestration-trace :target-type
                                  orchestration-trace :member-name
                                  "orchestrationTrace")
                                 (post-processing-trace :target-type
                                  post-processing-trace :member-name
                                  "postProcessingTrace")
                                 (routing-classifier-trace :target-type
                                  routing-classifier-trace :member-name
                                  "routingClassifierTrace")
                                 (failure-trace :target-type failure-trace
                                  :member-name "failureTrace")
                                 (custom-orchestration-trace :target-type
                                  custom-orchestration-trace :member-name
                                  "customOrchestrationTrace"))
                                (:shape-name "Trace"))

(smithy/sdk/shapes:define-type trace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type trace-knowledge-base-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trace-part common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "sessionId")
                                     (trace :target-type trace :member-name
                                      "trace")
                                     (caller-chain :target-type caller-chain
                                      :member-name "callerChain")
                                     (event-time :target-type date-timestamp
                                      :member-name "eventTime"
                                      :timestamp-format "date-time")
                                     (collaborator-name :target-type name
                                      :member-name "collaboratorName")
                                     (agent-id :target-type agent-id
                                      :member-name "agentId")
                                     (agent-alias-id :target-type
                                      agent-alias-id :member-name
                                      "agentAliasId")
                                     (agent-version :target-type agent-version
                                      :member-name "agentVersion"))
                                    (:shape-name "TracePart"))

(smithy/sdk/shapes:define-structure transformation-configuration
                                    common-lisp:nil
                                    ((mode :target-type
                                      query-transformation-mode :required
                                      common-lisp:t :member-name "mode")
                                     (text-to-sql-configuration :target-type
                                      text-to-sql-configuration :member-name
                                      "textToSqlConfiguration"))
                                    (:shape-name "TransformationConfiguration"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:action-group "ACTION_GROUP")
  (:agent-collaborator "AGENT_COLLABORATOR")
  (:knowledge-base "KNOWLEDGE_BASE")
  (:finish "FINISH")
  (:ask-user "ASK_USER")
  (:reprompt "REPROMPT"))

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

(smithy/sdk/shapes:define-input update-session-request common-lisp:nil
                                ((session-metadata :target-type
                                  session-metadata-map :member-name
                                  "sessionMetadata")
                                 (session-identifier :target-type
                                  session-identifier :required common-lisp:t
                                  :member-name "sessionIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateSessionRequest"))

(smithy/sdk/shapes:define-output update-session-response common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type session-arn
                                   :required common-lisp:t :member-name
                                   "sessionArn")
                                  (session-status :target-type session-status
                                   :required common-lisp:t :member-name
                                   "sessionStatus")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "UpdateSessionResponse"))

(smithy/sdk/shapes:define-structure usage common-lisp:nil
                                    ((input-tokens :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "inputTokens")
                                     (output-tokens :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "outputTokens"))
                                    (:shape-name "Usage"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

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

(smithy/sdk/shapes:define-type verb smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-invocation :shape-name
                                       "CreateInvocation" :input
                                       create-invocation-request :output
                                       create-invocation-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sessions/{sessionIdentifier}/invocations/"
                                       :code 201)

(smithy/sdk/operation:define-operation create-session :shape-name
                                       "CreateSession" :input
                                       create-session-request :output
                                       create-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/sessions/" :code
                                       201)

(smithy/sdk/operation:define-operation delete-agent-memory :shape-name
                                       "DeleteAgentMemory" :input
                                       delete-agent-memory-request :output
                                       delete-agent-memory-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/agents/{agentId}/agentAliases/{agentAliasId}/memories"
                                       :code 202)

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
                                       "/sessions/{sessionIdentifier}/" :code
                                       200)

(smithy/sdk/operation:define-operation end-session :shape-name "EndSession"
                                       :input end-session-request :output
                                       end-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/sessions/{sessionIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation generate-query :shape-name
                                       "GenerateQuery" :input
                                       generate-query-request :output
                                       generate-query-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/generateQuery"
                                       :code 200)

(smithy/sdk/operation:define-operation get-agent-memory :shape-name
                                       "GetAgentMemory" :input
                                       get-agent-memory-request :output
                                       get-agent-memory-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/agents/{agentId}/agentAliases/{agentAliasId}/memories"
                                       :code 200)

(smithy/sdk/operation:define-operation get-execution-flow-snapshot :shape-name
                                       "GetExecutionFlowSnapshot" :input
                                       get-execution-flow-snapshot-request
                                       :output
                                       get-execution-flow-snapshot-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/flowsnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation get-flow-execution :shape-name
                                       "GetFlowExecution" :input
                                       get-flow-execution-request :output
                                       get-flow-execution-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-invocation-step :shape-name
                                       "GetInvocationStep" :input
                                       get-invocation-step-request :output
                                       get-invocation-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sessions/{sessionIdentifier}/invocationSteps/{invocationStepId}"
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
                                       "/sessions/{sessionIdentifier}/" :code
                                       200)

(smithy/sdk/operation:define-operation invoke-agent :shape-name "InvokeAgent"
                                       :input invoke-agent-request :output
                                       invoke-agent-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        model-not-ready-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-flow :shape-name "InvokeFlow"
                                       :input invoke-flow-request :output
                                       invoke-flow-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-inline-agent :shape-name
                                       "InvokeInlineAgent" :input
                                       invoke-inline-agent-request :output
                                       invoke-inline-agent-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/agents/{sessionId}" :code 200)

(smithy/sdk/operation:define-operation list-flow-execution-events :shape-name
                                       "ListFlowExecutionEvents" :input
                                       list-flow-execution-events-request
                                       :output
                                       list-flow-execution-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/events"
                                       :code 200)

(smithy/sdk/operation:define-operation list-flow-executions :shape-name
                                       "ListFlowExecutions" :input
                                       list-flow-executions-request :output
                                       list-flow-executions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/flows/{flowIdentifier}/executions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-invocation-steps :shape-name
                                       "ListInvocationSteps" :input
                                       list-invocation-steps-request :output
                                       list-invocation-steps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sessions/{sessionIdentifier}/invocationSteps/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-invocations :shape-name
                                       "ListInvocations" :input
                                       list-invocations-request :output
                                       list-invocations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sessions/{sessionIdentifier}/invocations/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-request :output
                                       list-sessions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sessions/" :code
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
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation optimize-prompt :shape-name
                                       "OptimizePrompt" :input
                                       optimize-prompt-request :output
                                       optimize-prompt-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/optimize-prompt"
                                       :code 200)

(smithy/sdk/operation:define-operation put-invocation-step :shape-name
                                       "PutInvocationStep" :input
                                       put-invocation-step-request :output
                                       put-invocation-step-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sessions/{sessionIdentifier}/invocationSteps/"
                                       :code 201)

(smithy/sdk/operation:define-operation rerank :shape-name "Rerank" :input
                                       rerank-request :output rerank-response
                                       :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/rerank" :code 200)

(smithy/sdk/operation:define-operation retrieve :shape-name "Retrieve" :input
                                       retrieve-request :output
                                       retrieve-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgebases/{knowledgeBaseId}/retrieve"
                                       :code 200)

(smithy/sdk/operation:define-operation retrieve-and-generate :shape-name
                                       "RetrieveAndGenerate" :input
                                       retrieve-and-generate-request :output
                                       retrieve-and-generate-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/retrieveAndGenerate" :code 200)

(smithy/sdk/operation:define-operation retrieve-and-generate-stream :shape-name
                                       "RetrieveAndGenerateStream" :input
                                       retrieve-and-generate-stream-request
                                       :output
                                       retrieve-and-generate-stream-response
                                       :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/retrieveAndGenerateStream" :code 200)

(smithy/sdk/operation:define-operation start-flow-execution :shape-name
                                       "StartFlowExecution" :input
                                       start-flow-execution-request :output
                                       start-flow-execution-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-flow-execution :shape-name
                                       "StopFlowExecution" :input
                                       stop-flow-execution-request :output
                                       stop-flow-execution-response :errors
                                       (access-denied-exception
                                        bad-gateway-exception
                                        conflict-exception
                                        dependency-failed-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/stop"
                                       :code 200)

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

(smithy/sdk/operation:define-operation update-session :shape-name
                                       "UpdateSession" :input
                                       update-session-request :output
                                       update-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sessions/{sessionIdentifier}/" :code
                                       200)
