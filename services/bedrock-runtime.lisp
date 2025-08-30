(uiop/package:define-package #:pira/bedrock-runtime (:use)
                             (:export #:access-denied-exception #:account-id
                              #:additional-model-response-field-paths
                              #:amazon-bedrock-frontend-service
                              #:any-tool-choice #:apply-guardrail
                              #:async-invoke-arn
                              #:async-invoke-idempotency-token
                              #:async-invoke-identifier #:async-invoke-message
                              #:async-invoke-output-data-config
                              #:async-invoke-resource
                              #:async-invoke-s3output-data-config
                              #:async-invoke-status #:async-invoke-summaries
                              #:async-invoke-summary #:auto-tool-choice
                              #:automated-reasoning-rule-identifier
                              #:bidirectional-input-payload-part
                              #:bidirectional-output-payload-part #:body
                              #:cache-point-block #:cache-point-type #:citation
                              #:citation-generated-content
                              #:citation-generated-content-list
                              #:citation-location #:citation-source-content
                              #:citation-source-content-delta
                              #:citation-source-content-list
                              #:citation-source-content-list-delta #:citations
                              #:citations-config #:citations-content-block
                              #:citations-delta #:conflict-exception
                              #:content-block #:content-block-delta
                              #:content-block-delta-event #:content-block-start
                              #:content-block-start-event
                              #:content-block-stop-event #:content-blocks
                              #:conversation-role #:conversational-model-id
                              #:converse #:converse-metrics #:converse-output
                              #:converse-stream
                              #:converse-stream-metadata-event
                              #:converse-stream-metrics
                              #:converse-stream-output #:converse-stream-trace
                              #:converse-trace #:document-block
                              #:document-char-location
                              #:document-chunk-location
                              #:document-content-block
                              #:document-content-blocks #:document-format
                              #:document-page-location #:document-source
                              #:get-async-invoke #:guardrail-action
                              #:guardrail-assessment
                              #:guardrail-assessment-list
                              #:guardrail-assessment-list-map
                              #:guardrail-assessment-map
                              #:guardrail-automated-reasoning-difference-scenario-list
                              #:guardrail-automated-reasoning-finding
                              #:guardrail-automated-reasoning-finding-list
                              #:guardrail-automated-reasoning-impossible-finding
                              #:guardrail-automated-reasoning-input-text-reference
                              #:guardrail-automated-reasoning-input-text-reference-list
                              #:guardrail-automated-reasoning-invalid-finding
                              #:guardrail-automated-reasoning-logic-warning
                              #:guardrail-automated-reasoning-logic-warning-type
                              #:guardrail-automated-reasoning-no-translations-finding
                              #:guardrail-automated-reasoning-policies-processed
                              #:guardrail-automated-reasoning-policy-assessment
                              #:guardrail-automated-reasoning-policy-units-processed
                              #:guardrail-automated-reasoning-policy-version-arn
                              #:guardrail-automated-reasoning-rule
                              #:guardrail-automated-reasoning-rule-list
                              #:guardrail-automated-reasoning-satisfiable-finding
                              #:guardrail-automated-reasoning-scenario
                              #:guardrail-automated-reasoning-statement
                              #:guardrail-automated-reasoning-statement-list
                              #:guardrail-automated-reasoning-statement-logic-content
                              #:guardrail-automated-reasoning-statement-natural-language-content
                              #:guardrail-automated-reasoning-too-complex-finding
                              #:guardrail-automated-reasoning-translation
                              #:guardrail-automated-reasoning-translation-ambiguous-finding
                              #:guardrail-automated-reasoning-translation-confidence
                              #:guardrail-automated-reasoning-translation-list
                              #:guardrail-automated-reasoning-translation-option
                              #:guardrail-automated-reasoning-translation-option-list
                              #:guardrail-automated-reasoning-valid-finding
                              #:guardrail-configuration
                              #:guardrail-content-block
                              #:guardrail-content-block-list
                              #:guardrail-content-filter
                              #:guardrail-content-filter-confidence
                              #:guardrail-content-filter-list
                              #:guardrail-content-filter-strength
                              #:guardrail-content-filter-type
                              #:guardrail-content-policy-action
                              #:guardrail-content-policy-assessment
                              #:guardrail-content-policy-image-units-processed
                              #:guardrail-content-policy-units-processed
                              #:guardrail-content-qualifier
                              #:guardrail-content-qualifier-list
                              #:guardrail-content-source
                              #:guardrail-contextual-grounding-filter
                              #:guardrail-contextual-grounding-filter-type
                              #:guardrail-contextual-grounding-filters
                              #:guardrail-contextual-grounding-policy-action
                              #:guardrail-contextual-grounding-policy-assessment
                              #:guardrail-contextual-grounding-policy-units-processed
                              #:guardrail-converse-content-block
                              #:guardrail-converse-content-qualifier
                              #:guardrail-converse-content-qualifier-list
                              #:guardrail-converse-image-block
                              #:guardrail-converse-image-format
                              #:guardrail-converse-image-source
                              #:guardrail-converse-text-block
                              #:guardrail-coverage #:guardrail-custom-word
                              #:guardrail-custom-word-list
                              #:guardrail-identifier #:guardrail-image-block
                              #:guardrail-image-coverage
                              #:guardrail-image-format #:guardrail-image-source
                              #:guardrail-invocation-metrics
                              #:guardrail-managed-word
                              #:guardrail-managed-word-list
                              #:guardrail-managed-word-type
                              #:guardrail-output-content
                              #:guardrail-output-content-list
                              #:guardrail-output-scope #:guardrail-output-text
                              #:guardrail-pii-entity-filter
                              #:guardrail-pii-entity-filter-list
                              #:guardrail-pii-entity-type
                              #:guardrail-processing-latency
                              #:guardrail-regex-filter
                              #:guardrail-regex-filter-list
                              #:guardrail-resource
                              #:guardrail-sensitive-information-policy-action
                              #:guardrail-sensitive-information-policy-assessment
                              #:guardrail-sensitive-information-policy-free-units-processed
                              #:guardrail-sensitive-information-policy-units-processed
                              #:guardrail-stream-configuration
                              #:guardrail-stream-processing-mode
                              #:guardrail-text-block
                              #:guardrail-text-characters-coverage
                              #:guardrail-topic #:guardrail-topic-list
                              #:guardrail-topic-policy-action
                              #:guardrail-topic-policy-assessment
                              #:guardrail-topic-policy-units-processed
                              #:guardrail-topic-type #:guardrail-trace
                              #:guardrail-trace-assessment #:guardrail-usage
                              #:guardrail-version
                              #:guardrail-word-policy-action
                              #:guardrail-word-policy-assessment
                              #:guardrail-word-policy-units-processed
                              #:image-block #:image-format #:image-source
                              #:images-guarded #:images-total
                              #:inference-configuration #:inference-resource
                              #:internal-server-exception #:invocation-arn
                              #:invoke-model #:invoke-model-identifier
                              #:invoke-model-with-bidirectional-stream
                              #:invoke-model-with-bidirectional-stream-input
                              #:invoke-model-with-bidirectional-stream-output
                              #:invoke-model-with-response-stream
                              #:invoked-model-id #:kms-key-id
                              #:list-async-invokes #:max-results #:message
                              #:message-start-event #:message-stop-event
                              #:messages #:mime-type #:model-error-exception
                              #:model-input-payload #:model-not-ready-exception
                              #:model-outputs #:model-stream-error-exception
                              #:model-timeout-exception #:non-blank-string
                              #:non-empty-string #:non-empty-string-list
                              #:non-negative-integer #:pagination-token
                              #:part-body #:payload-part
                              #:performance-config-latency
                              #:performance-configuration #:prompt-router-trace
                              #:prompt-variable-map #:prompt-variable-values
                              #:reasoning-content-block
                              #:reasoning-content-block-delta
                              #:reasoning-text-block #:request-metadata
                              #:resource-not-found-exception #:response-stream
                              #:s3location #:s3uri
                              #:service-quota-exceeded-exception
                              #:service-unavailable-exception
                              #:sort-async-invocation-by #:sort-order
                              #:specific-tool-choice #:start-async-invoke
                              #:status-code #:stop-reason
                              #:system-content-block #:system-content-blocks
                              #:tag #:tag-key #:tag-list #:tag-value
                              #:text-characters-guarded #:text-characters-total
                              #:throttling-exception #:timestamp #:token-usage
                              #:tool #:tool-choice #:tool-configuration
                              #:tool-input-schema #:tool-name
                              #:tool-result-block #:tool-result-content-block
                              #:tool-result-content-blocks #:tool-result-status
                              #:tool-specification #:tool-use-block
                              #:tool-use-block-delta #:tool-use-block-start
                              #:tool-use-id #:tools #:trace
                              #:validation-exception #:video-block
                              #:video-format #:video-source
                              #:bedrock-runtime-error))
(common-lisp:in-package #:pira/bedrock-runtime)

(common-lisp:define-condition bedrock-runtime-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-bedrock-frontend-service :shape-name
                                   "AmazonBedrockFrontendService" :version
                                   "2023-09-30" :title "Amazon Bedrock Runtime"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock Runtime")
                                      ("endpointPrefix" . "bedrock-runtime")
                                      ("cloudTrailEventSource"
                                       . "bedrock.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "bedrock"))
                                     ("aws.protocols#restJson1"
                                      ("http" . #("h2" "http/1.1"))
                                      ("eventStreamHttp"
                                       . #("h2" "http/1.1")))))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list additional-model-response-field-paths :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure any-tool-choice common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AnyToolChoice"))

(smithy/sdk/shapes:define-input apply-guardrail-request common-lisp:nil
                                ((guardrail-identifier :target-type
                                  guardrail-identifier :required common-lisp:t
                                  :member-name "guardrailIdentifier"
                                  :http-label common-lisp:t)
                                 (guardrail-version :target-type
                                  guardrail-version :required common-lisp:t
                                  :member-name "guardrailVersion" :http-label
                                  common-lisp:t)
                                 (source :target-type guardrail-content-source
                                  :required common-lisp:t :member-name
                                  "source")
                                 (content :target-type
                                  guardrail-content-block-list :required
                                  common-lisp:t :member-name "content")
                                 (output-scope :target-type
                                  guardrail-output-scope :member-name
                                  "outputScope"))
                                (:shape-name "ApplyGuardrailRequest"))

(smithy/sdk/shapes:define-output apply-guardrail-response common-lisp:nil
                                 ((usage :target-type guardrail-usage :required
                                   common-lisp:t :member-name "usage")
                                  (action :target-type guardrail-action
                                   :required common-lisp:t :member-name
                                   "action")
                                  (action-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "actionReason")
                                  (outputs :target-type
                                   guardrail-output-content-list :required
                                   common-lisp:t :member-name "outputs")
                                  (assessments :target-type
                                   guardrail-assessment-list :required
                                   common-lisp:t :member-name "assessments")
                                  (guardrail-coverage :target-type
                                   guardrail-coverage :member-name
                                   "guardrailCoverage"))
                                 (:shape-name "ApplyGuardrailResponse"))

(smithy/sdk/shapes:define-type async-invoke-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type async-invoke-idempotency-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type async-invoke-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type async-invoke-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union async-invoke-output-data-config common-lisp:nil
                                ((s3output-data-config :target-type
                                  async-invoke-s3output-data-config
                                  :member-name "s3OutputDataConfig"))
                                (:shape-name "AsyncInvokeOutputDataConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-structure async-invoke-s3output-data-config
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (bucket-owner :target-type account-id
                                      :member-name "bucketOwner"))
                                    (:shape-name
                                     "AsyncInvokeS3OutputDataConfig"))

(smithy/sdk/shapes:define-enum async-invoke-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list async-invoke-summaries :member
                               async-invoke-summary)

(smithy/sdk/shapes:define-structure async-invoke-summary common-lisp:nil
                                    ((invocation-arn :target-type
                                      invocation-arn :required common-lisp:t
                                      :member-name "invocationArn")
                                     (model-arn :target-type async-invoke-arn
                                      :required common-lisp:t :member-name
                                      "modelArn")
                                     (client-request-token :target-type
                                      async-invoke-idempotency-token
                                      :member-name "clientRequestToken")
                                     (status :target-type async-invoke-status
                                      :member-name "status")
                                     (failure-message :target-type
                                      async-invoke-message :member-name
                                      "failureMessage")
                                     (submit-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "submitTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (output-data-config :target-type
                                      async-invoke-output-data-config :required
                                      common-lisp:t :member-name
                                      "outputDataConfig"))
                                    (:shape-name "AsyncInvokeSummary"))

(smithy/sdk/shapes:define-structure auto-tool-choice common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AutoToolChoice"))

(smithy/sdk/shapes:define-type automated-reasoning-rule-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bidirectional-input-payload-part
                                    common-lisp:nil
                                    ((bytes :target-type part-body :member-name
                                      "bytes"))
                                    (:shape-name
                                     "BidirectionalInputPayloadPart"))

(smithy/sdk/shapes:define-structure bidirectional-output-payload-part
                                    common-lisp:nil
                                    ((bytes :target-type part-body :member-name
                                      "bytes"))
                                    (:shape-name
                                     "BidirectionalOutputPayloadPart"))

(smithy/sdk/shapes:define-type body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure cache-point-block common-lisp:nil
                                    ((type :target-type cache-point-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "CachePointBlock"))

(smithy/sdk/shapes:define-enum cache-point-type
    common-lisp:nil
  (:default "default"))

(smithy/sdk/shapes:define-structure citation common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (source-content :target-type
                                      citation-source-content-list :member-name
                                      "sourceContent")
                                     (location :target-type citation-location
                                      :member-name "location"))
                                    (:shape-name "Citation"))

(smithy/sdk/shapes:define-union citation-generated-content common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text"))
                                (:shape-name "CitationGeneratedContent"))

(smithy/sdk/shapes:define-list citation-generated-content-list :member
                               citation-generated-content)

(smithy/sdk/shapes:define-union citation-location common-lisp:nil
                                ((document-char :target-type
                                  document-char-location :member-name
                                  "documentChar")
                                 (document-page :target-type
                                  document-page-location :member-name
                                  "documentPage")
                                 (document-chunk :target-type
                                  document-chunk-location :member-name
                                  "documentChunk"))
                                (:shape-name "CitationLocation"))

(smithy/sdk/shapes:define-union citation-source-content common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text"))
                                (:shape-name "CitationSourceContent"))

(smithy/sdk/shapes:define-structure citation-source-content-delta
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text"))
                                    (:shape-name "CitationSourceContentDelta"))

(smithy/sdk/shapes:define-list citation-source-content-list :member
                               citation-source-content)

(smithy/sdk/shapes:define-list citation-source-content-list-delta :member
                               citation-source-content-delta)

(smithy/sdk/shapes:define-list citations :member citation)

(smithy/sdk/shapes:define-structure citations-config common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "CitationsConfig"))

(smithy/sdk/shapes:define-structure citations-content-block common-lisp:nil
                                    ((content :target-type
                                      citation-generated-content-list
                                      :member-name "content")
                                     (citations :target-type citations
                                      :member-name "citations"))
                                    (:shape-name "CitationsContentBlock"))

(smithy/sdk/shapes:define-structure citations-delta common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (source-content :target-type
                                      citation-source-content-list-delta
                                      :member-name "sourceContent")
                                     (location :target-type citation-location
                                      :member-name "location"))
                                    (:shape-name "CitationsDelta"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-union content-block common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (image :target-type image-block :member-name
                                  "image")
                                 (document :target-type document-block
                                  :member-name "document")
                                 (video :target-type video-block :member-name
                                  "video")
                                 (tool-use :target-type tool-use-block
                                  :member-name "toolUse")
                                 (tool-result :target-type tool-result-block
                                  :member-name "toolResult")
                                 (guard-content :target-type
                                  guardrail-converse-content-block :member-name
                                  "guardContent")
                                 (cache-point :target-type cache-point-block
                                  :member-name "cachePoint")
                                 (reasoning-content :target-type
                                  reasoning-content-block :member-name
                                  "reasoningContent")
                                 (citations-content :target-type
                                  citations-content-block :member-name
                                  "citationsContent"))
                                (:shape-name "ContentBlock"))

(smithy/sdk/shapes:define-union content-block-delta common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (tool-use :target-type tool-use-block-delta
                                  :member-name "toolUse")
                                 (reasoning-content :target-type
                                  reasoning-content-block-delta :member-name
                                  "reasoningContent")
                                 (citation :target-type citations-delta
                                  :member-name "citation"))
                                (:shape-name "ContentBlockDelta"))

(smithy/sdk/shapes:define-structure content-block-delta-event common-lisp:nil
                                    ((delta :target-type content-block-delta
                                      :required common-lisp:t :member-name
                                      "delta")
                                     (content-block-index :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name
                                      "contentBlockIndex"))
                                    (:shape-name "ContentBlockDeltaEvent"))

(smithy/sdk/shapes:define-union content-block-start common-lisp:nil
                                ((tool-use :target-type tool-use-block-start
                                  :member-name "toolUse"))
                                (:shape-name "ContentBlockStart"))

(smithy/sdk/shapes:define-structure content-block-start-event common-lisp:nil
                                    ((start :target-type content-block-start
                                      :required common-lisp:t :member-name
                                      "start")
                                     (content-block-index :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name
                                      "contentBlockIndex"))
                                    (:shape-name "ContentBlockStartEvent"))

(smithy/sdk/shapes:define-structure content-block-stop-event common-lisp:nil
                                    ((content-block-index :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name
                                      "contentBlockIndex"))
                                    (:shape-name "ContentBlockStopEvent"))

(smithy/sdk/shapes:define-list content-blocks :member content-block)

(smithy/sdk/shapes:define-enum conversation-role
    common-lisp:nil
  (:user "user")
  (:assistant "assistant"))

(smithy/sdk/shapes:define-type conversational-model-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure converse-metrics common-lisp:nil
                                    ((latency-ms :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "latencyMs"))
                                    (:shape-name "ConverseMetrics"))

(smithy/sdk/shapes:define-union converse-output common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConverseOutput"))

(smithy/sdk/shapes:define-input converse-request common-lisp:nil
                                ((model-id :target-type conversational-model-id
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (messages :target-type messages :member-name
                                  "messages")
                                 (system :target-type system-content-blocks
                                  :member-name "system")
                                 (inference-config :target-type
                                  inference-configuration :member-name
                                  "inferenceConfig")
                                 (tool-config :target-type tool-configuration
                                  :member-name "toolConfig")
                                 (guardrail-config :target-type
                                  guardrail-configuration :member-name
                                  "guardrailConfig")
                                 (additional-model-request-fields :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "additionalModelRequestFields")
                                 (prompt-variables :target-type
                                  prompt-variable-map :member-name
                                  "promptVariables")
                                 (additional-model-response-field-paths
                                  :target-type
                                  additional-model-response-field-paths
                                  :member-name
                                  "additionalModelResponseFieldPaths")
                                 (request-metadata :target-type
                                  request-metadata :member-name
                                  "requestMetadata")
                                 (performance-config :target-type
                                  performance-configuration :member-name
                                  "performanceConfig"))
                                (:shape-name "ConverseRequest"))

(smithy/sdk/shapes:define-output converse-response common-lisp:nil
                                 ((output :target-type converse-output
                                   :required common-lisp:t :member-name
                                   "output")
                                  (stop-reason :target-type stop-reason
                                   :required common-lisp:t :member-name
                                   "stopReason")
                                  (usage :target-type token-usage :required
                                   common-lisp:t :member-name "usage")
                                  (metrics :target-type converse-metrics
                                   :required common-lisp:t :member-name
                                   "metrics")
                                  (additional-model-response-fields
                                   :target-type
                                   smithy/sdk/smithy-types:document
                                   :member-name
                                   "additionalModelResponseFields")
                                  (trace :target-type converse-trace
                                   :member-name "trace")
                                  (performance-config :target-type
                                   performance-configuration :member-name
                                   "performanceConfig"))
                                 (:shape-name "ConverseResponse"))

(smithy/sdk/shapes:define-structure converse-stream-metadata-event
                                    common-lisp:nil
                                    ((usage :target-type token-usage :required
                                      common-lisp:t :member-name "usage")
                                     (metrics :target-type
                                      converse-stream-metrics :required
                                      common-lisp:t :member-name "metrics")
                                     (trace :target-type converse-stream-trace
                                      :member-name "trace")
                                     (performance-config :target-type
                                      performance-configuration :member-name
                                      "performanceConfig"))
                                    (:shape-name "ConverseStreamMetadataEvent"))

(smithy/sdk/shapes:define-structure converse-stream-metrics common-lisp:nil
                                    ((latency-ms :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "latencyMs"))
                                    (:shape-name "ConverseStreamMetrics"))

(smithy/sdk/shapes:define-union converse-stream-output common-lisp:nil
                                ((message-start :target-type
                                  message-start-event :member-name
                                  "messageStart")
                                 (content-block-start :target-type
                                  content-block-start-event :member-name
                                  "contentBlockStart")
                                 (content-block-delta :target-type
                                  content-block-delta-event :member-name
                                  "contentBlockDelta")
                                 (content-block-stop :target-type
                                  content-block-stop-event :member-name
                                  "contentBlockStop")
                                 (message-stop :target-type message-stop-event
                                  :member-name "messageStop")
                                 (metadata :target-type
                                  converse-stream-metadata-event :member-name
                                  "metadata")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (model-stream-error-exception :target-type
                                  model-stream-error-exception :member-name
                                  "modelStreamErrorException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "serviceUnavailableException"))
                                (:shape-name "ConverseStreamOutput"))

(smithy/sdk/shapes:define-input converse-stream-request common-lisp:nil
                                ((model-id :target-type conversational-model-id
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (messages :target-type messages :member-name
                                  "messages")
                                 (system :target-type system-content-blocks
                                  :member-name "system")
                                 (inference-config :target-type
                                  inference-configuration :member-name
                                  "inferenceConfig")
                                 (tool-config :target-type tool-configuration
                                  :member-name "toolConfig")
                                 (guardrail-config :target-type
                                  guardrail-stream-configuration :member-name
                                  "guardrailConfig")
                                 (additional-model-request-fields :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "additionalModelRequestFields")
                                 (prompt-variables :target-type
                                  prompt-variable-map :member-name
                                  "promptVariables")
                                 (additional-model-response-field-paths
                                  :target-type
                                  additional-model-response-field-paths
                                  :member-name
                                  "additionalModelResponseFieldPaths")
                                 (request-metadata :target-type
                                  request-metadata :member-name
                                  "requestMetadata")
                                 (performance-config :target-type
                                  performance-configuration :member-name
                                  "performanceConfig"))
                                (:shape-name "ConverseStreamRequest"))

(smithy/sdk/shapes:define-output converse-stream-response common-lisp:nil
                                 ((stream :target-type converse-stream-output
                                   :member-name "stream" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ConverseStreamResponse"))

(smithy/sdk/shapes:define-structure converse-stream-trace common-lisp:nil
                                    ((guardrail :target-type
                                      guardrail-trace-assessment :member-name
                                      "guardrail")
                                     (prompt-router :target-type
                                      prompt-router-trace :member-name
                                      "promptRouter"))
                                    (:shape-name "ConverseStreamTrace"))

(smithy/sdk/shapes:define-structure converse-trace common-lisp:nil
                                    ((guardrail :target-type
                                      guardrail-trace-assessment :member-name
                                      "guardrail")
                                     (prompt-router :target-type
                                      prompt-router-trace :member-name
                                      "promptRouter"))
                                    (:shape-name "ConverseTrace"))

(smithy/sdk/shapes:define-structure document-block common-lisp:nil
                                    ((format :target-type document-format
                                      :member-name "format")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (source :target-type document-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (context :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "context")
                                     (citations :target-type citations-config
                                      :member-name "citations"))
                                    (:shape-name "DocumentBlock"))

(smithy/sdk/shapes:define-structure document-char-location common-lisp:nil
                                    ((document-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "documentIndex")
                                     (start :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "end"))
                                    (:shape-name "DocumentCharLocation"))

(smithy/sdk/shapes:define-structure document-chunk-location common-lisp:nil
                                    ((document-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "documentIndex")
                                     (start :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "end"))
                                    (:shape-name "DocumentChunkLocation"))

(smithy/sdk/shapes:define-union document-content-block common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text"))
                                (:shape-name "DocumentContentBlock"))

(smithy/sdk/shapes:define-list document-content-blocks :member
                               document-content-block)

(smithy/sdk/shapes:define-enum document-format
    common-lisp:nil
  (:pdf "pdf")
  (:csv "csv")
  (:doc "doc")
  (:docx "docx")
  (:xls "xls")
  (:xlsx "xlsx")
  (:html "html")
  (:txt "txt")
  (:md "md"))

(smithy/sdk/shapes:define-structure document-page-location common-lisp:nil
                                    ((document-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "documentIndex")
                                     (start :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "end"))
                                    (:shape-name "DocumentPageLocation"))

(smithy/sdk/shapes:define-union document-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes")
                                 (s3location :target-type s3location
                                  :member-name "s3Location")
                                 (text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (content :target-type document-content-blocks
                                  :member-name "content"))
                                (:shape-name "DocumentSource"))

(smithy/sdk/shapes:define-input get-async-invoke-request common-lisp:nil
                                ((invocation-arn :target-type invocation-arn
                                  :required common-lisp:t :member-name
                                  "invocationArn" :http-label common-lisp:t))
                                (:shape-name "GetAsyncInvokeRequest"))

(smithy/sdk/shapes:define-output get-async-invoke-response common-lisp:nil
                                 ((invocation-arn :target-type invocation-arn
                                   :required common-lisp:t :member-name
                                   "invocationArn")
                                  (model-arn :target-type async-invoke-arn
                                   :required common-lisp:t :member-name
                                   "modelArn")
                                  (client-request-token :target-type
                                   async-invoke-idempotency-token :member-name
                                   "clientRequestToken")
                                  (status :target-type async-invoke-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (failure-message :target-type
                                   async-invoke-message :member-name
                                   "failureMessage")
                                  (submit-time :target-type timestamp :required
                                   common-lisp:t :member-name "submitTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (output-data-config :target-type
                                   async-invoke-output-data-config :required
                                   common-lisp:t :member-name
                                   "outputDataConfig"))
                                 (:shape-name "GetAsyncInvokeResponse"))

(smithy/sdk/shapes:define-enum guardrail-action
    common-lisp:nil
  (:none "NONE")
  (:guardrail-intervened "GUARDRAIL_INTERVENED"))

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
                                      "sensitiveInformationPolicy")
                                     (contextual-grounding-policy :target-type
                                      guardrail-contextual-grounding-policy-assessment
                                      :member-name "contextualGroundingPolicy")
                                     (automated-reasoning-policy :target-type
                                      guardrail-automated-reasoning-policy-assessment
                                      :member-name "automatedReasoningPolicy")
                                     (invocation-metrics :target-type
                                      guardrail-invocation-metrics :member-name
                                      "invocationMetrics"))
                                    (:shape-name "GuardrailAssessment"))

(smithy/sdk/shapes:define-list guardrail-assessment-list :member
                               guardrail-assessment)

(smithy/sdk/shapes:define-map guardrail-assessment-list-map :key
                              smithy/sdk/smithy-types:string :value
                              guardrail-assessment-list)

(smithy/sdk/shapes:define-map guardrail-assessment-map :key
                              smithy/sdk/smithy-types:string :value
                              guardrail-assessment)

(smithy/sdk/shapes:define-list
 guardrail-automated-reasoning-difference-scenario-list :member
 guardrail-automated-reasoning-scenario)

(smithy/sdk/shapes:define-union guardrail-automated-reasoning-finding
                                common-lisp:nil
                                ((valid :target-type
                                  guardrail-automated-reasoning-valid-finding
                                  :member-name "valid")
                                 (invalid :target-type
                                  guardrail-automated-reasoning-invalid-finding
                                  :member-name "invalid")
                                 (satisfiable :target-type
                                  guardrail-automated-reasoning-satisfiable-finding
                                  :member-name "satisfiable")
                                 (impossible :target-type
                                  guardrail-automated-reasoning-impossible-finding
                                  :member-name "impossible")
                                 (translation-ambiguous :target-type
                                  guardrail-automated-reasoning-translation-ambiguous-finding
                                  :member-name "translationAmbiguous")
                                 (too-complex :target-type
                                  guardrail-automated-reasoning-too-complex-finding
                                  :member-name "tooComplex")
                                 (no-translations :target-type
                                  guardrail-automated-reasoning-no-translations-finding
                                  :member-name "noTranslations"))
                                (:shape-name
                                 "GuardrailAutomatedReasoningFinding"))

(smithy/sdk/shapes:define-list guardrail-automated-reasoning-finding-list
                               :member guardrail-automated-reasoning-finding)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-impossible-finding common-lisp:nil
 ((translation :target-type guardrail-automated-reasoning-translation
   :member-name "translation")
  (contradicting-rules :target-type guardrail-automated-reasoning-rule-list
   :member-name "contradictingRules")
  (logic-warning :target-type guardrail-automated-reasoning-logic-warning
   :member-name "logicWarning"))
 (:shape-name "GuardrailAutomatedReasoningImpossibleFinding"))

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-input-text-reference common-lisp:nil
 ((text :target-type
   guardrail-automated-reasoning-statement-natural-language-content
   :member-name "text"))
 (:shape-name "GuardrailAutomatedReasoningInputTextReference"))

(smithy/sdk/shapes:define-list
 guardrail-automated-reasoning-input-text-reference-list :member
 guardrail-automated-reasoning-input-text-reference)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-invalid-finding common-lisp:nil
 ((translation :target-type guardrail-automated-reasoning-translation
   :member-name "translation")
  (contradicting-rules :target-type guardrail-automated-reasoning-rule-list
   :member-name "contradictingRules")
  (logic-warning :target-type guardrail-automated-reasoning-logic-warning
   :member-name "logicWarning"))
 (:shape-name "GuardrailAutomatedReasoningInvalidFinding"))

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-logic-warning
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-automated-reasoning-logic-warning-type
                                      :member-name "type")
                                     (premises :target-type
                                      guardrail-automated-reasoning-statement-list
                                      :member-name "premises")
                                     (claims :target-type
                                      guardrail-automated-reasoning-statement-list
                                      :member-name "claims"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningLogicWarning"))

(smithy/sdk/shapes:define-enum guardrail-automated-reasoning-logic-warning-type
    common-lisp:nil
  (:always-false "ALWAYS_FALSE")
  (:always-true "ALWAYS_TRUE"))

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-no-translations-finding common-lisp:nil
 common-lisp:nil
 (:shape-name "GuardrailAutomatedReasoningNoTranslationsFinding"))

(smithy/sdk/shapes:define-type guardrail-automated-reasoning-policies-processed
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-policy-assessment common-lisp:nil
 ((findings :target-type guardrail-automated-reasoning-finding-list
   :member-name "findings"))
 (:shape-name "GuardrailAutomatedReasoningPolicyAssessment"))

(smithy/sdk/shapes:define-type
 guardrail-automated-reasoning-policy-units-processed
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type guardrail-automated-reasoning-policy-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-rule
                                    common-lisp:nil
                                    ((identifier :target-type
                                      automated-reasoning-rule-identifier
                                      :member-name "identifier")
                                     (policy-version-arn :target-type
                                      guardrail-automated-reasoning-policy-version-arn
                                      :member-name "policyVersionArn"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningRule"))

(smithy/sdk/shapes:define-list guardrail-automated-reasoning-rule-list :member
                               guardrail-automated-reasoning-rule)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-satisfiable-finding common-lisp:nil
 ((translation :target-type guardrail-automated-reasoning-translation
   :member-name "translation")
  (claims-true-scenario :target-type guardrail-automated-reasoning-scenario
   :member-name "claimsTrueScenario")
  (claims-false-scenario :target-type guardrail-automated-reasoning-scenario
   :member-name "claimsFalseScenario")
  (logic-warning :target-type guardrail-automated-reasoning-logic-warning
   :member-name "logicWarning"))
 (:shape-name "GuardrailAutomatedReasoningSatisfiableFinding"))

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-scenario
                                    common-lisp:nil
                                    ((statements :target-type
                                      guardrail-automated-reasoning-statement-list
                                      :member-name "statements"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningScenario"))

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-statement
                                    common-lisp:nil
                                    ((logic :target-type
                                      guardrail-automated-reasoning-statement-logic-content
                                      :member-name "logic")
                                     (natural-language :target-type
                                      guardrail-automated-reasoning-statement-natural-language-content
                                      :member-name "naturalLanguage"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningStatement"))

(smithy/sdk/shapes:define-list guardrail-automated-reasoning-statement-list
                               :member guardrail-automated-reasoning-statement)

(smithy/sdk/shapes:define-type
 guardrail-automated-reasoning-statement-logic-content
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 guardrail-automated-reasoning-statement-natural-language-content
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-too-complex-finding common-lisp:nil
 common-lisp:nil (:shape-name "GuardrailAutomatedReasoningTooComplexFinding"))

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-translation
                                    common-lisp:nil
                                    ((premises :target-type
                                      guardrail-automated-reasoning-statement-list
                                      :member-name "premises")
                                     (claims :target-type
                                      guardrail-automated-reasoning-statement-list
                                      :member-name "claims")
                                     (untranslated-premises :target-type
                                      guardrail-automated-reasoning-input-text-reference-list
                                      :member-name "untranslatedPremises")
                                     (untranslated-claims :target-type
                                      guardrail-automated-reasoning-input-text-reference-list
                                      :member-name "untranslatedClaims")
                                     (confidence :target-type
                                      guardrail-automated-reasoning-translation-confidence
                                      :member-name "confidence"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningTranslation"))

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-translation-ambiguous-finding common-lisp:nil
 ((options :target-type guardrail-automated-reasoning-translation-option-list
   :member-name "options")
  (difference-scenarios :target-type
   guardrail-automated-reasoning-difference-scenario-list :member-name
   "differenceScenarios"))
 (:shape-name "GuardrailAutomatedReasoningTranslationAmbiguousFinding"))

(smithy/sdk/shapes:define-type
 guardrail-automated-reasoning-translation-confidence
 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list guardrail-automated-reasoning-translation-list
                               :member
                               guardrail-automated-reasoning-translation)

(smithy/sdk/shapes:define-structure
 guardrail-automated-reasoning-translation-option common-lisp:nil
 ((translations :target-type guardrail-automated-reasoning-translation-list
   :member-name "translations"))
 (:shape-name "GuardrailAutomatedReasoningTranslationOption"))

(smithy/sdk/shapes:define-list
 guardrail-automated-reasoning-translation-option-list :member
 guardrail-automated-reasoning-translation-option)

(smithy/sdk/shapes:define-structure guardrail-automated-reasoning-valid-finding
                                    common-lisp:nil
                                    ((translation :target-type
                                      guardrail-automated-reasoning-translation
                                      :member-name "translation")
                                     (claims-true-scenario :target-type
                                      guardrail-automated-reasoning-scenario
                                      :member-name "claimsTrueScenario")
                                     (supporting-rules :target-type
                                      guardrail-automated-reasoning-rule-list
                                      :member-name "supportingRules")
                                     (logic-warning :target-type
                                      guardrail-automated-reasoning-logic-warning
                                      :member-name "logicWarning"))
                                    (:shape-name
                                     "GuardrailAutomatedReasoningValidFinding"))

(smithy/sdk/shapes:define-structure guardrail-configuration common-lisp:nil
                                    ((guardrail-identifier :target-type
                                      guardrail-identifier :required
                                      common-lisp:t :member-name
                                      "guardrailIdentifier")
                                     (guardrail-version :target-type
                                      guardrail-version :required common-lisp:t
                                      :member-name "guardrailVersion")
                                     (trace :target-type guardrail-trace
                                      :member-name "trace"))
                                    (:shape-name "GuardrailConfiguration"))

(smithy/sdk/shapes:define-union guardrail-content-block common-lisp:nil
                                ((text :target-type guardrail-text-block
                                  :member-name "text")
                                 (image :target-type guardrail-image-block
                                  :member-name "image"))
                                (:shape-name "GuardrailContentBlock"))

(smithy/sdk/shapes:define-list guardrail-content-block-list :member
                               guardrail-content-block)

(smithy/sdk/shapes:define-structure guardrail-content-filter common-lisp:nil
                                    ((type :target-type
                                      guardrail-content-filter-type :required
                                      common-lisp:t :member-name "type")
                                     (confidence :target-type
                                      guardrail-content-filter-confidence
                                      :required common-lisp:t :member-name
                                      "confidence")
                                     (filter-strength :target-type
                                      guardrail-content-filter-strength
                                      :member-name "filterStrength")
                                     (action :target-type
                                      guardrail-content-policy-action :required
                                      common-lisp:t :member-name "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name "GuardrailContentFilter"))

(smithy/sdk/shapes:define-enum guardrail-content-filter-confidence
    common-lisp:nil
  (:none "NONE")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-list guardrail-content-filter-list :member
                               guardrail-content-filter)

(smithy/sdk/shapes:define-enum guardrail-content-filter-strength
    common-lisp:nil
  (:none "NONE")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

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
  (:blocked "BLOCKED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-content-policy-assessment
                                    common-lisp:nil
                                    ((filters :target-type
                                      guardrail-content-filter-list :required
                                      common-lisp:t :member-name "filters"))
                                    (:shape-name
                                     "GuardrailContentPolicyAssessment"))

(smithy/sdk/shapes:define-type guardrail-content-policy-image-units-processed
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type guardrail-content-policy-units-processed
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum guardrail-content-qualifier
    common-lisp:nil
  (:grounding-source "grounding_source")
  (:query "query")
  (:guard-content "guard_content"))

(smithy/sdk/shapes:define-list guardrail-content-qualifier-list :member
                               guardrail-content-qualifier)

(smithy/sdk/shapes:define-enum guardrail-content-source
    common-lisp:nil
  (:input "INPUT")
  (:output "OUTPUT"))

(smithy/sdk/shapes:define-structure guardrail-contextual-grounding-filter
                                    common-lisp:nil
                                    ((type :target-type
                                      guardrail-contextual-grounding-filter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "threshold")
                                     (score :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "score")
                                     (action :target-type
                                      guardrail-contextual-grounding-policy-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name
                                     "GuardrailContextualGroundingFilter"))

(smithy/sdk/shapes:define-enum guardrail-contextual-grounding-filter-type
    common-lisp:nil
  (:grounding "GROUNDING")
  (:relevance "RELEVANCE"))

(smithy/sdk/shapes:define-list guardrail-contextual-grounding-filters :member
                               guardrail-contextual-grounding-filter)

(smithy/sdk/shapes:define-enum guardrail-contextual-grounding-policy-action
    common-lisp:nil
  (:blocked "BLOCKED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure
 guardrail-contextual-grounding-policy-assessment common-lisp:nil
 ((filters :target-type guardrail-contextual-grounding-filters :member-name
   "filters"))
 (:shape-name "GuardrailContextualGroundingPolicyAssessment"))

(smithy/sdk/shapes:define-type
 guardrail-contextual-grounding-policy-units-processed
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union guardrail-converse-content-block
                                common-lisp:nil
                                ((text :target-type
                                  guardrail-converse-text-block :member-name
                                  "text")
                                 (image :target-type
                                  guardrail-converse-image-block :member-name
                                  "image"))
                                (:shape-name "GuardrailConverseContentBlock"))

(smithy/sdk/shapes:define-enum guardrail-converse-content-qualifier
    common-lisp:nil
  (:grounding-source "grounding_source")
  (:query "query")
  (:guard-content "guard_content"))

(smithy/sdk/shapes:define-list guardrail-converse-content-qualifier-list
                               :member guardrail-converse-content-qualifier)

(smithy/sdk/shapes:define-structure guardrail-converse-image-block
                                    common-lisp:nil
                                    ((format :target-type
                                      guardrail-converse-image-format :required
                                      common-lisp:t :member-name "format")
                                     (source :target-type
                                      guardrail-converse-image-source :required
                                      common-lisp:t :member-name "source"))
                                    (:shape-name "GuardrailConverseImageBlock"))

(smithy/sdk/shapes:define-enum guardrail-converse-image-format
    common-lisp:nil
  (:png "png")
  (:jpeg "jpeg"))

(smithy/sdk/shapes:define-union guardrail-converse-image-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes"))
                                (:shape-name "GuardrailConverseImageSource"))

(smithy/sdk/shapes:define-structure guardrail-converse-text-block
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (qualifiers :target-type
                                      guardrail-converse-content-qualifier-list
                                      :member-name "qualifiers"))
                                    (:shape-name "GuardrailConverseTextBlock"))

(smithy/sdk/shapes:define-structure guardrail-coverage common-lisp:nil
                                    ((text-characters :target-type
                                      guardrail-text-characters-coverage
                                      :member-name "textCharacters")
                                     (images :target-type
                                      guardrail-image-coverage :member-name
                                      "images"))
                                    (:shape-name "GuardrailCoverage"))

(smithy/sdk/shapes:define-structure guardrail-custom-word common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "match")
                                     (action :target-type
                                      guardrail-word-policy-action :required
                                      common-lisp:t :member-name "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name "GuardrailCustomWord"))

(smithy/sdk/shapes:define-list guardrail-custom-word-list :member
                               guardrail-custom-word)

(smithy/sdk/shapes:define-type guardrail-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-image-block common-lisp:nil
                                    ((format :target-type
                                      guardrail-image-format :required
                                      common-lisp:t :member-name "format")
                                     (source :target-type
                                      guardrail-image-source :required
                                      common-lisp:t :member-name "source"))
                                    (:shape-name "GuardrailImageBlock"))

(smithy/sdk/shapes:define-structure guardrail-image-coverage common-lisp:nil
                                    ((guarded :target-type images-guarded
                                      :member-name "guarded")
                                     (total :target-type images-total
                                      :member-name "total"))
                                    (:shape-name "GuardrailImageCoverage"))

(smithy/sdk/shapes:define-enum guardrail-image-format
    common-lisp:nil
  (:png "png")
  (:jpeg "jpeg"))

(smithy/sdk/shapes:define-union guardrail-image-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes"))
                                (:shape-name "GuardrailImageSource"))

(smithy/sdk/shapes:define-structure guardrail-invocation-metrics
                                    common-lisp:nil
                                    ((guardrail-processing-latency :target-type
                                      guardrail-processing-latency :member-name
                                      "guardrailProcessingLatency")
                                     (usage :target-type guardrail-usage
                                      :member-name "usage")
                                     (guardrail-coverage :target-type
                                      guardrail-coverage :member-name
                                      "guardrailCoverage"))
                                    (:shape-name "GuardrailInvocationMetrics"))

(smithy/sdk/shapes:define-structure guardrail-managed-word common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "match")
                                     (type :target-type
                                      guardrail-managed-word-type :required
                                      common-lisp:t :member-name "type")
                                     (action :target-type
                                      guardrail-word-policy-action :required
                                      common-lisp:t :member-name "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name "GuardrailManagedWord"))

(smithy/sdk/shapes:define-list guardrail-managed-word-list :member
                               guardrail-managed-word)

(smithy/sdk/shapes:define-enum guardrail-managed-word-type
    common-lisp:nil
  (:profanity "PROFANITY"))

(smithy/sdk/shapes:define-structure guardrail-output-content common-lisp:nil
                                    ((text :target-type guardrail-output-text
                                      :member-name "text"))
                                    (:shape-name "GuardrailOutputContent"))

(smithy/sdk/shapes:define-list guardrail-output-content-list :member
                               guardrail-output-content)

(smithy/sdk/shapes:define-enum guardrail-output-scope
    common-lisp:nil
  (:interventions "INTERVENTIONS")
  (:full "FULL"))

(smithy/sdk/shapes:define-type guardrail-output-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure guardrail-pii-entity-filter common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "match")
                                     (type :target-type
                                      guardrail-pii-entity-type :required
                                      common-lisp:t :member-name "type")
                                     (action :target-type
                                      guardrail-sensitive-information-policy-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
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

(smithy/sdk/shapes:define-type guardrail-processing-latency
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure guardrail-regex-filter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (match :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "match")
                                     (regex :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "regex")
                                     (action :target-type
                                      guardrail-sensitive-information-policy-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name "GuardrailRegexFilter"))

(smithy/sdk/shapes:define-list guardrail-regex-filter-list :member
                               guardrail-regex-filter)

common-lisp:nil

(smithy/sdk/shapes:define-enum guardrail-sensitive-information-policy-action
    common-lisp:nil
  (:anonymized "ANONYMIZED")
  (:blocked "BLOCKED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure
 guardrail-sensitive-information-policy-assessment common-lisp:nil
 ((pii-entities :target-type guardrail-pii-entity-filter-list :required
   common-lisp:t :member-name "piiEntities")
  (regexes :target-type guardrail-regex-filter-list :required common-lisp:t
   :member-name "regexes"))
 (:shape-name "GuardrailSensitiveInformationPolicyAssessment"))

(smithy/sdk/shapes:define-type
 guardrail-sensitive-information-policy-free-units-processed
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 guardrail-sensitive-information-policy-units-processed
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure guardrail-stream-configuration
                                    common-lisp:nil
                                    ((guardrail-identifier :target-type
                                      guardrail-identifier :required
                                      common-lisp:t :member-name
                                      "guardrailIdentifier")
                                     (guardrail-version :target-type
                                      guardrail-version :required common-lisp:t
                                      :member-name "guardrailVersion")
                                     (trace :target-type guardrail-trace
                                      :member-name "trace")
                                     (stream-processing-mode :target-type
                                      guardrail-stream-processing-mode
                                      :member-name "streamProcessingMode"))
                                    (:shape-name
                                     "GuardrailStreamConfiguration"))

(smithy/sdk/shapes:define-enum guardrail-stream-processing-mode
    common-lisp:nil
  (:sync "sync")
  (:async "async"))

(smithy/sdk/shapes:define-structure guardrail-text-block common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (qualifiers :target-type
                                      guardrail-content-qualifier-list
                                      :member-name "qualifiers"))
                                    (:shape-name "GuardrailTextBlock"))

(smithy/sdk/shapes:define-structure guardrail-text-characters-coverage
                                    common-lisp:nil
                                    ((guarded :target-type
                                      text-characters-guarded :member-name
                                      "guarded")
                                     (total :target-type text-characters-total
                                      :member-name "total"))
                                    (:shape-name
                                     "GuardrailTextCharactersCoverage"))

(smithy/sdk/shapes:define-structure guardrail-topic common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type guardrail-topic-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (action :target-type
                                      guardrail-topic-policy-action :required
                                      common-lisp:t :member-name "action")
                                     (detected :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "detected"))
                                    (:shape-name "GuardrailTopic"))

(smithy/sdk/shapes:define-list guardrail-topic-list :member guardrail-topic)

(smithy/sdk/shapes:define-enum guardrail-topic-policy-action
    common-lisp:nil
  (:blocked "BLOCKED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-topic-policy-assessment
                                    common-lisp:nil
                                    ((topics :target-type guardrail-topic-list
                                      :required common-lisp:t :member-name
                                      "topics"))
                                    (:shape-name
                                     "GuardrailTopicPolicyAssessment"))

(smithy/sdk/shapes:define-type guardrail-topic-policy-units-processed
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum guardrail-topic-type
    common-lisp:nil
  (:deny "DENY"))

(smithy/sdk/shapes:define-enum guardrail-trace
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:enabled-full "enabled_full"))

(smithy/sdk/shapes:define-structure guardrail-trace-assessment common-lisp:nil
                                    ((model-output :target-type model-outputs
                                      :member-name "modelOutput")
                                     (input-assessment :target-type
                                      guardrail-assessment-map :member-name
                                      "inputAssessment")
                                     (output-assessments :target-type
                                      guardrail-assessment-list-map
                                      :member-name "outputAssessments")
                                     (action-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "actionReason"))
                                    (:shape-name "GuardrailTraceAssessment"))

(smithy/sdk/shapes:define-structure guardrail-usage common-lisp:nil
                                    ((topic-policy-units :target-type
                                      guardrail-topic-policy-units-processed
                                      :required common-lisp:t :member-name
                                      "topicPolicyUnits")
                                     (content-policy-units :target-type
                                      guardrail-content-policy-units-processed
                                      :required common-lisp:t :member-name
                                      "contentPolicyUnits")
                                     (word-policy-units :target-type
                                      guardrail-word-policy-units-processed
                                      :required common-lisp:t :member-name
                                      "wordPolicyUnits")
                                     (sensitive-information-policy-units
                                      :target-type
                                      guardrail-sensitive-information-policy-units-processed
                                      :required common-lisp:t :member-name
                                      "sensitiveInformationPolicyUnits")
                                     (sensitive-information-policy-free-units
                                      :target-type
                                      guardrail-sensitive-information-policy-free-units-processed
                                      :required common-lisp:t :member-name
                                      "sensitiveInformationPolicyFreeUnits")
                                     (contextual-grounding-policy-units
                                      :target-type
                                      guardrail-contextual-grounding-policy-units-processed
                                      :required common-lisp:t :member-name
                                      "contextualGroundingPolicyUnits")
                                     (content-policy-image-units :target-type
                                      guardrail-content-policy-image-units-processed
                                      :member-name "contentPolicyImageUnits")
                                     (automated-reasoning-policy-units
                                      :target-type
                                      guardrail-automated-reasoning-policy-units-processed
                                      :member-name
                                      "automatedReasoningPolicyUnits")
                                     (automated-reasoning-policies :target-type
                                      guardrail-automated-reasoning-policies-processed
                                      :member-name
                                      "automatedReasoningPolicies"))
                                    (:shape-name "GuardrailUsage"))

(smithy/sdk/shapes:define-type guardrail-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum guardrail-word-policy-action
    common-lisp:nil
  (:blocked "BLOCKED")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure guardrail-word-policy-assessment
                                    common-lisp:nil
                                    ((custom-words :target-type
                                      guardrail-custom-word-list :required
                                      common-lisp:t :member-name "customWords")
                                     (managed-word-lists :target-type
                                      guardrail-managed-word-list :required
                                      common-lisp:t :member-name
                                      "managedWordLists"))
                                    (:shape-name
                                     "GuardrailWordPolicyAssessment"))

(smithy/sdk/shapes:define-type guardrail-word-policy-units-processed
                               smithy/sdk/smithy-types:integer)

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

(smithy/sdk/shapes:define-union image-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes")
                                 (s3location :target-type s3location
                                  :member-name "s3Location"))
                                (:shape-name "ImageSource"))

(smithy/sdk/shapes:define-type images-guarded smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type images-total smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure inference-configuration common-lisp:nil
                                    ((max-tokens :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxTokens")
                                     (temperature :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "temperature")
                                     (top-p :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "topP")
                                     (stop-sequences :target-type
                                      non-empty-string-list :member-name
                                      "stopSequences"))
                                    (:shape-name "InferenceConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-type invocation-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invoke-model-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input invoke-model-request common-lisp:nil
                                ((body :target-type body :member-name "body"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type mime-type
                                  :member-name "contentType" :http-header
                                  "Content-Type")
                                 (accept :target-type mime-type :member-name
                                  "accept" :http-header "Accept")
                                 (model-id :target-type invoke-model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (trace :target-type trace :member-name "trace"
                                  :http-header "X-Amzn-Bedrock-Trace")
                                 (guardrail-identifier :target-type
                                  guardrail-identifier :member-name
                                  "guardrailIdentifier" :http-header
                                  "X-Amzn-Bedrock-GuardrailIdentifier")
                                 (guardrail-version :target-type
                                  guardrail-version :member-name
                                  "guardrailVersion" :http-header
                                  "X-Amzn-Bedrock-GuardrailVersion")
                                 (performance-config-latency :target-type
                                  performance-config-latency :member-name
                                  "performanceConfigLatency" :http-header
                                  "X-Amzn-Bedrock-PerformanceConfig-Latency"))
                                (:shape-name "InvokeModelRequest"))

(smithy/sdk/shapes:define-output invoke-model-response common-lisp:nil
                                 ((body :target-type body :required
                                   common-lisp:t :member-name "body"
                                   :http-payload common-lisp:t)
                                  (content-type :target-type mime-type
                                   :required common-lisp:t :member-name
                                   "contentType" :http-header "Content-Type")
                                  (performance-config-latency :target-type
                                   performance-config-latency :member-name
                                   "performanceConfigLatency" :http-header
                                   "X-Amzn-Bedrock-PerformanceConfig-Latency"))
                                 (:shape-name "InvokeModelResponse"))

(smithy/sdk/shapes:define-union invoke-model-with-bidirectional-stream-input
                                common-lisp:nil
                                ((chunk :target-type
                                  bidirectional-input-payload-part :member-name
                                  "chunk"))
                                (:shape-name
                                 "InvokeModelWithBidirectionalStreamInput"))

(smithy/sdk/shapes:define-union invoke-model-with-bidirectional-stream-output
                                common-lisp:nil
                                ((chunk :target-type
                                  bidirectional-output-payload-part
                                  :member-name "chunk")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (model-stream-error-exception :target-type
                                  model-stream-error-exception :member-name
                                  "modelStreamErrorException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (model-timeout-exception :target-type
                                  model-timeout-exception :member-name
                                  "modelTimeoutException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "serviceUnavailableException"))
                                (:shape-name
                                 "InvokeModelWithBidirectionalStreamOutput"))

(smithy/sdk/shapes:define-input invoke-model-with-bidirectional-stream-request
                                common-lisp:nil
                                ((model-id :target-type invoke-model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (body :target-type
                                  invoke-model-with-bidirectional-stream-input
                                  :required common-lisp:t :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "InvokeModelWithBidirectionalStreamRequest"))

(smithy/sdk/shapes:define-output
 invoke-model-with-bidirectional-stream-response common-lisp:nil
 ((body :target-type invoke-model-with-bidirectional-stream-output :required
   common-lisp:t :member-name "body" :http-payload common-lisp:t))
 (:shape-name "InvokeModelWithBidirectionalStreamResponse"))

(smithy/sdk/shapes:define-input invoke-model-with-response-stream-request
                                common-lisp:nil
                                ((body :target-type body :member-name "body"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type mime-type
                                  :member-name "contentType" :http-header
                                  "Content-Type")
                                 (accept :target-type mime-type :member-name
                                  "accept" :http-header
                                  "X-Amzn-Bedrock-Accept")
                                 (model-id :target-type invoke-model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId" :http-label common-lisp:t)
                                 (trace :target-type trace :member-name "trace"
                                  :http-header "X-Amzn-Bedrock-Trace")
                                 (guardrail-identifier :target-type
                                  guardrail-identifier :member-name
                                  "guardrailIdentifier" :http-header
                                  "X-Amzn-Bedrock-GuardrailIdentifier")
                                 (guardrail-version :target-type
                                  guardrail-version :member-name
                                  "guardrailVersion" :http-header
                                  "X-Amzn-Bedrock-GuardrailVersion")
                                 (performance-config-latency :target-type
                                  performance-config-latency :member-name
                                  "performanceConfigLatency" :http-header
                                  "X-Amzn-Bedrock-PerformanceConfig-Latency"))
                                (:shape-name
                                 "InvokeModelWithResponseStreamRequest"))

(smithy/sdk/shapes:define-output invoke-model-with-response-stream-response
                                 common-lisp:nil
                                 ((body :target-type response-stream :required
                                   common-lisp:t :member-name "body"
                                   :http-payload common-lisp:t)
                                  (content-type :target-type mime-type
                                   :required common-lisp:t :member-name
                                   "contentType" :http-header
                                   "X-Amzn-Bedrock-Content-Type")
                                  (performance-config-latency :target-type
                                   performance-config-latency :member-name
                                   "performanceConfigLatency" :http-header
                                   "X-Amzn-Bedrock-PerformanceConfig-Latency"))
                                 (:shape-name
                                  "InvokeModelWithResponseStreamResponse"))

(smithy/sdk/shapes:define-type invoked-model-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-async-invokes-request common-lisp:nil
                                ((submit-time-after :target-type timestamp
                                  :member-name "submitTimeAfter" :http-query
                                  "submitTimeAfter")
                                 (submit-time-before :target-type timestamp
                                  :member-name "submitTimeBefore" :http-query
                                  "submitTimeBefore")
                                 (status-equals :target-type
                                  async-invoke-status :member-name
                                  "statusEquals" :http-query "statusEquals")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-async-invocation-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListAsyncInvokesRequest"))

(smithy/sdk/shapes:define-output list-async-invokes-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (async-invoke-summaries :target-type
                                   async-invoke-summaries :member-name
                                   "asyncInvokeSummaries"))
                                 (:shape-name "ListAsyncInvokesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((role :target-type conversation-role
                                      :required common-lisp:t :member-name
                                      "role")
                                     (content :target-type content-blocks
                                      :required common-lisp:t :member-name
                                      "content"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-structure message-start-event common-lisp:nil
                                    ((role :target-type conversation-role
                                      :required common-lisp:t :member-name
                                      "role"))
                                    (:shape-name "MessageStartEvent"))

(smithy/sdk/shapes:define-structure message-stop-event common-lisp:nil
                                    ((stop-reason :target-type stop-reason
                                      :required common-lisp:t :member-name
                                      "stopReason")
                                     (additional-model-response-fields
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "additionalModelResponseFields"))
                                    (:shape-name "MessageStopEvent"))

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-type mime-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error model-error-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (original-status-code :target-type status-code
                                  :member-name "originalStatusCode")
                                 (resource-name :target-type non-blank-string
                                  :member-name "resourceName"))
                                (:shape-name "ModelErrorException")
                                (:error-code 424)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-type model-input-payload
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-error model-not-ready-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ModelNotReadyException")
                                (:error-code 429)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-list model-outputs :member guardrail-output-text)

(smithy/sdk/shapes:define-error model-stream-error-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message")
                                 (original-status-code :target-type status-code
                                  :member-name "originalStatusCode")
                                 (original-message :target-type
                                  non-blank-string :member-name
                                  "originalMessage"))
                                (:shape-name "ModelStreamErrorException")
                                (:error-code 424)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-error model-timeout-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ModelTimeoutException")
                                (:error-code 408)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-string-list :member non-empty-string)

(smithy/sdk/shapes:define-type non-negative-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type part-body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure payload-part common-lisp:nil
                                    ((bytes :target-type part-body :member-name
                                      "bytes"))
                                    (:shape-name "PayloadPart"))

(smithy/sdk/shapes:define-enum performance-config-latency
    common-lisp:nil
  (:standard "standard")
  (:optimized "optimized"))

(smithy/sdk/shapes:define-structure performance-configuration common-lisp:nil
                                    ((latency :target-type
                                      performance-config-latency :member-name
                                      "latency"))
                                    (:shape-name "PerformanceConfiguration"))

(smithy/sdk/shapes:define-structure prompt-router-trace common-lisp:nil
                                    ((invoked-model-id :target-type
                                      invoked-model-id :member-name
                                      "invokedModelId"))
                                    (:shape-name "PromptRouterTrace"))

(smithy/sdk/shapes:define-map prompt-variable-map :key
                              smithy/sdk/smithy-types:string :value
                              prompt-variable-values)

(smithy/sdk/shapes:define-union prompt-variable-values common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text"))
                                (:shape-name "PromptVariableValues"))

(smithy/sdk/shapes:define-union reasoning-content-block common-lisp:nil
                                ((reasoning-text :target-type
                                  reasoning-text-block :member-name
                                  "reasoningText")
                                 (redacted-content :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "redactedContent"))
                                (:shape-name "ReasoningContentBlock"))

(smithy/sdk/shapes:define-union reasoning-content-block-delta common-lisp:nil
                                ((text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (redacted-content :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "redactedContent")
                                 (signature :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "signature"))
                                (:shape-name "ReasoningContentBlockDelta"))

(smithy/sdk/shapes:define-structure reasoning-text-block common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "text")
                                     (signature :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "signature"))
                                    (:shape-name "ReasoningTextBlock"))

(smithy/sdk/shapes:define-map request-metadata :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-union response-stream common-lisp:nil
                                ((chunk :target-type payload-part :member-name
                                  "chunk")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (model-stream-error-exception :target-type
                                  model-stream-error-exception :member-name
                                  "modelStreamErrorException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (model-timeout-exception :target-type
                                  model-timeout-exception :member-name
                                  "modelTimeoutException")
                                 (service-unavailable-exception :target-type
                                  service-unavailable-exception :member-name
                                  "serviceUnavailableException"))
                                (:shape-name "ResponseStream"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((uri :target-type s3uri :required
                                      common-lisp:t :member-name "uri")
                                     (bucket-owner :target-type account-id
                                      :member-name "bucketOwner"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-enum sort-async-invocation-by
    common-lisp:nil
  (:submission-time "SubmissionTime"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "Ascending")
  (:descending "Descending"))

(smithy/sdk/shapes:define-structure specific-tool-choice common-lisp:nil
                                    ((name :target-type tool-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "SpecificToolChoice"))

(smithy/sdk/shapes:define-input start-async-invoke-request common-lisp:nil
                                ((client-request-token :target-type
                                  async-invoke-idempotency-token :member-name
                                  "clientRequestToken")
                                 (model-id :target-type async-invoke-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-input :target-type model-input-payload
                                  :required common-lisp:t :member-name
                                  "modelInput")
                                 (output-data-config :target-type
                                  async-invoke-output-data-config :required
                                  common-lisp:t :member-name
                                  "outputDataConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "StartAsyncInvokeRequest"))

(smithy/sdk/shapes:define-output start-async-invoke-response common-lisp:nil
                                 ((invocation-arn :target-type invocation-arn
                                   :required common-lisp:t :member-name
                                   "invocationArn"))
                                 (:shape-name "StartAsyncInvokeResponse"))

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum stop-reason
    common-lisp:nil
  (:end-turn "end_turn")
  (:tool-use "tool_use")
  (:max-tokens "max_tokens")
  (:stop-sequence "stop_sequence")
  (:guardrail-intervened "guardrail_intervened")
  (:content-filtered "content_filtered"))

(smithy/sdk/shapes:define-union system-content-block common-lisp:nil
                                ((text :target-type non-empty-string
                                  :member-name "text")
                                 (guard-content :target-type
                                  guardrail-converse-content-block :member-name
                                  "guardContent")
                                 (cache-point :target-type cache-point-block
                                  :member-name "cachePoint"))
                                (:shape-name "SystemContentBlock"))

(smithy/sdk/shapes:define-list system-content-blocks :member
                               system-content-block)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-characters-guarded
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type text-characters-total
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure token-usage common-lisp:nil
                                    ((input-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "inputTokens")
                                     (output-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "outputTokens")
                                     (total-tokens :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "totalTokens")
                                     (cache-read-input-tokens :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cacheReadInputTokens")
                                     (cache-write-input-tokens :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cacheWriteInputTokens"))
                                    (:shape-name "TokenUsage"))

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

(smithy/sdk/shapes:define-structure tool-result-block common-lisp:nil
                                    ((tool-use-id :target-type tool-use-id
                                      :required common-lisp:t :member-name
                                      "toolUseId")
                                     (content :target-type
                                      tool-result-content-blocks :required
                                      common-lisp:t :member-name "content")
                                     (status :target-type tool-result-status
                                      :member-name "status"))
                                    (:shape-name "ToolResultBlock"))

(smithy/sdk/shapes:define-union tool-result-content-block common-lisp:nil
                                ((json :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "json")
                                 (text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "text")
                                 (image :target-type image-block :member-name
                                  "image")
                                 (document :target-type document-block
                                  :member-name "document")
                                 (video :target-type video-block :member-name
                                  "video"))
                                (:shape-name "ToolResultContentBlock"))

(smithy/sdk/shapes:define-list tool-result-content-blocks :member
                               tool-result-content-block)

(smithy/sdk/shapes:define-enum tool-result-status
    common-lisp:nil
  (:success "success")
  (:error "error"))

(smithy/sdk/shapes:define-structure tool-specification common-lisp:nil
                                    ((name :target-type tool-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (input-schema :target-type
                                      tool-input-schema :required common-lisp:t
                                      :member-name "inputSchema"))
                                    (:shape-name "ToolSpecification"))

(smithy/sdk/shapes:define-structure tool-use-block common-lisp:nil
                                    ((tool-use-id :target-type tool-use-id
                                      :required common-lisp:t :member-name
                                      "toolUseId")
                                     (name :target-type tool-name :required
                                      common-lisp:t :member-name "name")
                                     (input :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "input"))
                                    (:shape-name "ToolUseBlock"))

(smithy/sdk/shapes:define-structure tool-use-block-delta common-lisp:nil
                                    ((input :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "input"))
                                    (:shape-name "ToolUseBlockDelta"))

(smithy/sdk/shapes:define-structure tool-use-block-start common-lisp:nil
                                    ((tool-use-id :target-type tool-use-id
                                      :required common-lisp:t :member-name
                                      "toolUseId")
                                     (name :target-type tool-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "ToolUseBlockStart"))

(smithy/sdk/shapes:define-type tool-use-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tools :member tool)

(smithy/sdk/shapes:define-enum trace
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:enabled-full "ENABLED_FULL"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class bedrock-runtime-error))

(smithy/sdk/shapes:define-structure video-block common-lisp:nil
                                    ((format :target-type video-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type video-source
                                      :required common-lisp:t :member-name
                                      "source"))
                                    (:shape-name "VideoBlock"))

(smithy/sdk/shapes:define-enum video-format
    common-lisp:nil
  (:mkv "mkv")
  (:mov "mov")
  (:mp4 "mp4")
  (:webm "webm")
  (:flv "flv")
  (:mpeg "mpeg")
  (:mpg "mpg")
  (:wmv "wmv")
  (:three-gp "three_gp"))

(smithy/sdk/shapes:define-union video-source common-lisp:nil
                                ((bytes :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "bytes")
                                 (s3location :target-type s3location
                                  :member-name "s3Location"))
                                (:shape-name "VideoSource"))

(smithy/sdk/operation:define-operation apply-guardrail :shape-name
                                       "ApplyGuardrail" :input
                                       apply-guardrail-request :output
                                       apply-guardrail-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/guardrail/{guardrailIdentifier}/version/{guardrailVersion}/apply"
                                       :code 200)

(smithy/sdk/operation:define-operation converse :shape-name "Converse" :input
                                       converse-request :output
                                       converse-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        model-error-exception
                                        model-not-ready-exception
                                        model-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model/{modelId}/converse" :code 200)

(smithy/sdk/operation:define-operation converse-stream :shape-name
                                       "ConverseStream" :input
                                       converse-stream-request :output
                                       converse-stream-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        model-error-exception
                                        model-not-ready-exception
                                        model-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model/{modelId}/converse-stream" :code
                                       200)

(smithy/sdk/operation:define-operation get-async-invoke :shape-name
                                       "GetAsyncInvoke" :input
                                       get-async-invoke-request :output
                                       get-async-invoke-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/async-invoke/{invocationArn}" :code
                                       200)

(smithy/sdk/operation:define-operation invoke-model :shape-name "InvokeModel"
                                       :input invoke-model-request :output
                                       invoke-model-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        model-error-exception
                                        model-not-ready-exception
                                        model-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model/{modelId}/invoke" :code 200)

(smithy/sdk/operation:define-operation invoke-model-with-bidirectional-stream
                                       :shape-name
                                       "InvokeModelWithBidirectionalStream"
                                       :input
                                       invoke-model-with-bidirectional-stream-request
                                       :output
                                       invoke-model-with-bidirectional-stream-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        model-error-exception
                                        model-not-ready-exception
                                        model-stream-error-exception
                                        model-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model/{modelId}/invoke-with-bidirectional-stream"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-model-with-response-stream
                                       :shape-name
                                       "InvokeModelWithResponseStream" :input
                                       invoke-model-with-response-stream-request
                                       :output
                                       invoke-model-with-response-stream-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        model-error-exception
                                        model-not-ready-exception
                                        model-stream-error-exception
                                        model-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model/{modelId}/invoke-with-response-stream"
                                       :code 200)

(smithy/sdk/operation:define-operation list-async-invokes :shape-name
                                       "ListAsyncInvokes" :input
                                       list-async-invokes-request :output
                                       list-async-invokes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/async-invoke" :code
                                       200)

(smithy/sdk/operation:define-operation start-async-invoke :shape-name
                                       "StartAsyncInvoke" :input
                                       start-async-invoke-request :output
                                       start-async-invoke-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/async-invoke"
                                       :code 200)
