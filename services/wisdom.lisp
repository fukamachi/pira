(uiop/package:define-package #:pira/wisdom (:use)
                             (:export #:access-denied-exception
                              #:app-integrations-configuration #:arn
                              #:assistant #:assistant-association
                              #:assistant-association-data
                              #:assistant-association-input-data
                              #:assistant-association-output-data
                              #:assistant-association-summary
                              #:assistant-association-summary-list
                              #:assistant-data
                              #:assistant-integration-configuration
                              #:assistant-list #:assistant-status
                              #:assistant-summary #:assistant-type
                              #:association-type #:channel #:channels
                              #:client-token #:configuration
                              #:conflict-exception #:connect-configuration
                              #:contact-attribute-key #:contact-attribute-keys
                              #:contact-attribute-value #:contact-attributes
                              #:content #:content-data #:content-metadata
                              #:content-reference #:content-status
                              #:content-summary #:content-summary-list
                              #:content-title #:content-type #:create-assistant
                              #:create-assistant-association
                              #:create-assistant-association-request
                              #:create-assistant-association-response
                              #:create-assistant-request
                              #:create-assistant-response #:create-content
                              #:create-content-request
                              #:create-content-response #:create-knowledge-base
                              #:create-knowledge-base-request
                              #:create-knowledge-base-response
                              #:create-quick-response #:create-session
                              #:create-session-request
                              #:create-session-response #:delete-assistant
                              #:delete-assistant-association
                              #:delete-assistant-association-request
                              #:delete-assistant-association-response
                              #:delete-assistant-request
                              #:delete-assistant-response #:delete-content
                              #:delete-content-request
                              #:delete-content-response #:delete-import-job
                              #:delete-knowledge-base
                              #:delete-knowledge-base-request
                              #:delete-knowledge-base-response
                              #:delete-quick-response #:description #:document
                              #:document-text #:external-source
                              #:external-source-configuration #:filter
                              #:filter-field #:filter-list #:filter-operator
                              #:generic-arn #:get-assistant
                              #:get-assistant-association
                              #:get-assistant-association-request
                              #:get-assistant-association-response
                              #:get-assistant-request #:get-assistant-response
                              #:get-content #:get-content-request
                              #:get-content-response #:get-content-summary
                              #:get-content-summary-request
                              #:get-content-summary-response #:get-import-job
                              #:get-knowledge-base #:get-knowledge-base-request
                              #:get-knowledge-base-response
                              #:get-quick-response #:get-recommendations
                              #:get-recommendations-request
                              #:get-recommendations-response #:get-session
                              #:get-session-request #:get-session-response
                              #:grouping-configuration #:grouping-criteria
                              #:grouping-value #:grouping-values #:headers
                              #:highlight #:highlight-offset #:highlights
                              #:import-job-data #:import-job-list
                              #:import-job-status #:import-job-summary
                              #:import-job-type #:knowledge-base
                              #:knowledge-base-association-data
                              #:knowledge-base-data #:knowledge-base-list
                              #:knowledge-base-status #:knowledge-base-summary
                              #:knowledge-base-type #:language-code
                              #:list-assistant-associations
                              #:list-assistant-associations-request
                              #:list-assistant-associations-response
                              #:list-assistants #:list-assistants-request
                              #:list-assistants-response #:list-contents
                              #:list-contents-request #:list-contents-response
                              #:list-import-jobs #:list-knowledge-bases
                              #:list-knowledge-bases-request
                              #:list-knowledge-bases-response
                              #:list-quick-responses #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:name #:next-token #:non-empty-string
                              #:notify-recommendations-received
                              #:notify-recommendations-received-error
                              #:notify-recommendations-received-error-list
                              #:notify-recommendations-received-error-message
                              #:notify-recommendations-received-request
                              #:notify-recommendations-received-response
                              #:object-fields-list #:order
                              #:precondition-failed-exception #:priority
                              #:query-assistant #:query-assistant-request
                              #:query-assistant-response
                              #:query-recommendation-trigger-data
                              #:query-results-list #:query-text
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
                              #:quick-response-type #:recommendation-data
                              #:recommendation-id-list #:recommendation-list
                              #:recommendation-source-type
                              #:recommendation-trigger
                              #:recommendation-trigger-data
                              #:recommendation-trigger-list
                              #:recommendation-trigger-type
                              #:recommendation-type #:relevance-level
                              #:relevance-score
                              #:remove-knowledge-base-template-uri
                              #:remove-knowledge-base-template-uri-request
                              #:remove-knowledge-base-template-uri-response
                              #:rendering-configuration
                              #:request-timeout-exception
                              #:resource-not-found-exception #:result-data
                              #:search-content #:search-content-request
                              #:search-content-response #:search-expression
                              #:search-quick-responses #:search-sessions
                              #:search-sessions-request
                              #:search-sessions-response #:sensitive-string
                              #:server-side-encryption-configuration
                              #:service-quota-exceeded-exception #:session
                              #:session-data
                              #:session-integration-configuration
                              #:session-summaries #:session-summary
                              #:short-cut-key #:source-configuration
                              #:start-content-upload
                              #:start-content-upload-request
                              #:start-content-upload-response
                              #:start-import-job #:tag-key #:tag-key-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:tags
                              #:time-to-live #:too-many-tags-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-content
                              #:update-content-request
                              #:update-content-response
                              #:update-knowledge-base-template-uri
                              #:update-knowledge-base-template-uri-request
                              #:update-knowledge-base-template-uri-response
                              #:update-quick-response #:upload-id #:uri #:url
                              #:uuid #:uuid-or-arn #:validation-exception
                              #:wait-time-seconds #:wisdom-service
                              #:wisdom-error))
(common-lisp:in-package #:pira/wisdom)

(common-lisp:define-condition wisdom-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service wisdom-service :shape-name "WisdomService"
                                   :version "2020-10-19" :title
                                   "Amazon Connect Wisdom Service" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Wisdom")
                                      ("arnNamespace" . "wisdom")
                                      ("cloudFormationName" . "Wisdom"))
                                     ("aws.auth#sigv4" ("name" . "wisdom"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class wisdom-error))

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
                                      :member-name "integrationConfiguration"))
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
                                      :member-name "integrationConfiguration"))
                                    (:shape-name "AssistantSummary"))

(smithy/sdk/shapes:define-type assistant-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channels :member channel)

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
                                (:error-code 409) (:base-class wisdom-error))

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
                                      "contentId"))
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
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateSessionRequest"))

(smithy/sdk/shapes:define-structure create-session-response common-lisp:nil
                                    ((session :target-type session-data
                                      :member-name "session"))
                                    (:shape-name "CreateSessionResponse"))

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

(smithy/sdk/shapes:define-type generic-arn smithy/sdk/smithy-types:string)

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
                                  "waitTimeSeconds"))
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

(smithy/sdk/shapes:define-map headers :key non-empty-string :value
                              non-empty-string)

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

common-lisp:nil

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
                                      "tags"))
                                    (:shape-name "KnowledgeBaseData"))

(smithy/sdk/shapes:define-list knowledge-base-list :member
                               knowledge-base-summary)

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

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notify-recommendations-received-error
                                    common-lisp:nil
                                    ((recommendation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recommendationId")
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

(smithy/sdk/shapes:define-type order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412) (:base-class wisdom-error))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input query-assistant-request common-lisp:nil
                                ((assistant-id :target-type uuid-or-arn
                                  :required common-lisp:t :member-name
                                  "assistantId" :http-label common-lisp:t)
                                 (query-text :target-type query-text :required
                                  common-lisp:t :member-name "queryText")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "QueryAssistantRequest"))

(smithy/sdk/shapes:define-structure query-assistant-response common-lisp:nil
                                    ((results :target-type query-results-list
                                      :required common-lisp:t :member-name
                                      "results")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "QueryAssistantResponse"))

(smithy/sdk/shapes:define-structure query-recommendation-trigger-data
                                    common-lisp:nil
                                    ((text :target-type query-text :member-name
                                      "text"))
                                    (:shape-name
                                     "QueryRecommendationTriggerData"))

(smithy/sdk/shapes:define-list query-results-list :member result-data)

(smithy/sdk/shapes:define-type query-text smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure recommendation-data common-lisp:nil
                                    ((recommendation-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "recommendationId")
                                     (document :target-type document :required
                                      common-lisp:t :member-name "document")
                                     (relevance-score :target-type
                                      relevance-score :member-name
                                      "relevanceScore")
                                     (relevance-level :target-type
                                      relevance-level :member-name
                                      "relevanceLevel")
                                     (type :target-type recommendation-type
                                      :member-name "type"))
                                    (:shape-name "RecommendationData"))

(smithy/sdk/shapes:define-list recommendation-id-list :member
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type relevance-level smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relevance-score smithy/sdk/smithy-types:double)

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

(smithy/sdk/shapes:define-structure rendering-configuration common-lisp:nil
                                    ((template-uri :target-type uri
                                      :member-name "templateUri"))
                                    (:shape-name "RenderingConfiguration"))

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408) (:base-class wisdom-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class wisdom-error))

(smithy/sdk/shapes:define-structure result-data common-lisp:nil
                                    ((result-id :target-type uuid :required
                                      common-lisp:t :member-name "resultId")
                                     (document :target-type document :required
                                      common-lisp:t :member-name "document")
                                     (relevance-score :target-type
                                      relevance-score :member-name
                                      "relevanceScore"))
                                    (:shape-name "ResultData"))

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
                                (:error-code 402) (:base-class wisdom-error))

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
                                      :member-name "integrationConfiguration"))
                                    (:shape-name "SessionData"))

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
                                  "appIntegrations"))
                                (:shape-name "SourceConfiguration"))

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

(smithy/sdk/shapes:define-type time-to-live smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400) (:base-class wisdom-error))

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

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class wisdom-error))

(smithy/sdk/shapes:define-type wait-time-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation create-assistant :shape-name
                                       "CreateAssistant" :input
                                       create-assistant-request :output
                                       create-assistant-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
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
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents")

(smithy/sdk/operation:define-operation create-knowledge-base :shape-name
                                       "CreateKnowledgeBase" :input
                                       create-knowledge-base-request :output
                                       create-knowledge-base-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/knowledgeBases")

(smithy/sdk/operation:define-operation create-quick-response :shape-name
                                       "CreateQuickResponse" :input
                                       create-quick-response-request :output
                                       create-quick-response-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses")

(smithy/sdk/operation:define-operation create-session :shape-name
                                       "CreateSession" :input
                                       create-session-request :output
                                       create-session-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/sessions")

(smithy/sdk/operation:define-operation delete-assistant :shape-name
                                       "DeleteAssistant" :input
                                       delete-assistant-request :output
                                       delete-assistant-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
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
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assistants/{assistantId}/associations/{assistantAssociationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-content :shape-name
                                       "DeleteContent" :input
                                       delete-content-request :output
                                       delete-content-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-import-job :shape-name
                                       "DeleteImportJob" :input
                                       delete-import-job-request :output
                                       delete-import-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
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
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-quick-response :shape-name
                                       "DeleteQuickResponse" :input
                                       delete-quick-response-request :output
                                       delete-quick-response-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-assistant :shape-name "GetAssistant"
                                       :input get-assistant-request :output
                                       get-assistant-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
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
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/associations/{assistantAssociationId}")

(smithy/sdk/operation:define-operation get-content :shape-name "GetContent"
                                       :input get-content-request :output
                                       get-content-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}")

(smithy/sdk/operation:define-operation get-content-summary :shape-name
                                       "GetContentSummary" :input
                                       get-content-summary-request :output
                                       get-content-summary-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
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
                                        validation-exception)
                                       :method "GET" :uri
                                       "/knowledgeBases/{knowledgeBaseId}")

(smithy/sdk/operation:define-operation get-quick-response :shape-name
                                       "GetQuickResponse" :input
                                       get-quick-response-request :output
                                       get-quick-response-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
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
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assistants/{assistantId}/sessions/{sessionId}")

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
                                        validation-exception)
                                       :method "GET" :uri "/assistants")

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

(smithy/sdk/operation:define-operation search-content :shape-name
                                       "SearchContent" :input
                                       search-content-request :output
                                       search-content-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/search")

(smithy/sdk/operation:define-operation search-quick-responses :shape-name
                                       "SearchQuickResponses" :input
                                       search-quick-responses-request :output
                                       search-quick-responses-response :errors
                                       (access-denied-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/search/quickResponses")

(smithy/sdk/operation:define-operation search-sessions :shape-name
                                       "SearchSessions" :input
                                       search-sessions-request :output
                                       search-sessions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assistants/{assistantId}/searchSessions")

(smithy/sdk/operation:define-operation start-content-upload :shape-name
                                       "StartContentUpload" :input
                                       start-content-upload-request :output
                                       start-content-upload-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
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

(smithy/sdk/operation:define-operation update-content :shape-name
                                       "UpdateContent" :input
                                       update-content-request :output
                                       update-content-response :errors
                                       (access-denied-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
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

(smithy/sdk/operation:define-operation update-quick-response :shape-name
                                       "UpdateQuickResponse" :input
                                       update-quick-response-request :output
                                       update-quick-response-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}")
