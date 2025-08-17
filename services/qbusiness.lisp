(uiop/package:define-package #:pira/qbusiness (:use)
                             (:export #:apischema #:apischema-type
                              #:access-configuration #:access-control
                              #:access-controls #:action-configuration
                              #:action-configuration-list #:action-execution
                              #:action-execution-event
                              #:action-execution-payload
                              #:action-execution-payload-field
                              #:action-filter-configuration
                              #:action-payload-field-key
                              #:action-payload-field-name-separator
                              #:action-payload-field-type
                              #:action-payload-field-value #:action-review
                              #:action-review-event #:action-review-payload
                              #:action-review-payload-field
                              #:action-review-payload-field-allowed-value
                              #:action-review-payload-field-allowed-values
                              #:action-review-payload-field-array-item-json-schema
                              #:action-summary #:actions #:amazon-resource-name
                              #:application #:application-arn #:application-id
                              #:application-name #:application-resource
                              #:application-status #:applications
                              #:applied-attachments-configuration
                              #:applied-creator-mode-configuration
                              #:applied-orchestration-configuration
                              #:associate-permission #:associated-group
                              #:associated-groups #:associated-user
                              #:associated-users #:attachment #:attachment-id
                              #:attachment-input #:attachment-input-event
                              #:attachment-list #:attachment-name
                              #:attachment-output #:attachment-status
                              #:attachments-configuration
                              #:attachments-control-mode #:attachments-input
                              #:attachments-output #:attribute-filter
                              #:attribute-filters #:attribute-type
                              #:attribute-value-operator
                              #:audio-extraction-configuration
                              #:audio-extraction-status #:audio-extraction-type
                              #:audio-source-details #:auth-challenge-request
                              #:auth-challenge-request-event
                              #:auth-challenge-response
                              #:auth-challenge-response-event
                              #:auth-response-key #:auth-response-value
                              #:authorization-response-map
                              #:auto-subscription-configuration
                              #:auto-subscription-status
                              #:basic-auth-configuration
                              #:batch-delete-document #:batch-put-document
                              #:blob #:blocked-phrase #:blocked-phrases
                              #:blocked-phrases-configuration
                              #:blocked-phrases-configuration-update
                              #:boosting-duration-in-seconds
                              #:browser-extension
                              #:browser-extension-configuration
                              #:browser-extension-list #:cancel-subscription
                              #:chat #:chat-input-stream #:chat-mode
                              #:chat-mode-configuration #:chat-output-stream
                              #:chat-response-configuration
                              #:chat-response-configuration-arn
                              #:chat-response-configuration-detail
                              #:chat-response-configuration-id
                              #:chat-response-configuration-status
                              #:chat-response-configurations #:chat-sync
                              #:check-document-access #:client-id-for-oidc
                              #:client-ids-for-oidc #:client-namespace
                              #:client-token #:configuration-event
                              #:content-blocker-rule #:content-retrieval-rule
                              #:content-source #:content-type #:conversation
                              #:conversation-id #:conversation-source
                              #:conversation-title #:conversations
                              #:copy-from-source
                              #:create-anonymous-web-experience-url
                              #:create-application
                              #:create-chat-response-configuration
                              #:create-data-accessor #:create-data-source
                              #:create-index #:create-plugin #:create-retriever
                              #:create-subscription #:create-user
                              #:create-web-experience
                              #:creator-mode-configuration
                              #:creator-mode-control #:custom-cssurl
                              #:custom-plugin-configuration
                              #:customization-configuration #:data-accessor
                              #:data-accessor-arn
                              #:data-accessor-authentication-configuration
                              #:data-accessor-authentication-detail
                              #:data-accessor-authentication-type
                              #:data-accessor-external-id
                              #:data-accessor-external-ids #:data-accessor-id
                              #:data-accessor-idc-trusted-token-issuer-configuration
                              #:data-accessor-name #:data-accessor-resource
                              #:data-accessors #:data-source #:data-source-arn
                              #:data-source-configuration #:data-source-id
                              #:data-source-ids #:data-source-name
                              #:data-source-resource #:data-source-status
                              #:data-source-sync-job
                              #:data-source-sync-job-metrics
                              #:data-source-sync-job-status
                              #:data-source-sync-jobs #:data-source-user-id
                              #:data-source-vpc-configuration #:data-sources
                              #:date-attribute-boosting-configuration
                              #:delete-application #:delete-attachment
                              #:delete-chat-controls-configuration
                              #:delete-chat-response-configuration
                              #:delete-conversation #:delete-data-accessor
                              #:delete-data-source #:delete-document
                              #:delete-documents #:delete-group #:delete-index
                              #:delete-plugin #:delete-retriever #:delete-user
                              #:delete-web-experience #:description
                              #:disassociate-permission #:display-name
                              #:document #:document-acl
                              #:document-acl-condition
                              #:document-acl-conditions #:document-acl-group
                              #:document-acl-groups #:document-acl-membership
                              #:document-acl-user #:document-acl-users
                              #:document-attribute
                              #:document-attribute-boosting-configuration
                              #:document-attribute-boosting-level
                              #:document-attribute-boosting-override-map
                              #:document-attribute-condition
                              #:document-attribute-configuration
                              #:document-attribute-configurations
                              #:document-attribute-key
                              #:document-attribute-string-list-value
                              #:document-attribute-string-value
                              #:document-attribute-target
                              #:document-attribute-value #:document-attributes
                              #:document-content #:document-content-operator
                              #:document-detail-list #:document-details
                              #:document-enrichment-condition-operator
                              #:document-enrichment-configuration #:document-id
                              #:document-metadata-configuration-name
                              #:document-status #:documents
                              #:eligible-data-source #:eligible-data-sources
                              #:encryption-configuration #:end-of-input-event
                              #:error-code #:error-detail #:error-message
                              #:example-chat-message #:example-chat-messages
                              #:execution-id #:expert-q
                              #:failed-attachment-event #:failed-document
                              #:failed-documents #:favicon-url #:font-url
                              #:get-application
                              #:get-chat-controls-configuration
                              #:get-chat-response-configuration
                              #:get-data-accessor #:get-data-source #:get-group
                              #:get-index #:get-media #:get-plugin #:get-policy
                              #:get-retriever #:get-user #:get-web-experience
                              #:group-identifier #:group-members #:group-name
                              #:group-status #:group-status-detail
                              #:group-status-details #:group-summary
                              #:group-summary-list
                              #:hallucination-reduction-configuration
                              #:hallucination-reduction-control
                              #:hook-configuration #:iamidentity-provider-arn
                              #:idc-application-arn #:idc-auth-configuration
                              #:idc-trusted-token-issuer-arn
                              #:identity-provider-configuration #:identity-type
                              #:image-extraction-configuration
                              #:image-extraction-status #:image-source-details
                              #:index #:index-arn
                              #:index-capacity-configuration
                              #:index-capacity-integer #:index-id #:index-name
                              #:index-resource #:index-statistics
                              #:index-status #:index-type #:indexed-text-bytes
                              #:indexed-text-document #:indices
                              #:inline-document-enrichment-configuration
                              #:inline-document-enrichment-configurations
                              #:instance-arn #:instruction
                              #:instruction-collection #:integer
                              #:integration-id #:integration-resource
                              #:kendra-index-configuration #:kendra-index-id
                              #:kms-key-id #:lambda-arn #:list-applications
                              #:list-attachments
                              #:list-chat-response-configurations
                              #:list-conversations #:list-data-accessors
                              #:list-data-source-sync-jobs #:list-data-sources
                              #:list-documents #:list-groups #:list-indices
                              #:list-messages #:list-plugin-actions
                              #:list-plugin-type-actions
                              #:list-plugin-type-metadata
                              #:list-plugin-type-metadata-summaries
                              #:list-plugins #:list-retrievers
                              #:list-subscriptions #:list-tags-for-resource
                              #:list-web-experiences #:logo-url #:long
                              #:max-results
                              #:max-results-integer-for-get-topic-configurations
                              #:max-results-integer-for-list-applications
                              #:max-results-integer-for-list-attachments
                              #:max-results-integer-for-list-conversations
                              #:max-results-integer-for-list-data-accessors
                              #:max-results-integer-for-list-data-sources
                              #:max-results-integer-for-list-data-sources-sync-jobs
                              #:max-results-integer-for-list-documents
                              #:max-results-integer-for-list-groups-request
                              #:max-results-integer-for-list-indices
                              #:max-results-integer-for-list-messages
                              #:max-results-integer-for-list-plugin-actions
                              #:max-results-integer-for-list-plugin-type-actions
                              #:max-results-integer-for-list-plugin-type-metadata
                              #:max-results-integer-for-list-plugins
                              #:max-results-integer-for-list-retrievers-request
                              #:max-results-integer-for-list-subscriptions
                              #:max-results-integer-for-list-web-experiences-request
                              #:media-extraction-configuration #:media-id
                              #:member-group #:member-groups #:member-relation
                              #:member-user #:member-users #:membership-type
                              #:message #:message-body #:message-id
                              #:message-type #:message-usefulness
                              #:message-usefulness-comment
                              #:message-usefulness-feedback
                              #:message-usefulness-reason #:messages
                              #:metadata-event #:metric-value
                              #:native-index-configuration #:next-token
                              #:next-token1500 #:no-auth-configuration
                              #:number-attribute-boosting-configuration
                              #:number-attribute-boosting-type
                              #:oauth2client-credential-configuration
                              #:open-idconnect-provider-configuration
                              #:orchestration-configuration
                              #:orchestration-control #:origin #:payload
                              #:permission-condition #:permission-condition-key
                              #:permission-condition-operator
                              #:permission-condition-value
                              #:permission-condition-values
                              #:permission-conditions
                              #:personalization-configuration
                              #:personalization-control-mode #:plugin
                              #:plugin-arn #:plugin-auth-configuration
                              #:plugin-build-status #:plugin-configuration
                              #:plugin-description #:plugin-id #:plugin-name
                              #:plugin-resource #:plugin-state #:plugin-type
                              #:plugin-type-category
                              #:plugin-type-metadata-summary #:plugins
                              #:principal #:principal-group
                              #:principal-role-arn #:principal-user
                              #:principals #:put-feedback #:put-group
                              #:qapps-configuration #:qapps-control-mode
                              #:qiam-action #:qiam-actions #:query-text
                              #:quick-sight-configuration #:read-access-type
                              #:relevant-content #:relevant-content-list
                              #:response-configuration
                              #:response-configuration-summary
                              #:response-configuration-type
                              #:response-configurations #:response-scope
                              #:retriever #:retriever-arn
                              #:retriever-configuration
                              #:retriever-content-source #:retriever-id
                              #:retriever-name #:retriever-resource
                              #:retriever-status #:retriever-type #:retrievers
                              #:role-arn #:rule #:rule-configuration
                              #:rule-type #:rules #:s3 #:s3bucket-name
                              #:s3object-key #:saml-attribute
                              #:saml-authentication-url #:saml-configuration
                              #:saml-metadata-xml #:saml-provider-configuration
                              #:score-attributes #:score-confidence
                              #:search-relevant-content #:secret-arn
                              #:security-group-id #:security-group-ids
                              #:session-duration-in-minutes #:snippet-excerpt
                              #:snippet-excerpt-text #:source-attribution
                              #:source-attribution-media-id
                              #:source-attributions #:source-details
                              #:start-data-source-sync-job #:statement-id
                              #:status #:stop-data-source-sync-job #:string
                              #:string-attribute-boosting-configuration
                              #:string-attribute-value-boosting
                              #:string-attribute-value-boosting-level
                              #:string-list-attribute-boosting-configuration
                              #:subnet-id #:subnet-ids #:subscription
                              #:subscription-arn #:subscription-details
                              #:subscription-id #:subscription-principal
                              #:subscription-type #:subscriptions
                              #:sync-schedule #:system-message-id
                              #:system-message-override #:system-message-type
                              #:tag #:tag-key #:tag-keys #:tag-resource
                              #:tag-value #:tags #:text-document-statistics
                              #:text-input-event #:text-output-event
                              #:text-segment #:text-segment-list #:timestamp
                              #:title #:topic-configuration
                              #:topic-configuration-name #:topic-configurations
                              #:topic-description #:untag-resource
                              #:update-application
                              #:update-chat-controls-configuration
                              #:update-chat-response-configuration
                              #:update-data-accessor #:update-data-source
                              #:update-index #:update-plugin #:update-retriever
                              #:update-subscription #:update-user
                              #:update-web-experience #:url #:user-alias
                              #:user-aliases #:user-groups #:user-id
                              #:user-identifier #:user-ids #:user-message
                              #:users-and-groups #:validation-exception-field
                              #:validation-exception-fields
                              #:validation-exception-reason
                              #:video-extraction-configuration
                              #:video-extraction-status #:video-extraction-type
                              #:video-source-details #:web-experience
                              #:web-experience-arn
                              #:web-experience-auth-configuration
                              #:web-experience-id #:web-experience-origins
                              #:web-experience-resource
                              #:web-experience-sample-prompts-control-mode
                              #:web-experience-status #:web-experience-subtitle
                              #:web-experience-title
                              #:web-experience-welcome-message
                              #:web-experiences))
(common-lisp:in-package #:pira/qbusiness)

(smithy/sdk/service:define-service expert-q :shape-name "ExpertQ" :version
                                   "2023-11-27" :title "QBusiness" :operations
                                   '(associate-permission batch-delete-document
                                     batch-put-document cancel-subscription
                                     chat chat-sync check-document-access
                                     create-anonymous-web-experience-url
                                     create-chat-response-configuration
                                     create-subscription create-user
                                     delete-attachment
                                     delete-chat-controls-configuration
                                     delete-chat-response-configuration
                                     delete-conversation delete-group
                                     delete-user disassociate-permission
                                     get-chat-controls-configuration
                                     get-chat-response-configuration get-group
                                     get-media get-policy get-user
                                     list-attachments
                                     list-chat-response-configurations
                                     list-conversations
                                     list-data-source-sync-jobs list-documents
                                     list-groups list-messages
                                     list-plugin-actions
                                     list-plugin-type-actions
                                     list-plugin-type-metadata
                                     list-subscriptions list-tags-for-resource
                                     put-feedback put-group
                                     search-relevant-content
                                     start-data-source-sync-job
                                     stop-data-source-sync-job tag-resource
                                     untag-resource
                                     update-chat-controls-configuration
                                     update-chat-response-configuration
                                     update-subscription update-user)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "QBusiness")
                                      ("cloudFormationName" . "QBusiness")
                                      ("arnNamespace" . "qbusiness")
                                      ("cloudTrailEventSource"
                                       . "qbusiness.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "qbusiness"))
                                     ("aws.protocols#restJson1"
                                      ("http" . #("h2" "http/1.1"))
                                      ("eventStreamHttp" . #("h2")))))

(smithy/sdk/shapes:define-union apischema common-lisp:nil
                                ((payload :target-type payload :member-name
                                  "payload")
                                 (s3 :target-type s3 :member-name "s3"))
                                (:shape-name "APISchema"))

(smithy/sdk/shapes:define-enum apischema-type
    common-lisp:nil
  (:open-api-v3 "OPEN_API_V3"))

(smithy/sdk/shapes:define-structure access-configuration common-lisp:nil
                                    ((access-controls :target-type
                                      access-controls :required common-lisp:t
                                      :member-name "accessControls")
                                     (member-relation :target-type
                                      member-relation :member-name
                                      "memberRelation"))
                                    (:shape-name "AccessConfiguration"))

(smithy/sdk/shapes:define-structure access-control common-lisp:nil
                                    ((principals :target-type principals
                                      :required common-lisp:t :member-name
                                      "principals")
                                     (member-relation :target-type
                                      member-relation :member-name
                                      "memberRelation"))
                                    (:shape-name "AccessControl"))

(smithy/sdk/shapes:define-list access-controls :member access-control)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure action-configuration common-lisp:nil
                                    ((action :target-type qiam-action :required
                                      common-lisp:t :member-name "action")
                                     (filter-configuration :target-type
                                      action-filter-configuration :member-name
                                      "filterConfiguration"))
                                    (:shape-name "ActionConfiguration"))

(smithy/sdk/shapes:define-list action-configuration-list :member
                               action-configuration)

(smithy/sdk/shapes:define-structure action-execution common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :required common-lisp:t :member-name
                                      "pluginId")
                                     (payload :target-type
                                      action-execution-payload :required
                                      common-lisp:t :member-name "payload")
                                     (payload-field-name-separator :target-type
                                      action-payload-field-name-separator
                                      :required common-lisp:t :member-name
                                      "payloadFieldNameSeparator"))
                                    (:shape-name "ActionExecution"))

(smithy/sdk/shapes:define-structure action-execution-event common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :required common-lisp:t :member-name
                                      "pluginId")
                                     (payload :target-type
                                      action-execution-payload :required
                                      common-lisp:t :member-name "payload")
                                     (payload-field-name-separator :target-type
                                      action-payload-field-name-separator
                                      :required common-lisp:t :member-name
                                      "payloadFieldNameSeparator"))
                                    (:shape-name "ActionExecutionEvent"))

(smithy/sdk/shapes:define-map action-execution-payload :key
                              action-payload-field-key :value
                              action-execution-payload-field)

(smithy/sdk/shapes:define-structure action-execution-payload-field
                                    common-lisp:nil
                                    ((value :target-type
                                      action-payload-field-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "ActionExecutionPayloadField"))

(smithy/sdk/shapes:define-structure action-filter-configuration common-lisp:nil
                                    ((document-attribute-filter :target-type
                                      attribute-filter :required common-lisp:t
                                      :member-name "documentAttributeFilter"))
                                    (:shape-name "ActionFilterConfiguration"))

(smithy/sdk/shapes:define-type action-payload-field-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-payload-field-name-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action-payload-field-type
    common-lisp:nil
  (:string "STRING")
  (:number "NUMBER")
  (:array "ARRAY")
  (:boolean "BOOLEAN"))

(smithy/sdk/shapes:define-type action-payload-field-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure action-review common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :member-name "pluginId")
                                     (plugin-type :target-type plugin-type
                                      :member-name "pluginType")
                                     (payload :target-type
                                      action-review-payload :member-name
                                      "payload")
                                     (payload-field-name-separator :target-type
                                      action-payload-field-name-separator
                                      :member-name
                                      "payloadFieldNameSeparator"))
                                    (:shape-name "ActionReview"))

(smithy/sdk/shapes:define-structure action-review-event common-lisp:nil
                                    ((conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (user-message-id :target-type message-id
                                      :member-name "userMessageId")
                                     (system-message-id :target-type message-id
                                      :member-name "systemMessageId")
                                     (plugin-id :target-type plugin-id
                                      :member-name "pluginId")
                                     (plugin-type :target-type plugin-type
                                      :member-name "pluginType")
                                     (payload :target-type
                                      action-review-payload :member-name
                                      "payload")
                                     (payload-field-name-separator :target-type
                                      action-payload-field-name-separator
                                      :member-name
                                      "payloadFieldNameSeparator"))
                                    (:shape-name "ActionReviewEvent"))

(smithy/sdk/shapes:define-map action-review-payload :key
                              action-payload-field-key :value
                              action-review-payload-field)

(smithy/sdk/shapes:define-structure action-review-payload-field common-lisp:nil
                                    ((display-name :target-type string
                                      :member-name "displayName")
                                     (display-order :target-type integer
                                      :member-name "displayOrder")
                                     (display-description :target-type string
                                      :member-name "displayDescription")
                                     (type :target-type
                                      action-payload-field-type :member-name
                                      "type")
                                     (value :target-type
                                      action-payload-field-value :member-name
                                      "value")
                                     (allowed-values :target-type
                                      action-review-payload-field-allowed-values
                                      :member-name "allowedValues")
                                     (allowed-format :target-type string
                                      :member-name "allowedFormat")
                                     (array-item-json-schema :target-type
                                      action-review-payload-field-array-item-json-schema
                                      :member-name "arrayItemJsonSchema")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "ActionReviewPayloadField"))

(smithy/sdk/shapes:define-structure action-review-payload-field-allowed-value
                                    common-lisp:nil
                                    ((value :target-type
                                      action-payload-field-value :member-name
                                      "value")
                                     (display-value :target-type
                                      action-payload-field-value :member-name
                                      "displayValue"))
                                    (:shape-name
                                     "ActionReviewPayloadFieldAllowedValue"))

(smithy/sdk/shapes:define-list action-review-payload-field-allowed-values
                               :member
                               action-review-payload-field-allowed-value)

(smithy/sdk/shapes:define-type
 action-review-payload-field-array-item-json-schema
 smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure action-summary common-lisp:nil
                                    ((action-identifier :target-type string
                                      :member-name "actionIdentifier")
                                     (display-name :target-type string
                                      :member-name "displayName")
                                     (instruction-example :target-type string
                                      :member-name "instructionExample")
                                     (description :target-type string
                                      :member-name "description"))
                                    (:shape-name "ActionSummary"))

(smithy/sdk/shapes:define-list actions :member action-summary)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((display-name :target-type
                                      application-name :member-name
                                      "displayName")
                                     (application-id :target-type
                                      application-id :member-name
                                      "applicationId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (status :target-type application-status
                                      :member-name "status")
                                     (identity-type :target-type identity-type
                                      :member-name "identityType")
                                     (quick-sight-configuration :target-type
                                      quick-sight-configuration :member-name
                                      "quickSightConfiguration"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-list applications :member application)

(smithy/sdk/shapes:define-structure applied-attachments-configuration
                                    common-lisp:nil
                                    ((attachments-control-mode :target-type
                                      attachments-control-mode :member-name
                                      "attachmentsControlMode"))
                                    (:shape-name
                                     "AppliedAttachmentsConfiguration"))

(smithy/sdk/shapes:define-structure applied-creator-mode-configuration
                                    common-lisp:nil
                                    ((creator-mode-control :target-type
                                      creator-mode-control :required
                                      common-lisp:t :member-name
                                      "creatorModeControl"))
                                    (:shape-name
                                     "AppliedCreatorModeConfiguration"))

(smithy/sdk/shapes:define-structure applied-orchestration-configuration
                                    common-lisp:nil
                                    ((control :target-type
                                      orchestration-control :required
                                      common-lisp:t :member-name "control"))
                                    (:shape-name
                                     "AppliedOrchestrationConfiguration"))

(smithy/sdk/shapes:define-input associate-permission-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "statementId")
                                 (actions :target-type qiam-actions :required
                                  common-lisp:t :member-name "actions")
                                 (conditions :target-type permission-conditions
                                  :member-name "conditions")
                                 (principal :target-type principal-role-arn
                                  :required common-lisp:t :member-name
                                  "principal"))
                                (:shape-name "AssociatePermissionRequest"))

(smithy/sdk/shapes:define-output associate-permission-response common-lisp:nil
                                 ((statement :target-type string :member-name
                                   "statement"))
                                 (:shape-name "AssociatePermissionResponse"))

(smithy/sdk/shapes:define-structure associated-group common-lisp:nil
                                    ((name :target-type group-name :member-name
                                      "name")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "AssociatedGroup"))

(smithy/sdk/shapes:define-list associated-groups :member associated-group)

(smithy/sdk/shapes:define-structure associated-user common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "AssociatedUser"))

(smithy/sdk/shapes:define-list associated-users :member associated-user)

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((attachment-id :target-type attachment-id
                                      :member-name "attachmentId")
                                     (conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (name :target-type attachment-name
                                      :member-name "name")
                                     (copy-from :target-type copy-from-source
                                      :member-name "copyFrom")
                                     (file-type :target-type string
                                      :member-name "fileType")
                                     (file-size :target-type integer
                                      :member-name "fileSize")
                                     (md5chksum :target-type string
                                      :member-name "md5chksum")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (status :target-type attachment-status
                                      :member-name "status")
                                     (error :target-type error-detail
                                      :member-name "error"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-type attachment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attachment-input common-lisp:nil
                                    ((data :target-type blob :member-name
                                      "data")
                                     (name :target-type attachment-name
                                      :member-name "name")
                                     (copy-from :target-type copy-from-source
                                      :member-name "copyFrom"))
                                    (:shape-name "AttachmentInput"))

(smithy/sdk/shapes:define-structure attachment-input-event common-lisp:nil
                                    ((attachment :target-type attachment-input
                                      :member-name "attachment"))
                                    (:shape-name "AttachmentInputEvent"))

(smithy/sdk/shapes:define-list attachment-list :member attachment)

(smithy/sdk/shapes:define-type attachment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attachment-output common-lisp:nil
                                    ((name :target-type attachment-name
                                      :member-name "name")
                                     (status :target-type attachment-status
                                      :member-name "status")
                                     (error :target-type error-detail
                                      :member-name "error")
                                     (attachment-id :target-type attachment-id
                                      :member-name "attachmentId")
                                     (conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId"))
                                    (:shape-name "AttachmentOutput"))

(smithy/sdk/shapes:define-enum attachment-status
    common-lisp:nil
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-structure attachments-configuration common-lisp:nil
                                    ((attachments-control-mode :target-type
                                      attachments-control-mode :required
                                      common-lisp:t :member-name
                                      "attachmentsControlMode"))
                                    (:shape-name "AttachmentsConfiguration"))

(smithy/sdk/shapes:define-enum attachments-control-mode
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list attachments-input :member attachment-input)

(smithy/sdk/shapes:define-list attachments-output :member attachment-output)

(smithy/sdk/shapes:define-structure attribute-filter common-lisp:nil
                                    ((and-all-filters :target-type
                                      attribute-filters :member-name
                                      "andAllFilters")
                                     (or-all-filters :target-type
                                      attribute-filters :member-name
                                      "orAllFilters")
                                     (not-filter :target-type attribute-filter
                                      :member-name "notFilter")
                                     (equals-to :target-type document-attribute
                                      :member-name "equalsTo")
                                     (contains-all :target-type
                                      document-attribute :member-name
                                      "containsAll")
                                     (contains-any :target-type
                                      document-attribute :member-name
                                      "containsAny")
                                     (greater-than :target-type
                                      document-attribute :member-name
                                      "greaterThan")
                                     (greater-than-or-equals :target-type
                                      document-attribute :member-name
                                      "greaterThanOrEquals")
                                     (less-than :target-type document-attribute
                                      :member-name "lessThan")
                                     (less-than-or-equals :target-type
                                      document-attribute :member-name
                                      "lessThanOrEquals"))
                                    (:shape-name "AttributeFilter"))

(smithy/sdk/shapes:define-list attribute-filters :member attribute-filter)

(smithy/sdk/shapes:define-enum attribute-type
    common-lisp:nil
  (:string "STRING")
  (:string-list "STRING_LIST")
  (:number "NUMBER")
  (:date "DATE"))

(smithy/sdk/shapes:define-enum attribute-value-operator
    common-lisp:nil
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure audio-extraction-configuration
                                    common-lisp:nil
                                    ((audio-extraction-status :target-type
                                      audio-extraction-status :required
                                      common-lisp:t :member-name
                                      "audioExtractionStatus"))
                                    (:shape-name
                                     "AudioExtractionConfiguration"))

(smithy/sdk/shapes:define-enum audio-extraction-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum audio-extraction-type
    common-lisp:nil
  (:transcript "TRANSCRIPT")
  (:summary "SUMMARY"))

(smithy/sdk/shapes:define-structure audio-source-details common-lisp:nil
                                    ((media-id :target-type media-id
                                      :member-name "mediaId")
                                     (media-mime-type :target-type string
                                      :member-name "mediaMimeType")
                                     (start-time-milliseconds :target-type long
                                      :member-name "startTimeMilliseconds")
                                     (end-time-milliseconds :target-type long
                                      :member-name "endTimeMilliseconds")
                                     (audio-extraction-type :target-type
                                      audio-extraction-type :member-name
                                      "audioExtractionType"))
                                    (:shape-name "AudioSourceDetails"))

(smithy/sdk/shapes:define-structure auth-challenge-request common-lisp:nil
                                    ((authorization-url :target-type url
                                      :required common-lisp:t :member-name
                                      "authorizationUrl"))
                                    (:shape-name "AuthChallengeRequest"))

(smithy/sdk/shapes:define-structure auth-challenge-request-event
                                    common-lisp:nil
                                    ((authorization-url :target-type url
                                      :required common-lisp:t :member-name
                                      "authorizationUrl"))
                                    (:shape-name "AuthChallengeRequestEvent"))

(smithy/sdk/shapes:define-structure auth-challenge-response common-lisp:nil
                                    ((response-map :target-type
                                      authorization-response-map :required
                                      common-lisp:t :member-name
                                      "responseMap"))
                                    (:shape-name "AuthChallengeResponse"))

(smithy/sdk/shapes:define-structure auth-challenge-response-event
                                    common-lisp:nil
                                    ((response-map :target-type
                                      authorization-response-map :required
                                      common-lisp:t :member-name
                                      "responseMap"))
                                    (:shape-name "AuthChallengeResponseEvent"))

(smithy/sdk/shapes:define-type auth-response-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-response-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map authorization-response-map :key auth-response-key
                              :value auth-response-value)

(smithy/sdk/shapes:define-structure auto-subscription-configuration
                                    common-lisp:nil
                                    ((auto-subscribe :target-type
                                      auto-subscription-status :required
                                      common-lisp:t :member-name
                                      "autoSubscribe")
                                     (default-subscription-type :target-type
                                      subscription-type :member-name
                                      "defaultSubscriptionType"))
                                    (:shape-name
                                     "AutoSubscriptionConfiguration"))

(smithy/sdk/shapes:define-enum auto-subscription-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure basic-auth-configuration common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "secretArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "BasicAuthConfiguration"))

(smithy/sdk/shapes:define-input batch-delete-document-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (documents :target-type delete-documents
                                  :required common-lisp:t :member-name
                                  "documents")
                                 (data-source-sync-id :target-type execution-id
                                  :member-name "dataSourceSyncId"))
                                (:shape-name "BatchDeleteDocumentRequest"))

(smithy/sdk/shapes:define-output batch-delete-document-response common-lisp:nil
                                 ((failed-documents :target-type
                                   failed-documents :member-name
                                   "failedDocuments"))
                                 (:shape-name "BatchDeleteDocumentResponse"))

(smithy/sdk/shapes:define-input batch-put-document-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (documents :target-type documents :required
                                  common-lisp:t :member-name "documents")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (data-source-sync-id :target-type execution-id
                                  :member-name "dataSourceSyncId"))
                                (:shape-name "BatchPutDocumentRequest"))

(smithy/sdk/shapes:define-output batch-put-document-response common-lisp:nil
                                 ((failed-documents :target-type
                                   failed-documents :member-name
                                   "failedDocuments"))
                                 (:shape-name "BatchPutDocumentResponse"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type blocked-phrase smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blocked-phrases :member blocked-phrase)

(smithy/sdk/shapes:define-structure blocked-phrases-configuration
                                    common-lisp:nil
                                    ((blocked-phrases :target-type
                                      blocked-phrases :member-name
                                      "blockedPhrases")
                                     (system-message-override :target-type
                                      system-message-override :member-name
                                      "systemMessageOverride"))
                                    (:shape-name "BlockedPhrasesConfiguration"))

(smithy/sdk/shapes:define-structure blocked-phrases-configuration-update
                                    common-lisp:nil
                                    ((blocked-phrases-to-create-or-update
                                      :target-type blocked-phrases :member-name
                                      "blockedPhrasesToCreateOrUpdate")
                                     (blocked-phrases-to-delete :target-type
                                      blocked-phrases :member-name
                                      "blockedPhrasesToDelete")
                                     (system-message-override :target-type
                                      system-message-override :member-name
                                      "systemMessageOverride"))
                                    (:shape-name
                                     "BlockedPhrasesConfigurationUpdate"))

(smithy/sdk/shapes:define-type boosting-duration-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type browser-extension smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure browser-extension-configuration
                                    common-lisp:nil
                                    ((enabled-browser-extensions :target-type
                                      browser-extension-list :required
                                      common-lisp:t :member-name
                                      "enabledBrowserExtensions"))
                                    (:shape-name
                                     "BrowserExtensionConfiguration"))

(smithy/sdk/shapes:define-list browser-extension-list :member browser-extension)

(smithy/sdk/shapes:define-input cancel-subscription-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (subscription-id :target-type subscription-id
                                  :required common-lisp:t :member-name
                                  "subscriptionId" :http-label common-lisp:t))
                                (:shape-name "CancelSubscriptionRequest"))

(smithy/sdk/shapes:define-output cancel-subscription-response common-lisp:nil
                                 ((subscription-arn :target-type
                                   subscription-arn :member-name
                                   "subscriptionArn")
                                  (current-subscription :target-type
                                   subscription-details :member-name
                                   "currentSubscription")
                                  (next-subscription :target-type
                                   subscription-details :member-name
                                   "nextSubscription"))
                                 (:shape-name "CancelSubscriptionResponse"))

(smithy/sdk/shapes:define-input chat-input common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (user-groups :target-type user-groups
                                  :member-name "userGroups" :http-query
                                  "userGroups")
                                 (conversation-id :target-type conversation-id
                                  :member-name "conversationId" :http-query
                                  "conversationId")
                                 (parent-message-id :target-type message-id
                                  :member-name "parentMessageId" :http-query
                                  "parentMessageId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken")
                                 (input-stream :target-type chat-input-stream
                                  :member-name "inputStream" :http-payload
                                  common-lisp:t))
                                (:shape-name "ChatInput"))

(smithy/sdk/shapes:define-union chat-input-stream common-lisp:nil
                                ((configuration-event :target-type
                                  configuration-event :member-name
                                  "configurationEvent")
                                 (text-event :target-type text-input-event
                                  :member-name "textEvent")
                                 (attachment-event :target-type
                                  attachment-input-event :member-name
                                  "attachmentEvent")
                                 (action-execution-event :target-type
                                  action-execution-event :member-name
                                  "actionExecutionEvent")
                                 (end-of-input-event :target-type
                                  end-of-input-event :member-name
                                  "endOfInputEvent")
                                 (auth-challenge-response-event :target-type
                                  auth-challenge-response-event :member-name
                                  "authChallengeResponseEvent"))
                                (:shape-name "ChatInputStream"))

(smithy/sdk/shapes:define-enum chat-mode
    common-lisp:nil
  (:retrieval-mode "RETRIEVAL_MODE")
  (:creator-mode "CREATOR_MODE")
  (:plugin-mode "PLUGIN_MODE"))

(smithy/sdk/shapes:define-union chat-mode-configuration common-lisp:nil
                                ((plugin-configuration :target-type
                                  plugin-configuration :member-name
                                  "pluginConfiguration"))
                                (:shape-name "ChatModeConfiguration"))

(smithy/sdk/shapes:define-output chat-output common-lisp:nil
                                 ((output-stream :target-type
                                   chat-output-stream :member-name
                                   "outputStream" :http-payload common-lisp:t))
                                 (:shape-name "ChatOutput"))

(smithy/sdk/shapes:define-union chat-output-stream common-lisp:nil
                                ((text-event :target-type text-output-event
                                  :member-name "textEvent")
                                 (metadata-event :target-type metadata-event
                                  :member-name "metadataEvent")
                                 (action-review-event :target-type
                                  action-review-event :member-name
                                  "actionReviewEvent")
                                 (failed-attachment-event :target-type
                                  failed-attachment-event :member-name
                                  "failedAttachmentEvent")
                                 (auth-challenge-request-event :target-type
                                  auth-challenge-request-event :member-name
                                  "authChallengeRequestEvent"))
                                (:shape-name "ChatOutputStream"))

(smithy/sdk/shapes:define-structure chat-response-configuration common-lisp:nil
                                    ((chat-response-configuration-id
                                      :target-type
                                      chat-response-configuration-id :required
                                      common-lisp:t :member-name
                                      "chatResponseConfigurationId")
                                     (chat-response-configuration-arn
                                      :target-type
                                      chat-response-configuration-arn :required
                                      common-lisp:t :member-name
                                      "chatResponseConfigurationArn")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (response-configuration-summary
                                      :target-type
                                      response-configuration-summary
                                      :member-name
                                      "responseConfigurationSummary")
                                     (status :target-type
                                      chat-response-configuration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "ChatResponseConfiguration"))

(smithy/sdk/shapes:define-type chat-response-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure chat-response-configuration-detail
                                    common-lisp:nil
                                    ((response-configurations :target-type
                                      response-configurations :member-name
                                      "responseConfigurations")
                                     (response-configuration-summary
                                      :target-type string :member-name
                                      "responseConfigurationSummary")
                                     (status :target-type
                                      chat-response-configuration-status
                                      :member-name "status")
                                     (error :target-type error-detail
                                      :member-name "error")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name
                                     "ChatResponseConfigurationDetail"))

(smithy/sdk/shapes:define-type chat-response-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum chat-response-configuration-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:failed "FAILED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list chat-response-configurations :member
                               chat-response-configuration)

(smithy/sdk/shapes:define-input chat-sync-input common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (user-groups :target-type user-groups
                                  :member-name "userGroups" :http-query
                                  "userGroups")
                                 (user-message :target-type user-message
                                  :member-name "userMessage")
                                 (attachments :target-type attachments-input
                                  :member-name "attachments")
                                 (action-execution :target-type
                                  action-execution :member-name
                                  "actionExecution")
                                 (auth-challenge-response :target-type
                                  auth-challenge-response :member-name
                                  "authChallengeResponse")
                                 (conversation-id :target-type conversation-id
                                  :member-name "conversationId")
                                 (parent-message-id :target-type message-id
                                  :member-name "parentMessageId")
                                 (attribute-filter :target-type
                                  attribute-filter :member-name
                                  "attributeFilter")
                                 (chat-mode :target-type chat-mode :member-name
                                  "chatMode")
                                 (chat-mode-configuration :target-type
                                  chat-mode-configuration :member-name
                                  "chatModeConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "ChatSyncInput"))

(smithy/sdk/shapes:define-output chat-sync-output common-lisp:nil
                                 ((conversation-id :target-type conversation-id
                                   :member-name "conversationId")
                                  (system-message :target-type string
                                   :member-name "systemMessage")
                                  (system-message-id :target-type message-id
                                   :member-name "systemMessageId")
                                  (user-message-id :target-type message-id
                                   :member-name "userMessageId")
                                  (action-review :target-type action-review
                                   :member-name "actionReview")
                                  (auth-challenge-request :target-type
                                   auth-challenge-request :member-name
                                   "authChallengeRequest")
                                  (source-attributions :target-type
                                   source-attributions :member-name
                                   "sourceAttributions")
                                  (failed-attachments :target-type
                                   attachments-output :member-name
                                   "failedAttachments"))
                                 (:shape-name "ChatSyncOutput"))

(smithy/sdk/shapes:define-input check-document-access-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (document-id :target-type document-id
                                  :required common-lisp:t :member-name
                                  "documentId" :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :member-name "dataSourceId" :http-query
                                  "dataSourceId"))
                                (:shape-name "CheckDocumentAccessRequest"))

(smithy/sdk/shapes:define-output check-document-access-response common-lisp:nil
                                 ((user-groups :target-type associated-groups
                                   :member-name "userGroups")
                                  (user-aliases :target-type associated-users
                                   :member-name "userAliases")
                                  (has-access :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "hasAccess")
                                  (document-acl :target-type document-acl
                                   :member-name "documentAcl"))
                                 (:shape-name "CheckDocumentAccessResponse"))

(smithy/sdk/shapes:define-type client-id-for-oidc
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list client-ids-for-oidc :member client-id-for-oidc)

(smithy/sdk/shapes:define-type client-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-event common-lisp:nil
                                    ((chat-mode :target-type chat-mode
                                      :member-name "chatMode")
                                     (chat-mode-configuration :target-type
                                      chat-mode-configuration :member-name
                                      "chatModeConfiguration")
                                     (attribute-filter :target-type
                                      attribute-filter :member-name
                                      "attributeFilter"))
                                    (:shape-name "ConfigurationEvent"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure content-blocker-rule common-lisp:nil
                                    ((system-message-override :target-type
                                      system-message-override :member-name
                                      "systemMessageOverride"))
                                    (:shape-name "ContentBlockerRule"))

(smithy/sdk/shapes:define-structure content-retrieval-rule common-lisp:nil
                                    ((eligible-data-sources :target-type
                                      eligible-data-sources :member-name
                                      "eligibleDataSources"))
                                    (:shape-name "ContentRetrievalRule"))

(smithy/sdk/shapes:define-union content-source common-lisp:nil
                                ((retriever :target-type
                                  retriever-content-source :member-name
                                  "retriever"))
                                (:shape-name "ContentSource"))

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:pdf "PDF")
  (:html "HTML")
  (:ms-word "MS_WORD")
  (:plain-text "PLAIN_TEXT")
  (:ppt "PPT")
  (:rtf "RTF")
  (:xml "XML")
  (:xslt "XSLT")
  (:ms-excel "MS_EXCEL")
  (:csv "CSV")
  (:json "JSON")
  (:md "MD"))

(smithy/sdk/shapes:define-structure conversation common-lisp:nil
                                    ((conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (title :target-type conversation-title
                                      :member-name "title")
                                     (start-time :target-type timestamp
                                      :member-name "startTime"))
                                    (:shape-name "Conversation"))

(smithy/sdk/shapes:define-type conversation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conversation-source common-lisp:nil
                                    ((conversation-id :target-type
                                      conversation-id :required common-lisp:t
                                      :member-name "conversationId")
                                     (attachment-id :target-type attachment-id
                                      :required common-lisp:t :member-name
                                      "attachmentId"))
                                    (:shape-name "ConversationSource"))

(smithy/sdk/shapes:define-type conversation-title
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list conversations :member conversation)

(smithy/sdk/shapes:define-union copy-from-source common-lisp:nil
                                ((conversation :target-type conversation-source
                                  :member-name "conversation"))
                                (:shape-name "CopyFromSource"))

(smithy/sdk/shapes:define-input create-anonymous-web-experience-url-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (web-experience-id :target-type
                                  web-experience-id :required common-lisp:t
                                  :member-name "webExperienceId" :http-label
                                  common-lisp:t)
                                 (session-duration-in-minutes :target-type
                                  session-duration-in-minutes :member-name
                                  "sessionDurationInMinutes"))
                                (:shape-name
                                 "CreateAnonymousWebExperienceUrlRequest"))

(smithy/sdk/shapes:define-output create-anonymous-web-experience-url-response
                                 common-lisp:nil
                                 ((anonymous-url :target-type url :member-name
                                   "anonymousUrl"))
                                 (:shape-name
                                  "CreateAnonymousWebExperienceUrlResponse"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((display-name :target-type application-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (identity-type :target-type identity-type
                                  :member-name "identityType")
                                 (iam-identity-provider-arn :target-type
                                  iamidentity-provider-arn :member-name
                                  "iamIdentityProviderArn")
                                 (identity-center-instance-arn :target-type
                                  instance-arn :member-name
                                  "identityCenterInstanceArn")
                                 (client-ids-for-oidc :target-type
                                  client-ids-for-oidc :member-name
                                  "clientIdsForOIDC")
                                 (description :target-type description
                                  :member-name "description")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (tags :target-type tags :member-name "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (attachments-configuration :target-type
                                  attachments-configuration :member-name
                                  "attachmentsConfiguration")
                                 (q-apps-configuration :target-type
                                  qapps-configuration :member-name
                                  "qAppsConfiguration")
                                 (personalization-configuration :target-type
                                  personalization-configuration :member-name
                                  "personalizationConfiguration")
                                 (quick-sight-configuration :target-type
                                  quick-sight-configuration :member-name
                                  "quickSightConfiguration"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (application-arn :target-type application-arn
                                   :member-name "applicationArn"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-chat-response-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (display-name :target-type display-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (response-configurations :target-type
                                  response-configurations :required
                                  common-lisp:t :member-name
                                  "responseConfigurations")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateChatResponseConfigurationRequest"))

(smithy/sdk/shapes:define-output create-chat-response-configuration-response
                                 common-lisp:nil
                                 ((chat-response-configuration-id :target-type
                                   chat-response-configuration-id :required
                                   common-lisp:t :member-name
                                   "chatResponseConfigurationId")
                                  (chat-response-configuration-arn :target-type
                                   chat-response-configuration-arn :required
                                   common-lisp:t :member-name
                                   "chatResponseConfigurationArn"))
                                 (:shape-name
                                  "CreateChatResponseConfigurationResponse"))

(smithy/sdk/shapes:define-input create-data-accessor-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (principal :target-type principal-role-arn
                                  :required common-lisp:t :member-name
                                  "principal")
                                 (action-configurations :target-type
                                  action-configuration-list :required
                                  common-lisp:t :member-name
                                  "actionConfigurations")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (display-name :target-type data-accessor-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (authentication-detail :target-type
                                  data-accessor-authentication-detail
                                  :member-name "authenticationDetail")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDataAccessorRequest"))

(smithy/sdk/shapes:define-output create-data-accessor-response common-lisp:nil
                                 ((data-accessor-id :target-type
                                   data-accessor-id :required common-lisp:t
                                   :member-name "dataAccessorId")
                                  (idc-application-arn :target-type
                                   idc-application-arn :required common-lisp:t
                                   :member-name "idcApplicationArn")
                                  (data-accessor-arn :target-type
                                   data-accessor-arn :required common-lisp:t
                                   :member-name "dataAccessorArn"))
                                 (:shape-name "CreateDataAccessorResponse"))

(smithy/sdk/shapes:define-input create-data-source-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type data-source-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (configuration :target-type
                                  data-source-configuration :required
                                  common-lisp:t :member-name "configuration")
                                 (vpc-configuration :target-type
                                  data-source-vpc-configuration :member-name
                                  "vpcConfiguration")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tags :member-name "tags")
                                 (sync-schedule :target-type sync-schedule
                                  :member-name "syncSchedule")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (document-enrichment-configuration
                                  :target-type
                                  document-enrichment-configuration
                                  :member-name
                                  "documentEnrichmentConfiguration")
                                 (media-extraction-configuration :target-type
                                  media-extraction-configuration :member-name
                                  "mediaExtractionConfiguration"))
                                (:shape-name "CreateDataSourceRequest"))

(smithy/sdk/shapes:define-output create-data-source-response common-lisp:nil
                                 ((data-source-id :target-type data-source-id
                                   :member-name "dataSourceId")
                                  (data-source-arn :target-type data-source-arn
                                   :member-name "dataSourceArn"))
                                 (:shape-name "CreateDataSourceResponse"))

(smithy/sdk/shapes:define-input create-index-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (display-name :target-type index-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (type :target-type index-type :member-name
                                  "type")
                                 (tags :target-type tags :member-name "tags")
                                 (capacity-configuration :target-type
                                  index-capacity-configuration :member-name
                                  "capacityConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateIndexRequest"))

(smithy/sdk/shapes:define-output create-index-response common-lisp:nil
                                 ((index-id :target-type index-id :member-name
                                   "indexId")
                                  (index-arn :target-type index-arn
                                   :member-name "indexArn"))
                                 (:shape-name "CreateIndexResponse"))

(smithy/sdk/shapes:define-input create-plugin-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (display-name :target-type plugin-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (type :target-type plugin-type :required
                                  common-lisp:t :member-name "type")
                                 (auth-configuration :target-type
                                  plugin-auth-configuration :required
                                  common-lisp:t :member-name
                                  "authConfiguration")
                                 (server-url :target-type url :member-name
                                  "serverUrl")
                                 (custom-plugin-configuration :target-type
                                  custom-plugin-configuration :member-name
                                  "customPluginConfiguration")
                                 (tags :target-type tags :member-name "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreatePluginRequest"))

(smithy/sdk/shapes:define-output create-plugin-response common-lisp:nil
                                 ((plugin-id :target-type plugin-id
                                   :member-name "pluginId")
                                  (plugin-arn :target-type plugin-arn
                                   :member-name "pluginArn")
                                  (build-status :target-type
                                   plugin-build-status :member-name
                                   "buildStatus"))
                                 (:shape-name "CreatePluginResponse"))

(smithy/sdk/shapes:define-input create-retriever-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (type :target-type retriever-type :required
                                  common-lisp:t :member-name "type")
                                 (display-name :target-type retriever-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (configuration :target-type
                                  retriever-configuration :required
                                  common-lisp:t :member-name "configuration")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateRetrieverRequest"))

(smithy/sdk/shapes:define-output create-retriever-response common-lisp:nil
                                 ((retriever-id :target-type retriever-id
                                   :member-name "retrieverId")
                                  (retriever-arn :target-type retriever-arn
                                   :member-name "retrieverArn"))
                                 (:shape-name "CreateRetrieverResponse"))

(smithy/sdk/shapes:define-input create-subscription-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (principal :target-type subscription-principal
                                  :required common-lisp:t :member-name
                                  "principal")
                                 (type :target-type subscription-type :required
                                  common-lisp:t :member-name "type")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-subscription-response common-lisp:nil
                                 ((subscription-id :target-type subscription-id
                                   :member-name "subscriptionId")
                                  (subscription-arn :target-type
                                   subscription-arn :member-name
                                   "subscriptionArn")
                                  (current-subscription :target-type
                                   subscription-details :member-name
                                   "currentSubscription")
                                  (next-subscription :target-type
                                   subscription-details :member-name
                                   "nextSubscription"))
                                 (:shape-name "CreateSubscriptionResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "userId")
                                 (user-aliases :target-type user-aliases
                                  :member-name "userAliases")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-input create-web-experience-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (title :target-type web-experience-title
                                  :member-name "title")
                                 (subtitle :target-type web-experience-subtitle
                                  :member-name "subtitle")
                                 (welcome-message :target-type
                                  web-experience-welcome-message :member-name
                                  "welcomeMessage")
                                 (sample-prompts-control-mode :target-type
                                  web-experience-sample-prompts-control-mode
                                  :member-name "samplePromptsControlMode")
                                 (origins :target-type web-experience-origins
                                  :member-name "origins")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (tags :target-type tags :member-name "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (identity-provider-configuration :target-type
                                  identity-provider-configuration :member-name
                                  "identityProviderConfiguration")
                                 (browser-extension-configuration :target-type
                                  browser-extension-configuration :member-name
                                  "browserExtensionConfiguration")
                                 (customization-configuration :target-type
                                  customization-configuration :member-name
                                  "customizationConfiguration"))
                                (:shape-name "CreateWebExperienceRequest"))

(smithy/sdk/shapes:define-output create-web-experience-response common-lisp:nil
                                 ((web-experience-id :target-type
                                   web-experience-id :member-name
                                   "webExperienceId")
                                  (web-experience-arn :target-type
                                   web-experience-arn :member-name
                                   "webExperienceArn"))
                                 (:shape-name "CreateWebExperienceResponse"))

(smithy/sdk/shapes:define-structure creator-mode-configuration common-lisp:nil
                                    ((creator-mode-control :target-type
                                      creator-mode-control :required
                                      common-lisp:t :member-name
                                      "creatorModeControl"))
                                    (:shape-name "CreatorModeConfiguration"))

(smithy/sdk/shapes:define-enum creator-mode-control
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type custom-cssurl smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-plugin-configuration common-lisp:nil
                                    ((description :target-type
                                      plugin-description :required
                                      common-lisp:t :member-name "description")
                                     (api-schema-type :target-type
                                      apischema-type :required common-lisp:t
                                      :member-name "apiSchemaType")
                                     (api-schema :target-type apischema
                                      :member-name "apiSchema"))
                                    (:shape-name "CustomPluginConfiguration"))

(smithy/sdk/shapes:define-structure customization-configuration common-lisp:nil
                                    ((custom-cssurl :target-type custom-cssurl
                                      :member-name "customCSSUrl")
                                     (logo-url :target-type logo-url
                                      :member-name "logoUrl")
                                     (font-url :target-type font-url
                                      :member-name "fontUrl")
                                     (favicon-url :target-type favicon-url
                                      :member-name "faviconUrl"))
                                    (:shape-name "CustomizationConfiguration"))

(smithy/sdk/shapes:define-structure data-accessor common-lisp:nil
                                    ((display-name :target-type
                                      data-accessor-name :member-name
                                      "displayName")
                                     (data-accessor-id :target-type
                                      data-accessor-id :member-name
                                      "dataAccessorId")
                                     (data-accessor-arn :target-type
                                      data-accessor-arn :member-name
                                      "dataAccessorArn")
                                     (idc-application-arn :target-type
                                      idc-application-arn :member-name
                                      "idcApplicationArn")
                                     (principal :target-type principal-role-arn
                                      :member-name "principal")
                                     (authentication-detail :target-type
                                      data-accessor-authentication-detail
                                      :member-name "authenticationDetail")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "DataAccessor"))

(smithy/sdk/shapes:define-type data-accessor-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union data-accessor-authentication-configuration
                                common-lisp:nil
                                ((idc-trusted-token-issuer-configuration
                                  :target-type
                                  data-accessor-idc-trusted-token-issuer-configuration
                                  :member-name
                                  "idcTrustedTokenIssuerConfiguration"))
                                (:shape-name
                                 "DataAccessorAuthenticationConfiguration"))

(smithy/sdk/shapes:define-structure data-accessor-authentication-detail
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      data-accessor-authentication-type
                                      :required common-lisp:t :member-name
                                      "authenticationType")
                                     (authentication-configuration :target-type
                                      data-accessor-authentication-configuration
                                      :member-name
                                      "authenticationConfiguration")
                                     (external-ids :target-type
                                      data-accessor-external-ids :member-name
                                      "externalIds"))
                                    (:shape-name
                                     "DataAccessorAuthenticationDetail"))

(smithy/sdk/shapes:define-enum data-accessor-authentication-type
    common-lisp:nil
  (:aws-iam-idc-tti "AWS_IAM_IDC_TTI")
  (:aws-iam-idc-auth-code "AWS_IAM_IDC_AUTH_CODE"))

(smithy/sdk/shapes:define-type data-accessor-external-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-accessor-external-ids :member
                               data-accessor-external-id)

(smithy/sdk/shapes:define-type data-accessor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 data-accessor-idc-trusted-token-issuer-configuration common-lisp:nil
 ((idc-trusted-token-issuer-arn :target-type idc-trusted-token-issuer-arn
   :required common-lisp:t :member-name "idcTrustedTokenIssuerArn"))
 (:shape-name "DataAccessorIdcTrustedTokenIssuerConfiguration"))

(smithy/sdk/shapes:define-type data-accessor-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list data-accessors :member data-accessor)

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((display-name :target-type
                                      data-source-name :member-name
                                      "displayName")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "dataSourceId")
                                     (type :target-type string :member-name
                                      "type")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (status :target-type data-source-status
                                      :member-name "status"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-type data-source-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-source-configuration
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type data-source-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-source-ids :member data-source-id)

(smithy/sdk/shapes:define-type data-source-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:pending-creation "PENDING_CREATION")
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-structure data-source-sync-job common-lisp:nil
                                    ((execution-id :target-type execution-id
                                      :member-name "executionId")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status :target-type
                                      data-source-sync-job-status :member-name
                                      "status")
                                     (error :target-type error-detail
                                      :member-name "error")
                                     (data-source-error-code :target-type
                                      string :member-name
                                      "dataSourceErrorCode")
                                     (metrics :target-type
                                      data-source-sync-job-metrics :member-name
                                      "metrics"))
                                    (:shape-name "DataSourceSyncJob"))

(smithy/sdk/shapes:define-structure data-source-sync-job-metrics
                                    common-lisp:nil
                                    ((documents-added :target-type metric-value
                                      :member-name "documentsAdded")
                                     (documents-modified :target-type
                                      metric-value :member-name
                                      "documentsModified")
                                     (documents-deleted :target-type
                                      metric-value :member-name
                                      "documentsDeleted")
                                     (documents-failed :target-type
                                      metric-value :member-name
                                      "documentsFailed")
                                     (documents-scanned :target-type
                                      metric-value :member-name
                                      "documentsScanned"))
                                    (:shape-name "DataSourceSyncJobMetrics"))

(smithy/sdk/shapes:define-enum data-source-sync-job-status
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:syncing "SYNCING")
  (:incomplete "INCOMPLETE")
  (:stopping "STOPPING")
  (:aborted "ABORTED")
  (:syncing-indexing "SYNCING_INDEXING"))

(smithy/sdk/shapes:define-list data-source-sync-jobs :member
                               data-source-sync-job)

(smithy/sdk/shapes:define-type data-source-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source-vpc-configuration
                                    common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "securityGroupIds"))
                                    (:shape-name "DataSourceVpcConfiguration"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-structure date-attribute-boosting-configuration
                                    common-lisp:nil
                                    ((boosting-level :target-type
                                      document-attribute-boosting-level
                                      :required common-lisp:t :member-name
                                      "boostingLevel")
                                     (boosting-duration-in-seconds :target-type
                                      boosting-duration-in-seconds :member-name
                                      "boostingDurationInSeconds"))
                                    (:shape-name
                                     "DateAttributeBoostingConfiguration"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-attachment-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (conversation-id :target-type conversation-id
                                  :required common-lisp:t :member-name
                                  "conversationId" :http-label common-lisp:t)
                                 (attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "attachmentId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId"))
                                (:shape-name "DeleteAttachmentRequest"))

(smithy/sdk/shapes:define-output delete-attachment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAttachmentResponse"))

(smithy/sdk/shapes:define-input delete-chat-controls-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteChatControlsConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-chat-controls-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteChatControlsConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-chat-response-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (chat-response-configuration-id :target-type
                                  chat-response-configuration-id :required
                                  common-lisp:t :member-name
                                  "chatResponseConfigurationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteChatResponseConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-chat-response-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteChatResponseConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-conversation-request common-lisp:nil
                                ((conversation-id :target-type conversation-id
                                  :required common-lisp:t :member-name
                                  "conversationId" :http-label common-lisp:t)
                                 (application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId"))
                                (:shape-name "DeleteConversationRequest"))

(smithy/sdk/shapes:define-output delete-conversation-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteConversationResponse"))

(smithy/sdk/shapes:define-input delete-data-accessor-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (data-accessor-id :target-type
                                  data-accessor-id :required common-lisp:t
                                  :member-name "dataAccessorId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDataAccessorRequest"))

(smithy/sdk/shapes:define-output delete-data-accessor-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDataAccessorResponse"))

(smithy/sdk/shapes:define-input delete-data-source-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t))
                                (:shape-name "DeleteDataSourceRequest"))

(smithy/sdk/shapes:define-output delete-data-source-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDataSourceResponse"))

(smithy/sdk/shapes:define-structure delete-document common-lisp:nil
                                    ((document-id :target-type document-id
                                      :required common-lisp:t :member-name
                                      "documentId"))
                                    (:shape-name "DeleteDocument"))

(smithy/sdk/shapes:define-list delete-documents :member delete-document)

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (group-name :target-type group-name :required
                                  common-lisp:t :member-name "groupName"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :member-name "dataSourceId" :http-query
                                  "dataSourceId"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResponse"))

(smithy/sdk/shapes:define-input delete-index-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIndexRequest"))

(smithy/sdk/shapes:define-output delete-index-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIndexResponse"))

(smithy/sdk/shapes:define-input delete-plugin-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (plugin-id :target-type plugin-id :required
                                  common-lisp:t :member-name "pluginId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePluginRequest"))

(smithy/sdk/shapes:define-output delete-plugin-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePluginResponse"))

(smithy/sdk/shapes:define-input delete-retriever-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (retriever-id :target-type retriever-id
                                  :required common-lisp:t :member-name
                                  "retrieverId" :http-label common-lisp:t))
                                (:shape-name "DeleteRetrieverRequest"))

(smithy/sdk/shapes:define-output delete-retriever-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRetrieverResponse"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-input delete-web-experience-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (web-experience-id :target-type
                                  web-experience-id :required common-lisp:t
                                  :member-name "webExperienceId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteWebExperienceRequest"))

(smithy/sdk/shapes:define-output delete-web-experience-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWebExperienceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-permission-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (statement-id :target-type string :required
                                  common-lisp:t :member-name "statementId"
                                  :http-label common-lisp:t))
                                (:shape-name "DisassociatePermissionRequest"))

(smithy/sdk/shapes:define-output disassociate-permission-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DisassociatePermissionResponse"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((id :target-type document-id :required
                                      common-lisp:t :member-name "id")
                                     (attributes :target-type
                                      document-attributes :member-name
                                      "attributes")
                                     (content :target-type document-content
                                      :member-name "content")
                                     (content-type :target-type content-type
                                      :member-name "contentType")
                                     (title :target-type title :member-name
                                      "title")
                                     (access-configuration :target-type
                                      access-configuration :member-name
                                      "accessConfiguration")
                                     (document-enrichment-configuration
                                      :target-type
                                      document-enrichment-configuration
                                      :member-name
                                      "documentEnrichmentConfiguration")
                                     (media-extraction-configuration
                                      :target-type
                                      media-extraction-configuration
                                      :member-name
                                      "mediaExtractionConfiguration"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-structure document-acl common-lisp:nil
                                    ((allowlist :target-type
                                      document-acl-membership :member-name
                                      "allowlist")
                                     (deny-list :target-type
                                      document-acl-membership :member-name
                                      "denyList"))
                                    (:shape-name "DocumentAcl"))

(smithy/sdk/shapes:define-structure document-acl-condition common-lisp:nil
                                    ((member-relation :target-type
                                      member-relation :member-name
                                      "memberRelation")
                                     (users :target-type document-acl-users
                                      :member-name "users")
                                     (groups :target-type document-acl-groups
                                      :member-name "groups"))
                                    (:shape-name "DocumentAclCondition"))

(smithy/sdk/shapes:define-list document-acl-conditions :member
                               document-acl-condition)

(smithy/sdk/shapes:define-structure document-acl-group common-lisp:nil
                                    ((name :target-type group-name :member-name
                                      "name")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "DocumentAclGroup"))

(smithy/sdk/shapes:define-list document-acl-groups :member document-acl-group)

(smithy/sdk/shapes:define-structure document-acl-membership common-lisp:nil
                                    ((member-relation :target-type
                                      member-relation :member-name
                                      "memberRelation")
                                     (conditions :target-type
                                      document-acl-conditions :member-name
                                      "conditions"))
                                    (:shape-name "DocumentAclMembership"))

(smithy/sdk/shapes:define-structure document-acl-user common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "DocumentAclUser"))

(smithy/sdk/shapes:define-list document-acl-users :member document-acl-user)

(smithy/sdk/shapes:define-structure document-attribute common-lisp:nil
                                    ((name :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      document-attribute-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "DocumentAttribute"))

(smithy/sdk/shapes:define-union document-attribute-boosting-configuration
                                common-lisp:nil
                                ((number-configuration :target-type
                                  number-attribute-boosting-configuration
                                  :member-name "numberConfiguration")
                                 (string-configuration :target-type
                                  string-attribute-boosting-configuration
                                  :member-name "stringConfiguration")
                                 (date-configuration :target-type
                                  date-attribute-boosting-configuration
                                  :member-name "dateConfiguration")
                                 (string-list-configuration :target-type
                                  string-list-attribute-boosting-configuration
                                  :member-name "stringListConfiguration"))
                                (:shape-name
                                 "DocumentAttributeBoostingConfiguration"))

(smithy/sdk/shapes:define-enum document-attribute-boosting-level
    common-lisp:nil
  (:none "NONE")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:very-high "VERY_HIGH")
  (:one "ONE")
  (:two "TWO"))

(smithy/sdk/shapes:define-map document-attribute-boosting-override-map :key
                              document-attribute-key :value
                              document-attribute-boosting-configuration)

(smithy/sdk/shapes:define-structure document-attribute-condition
                                    common-lisp:nil
                                    ((key :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (operator :target-type
                                      document-enrichment-condition-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (value :target-type
                                      document-attribute-value :member-name
                                      "value"))
                                    (:shape-name "DocumentAttributeCondition"))

(smithy/sdk/shapes:define-structure document-attribute-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      document-metadata-configuration-name
                                      :member-name "name")
                                     (type :target-type attribute-type
                                      :member-name "type")
                                     (search :target-type status :member-name
                                      "search"))
                                    (:shape-name
                                     "DocumentAttributeConfiguration"))

(smithy/sdk/shapes:define-list document-attribute-configurations :member
                               document-attribute-configuration)

(smithy/sdk/shapes:define-type document-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-attribute-string-list-value :member
                               string)

(smithy/sdk/shapes:define-type document-attribute-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-attribute-target common-lisp:nil
                                    ((key :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type
                                      document-attribute-value :member-name
                                      "value")
                                     (attribute-value-operator :target-type
                                      attribute-value-operator :member-name
                                      "attributeValueOperator"))
                                    (:shape-name "DocumentAttributeTarget"))

(smithy/sdk/shapes:define-union document-attribute-value common-lisp:nil
                                ((string-value :target-type
                                  document-attribute-string-value :member-name
                                  "stringValue")
                                 (string-list-value :target-type
                                  document-attribute-string-list-value
                                  :member-name "stringListValue")
                                 (long-value :target-type long :member-name
                                  "longValue")
                                 (date-value :target-type timestamp
                                  :member-name "dateValue"))
                                (:shape-name "DocumentAttributeValue"))

(smithy/sdk/shapes:define-list document-attributes :member document-attribute)

(smithy/sdk/shapes:define-union document-content common-lisp:nil
                                ((blob :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "blob")
                                 (s3 :target-type s3 :member-name "s3"))
                                (:shape-name "DocumentContent"))

(smithy/sdk/shapes:define-enum document-content-operator
    common-lisp:nil
  (:delete "DELETE"))

(smithy/sdk/shapes:define-list document-detail-list :member document-details)

(smithy/sdk/shapes:define-structure document-details common-lisp:nil
                                    ((document-id :target-type document-id
                                      :member-name "documentId")
                                     (status :target-type document-status
                                      :member-name "status")
                                     (error :target-type error-detail
                                      :member-name "error")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "DocumentDetails"))

(smithy/sdk/shapes:define-enum document-enrichment-condition-operator
    common-lisp:nil
  (:greater-than "GREATER_THAN")
  (:greater-than-or-equals "GREATER_THAN_OR_EQUALS")
  (:less-than "LESS_THAN")
  (:less-than-or-equals "LESS_THAN_OR_EQUALS")
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:contains "CONTAINS")
  (:not-contains "NOT_CONTAINS")
  (:exists "EXISTS")
  (:not-exists "NOT_EXISTS")
  (:begins-with "BEGINS_WITH"))

(smithy/sdk/shapes:define-structure document-enrichment-configuration
                                    common-lisp:nil
                                    ((inline-configurations :target-type
                                      inline-document-enrichment-configurations
                                      :member-name "inlineConfigurations")
                                     (pre-extraction-hook-configuration
                                      :target-type hook-configuration
                                      :member-name
                                      "preExtractionHookConfiguration")
                                     (post-extraction-hook-configuration
                                      :target-type hook-configuration
                                      :member-name
                                      "postExtractionHookConfiguration"))
                                    (:shape-name
                                     "DocumentEnrichmentConfiguration"))

(smithy/sdk/shapes:define-type document-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-metadata-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-status
    common-lisp:nil
  (:received "RECEIVED")
  (:processing "PROCESSING")
  (:indexed "INDEXED")
  (:updated "UPDATED")
  (:failed "FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:document-failed-to-index "DOCUMENT_FAILED_TO_INDEX"))

(smithy/sdk/shapes:define-list documents :member document)

(smithy/sdk/shapes:define-structure eligible-data-source common-lisp:nil
                                    ((index-id :target-type index-id
                                      :member-name "indexId")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "dataSourceId"))
                                    (:shape-name "EligibleDataSource"))

(smithy/sdk/shapes:define-list eligible-data-sources :member
                               eligible-data-source)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-structure end-of-input-event common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EndOfInputEvent"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:internal-error "InternalError")
  (:invalid-request "InvalidRequest")
  (:resource-inactive "ResourceInactive")
  (:resource-not-found "ResourceNotFound"))

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (error-code :target-type error-code
                                      :member-name "errorCode"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type example-chat-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list example-chat-messages :member
                               example-chat-message)

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error external-resource-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ExternalResourceException")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure failed-attachment-event common-lisp:nil
                                    ((conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (user-message-id :target-type message-id
                                      :member-name "userMessageId")
                                     (system-message-id :target-type message-id
                                      :member-name "systemMessageId")
                                     (attachment :target-type attachment-output
                                      :member-name "attachment"))
                                    (:shape-name "FailedAttachmentEvent"))

(smithy/sdk/shapes:define-structure failed-document common-lisp:nil
                                    ((id :target-type document-id :member-name
                                      "id")
                                     (error :target-type error-detail
                                      :member-name "error")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "dataSourceId"))
                                    (:shape-name "FailedDocument"))

(smithy/sdk/shapes:define-list failed-documents :member failed-document)

(smithy/sdk/shapes:define-type favicon-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type font-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-output get-application-response common-lisp:nil
                                 ((display-name :target-type application-name
                                   :member-name "displayName")
                                  (application-id :target-type application-id
                                   :member-name "applicationId")
                                  (application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (identity-type :target-type identity-type
                                   :member-name "identityType")
                                  (iam-identity-provider-arn :target-type
                                   iamidentity-provider-arn :member-name
                                   "iamIdentityProviderArn")
                                  (identity-center-application-arn :target-type
                                   idc-application-arn :member-name
                                   "identityCenterApplicationArn")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (status :target-type application-status
                                   :member-name "status")
                                  (description :target-type description
                                   :member-name "description")
                                  (encryption-configuration :target-type
                                   encryption-configuration :member-name
                                   "encryptionConfiguration")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (error :target-type error-detail :member-name
                                   "error")
                                  (attachments-configuration :target-type
                                   applied-attachments-configuration
                                   :member-name "attachmentsConfiguration")
                                  (q-apps-configuration :target-type
                                   qapps-configuration :member-name
                                   "qAppsConfiguration")
                                  (personalization-configuration :target-type
                                   personalization-configuration :member-name
                                   "personalizationConfiguration")
                                  (auto-subscription-configuration :target-type
                                   auto-subscription-configuration :member-name
                                   "autoSubscriptionConfiguration")
                                  (client-ids-for-oidc :target-type
                                   client-ids-for-oidc :member-name
                                   "clientIdsForOIDC")
                                  (quick-sight-configuration :target-type
                                   quick-sight-configuration :member-name
                                   "quickSightConfiguration"))
                                 (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-chat-controls-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (max-results :target-type
                                  max-results-integer-for-get-topic-configurations
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetChatControlsConfigurationRequest"))

(smithy/sdk/shapes:define-output get-chat-controls-configuration-response
                                 common-lisp:nil
                                 ((response-scope :target-type response-scope
                                   :member-name "responseScope")
                                  (orchestration-configuration :target-type
                                   applied-orchestration-configuration
                                   :member-name "orchestrationConfiguration")
                                  (blocked-phrases :target-type
                                   blocked-phrases-configuration :member-name
                                   "blockedPhrases")
                                  (topic-configurations :target-type
                                   topic-configurations :member-name
                                   "topicConfigurations")
                                  (creator-mode-configuration :target-type
                                   applied-creator-mode-configuration
                                   :member-name "creatorModeConfiguration")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (hallucination-reduction-configuration
                                   :target-type
                                   hallucination-reduction-configuration
                                   :member-name
                                   "hallucinationReductionConfiguration"))
                                 (:shape-name
                                  "GetChatControlsConfigurationResponse"))

(smithy/sdk/shapes:define-input get-chat-response-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (chat-response-configuration-id :target-type
                                  chat-response-configuration-id :required
                                  common-lisp:t :member-name
                                  "chatResponseConfigurationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetChatResponseConfigurationRequest"))

(smithy/sdk/shapes:define-output get-chat-response-configuration-response
                                 common-lisp:nil
                                 ((chat-response-configuration-id :target-type
                                   chat-response-configuration-id :member-name
                                   "chatResponseConfigurationId")
                                  (chat-response-configuration-arn :target-type
                                   chat-response-configuration-arn :member-name
                                   "chatResponseConfigurationArn")
                                  (display-name :target-type display-name
                                   :member-name "displayName")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (in-use-configuration :target-type
                                   chat-response-configuration-detail
                                   :member-name "inUseConfiguration")
                                  (last-update-configuration :target-type
                                   chat-response-configuration-detail
                                   :member-name "lastUpdateConfiguration"))
                                 (:shape-name
                                  "GetChatResponseConfigurationResponse"))

(smithy/sdk/shapes:define-input get-data-accessor-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (data-accessor-id :target-type
                                  data-accessor-id :required common-lisp:t
                                  :member-name "dataAccessorId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDataAccessorRequest"))

(smithy/sdk/shapes:define-output get-data-accessor-response common-lisp:nil
                                 ((display-name :target-type data-accessor-name
                                   :member-name "displayName")
                                  (data-accessor-id :target-type
                                   data-accessor-id :member-name
                                   "dataAccessorId")
                                  (data-accessor-arn :target-type
                                   data-accessor-arn :member-name
                                   "dataAccessorArn")
                                  (application-id :target-type application-id
                                   :member-name "applicationId")
                                  (idc-application-arn :target-type
                                   idc-application-arn :member-name
                                   "idcApplicationArn")
                                  (principal :target-type principal-role-arn
                                   :member-name "principal")
                                  (action-configurations :target-type
                                   action-configuration-list :member-name
                                   "actionConfigurations")
                                  (authentication-detail :target-type
                                   data-accessor-authentication-detail
                                   :member-name "authenticationDetail")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt"))
                                 (:shape-name "GetDataAccessorResponse"))

(smithy/sdk/shapes:define-input get-data-source-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t))
                                (:shape-name "GetDataSourceRequest"))

(smithy/sdk/shapes:define-output get-data-source-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (index-id :target-type index-id :member-name
                                   "indexId")
                                  (data-source-id :target-type data-source-id
                                   :member-name "dataSourceId")
                                  (data-source-arn :target-type data-source-arn
                                   :member-name "dataSourceArn")
                                  (display-name :target-type data-source-name
                                   :member-name "displayName")
                                  (type :target-type string :member-name
                                   "type")
                                  (configuration :target-type
                                   data-source-configuration :member-name
                                   "configuration")
                                  (vpc-configuration :target-type
                                   data-source-vpc-configuration :member-name
                                   "vpcConfiguration")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type data-source-status
                                   :member-name "status")
                                  (sync-schedule :target-type sync-schedule
                                   :member-name "syncSchedule")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (error :target-type error-detail :member-name
                                   "error")
                                  (document-enrichment-configuration
                                   :target-type
                                   document-enrichment-configuration
                                   :member-name
                                   "documentEnrichmentConfiguration")
                                  (media-extraction-configuration :target-type
                                   media-extraction-configuration :member-name
                                   "mediaExtractionConfiguration"))
                                 (:shape-name "GetDataSourceResponse"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (group-name :target-type group-name :required
                                  common-lisp:t :member-name "groupName"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :member-name "dataSourceId" :http-query
                                  "dataSourceId"))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-response common-lisp:nil
                                 ((status :target-type group-status-detail
                                   :member-name "status")
                                  (status-history :target-type
                                   group-status-details :member-name
                                   "statusHistory"))
                                 (:shape-name "GetGroupResponse"))

(smithy/sdk/shapes:define-input get-index-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIndexRequest"))

(smithy/sdk/shapes:define-output get-index-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (index-id :target-type index-id :member-name
                                   "indexId")
                                  (display-name :target-type index-name
                                   :member-name "displayName")
                                  (index-arn :target-type index-arn
                                   :member-name "indexArn")
                                  (status :target-type index-status
                                   :member-name "status")
                                  (type :target-type index-type :member-name
                                   "type")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (capacity-configuration :target-type
                                   index-capacity-configuration :member-name
                                   "capacityConfiguration")
                                  (document-attribute-configurations
                                   :target-type
                                   document-attribute-configurations
                                   :member-name
                                   "documentAttributeConfigurations")
                                  (error :target-type error-detail :member-name
                                   "error")
                                  (index-statistics :target-type
                                   index-statistics :member-name
                                   "indexStatistics"))
                                 (:shape-name "GetIndexResponse"))

(smithy/sdk/shapes:define-input get-media-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (conversation-id :target-type conversation-id
                                  :required common-lisp:t :member-name
                                  "conversationId" :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "messageId"
                                  :http-label common-lisp:t)
                                 (media-id :target-type media-id :required
                                  common-lisp:t :member-name "mediaId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMediaRequest"))

(smithy/sdk/shapes:define-output get-media-response common-lisp:nil
                                 ((media-bytes :target-type blob :member-name
                                   "mediaBytes")
                                  (media-mime-type :target-type string
                                   :member-name "mediaMimeType"))
                                 (:shape-name "GetMediaResponse"))

(smithy/sdk/shapes:define-input get-plugin-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (plugin-id :target-type plugin-id :required
                                  common-lisp:t :member-name "pluginId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPluginRequest"))

(smithy/sdk/shapes:define-output get-plugin-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (plugin-id :target-type plugin-id
                                   :member-name "pluginId")
                                  (display-name :target-type plugin-name
                                   :member-name "displayName")
                                  (type :target-type plugin-type :member-name
                                   "type")
                                  (server-url :target-type url :member-name
                                   "serverUrl")
                                  (auth-configuration :target-type
                                   plugin-auth-configuration :member-name
                                   "authConfiguration")
                                  (custom-plugin-configuration :target-type
                                   custom-plugin-configuration :member-name
                                   "customPluginConfiguration")
                                  (build-status :target-type
                                   plugin-build-status :member-name
                                   "buildStatus")
                                  (plugin-arn :target-type plugin-arn
                                   :member-name "pluginArn")
                                  (state :target-type plugin-state :member-name
                                   "state")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt"))
                                 (:shape-name "GetPluginResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type string :member-name
                                   "policy"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-retriever-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (retriever-id :target-type retriever-id
                                  :required common-lisp:t :member-name
                                  "retrieverId" :http-label common-lisp:t))
                                (:shape-name "GetRetrieverRequest"))

(smithy/sdk/shapes:define-output get-retriever-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (retriever-id :target-type retriever-id
                                   :member-name "retrieverId")
                                  (retriever-arn :target-type retriever-arn
                                   :member-name "retrieverArn")
                                  (type :target-type retriever-type
                                   :member-name "type")
                                  (status :target-type retriever-status
                                   :member-name "status")
                                  (display-name :target-type retriever-name
                                   :member-name "displayName")
                                  (configuration :target-type
                                   retriever-configuration :member-name
                                   "configuration")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt"))
                                 (:shape-name "GetRetrieverResponse"))

(smithy/sdk/shapes:define-input get-user-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserRequest"))

(smithy/sdk/shapes:define-output get-user-response common-lisp:nil
                                 ((user-aliases :target-type user-aliases
                                   :member-name "userAliases"))
                                 (:shape-name "GetUserResponse"))

(smithy/sdk/shapes:define-input get-web-experience-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (web-experience-id :target-type
                                  web-experience-id :required common-lisp:t
                                  :member-name "webExperienceId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetWebExperienceRequest"))

(smithy/sdk/shapes:define-output get-web-experience-response common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId")
                                  (web-experience-id :target-type
                                   web-experience-id :member-name
                                   "webExperienceId")
                                  (web-experience-arn :target-type
                                   web-experience-arn :member-name
                                   "webExperienceArn")
                                  (default-endpoint :target-type url
                                   :member-name "defaultEndpoint")
                                  (status :target-type web-experience-status
                                   :member-name "status")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type timestamp
                                   :member-name "updatedAt")
                                  (title :target-type web-experience-title
                                   :member-name "title")
                                  (subtitle :target-type
                                   web-experience-subtitle :member-name
                                   "subtitle")
                                  (welcome-message :target-type
                                   web-experience-welcome-message :member-name
                                   "welcomeMessage")
                                  (sample-prompts-control-mode :target-type
                                   web-experience-sample-prompts-control-mode
                                   :member-name "samplePromptsControlMode")
                                  (origins :target-type web-experience-origins
                                   :member-name "origins")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (identity-provider-configuration :target-type
                                   identity-provider-configuration :member-name
                                   "identityProviderConfiguration")
                                  (authentication-configuration :target-type
                                   web-experience-auth-configuration
                                   :member-name "authenticationConfiguration")
                                  (error :target-type error-detail :member-name
                                   "error")
                                  (browser-extension-configuration :target-type
                                   browser-extension-configuration :member-name
                                   "browserExtensionConfiguration")
                                  (customization-configuration :target-type
                                   customization-configuration :member-name
                                   "customizationConfiguration"))
                                 (:shape-name "GetWebExperienceResponse"))

(smithy/sdk/shapes:define-type group-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-members common-lisp:nil
                                    ((member-groups :target-type member-groups
                                      :member-name "memberGroups")
                                     (member-users :target-type member-users
                                      :member-name "memberUsers")
                                     (s3path-for-group-members :target-type s3
                                      :member-name "s3PathForGroupMembers"))
                                    (:shape-name "GroupMembers"))

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum group-status
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:processing "PROCESSING")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure group-status-detail common-lisp:nil
                                    ((status :target-type group-status
                                      :member-name "status")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (error-detail :target-type error-detail
                                      :member-name "errorDetail"))
                                    (:shape-name "GroupStatusDetail"))

(smithy/sdk/shapes:define-list group-status-details :member group-status-detail)

(smithy/sdk/shapes:define-structure group-summary common-lisp:nil
                                    ((group-name :target-type group-name
                                      :member-name "groupName"))
                                    (:shape-name "GroupSummary"))

(smithy/sdk/shapes:define-list group-summary-list :member group-summary)

(smithy/sdk/shapes:define-structure hallucination-reduction-configuration
                                    common-lisp:nil
                                    ((hallucination-reduction-control
                                      :target-type
                                      hallucination-reduction-control
                                      :member-name
                                      "hallucinationReductionControl"))
                                    (:shape-name
                                     "HallucinationReductionConfiguration"))

(smithy/sdk/shapes:define-enum hallucination-reduction-control
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure hook-configuration common-lisp:nil
                                    ((invocation-condition :target-type
                                      document-attribute-condition :member-name
                                      "invocationCondition")
                                     (lambda-arn :target-type lambda-arn
                                      :member-name "lambdaArn")
                                     (s3bucket-name :target-type s3bucket-name
                                      :member-name "s3BucketName")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name "HookConfiguration"))

(smithy/sdk/shapes:define-type iamidentity-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idc-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure idc-auth-configuration common-lisp:nil
                                    ((idc-application-arn :target-type
                                      idc-application-arn :required
                                      common-lisp:t :member-name
                                      "idcApplicationArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "IdcAuthConfiguration"))

(smithy/sdk/shapes:define-type idc-trusted-token-issuer-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union identity-provider-configuration common-lisp:nil
                                ((saml-configuration :target-type
                                  saml-provider-configuration :member-name
                                  "samlConfiguration")
                                 (open-idconnect-configuration :target-type
                                  open-idconnect-provider-configuration
                                  :member-name "openIDConnectConfiguration"))
                                (:shape-name "IdentityProviderConfiguration"))

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:aws-iam-idp-saml "AWS_IAM_IDP_SAML")
  (:aws-iam-idp-oidc "AWS_IAM_IDP_OIDC")
  (:aws-iam-idc "AWS_IAM_IDC")
  (:aws-quicksight-idp "AWS_QUICKSIGHT_IDP")
  (:anonymous "ANONYMOUS"))

(smithy/sdk/shapes:define-structure image-extraction-configuration
                                    common-lisp:nil
                                    ((image-extraction-status :target-type
                                      image-extraction-status :required
                                      common-lisp:t :member-name
                                      "imageExtractionStatus"))
                                    (:shape-name
                                     "ImageExtractionConfiguration"))

(smithy/sdk/shapes:define-enum image-extraction-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure image-source-details common-lisp:nil
                                    ((media-id :target-type media-id
                                      :member-name "mediaId")
                                     (media-mime-type :target-type string
                                      :member-name "mediaMimeType"))
                                    (:shape-name "ImageSourceDetails"))

(smithy/sdk/shapes:define-structure index common-lisp:nil
                                    ((display-name :target-type index-name
                                      :member-name "displayName")
                                     (index-id :target-type index-id
                                      :member-name "indexId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (status :target-type index-status
                                      :member-name "status"))
                                    (:shape-name "Index"))

(smithy/sdk/shapes:define-type index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure index-capacity-configuration
                                    common-lisp:nil
                                    ((units :target-type index-capacity-integer
                                      :member-name "units"))
                                    (:shape-name "IndexCapacityConfiguration"))

(smithy/sdk/shapes:define-type index-capacity-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type index-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure index-statistics common-lisp:nil
                                    ((text-document-statistics :target-type
                                      text-document-statistics :member-name
                                      "textDocumentStatistics"))
                                    (:shape-name "IndexStatistics"))

(smithy/sdk/shapes:define-enum index-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum index-type
    common-lisp:nil
  (:enterprise "ENTERPRISE")
  (:starter "STARTER"))

(smithy/sdk/shapes:define-type indexed-text-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type indexed-text-document
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list indices :member index)

(smithy/sdk/shapes:define-structure inline-document-enrichment-configuration
                                    common-lisp:nil
                                    ((condition :target-type
                                      document-attribute-condition :member-name
                                      "condition")
                                     (target :target-type
                                      document-attribute-target :member-name
                                      "target")
                                     (document-content-operator :target-type
                                      document-content-operator :member-name
                                      "documentContentOperator"))
                                    (:shape-name
                                     "InlineDocumentEnrichmentConfiguration"))

(smithy/sdk/shapes:define-list inline-document-enrichment-configurations
                               :member inline-document-enrichment-configuration)

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instruction smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instruction-collection common-lisp:nil
                                    ((response-length :target-type instruction
                                      :member-name "responseLength")
                                     (target-audience :target-type instruction
                                      :member-name "targetAudience")
                                     (perspective :target-type instruction
                                      :member-name "perspective")
                                     (output-style :target-type instruction
                                      :member-name "outputStyle")
                                     (identity :target-type instruction
                                      :member-name "identity")
                                     (tone :target-type instruction
                                      :member-name "tone")
                                     (custom-instructions :target-type
                                      instruction :member-name
                                      "customInstructions")
                                     (examples :target-type instruction
                                      :member-name "examples"))
                                    (:shape-name "InstructionCollection"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integration-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure kendra-index-configuration common-lisp:nil
                                    ((index-id :target-type kendra-index-id
                                      :required common-lisp:t :member-name
                                      "indexId"))
                                    (:shape-name "KendraIndexConfiguration"))

(smithy/sdk/shapes:define-type kendra-index-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error license-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "LicenseNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-applications
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (applications :target-type applications
                                   :member-name "applications"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-attachments-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (conversation-id :target-type conversation-id
                                  :member-name "conversationId" :http-query
                                  "conversationId")
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-attachments
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAttachmentsRequest"))

(smithy/sdk/shapes:define-output list-attachments-response common-lisp:nil
                                 ((attachments :target-type attachment-list
                                   :member-name "attachments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAttachmentsResponse"))

(smithy/sdk/shapes:define-input list-chat-response-configurations-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (max-results :target-type integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListChatResponseConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-chat-response-configurations-response
                                 common-lisp:nil
                                 ((chat-response-configurations :target-type
                                   chat-response-configurations :member-name
                                   "chatResponseConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListChatResponseConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-conversations-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-conversations
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListConversationsRequest"))

(smithy/sdk/shapes:define-output list-conversations-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (conversations :target-type conversations
                                   :member-name "conversations"))
                                 (:shape-name "ListConversationsResponse"))

(smithy/sdk/shapes:define-input list-data-accessors-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token1500
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-data-accessors
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataAccessorsRequest"))

(smithy/sdk/shapes:define-output list-data-accessors-response common-lisp:nil
                                 ((data-accessors :target-type data-accessors
                                   :member-name "dataAccessors")
                                  (next-token :target-type next-token1500
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataAccessorsResponse"))

(smithy/sdk/shapes:define-input list-data-source-sync-jobs-request
                                common-lisp:nil
                                ((data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t)
                                 (application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-data-sources-sync-jobs
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (start-time :target-type timestamp
                                  :member-name "startTime" :http-query
                                  "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime" :http-query "endTime")
                                 (status-filter :target-type
                                  data-source-sync-job-status :member-name
                                  "statusFilter" :http-query "syncStatus"))
                                (:shape-name "ListDataSourceSyncJobsRequest"))

(smithy/sdk/shapes:define-output list-data-source-sync-jobs-response
                                 common-lisp:nil
                                 ((history :target-type data-source-sync-jobs
                                   :member-name "history")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourceSyncJobsResponse"))

(smithy/sdk/shapes:define-input list-data-sources-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-data-sources
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-data-sources-response common-lisp:nil
                                 ((data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-documents-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (data-source-ids :target-type data-source-ids
                                  :member-name "dataSourceIds" :http-query
                                  "dataSourceIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-documents
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDocumentsRequest"))

(smithy/sdk/shapes:define-output list-documents-response common-lisp:nil
                                 ((document-detail-list :target-type
                                   document-detail-list :member-name
                                   "documentDetailList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDocumentsResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (updated-earlier-than :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "updatedEarlierThan" :http-query
                                  "updatedEarlierThan")
                                 (data-source-id :target-type data-source-id
                                  :member-name "dataSourceId" :http-query
                                  "dataSourceId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-groups-request
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (items :target-type group-summary-list
                                   :member-name "items"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-indices-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-indices
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListIndicesRequest"))

(smithy/sdk/shapes:define-output list-indices-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (indices :target-type indices :member-name
                                   "indices"))
                                 (:shape-name "ListIndicesResponse"))

(smithy/sdk/shapes:define-input list-messages-request common-lisp:nil
                                ((conversation-id :target-type conversation-id
                                  :required common-lisp:t :member-name
                                  "conversationId" :http-label common-lisp:t)
                                 (application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-messages
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMessagesRequest"))

(smithy/sdk/shapes:define-output list-messages-response common-lisp:nil
                                 ((messages :target-type messages :member-name
                                   "messages")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMessagesResponse"))

(smithy/sdk/shapes:define-input list-plugin-actions-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (plugin-id :target-type plugin-id :required
                                  common-lisp:t :member-name "pluginId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-plugin-actions
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPluginActionsRequest"))

(smithy/sdk/shapes:define-output list-plugin-actions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (items :target-type actions :member-name
                                   "items"))
                                 (:shape-name "ListPluginActionsResponse"))

(smithy/sdk/shapes:define-input list-plugin-type-actions-request
                                common-lisp:nil
                                ((plugin-type :target-type plugin-type
                                  :required common-lisp:t :member-name
                                  "pluginType" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-plugin-type-actions
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPluginTypeActionsRequest"))

(smithy/sdk/shapes:define-output list-plugin-type-actions-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (items :target-type actions :member-name
                                   "items"))
                                 (:shape-name "ListPluginTypeActionsResponse"))

(smithy/sdk/shapes:define-input list-plugin-type-metadata-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-plugin-type-metadata
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPluginTypeMetadataRequest"))

(smithy/sdk/shapes:define-output list-plugin-type-metadata-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (items :target-type
                                   list-plugin-type-metadata-summaries
                                   :member-name "items"))
                                 (:shape-name "ListPluginTypeMetadataResponse"))

(smithy/sdk/shapes:define-list list-plugin-type-metadata-summaries :member
                               plugin-type-metadata-summary)

(smithy/sdk/shapes:define-input list-plugins-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-plugins
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPluginsRequest"))

(smithy/sdk/shapes:define-output list-plugins-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (plugins :target-type plugins :member-name
                                   "plugins"))
                                 (:shape-name "ListPluginsResponse"))

(smithy/sdk/shapes:define-input list-retrievers-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-retrievers-request
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListRetrieversRequest"))

(smithy/sdk/shapes:define-output list-retrievers-response common-lisp:nil
                                 ((retrievers :target-type retrievers
                                   :member-name "retrievers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRetrieversResponse"))

(smithy/sdk/shapes:define-input list-subscriptions-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-subscriptions
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSubscriptionsRequest"))

(smithy/sdk/shapes:define-output list-subscriptions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (subscriptions :target-type subscriptions
                                   :member-name "subscriptions"))
                                 (:shape-name "ListSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-web-experiences-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-web-experiences-request
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListWebExperiencesRequest"))

(smithy/sdk/shapes:define-output list-web-experiences-response common-lisp:nil
                                 ((web-experiences :target-type web-experiences
                                   :member-name "webExperiences")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWebExperiencesResponse"))

(smithy/sdk/shapes:define-type logo-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-get-topic-configurations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-applications
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-attachments
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-conversations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-data-accessors
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-data-sources
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-data-sources-sync-jobs
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-documents
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-groups-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-indices
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-messages
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-plugin-actions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-plugin-type-actions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-plugin-type-metadata
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-plugins
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-retrievers-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-subscriptions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-web-experiences-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media-extraction-configuration
                                    common-lisp:nil
                                    ((image-extraction-configuration
                                      :target-type
                                      image-extraction-configuration
                                      :member-name
                                      "imageExtractionConfiguration")
                                     (audio-extraction-configuration
                                      :target-type
                                      audio-extraction-configuration
                                      :member-name
                                      "audioExtractionConfiguration")
                                     (video-extraction-configuration
                                      :target-type
                                      video-extraction-configuration
                                      :member-name
                                      "videoExtractionConfiguration"))
                                    (:shape-name
                                     "MediaExtractionConfiguration"))

(smithy/sdk/shapes:define-type media-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error media-too-large-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "MediaTooLargeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure member-group common-lisp:nil
                                    ((group-name :target-type group-name
                                      :required common-lisp:t :member-name
                                      "groupName")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "MemberGroup"))

(smithy/sdk/shapes:define-list member-groups :member member-group)

(smithy/sdk/shapes:define-enum member-relation
    common-lisp:nil
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-structure member-user common-lisp:nil
                                    ((user-id :target-type data-source-user-id
                                      :required common-lisp:t :member-name
                                      "userId")
                                     (type :target-type membership-type
                                      :member-name "type"))
                                    (:shape-name "MemberUser"))

(smithy/sdk/shapes:define-list member-users :member member-user)

(smithy/sdk/shapes:define-enum membership-type
    common-lisp:nil
  (:index "INDEX")
  (:datasource "DATASOURCE"))

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((message-id :target-type string
                                      :member-name "messageId")
                                     (body :target-type message-body
                                      :member-name "body")
                                     (time :target-type timestamp :member-name
                                      "time")
                                     (type :target-type message-type
                                      :member-name "type")
                                     (attachments :target-type
                                      attachments-output :member-name
                                      "attachments")
                                     (source-attribution :target-type
                                      source-attributions :member-name
                                      "sourceAttribution")
                                     (action-review :target-type action-review
                                      :member-name "actionReview")
                                     (action-execution :target-type
                                      action-execution :member-name
                                      "actionExecution"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:user "USER")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-enum message-usefulness
    common-lisp:nil
  (:useful "USEFUL")
  (:not-useful "NOT_USEFUL"))

(smithy/sdk/shapes:define-type message-usefulness-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-usefulness-feedback common-lisp:nil
                                    ((usefulness :target-type
                                      message-usefulness :required
                                      common-lisp:t :member-name "usefulness")
                                     (reason :target-type
                                      message-usefulness-reason :member-name
                                      "reason")
                                     (comment :target-type
                                      message-usefulness-comment :member-name
                                      "comment")
                                     (submitted-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "submittedAt"))
                                    (:shape-name "MessageUsefulnessFeedback"))

(smithy/sdk/shapes:define-enum message-usefulness-reason
    common-lisp:nil
  (:not-factually-correct "NOT_FACTUALLY_CORRECT")
  (:harmful-or-unsafe "HARMFUL_OR_UNSAFE")
  (:incorrect-or-missing-sources "INCORRECT_OR_MISSING_SOURCES")
  (:not-helpful "NOT_HELPFUL")
  (:factually-correct "FACTUALLY_CORRECT")
  (:complete "COMPLETE")
  (:relevant-sources "RELEVANT_SOURCES")
  (:helpful "HELPFUL")
  (:not-based-on-documents "NOT_BASED_ON_DOCUMENTS")
  (:not-complete "NOT_COMPLETE")
  (:not-concise "NOT_CONCISE")
  (:other "OTHER"))

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-structure metadata-event common-lisp:nil
                                    ((conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (user-message-id :target-type message-id
                                      :member-name "userMessageId")
                                     (system-message-id :target-type message-id
                                      :member-name "systemMessageId")
                                     (source-attributions :target-type
                                      source-attributions :member-name
                                      "sourceAttributions")
                                     (final-text-message :target-type string
                                      :member-name "finalTextMessage"))
                                    (:shape-name "MetadataEvent"))

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure native-index-configuration common-lisp:nil
                                    ((index-id :target-type index-id :required
                                      common-lisp:t :member-name "indexId")
                                     (version :target-type long :member-name
                                      "version")
                                     (boosting-override :target-type
                                      document-attribute-boosting-override-map
                                      :member-name "boostingOverride"))
                                    (:shape-name "NativeIndexConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token1500 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure no-auth-configuration common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "NoAuthConfiguration"))

(smithy/sdk/shapes:define-structure number-attribute-boosting-configuration
                                    common-lisp:nil
                                    ((boosting-level :target-type
                                      document-attribute-boosting-level
                                      :required common-lisp:t :member-name
                                      "boostingLevel")
                                     (boosting-type :target-type
                                      number-attribute-boosting-type
                                      :member-name "boostingType"))
                                    (:shape-name
                                     "NumberAttributeBoostingConfiguration"))

(smithy/sdk/shapes:define-enum number-attribute-boosting-type
    common-lisp:nil
  (:prioritize-larger-values "PRIORITIZE_LARGER_VALUES")
  (:prioritize-smaller-values "PRIORITIZE_SMALLER_VALUES"))

(smithy/sdk/shapes:define-structure oauth2client-credential-configuration
                                    common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "secretArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (authorization-url :target-type url
                                      :member-name "authorizationUrl")
                                     (token-url :target-type url :member-name
                                      "tokenUrl"))
                                    (:shape-name
                                     "OAuth2ClientCredentialConfiguration"))

(smithy/sdk/shapes:define-structure open-idconnect-provider-configuration
                                    common-lisp:nil
                                    ((secrets-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "secretsArn")
                                     (secrets-role :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "secretsRole"))
                                    (:shape-name
                                     "OpenIDConnectProviderConfiguration"))

(smithy/sdk/shapes:define-structure orchestration-configuration common-lisp:nil
                                    ((control :target-type
                                      orchestration-control :required
                                      common-lisp:t :member-name "control"))
                                    (:shape-name "OrchestrationConfiguration"))

(smithy/sdk/shapes:define-enum orchestration-control
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-condition common-lisp:nil
                                    ((condition-operator :target-type
                                      permission-condition-operator :required
                                      common-lisp:t :member-name
                                      "conditionOperator")
                                     (condition-key :target-type
                                      permission-condition-key :required
                                      common-lisp:t :member-name
                                      "conditionKey")
                                     (condition-values :target-type
                                      permission-condition-values :required
                                      common-lisp:t :member-name
                                      "conditionValues"))
                                    (:shape-name "PermissionCondition"))

(smithy/sdk/shapes:define-type permission-condition-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum permission-condition-operator
    common-lisp:nil
  (:string-equals "StringEquals"))

(smithy/sdk/shapes:define-type permission-condition-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list permission-condition-values :member
                               permission-condition-value)

(smithy/sdk/shapes:define-list permission-conditions :member
                               permission-condition)

(smithy/sdk/shapes:define-structure personalization-configuration
                                    common-lisp:nil
                                    ((personalization-control-mode :target-type
                                      personalization-control-mode :required
                                      common-lisp:t :member-name
                                      "personalizationControlMode"))
                                    (:shape-name
                                     "PersonalizationConfiguration"))

(smithy/sdk/shapes:define-enum personalization-control-mode
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure plugin common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :member-name "pluginId")
                                     (display-name :target-type plugin-name
                                      :member-name "displayName")
                                     (type :target-type plugin-type
                                      :member-name "type")
                                     (server-url :target-type url :member-name
                                      "serverUrl")
                                     (state :target-type plugin-state
                                      :member-name "state")
                                     (build-status :target-type
                                      plugin-build-status :member-name
                                      "buildStatus")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "Plugin"))

(smithy/sdk/shapes:define-type plugin-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union plugin-auth-configuration common-lisp:nil
                                ((basic-auth-configuration :target-type
                                  basic-auth-configuration :member-name
                                  "basicAuthConfiguration")
                                 (o-auth2client-credential-configuration
                                  :target-type
                                  oauth2client-credential-configuration
                                  :member-name
                                  "oAuth2ClientCredentialConfiguration")
                                 (no-auth-configuration :target-type
                                  no-auth-configuration :member-name
                                  "noAuthConfiguration")
                                 (idc-auth-configuration :target-type
                                  idc-auth-configuration :member-name
                                  "idcAuthConfiguration"))
                                (:shape-name "PluginAuthConfiguration"))

(smithy/sdk/shapes:define-enum plugin-build-status
    common-lisp:nil
  (:ready "READY")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure plugin-configuration common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :required common-lisp:t :member-name
                                      "pluginId"))
                                    (:shape-name "PluginConfiguration"))

(smithy/sdk/shapes:define-type plugin-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum plugin-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum plugin-type
    common-lisp:nil
  (:service-now "SERVICE_NOW")
  (:salesforce "SALESFORCE")
  (:jira "JIRA")
  (:zendesk "ZENDESK")
  (:custom "CUSTOM")
  (:quicksight "QUICKSIGHT")
  (:servicenow-now-platform "SERVICENOW_NOW_PLATFORM")
  (:jira-cloud "JIRA_CLOUD")
  (:salesforce-crm "SALESFORCE_CRM")
  (:zendesk-suite "ZENDESK_SUITE")
  (:atlassian-confluence "ATLASSIAN_CONFLUENCE")
  (:google-calendar "GOOGLE_CALENDAR")
  (:microsoft-teams "MICROSOFT_TEAMS")
  (:microsoft-exchange "MICROSOFT_EXCHANGE")
  (:pagerduty-advance "PAGERDUTY_ADVANCE")
  (:smartsheet "SMARTSHEET")
  (:asana "ASANA"))

(smithy/sdk/shapes:define-enum plugin-type-category
    common-lisp:nil
  (:crm "Customer relationship management (CRM)")
  (:project-management "Project management")
  (:communication "Communication")
  (:productivity "Productivity")
  (:ticketing-management "Ticketing and incident management"))

(smithy/sdk/shapes:define-structure plugin-type-metadata-summary
                                    common-lisp:nil
                                    ((type :target-type plugin-type
                                      :member-name "type")
                                     (category :target-type
                                      plugin-type-category :member-name
                                      "category")
                                     (description :target-type string
                                      :member-name "description"))
                                    (:shape-name "PluginTypeMetadataSummary"))

(smithy/sdk/shapes:define-list plugins :member plugin)

(smithy/sdk/shapes:define-union principal common-lisp:nil
                                ((user :target-type principal-user :member-name
                                  "user")
                                 (group :target-type principal-group
                                  :member-name "group"))
                                (:shape-name "Principal"))

(smithy/sdk/shapes:define-structure principal-group common-lisp:nil
                                    ((name :target-type group-name :member-name
                                      "name")
                                     (access :target-type read-access-type
                                      :required common-lisp:t :member-name
                                      "access")
                                     (membership-type :target-type
                                      membership-type :member-name
                                      "membershipType"))
                                    (:shape-name "PrincipalGroup"))

(smithy/sdk/shapes:define-type principal-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure principal-user common-lisp:nil
                                    ((id :target-type user-id :member-name
                                      "id")
                                     (access :target-type read-access-type
                                      :required common-lisp:t :member-name
                                      "access")
                                     (membership-type :target-type
                                      membership-type :member-name
                                      "membershipType"))
                                    (:shape-name "PrincipalUser"))

(smithy/sdk/shapes:define-list principals :member principal)

(smithy/sdk/shapes:define-input put-feedback-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type user-id :member-name
                                  "userId" :http-query "userId")
                                 (conversation-id :target-type conversation-id
                                  :required common-lisp:t :member-name
                                  "conversationId" :http-label common-lisp:t)
                                 (message-id :target-type system-message-id
                                  :required common-lisp:t :member-name
                                  "messageId" :http-label common-lisp:t)
                                 (message-copied-at :target-type timestamp
                                  :member-name "messageCopiedAt")
                                 (message-usefulness :target-type
                                  message-usefulness-feedback :member-name
                                  "messageUsefulness"))
                                (:shape-name "PutFeedbackRequest"))

(smithy/sdk/shapes:define-input put-group-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (group-name :target-type group-name :required
                                  common-lisp:t :member-name "groupName")
                                 (data-source-id :target-type data-source-id
                                  :member-name "dataSourceId")
                                 (type :target-type membership-type :required
                                  common-lisp:t :member-name "type")
                                 (group-members :target-type group-members
                                  :required common-lisp:t :member-name
                                  "groupMembers")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn"))
                                (:shape-name "PutGroupRequest"))

(smithy/sdk/shapes:define-output put-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutGroupResponse"))

(smithy/sdk/shapes:define-structure qapps-configuration common-lisp:nil
                                    ((q-apps-control-mode :target-type
                                      qapps-control-mode :required
                                      common-lisp:t :member-name
                                      "qAppsControlMode"))
                                    (:shape-name "QAppsConfiguration"))

(smithy/sdk/shapes:define-enum qapps-control-mode
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type qiam-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list qiam-actions :member qiam-action)

(smithy/sdk/shapes:define-type query-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quick-sight-configuration common-lisp:nil
                                    ((client-namespace :target-type
                                      client-namespace :required common-lisp:t
                                      :member-name "clientNamespace"))
                                    (:shape-name "QuickSightConfiguration"))

(smithy/sdk/shapes:define-enum read-access-type
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure relevant-content common-lisp:nil
                                    ((content :target-type string :member-name
                                      "content")
                                     (document-id :target-type document-id
                                      :member-name "documentId")
                                     (document-title :target-type title
                                      :member-name "documentTitle")
                                     (document-uri :target-type url
                                      :member-name "documentUri")
                                     (document-attributes :target-type
                                      document-attributes :member-name
                                      "documentAttributes")
                                     (score-attributes :target-type
                                      score-attributes :member-name
                                      "scoreAttributes"))
                                    (:shape-name "RelevantContent"))

(smithy/sdk/shapes:define-list relevant-content-list :member relevant-content)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure response-configuration common-lisp:nil
                                    ((instruction-collection :target-type
                                      instruction-collection :member-name
                                      "instructionCollection"))
                                    (:shape-name "ResponseConfiguration"))

(smithy/sdk/shapes:define-type response-configuration-summary
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum response-configuration-type
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-map response-configurations :key
                              response-configuration-type :value
                              response-configuration)

(smithy/sdk/shapes:define-enum response-scope
    common-lisp:nil
  (:enterprise-content-only "ENTERPRISE_CONTENT_ONLY")
  (:extended-knowledge-enabled "EXTENDED_KNOWLEDGE_ENABLED"))

(smithy/sdk/shapes:define-structure retriever common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "applicationId")
                                     (retriever-id :target-type retriever-id
                                      :member-name "retrieverId")
                                     (type :target-type retriever-type
                                      :member-name "type")
                                     (status :target-type retriever-status
                                      :member-name "status")
                                     (display-name :target-type retriever-name
                                      :member-name "displayName"))
                                    (:shape-name "Retriever"))

(smithy/sdk/shapes:define-type retriever-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union retriever-configuration common-lisp:nil
                                ((native-index-configuration :target-type
                                  native-index-configuration :member-name
                                  "nativeIndexConfiguration")
                                 (kendra-index-configuration :target-type
                                  kendra-index-configuration :member-name
                                  "kendraIndexConfiguration"))
                                (:shape-name "RetrieverConfiguration"))

(smithy/sdk/shapes:define-structure retriever-content-source common-lisp:nil
                                    ((retriever-id :target-type retriever-id
                                      :required common-lisp:t :member-name
                                      "retrieverId"))
                                    (:shape-name "RetrieverContentSource"))

(smithy/sdk/shapes:define-type retriever-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retriever-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum retriever-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum retriever-type
    common-lisp:nil
  (:native-index "NATIVE_INDEX")
  (:kendra-index "KENDRA_INDEX"))

(smithy/sdk/shapes:define-list retrievers :member retriever)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((included-users-and-groups :target-type
                                      users-and-groups :member-name
                                      "includedUsersAndGroups")
                                     (excluded-users-and-groups :target-type
                                      users-and-groups :member-name
                                      "excludedUsersAndGroups")
                                     (rule-type :target-type rule-type
                                      :required common-lisp:t :member-name
                                      "ruleType")
                                     (rule-configuration :target-type
                                      rule-configuration :member-name
                                      "ruleConfiguration"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-union rule-configuration common-lisp:nil
                                ((content-blocker-rule :target-type
                                  content-blocker-rule :member-name
                                  "contentBlockerRule")
                                 (content-retrieval-rule :target-type
                                  content-retrieval-rule :member-name
                                  "contentRetrievalRule"))
                                (:shape-name "RuleConfiguration"))

(smithy/sdk/shapes:define-enum rule-type
    common-lisp:nil
  (:content-blocker-rule "CONTENT_BLOCKER_RULE")
  (:content-retrieval-rule "CONTENT_RETRIEVAL_RULE"))

(smithy/sdk/shapes:define-list rules :member rule)

(smithy/sdk/shapes:define-structure s3 common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucket")
                                     (key :target-type s3object-key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-authentication-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saml-configuration common-lisp:nil
                                    ((metadata-xml :target-type
                                      saml-metadata-xml :required common-lisp:t
                                      :member-name "metadataXML")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (user-id-attribute :target-type
                                      saml-attribute :required common-lisp:t
                                      :member-name "userIdAttribute")
                                     (user-group-attribute :target-type
                                      saml-attribute :member-name
                                      "userGroupAttribute"))
                                    (:shape-name "SamlConfiguration"))

(smithy/sdk/shapes:define-type saml-metadata-xml smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saml-provider-configuration common-lisp:nil
                                    ((authentication-url :target-type
                                      saml-authentication-url :required
                                      common-lisp:t :member-name
                                      "authenticationUrl"))
                                    (:shape-name "SamlProviderConfiguration"))

(smithy/sdk/shapes:define-structure score-attributes common-lisp:nil
                                    ((score-confidence :target-type
                                      score-confidence :member-name
                                      "scoreConfidence"))
                                    (:shape-name "ScoreAttributes"))

(smithy/sdk/shapes:define-enum score-confidence
    common-lisp:nil
  (:very-high "VERY_HIGH")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-input search-relevant-content-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (query-text :target-type query-text :required
                                  common-lisp:t :member-name "queryText")
                                 (content-source :target-type content-source
                                  :required common-lisp:t :member-name
                                  "contentSource")
                                 (attribute-filter :target-type
                                  attribute-filter :member-name
                                  "attributeFilter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "SearchRelevantContentRequest"))

(smithy/sdk/shapes:define-output search-relevant-content-response
                                 common-lisp:nil
                                 ((relevant-content :target-type
                                   relevant-content-list :member-name
                                   "relevantContent")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchRelevantContentResponse"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-duration-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure snippet-excerpt common-lisp:nil
                                    ((text :target-type snippet-excerpt-text
                                      :member-name "text"))
                                    (:shape-name "SnippetExcerpt"))

(smithy/sdk/shapes:define-type snippet-excerpt-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-attribution common-lisp:nil
                                    ((title :target-type string :member-name
                                      "title")
                                     (snippet :target-type string :member-name
                                      "snippet")
                                     (url :target-type string :member-name
                                      "url")
                                     (citation-number :target-type integer
                                      :member-name "citationNumber")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (text-message-segments :target-type
                                      text-segment-list :member-name
                                      "textMessageSegments"))
                                    (:shape-name "SourceAttribution"))

(smithy/sdk/shapes:define-type source-attribution-media-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-attributions :member source-attribution)

(smithy/sdk/shapes:define-union source-details common-lisp:nil
                                ((image-source-details :target-type
                                  image-source-details :member-name
                                  "imageSourceDetails")
                                 (audio-source-details :target-type
                                  audio-source-details :member-name
                                  "audioSourceDetails")
                                 (video-source-details :target-type
                                  video-source-details :member-name
                                  "videoSourceDetails"))
                                (:shape-name "SourceDetails"))

(smithy/sdk/shapes:define-input start-data-source-sync-job-request
                                common-lisp:nil
                                ((data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t)
                                 (application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartDataSourceSyncJobRequest"))

(smithy/sdk/shapes:define-output start-data-source-sync-job-response
                                 common-lisp:nil
                                 ((execution-id :target-type execution-id
                                   :member-name "executionId"))
                                 (:shape-name "StartDataSourceSyncJobResponse"))

(smithy/sdk/shapes:define-type statement-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input stop-data-source-sync-job-request
                                common-lisp:nil
                                ((data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t)
                                 (application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopDataSourceSyncJobRequest"))

(smithy/sdk/shapes:define-output stop-data-source-sync-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopDataSourceSyncJobResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure string-attribute-boosting-configuration
                                    common-lisp:nil
                                    ((boosting-level :target-type
                                      document-attribute-boosting-level
                                      :required common-lisp:t :member-name
                                      "boostingLevel")
                                     (attribute-value-boosting :target-type
                                      string-attribute-value-boosting
                                      :member-name "attributeValueBoosting"))
                                    (:shape-name
                                     "StringAttributeBoostingConfiguration"))

(smithy/sdk/shapes:define-map string-attribute-value-boosting :key string
                              :value string-attribute-value-boosting-level)

(smithy/sdk/shapes:define-enum string-attribute-value-boosting-level
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:very-high "VERY_HIGH")
  (:one "ONE")
  (:two "TWO")
  (:three "THREE")
  (:four "FOUR")
  (:five "FIVE"))

(smithy/sdk/shapes:define-structure
 string-list-attribute-boosting-configuration common-lisp:nil
 ((boosting-level :target-type document-attribute-boosting-level :required
   common-lisp:t :member-name "boostingLevel"))
 (:shape-name "StringListAttributeBoostingConfiguration"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((subscription-id :target-type
                                      subscription-id :member-name
                                      "subscriptionId")
                                     (subscription-arn :target-type
                                      subscription-arn :member-name
                                      "subscriptionArn")
                                     (principal :target-type
                                      subscription-principal :member-name
                                      "principal")
                                     (current-subscription :target-type
                                      subscription-details :member-name
                                      "currentSubscription")
                                     (next-subscription :target-type
                                      subscription-details :member-name
                                      "nextSubscription"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-type subscription-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subscription-details common-lisp:nil
                                    ((type :target-type subscription-type
                                      :member-name "type"))
                                    (:shape-name "SubscriptionDetails"))

(smithy/sdk/shapes:define-type subscription-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union subscription-principal common-lisp:nil
                                ((user :target-type user-identifier
                                  :member-name "user")
                                 (group :target-type group-identifier
                                  :member-name "group"))
                                (:shape-name "SubscriptionPrincipal"))

(smithy/sdk/shapes:define-enum subscription-type
    common-lisp:nil
  (:q-lite "Q_LITE")
  (:q-business "Q_BUSINESS"))

(smithy/sdk/shapes:define-list subscriptions :member subscription)

(smithy/sdk/shapes:define-type sync-schedule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type system-message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type system-message-override
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum system-message-type
    common-lisp:nil
  (:response "RESPONSE")
  (:grounded-response "GROUNDED_RESPONSE"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure text-document-statistics common-lisp:nil
                                    ((indexed-text-bytes :target-type
                                      indexed-text-bytes :member-name
                                      "indexedTextBytes")
                                     (indexed-text-document-count :target-type
                                      indexed-text-document :member-name
                                      "indexedTextDocumentCount"))
                                    (:shape-name "TextDocumentStatistics"))

(smithy/sdk/shapes:define-structure text-input-event common-lisp:nil
                                    ((user-message :target-type user-message
                                      :required common-lisp:t :member-name
                                      "userMessage"))
                                    (:shape-name "TextInputEvent"))

(smithy/sdk/shapes:define-structure text-output-event common-lisp:nil
                                    ((system-message-type :target-type
                                      system-message-type :member-name
                                      "systemMessageType")
                                     (conversation-id :target-type
                                      conversation-id :member-name
                                      "conversationId")
                                     (user-message-id :target-type message-id
                                      :member-name "userMessageId")
                                     (system-message-id :target-type message-id
                                      :member-name "systemMessageId")
                                     (system-message :target-type string
                                      :member-name "systemMessage"))
                                    (:shape-name "TextOutputEvent"))

(smithy/sdk/shapes:define-structure text-segment common-lisp:nil
                                    ((begin-offset :target-type integer
                                      :member-name "beginOffset")
                                     (end-offset :target-type integer
                                      :member-name "endOffset")
                                     (snippet-excerpt :target-type
                                      snippet-excerpt :member-name
                                      "snippetExcerpt")
                                     (media-id :target-type
                                      source-attribution-media-id :member-name
                                      "mediaId")
                                     (media-mime-type :target-type string
                                      :member-name "mediaMimeType")
                                     (source-details :target-type
                                      source-details :member-name
                                      "sourceDetails"))
                                    (:shape-name "TextSegment"))

(smithy/sdk/shapes:define-list text-segment-list :member text-segment)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure topic-configuration common-lisp:nil
                                    ((name :target-type
                                      topic-configuration-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      topic-description :member-name
                                      "description")
                                     (example-chat-messages :target-type
                                      example-chat-messages :member-name
                                      "exampleChatMessages")
                                     (rules :target-type rules :required
                                      common-lisp:t :member-name "rules"))
                                    (:shape-name "TopicConfiguration"))

(smithy/sdk/shapes:define-type topic-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list topic-configurations :member topic-configuration)

(smithy/sdk/shapes:define-type topic-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (identity-center-instance-arn :target-type
                                  instance-arn :member-name
                                  "identityCenterInstanceArn")
                                 (display-name :target-type application-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (attachments-configuration :target-type
                                  attachments-configuration :member-name
                                  "attachmentsConfiguration")
                                 (q-apps-configuration :target-type
                                  qapps-configuration :member-name
                                  "qAppsConfiguration")
                                 (personalization-configuration :target-type
                                  personalization-configuration :member-name
                                  "personalizationConfiguration")
                                 (auto-subscription-configuration :target-type
                                  auto-subscription-configuration :member-name
                                  "autoSubscriptionConfiguration"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input update-chat-controls-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (response-scope :target-type response-scope
                                  :member-name "responseScope")
                                 (orchestration-configuration :target-type
                                  orchestration-configuration :member-name
                                  "orchestrationConfiguration")
                                 (blocked-phrases-configuration-update
                                  :target-type
                                  blocked-phrases-configuration-update
                                  :member-name
                                  "blockedPhrasesConfigurationUpdate")
                                 (topic-configurations-to-create-or-update
                                  :target-type topic-configurations
                                  :member-name
                                  "topicConfigurationsToCreateOrUpdate")
                                 (topic-configurations-to-delete :target-type
                                  topic-configurations :member-name
                                  "topicConfigurationsToDelete")
                                 (creator-mode-configuration :target-type
                                  creator-mode-configuration :member-name
                                  "creatorModeConfiguration")
                                 (hallucination-reduction-configuration
                                  :target-type
                                  hallucination-reduction-configuration
                                  :member-name
                                  "hallucinationReductionConfiguration"))
                                (:shape-name
                                 "UpdateChatControlsConfigurationRequest"))

(smithy/sdk/shapes:define-output update-chat-controls-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateChatControlsConfigurationResponse"))

(smithy/sdk/shapes:define-input update-chat-response-configuration-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (chat-response-configuration-id :target-type
                                  chat-response-configuration-id :required
                                  common-lisp:t :member-name
                                  "chatResponseConfigurationId" :http-label
                                  common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (response-configurations :target-type
                                  response-configurations :required
                                  common-lisp:t :member-name
                                  "responseConfigurations")
                                 (client-token :target-type string :member-name
                                  "clientToken"))
                                (:shape-name
                                 "UpdateChatResponseConfigurationRequest"))

(smithy/sdk/shapes:define-output update-chat-response-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateChatResponseConfigurationResponse"))

(smithy/sdk/shapes:define-input update-data-accessor-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (data-accessor-id :target-type
                                  data-accessor-id :required common-lisp:t
                                  :member-name "dataAccessorId" :http-label
                                  common-lisp:t)
                                 (action-configurations :target-type
                                  action-configuration-list :required
                                  common-lisp:t :member-name
                                  "actionConfigurations")
                                 (authentication-detail :target-type
                                  data-accessor-authentication-detail
                                  :member-name "authenticationDetail")
                                 (display-name :target-type data-accessor-name
                                  :member-name "displayName"))
                                (:shape-name "UpdateDataAccessorRequest"))

(smithy/sdk/shapes:define-output update-data-accessor-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDataAccessorResponse"))

(smithy/sdk/shapes:define-input update-data-source-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (data-source-id :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "dataSourceId" :http-label common-lisp:t)
                                 (display-name :target-type data-source-name
                                  :member-name "displayName")
                                 (configuration :target-type
                                  data-source-configuration :member-name
                                  "configuration")
                                 (vpc-configuration :target-type
                                  data-source-vpc-configuration :member-name
                                  "vpcConfiguration")
                                 (description :target-type description
                                  :member-name "description")
                                 (sync-schedule :target-type sync-schedule
                                  :member-name "syncSchedule")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (document-enrichment-configuration
                                  :target-type
                                  document-enrichment-configuration
                                  :member-name
                                  "documentEnrichmentConfiguration")
                                 (media-extraction-configuration :target-type
                                  media-extraction-configuration :member-name
                                  "mediaExtractionConfiguration"))
                                (:shape-name "UpdateDataSourceRequest"))

(smithy/sdk/shapes:define-output update-data-source-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDataSourceResponse"))

(smithy/sdk/shapes:define-input update-index-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "indexId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type application-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (capacity-configuration :target-type
                                  index-capacity-configuration :member-name
                                  "capacityConfiguration")
                                 (document-attribute-configurations
                                  :target-type
                                  document-attribute-configurations
                                  :member-name
                                  "documentAttributeConfigurations"))
                                (:shape-name "UpdateIndexRequest"))

(smithy/sdk/shapes:define-output update-index-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateIndexResponse"))

(smithy/sdk/shapes:define-input update-plugin-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (plugin-id :target-type plugin-id :required
                                  common-lisp:t :member-name "pluginId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type plugin-name
                                  :member-name "displayName")
                                 (state :target-type plugin-state :member-name
                                  "state")
                                 (server-url :target-type url :member-name
                                  "serverUrl")
                                 (custom-plugin-configuration :target-type
                                  custom-plugin-configuration :member-name
                                  "customPluginConfiguration")
                                 (auth-configuration :target-type
                                  plugin-auth-configuration :member-name
                                  "authConfiguration"))
                                (:shape-name "UpdatePluginRequest"))

(smithy/sdk/shapes:define-output update-plugin-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdatePluginResponse"))

(smithy/sdk/shapes:define-input update-retriever-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (retriever-id :target-type retriever-id
                                  :required common-lisp:t :member-name
                                  "retrieverId" :http-label common-lisp:t)
                                 (configuration :target-type
                                  retriever-configuration :member-name
                                  "configuration")
                                 (display-name :target-type retriever-name
                                  :member-name "displayName")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn"))
                                (:shape-name "UpdateRetrieverRequest"))

(smithy/sdk/shapes:define-output update-retriever-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRetrieverResponse"))

(smithy/sdk/shapes:define-input update-subscription-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (subscription-id :target-type subscription-id
                                  :required common-lisp:t :member-name
                                  "subscriptionId" :http-label common-lisp:t)
                                 (type :target-type subscription-type :required
                                  common-lisp:t :member-name "type"))
                                (:shape-name "UpdateSubscriptionRequest"))

(smithy/sdk/shapes:define-output update-subscription-response common-lisp:nil
                                 ((subscription-arn :target-type
                                   subscription-arn :member-name
                                   "subscriptionArn")
                                  (current-subscription :target-type
                                   subscription-details :member-name
                                   "currentSubscription")
                                  (next-subscription :target-type
                                   subscription-details :member-name
                                   "nextSubscription"))
                                 (:shape-name "UpdateSubscriptionResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "userId"
                                  :http-label common-lisp:t)
                                 (user-aliases-to-update :target-type
                                  user-aliases :member-name
                                  "userAliasesToUpdate")
                                 (user-aliases-to-delete :target-type
                                  user-aliases :member-name
                                  "userAliasesToDelete"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((user-aliases-added :target-type user-aliases
                                   :member-name "userAliasesAdded")
                                  (user-aliases-updated :target-type
                                   user-aliases :member-name
                                   "userAliasesUpdated")
                                  (user-aliases-deleted :target-type
                                   user-aliases :member-name
                                   "userAliasesDeleted"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-input update-web-experience-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (web-experience-id :target-type
                                  web-experience-id :required common-lisp:t
                                  :member-name "webExperienceId" :http-label
                                  common-lisp:t)
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (authentication-configuration :target-type
                                  web-experience-auth-configuration
                                  :member-name "authenticationConfiguration")
                                 (title :target-type web-experience-title
                                  :member-name "title")
                                 (subtitle :target-type web-experience-subtitle
                                  :member-name "subtitle")
                                 (welcome-message :target-type
                                  web-experience-welcome-message :member-name
                                  "welcomeMessage")
                                 (sample-prompts-control-mode :target-type
                                  web-experience-sample-prompts-control-mode
                                  :member-name "samplePromptsControlMode")
                                 (identity-provider-configuration :target-type
                                  identity-provider-configuration :member-name
                                  "identityProviderConfiguration")
                                 (origins :target-type web-experience-origins
                                  :member-name "origins")
                                 (browser-extension-configuration :target-type
                                  browser-extension-configuration :member-name
                                  "browserExtensionConfiguration")
                                 (customization-configuration :target-type
                                  customization-configuration :member-name
                                  "customizationConfiguration"))
                                (:shape-name "UpdateWebExperienceRequest"))

(smithy/sdk/shapes:define-output update-web-experience-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateWebExperienceResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-alias common-lisp:nil
                                    ((index-id :target-type index-id
                                      :member-name "indexId")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "dataSourceId")
                                     (user-id :target-type string :required
                                      common-lisp:t :member-name "userId"))
                                    (:shape-name "UserAlias"))

(smithy/sdk/shapes:define-list user-aliases :member user-alias)

(smithy/sdk/shapes:define-list user-groups :member string)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-ids :member string)

(smithy/sdk/shapes:define-type user-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure users-and-groups common-lisp:nil
                                    ((user-ids :target-type user-ids
                                      :member-name "userIds")
                                     (user-groups :target-type user-groups
                                      :member-name "userGroups"))
                                    (:shape-name "UsersAndGroups"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (fields :target-type
                                  validation-exception-fields :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-fields :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:unknown-operation "UNKNOWN_OPERATION"))

(smithy/sdk/shapes:define-structure video-extraction-configuration
                                    common-lisp:nil
                                    ((video-extraction-status :target-type
                                      video-extraction-status :required
                                      common-lisp:t :member-name
                                      "videoExtractionStatus"))
                                    (:shape-name
                                     "VideoExtractionConfiguration"))

(smithy/sdk/shapes:define-enum video-extraction-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum video-extraction-type
    common-lisp:nil
  (:transcript "TRANSCRIPT")
  (:summary "SUMMARY"))

(smithy/sdk/shapes:define-structure video-source-details common-lisp:nil
                                    ((media-id :target-type media-id
                                      :member-name "mediaId")
                                     (media-mime-type :target-type string
                                      :member-name "mediaMimeType")
                                     (start-time-milliseconds :target-type long
                                      :member-name "startTimeMilliseconds")
                                     (end-time-milliseconds :target-type long
                                      :member-name "endTimeMilliseconds")
                                     (video-extraction-type :target-type
                                      video-extraction-type :member-name
                                      "videoExtractionType"))
                                    (:shape-name "VideoSourceDetails"))

(smithy/sdk/shapes:define-structure web-experience common-lisp:nil
                                    ((web-experience-id :target-type
                                      web-experience-id :member-name
                                      "webExperienceId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (default-endpoint :target-type url
                                      :member-name "defaultEndpoint")
                                     (status :target-type web-experience-status
                                      :member-name "status"))
                                    (:shape-name "WebExperience"))

(smithy/sdk/shapes:define-type web-experience-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union web-experience-auth-configuration
                                common-lisp:nil
                                ((saml-configuration :target-type
                                  saml-configuration :member-name
                                  "samlConfiguration"))
                                (:shape-name "WebExperienceAuthConfiguration"))

(smithy/sdk/shapes:define-type web-experience-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list web-experience-origins :member origin)

common-lisp:nil

(smithy/sdk/shapes:define-enum web-experience-sample-prompts-control-mode
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum web-experience-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:pending-auth-config "PENDING_AUTH_CONFIG"))

(smithy/sdk/shapes:define-type web-experience-subtitle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-experience-title
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-experience-welcome-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list web-experiences :member web-experience)

(smithy/sdk/operation:define-operation associate-permission :shape-name
                                       "AssociatePermission" :input
                                       associate-permission-request :output
                                       associate-permission-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/policy")

(smithy/sdk/operation:define-operation batch-delete-document :shape-name
                                       "BatchDeleteDocument" :input
                                       batch-delete-document-request :output
                                       batch-delete-document-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices/{indexId}/documents/delete")

(smithy/sdk/operation:define-operation batch-put-document :shape-name
                                       "BatchPutDocument" :input
                                       batch-put-document-request :output
                                       batch-put-document-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices/{indexId}/documents")

(smithy/sdk/operation:define-operation cancel-subscription :shape-name
                                       "CancelSubscription" :input
                                       cancel-subscription-request :output
                                       cancel-subscription-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/subscriptions/{subscriptionId}")

(smithy/sdk/operation:define-operation chat :shape-name "Chat" :input
                                       chat-input :output chat-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        external-resource-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/conversations")

(smithy/sdk/operation:define-operation chat-sync :shape-name "ChatSync" :input
                                       chat-sync-input :output chat-sync-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        external-resource-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/conversations?sync")

(smithy/sdk/operation:define-operation check-document-access :shape-name
                                       "CheckDocumentAccess" :input
                                       check-document-access-request :output
                                       check-document-access-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access")

(smithy/sdk/operation:define-operation create-anonymous-web-experience-url
                                       :shape-name
                                       "CreateAnonymousWebExperienceUrl" :input
                                       create-anonymous-web-experience-url-request
                                       :output
                                       create-anonymous-web-experience-url-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url")

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/applications")

(smithy/sdk/operation:define-operation create-chat-response-configuration
                                       :shape-name
                                       "CreateChatResponseConfiguration" :input
                                       create-chat-response-configuration-request
                                       :output
                                       create-chat-response-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/chatresponseconfigurations")

(smithy/sdk/operation:define-operation create-data-accessor :shape-name
                                       "CreateDataAccessor" :input
                                       create-data-accessor-request :output
                                       create-data-accessor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/dataaccessors")

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
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices/{indexId}/datasources")

(smithy/sdk/operation:define-operation create-index :shape-name "CreateIndex"
                                       :input create-index-request :output
                                       create-index-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices")

(smithy/sdk/operation:define-operation create-plugin :shape-name "CreatePlugin"
                                       :input create-plugin-request :output
                                       create-plugin-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/plugins")

(smithy/sdk/operation:define-operation create-retriever :shape-name
                                       "CreateRetriever" :input
                                       create-retriever-request :output
                                       create-retriever-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/retrievers")

(smithy/sdk/operation:define-operation create-subscription :shape-name
                                       "CreateSubscription" :input
                                       create-subscription-request :output
                                       create-subscription-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/subscriptions")

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/users")

(smithy/sdk/operation:define-operation create-web-experience :shape-name
                                       "CreateWebExperience" :input
                                       create-web-experience-request :output
                                       create-web-experience-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/experiences")

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}")

(smithy/sdk/operation:define-operation delete-attachment :shape-name
                                       "DeleteAttachment" :input
                                       delete-attachment-request :output
                                       delete-attachment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}")

(smithy/sdk/operation:define-operation delete-chat-controls-configuration
                                       :shape-name
                                       "DeleteChatControlsConfiguration" :input
                                       delete-chat-controls-configuration-request
                                       :output
                                       delete-chat-controls-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/chatcontrols"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-chat-response-configuration
                                       :shape-name
                                       "DeleteChatResponseConfiguration" :input
                                       delete-chat-response-configuration-request
                                       :output
                                       delete-chat-response-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}")

(smithy/sdk/operation:define-operation delete-conversation :shape-name
                                       "DeleteConversation" :input
                                       delete-conversation-request :output
                                       delete-conversation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/conversations/{conversationId}")

(smithy/sdk/operation:define-operation delete-data-accessor :shape-name
                                       "DeleteDataAccessor" :input
                                       delete-data-accessor-request :output
                                       delete-data-accessor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/dataaccessors/{dataAccessorId}")

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
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}")

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/indices/{indexId}/groups/{groupName}")

(smithy/sdk/operation:define-operation delete-index :shape-name "DeleteIndex"
                                       :input delete-index-request :output
                                       delete-index-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/indices/{indexId}")

(smithy/sdk/operation:define-operation delete-plugin :shape-name "DeletePlugin"
                                       :input delete-plugin-request :output
                                       delete-plugin-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/plugins/{pluginId}")

(smithy/sdk/operation:define-operation delete-retriever :shape-name
                                       "DeleteRetriever" :input
                                       delete-retriever-request :output
                                       delete-retriever-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/retrievers/{retrieverId}")

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/users/{userId}")

(smithy/sdk/operation:define-operation delete-web-experience :shape-name
                                       "DeleteWebExperience" :input
                                       delete-web-experience-request :output
                                       delete-web-experience-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/experiences/{webExperienceId}")

(smithy/sdk/operation:define-operation disassociate-permission :shape-name
                                       "DisassociatePermission" :input
                                       disassociate-permission-request :output
                                       disassociate-permission-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/policy/{statementId}")

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}")

(smithy/sdk/operation:define-operation get-chat-controls-configuration
                                       :shape-name
                                       "GetChatControlsConfiguration" :input
                                       get-chat-controls-configuration-request
                                       :output
                                       get-chat-controls-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/chatcontrols"
                                       :code 200)

(smithy/sdk/operation:define-operation get-chat-response-configuration
                                       :shape-name
                                       "GetChatResponseConfiguration" :input
                                       get-chat-response-configuration-request
                                       :output
                                       get-chat-response-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}")

(smithy/sdk/operation:define-operation get-data-accessor :shape-name
                                       "GetDataAccessor" :input
                                       get-data-accessor-request :output
                                       get-data-accessor-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataaccessors/{dataAccessorId}")

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
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}")

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices/{indexId}/groups/{groupName}")

(smithy/sdk/operation:define-operation get-index :shape-name "GetIndex" :input
                                       get-index-request :output
                                       get-index-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices/{indexId}")

(smithy/sdk/operation:define-operation get-media :shape-name "GetMedia" :input
                                       get-media-request :output
                                       get-media-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        media-too-large-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}")

(smithy/sdk/operation:define-operation get-plugin :shape-name "GetPlugin"
                                       :input get-plugin-request :output
                                       get-plugin-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/plugins/{pluginId}")

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/policy")

(smithy/sdk/operation:define-operation get-retriever :shape-name "GetRetriever"
                                       :input get-retriever-request :output
                                       get-retriever-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/retrievers/{retrieverId}")

(smithy/sdk/operation:define-operation get-user :shape-name "GetUser" :input
                                       get-user-request :output
                                       get-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/users/{userId}")

(smithy/sdk/operation:define-operation get-web-experience :shape-name
                                       "GetWebExperience" :input
                                       get-web-experience-request :output
                                       get-web-experience-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/experiences/{webExperienceId}")

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/applications")

(smithy/sdk/operation:define-operation list-attachments :shape-name
                                       "ListAttachments" :input
                                       list-attachments-request :output
                                       list-attachments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/attachments")

(smithy/sdk/operation:define-operation list-chat-response-configurations
                                       :shape-name
                                       "ListChatResponseConfigurations" :input
                                       list-chat-response-configurations-request
                                       :output
                                       list-chat-response-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/chatresponseconfigurations")

(smithy/sdk/operation:define-operation list-conversations :shape-name
                                       "ListConversations" :input
                                       list-conversations-request :output
                                       list-conversations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/conversations")

(smithy/sdk/operation:define-operation list-data-accessors :shape-name
                                       "ListDataAccessors" :input
                                       list-data-accessors-request :output
                                       list-data-accessors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataaccessors")

(smithy/sdk/operation:define-operation list-data-source-sync-jobs :shape-name
                                       "ListDataSourceSyncJobs" :input
                                       list-data-source-sync-jobs-request
                                       :output
                                       list-data-source-sync-jobs-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs")

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-request :output
                                       list-data-sources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices/{indexId}/datasources")

(smithy/sdk/operation:define-operation list-documents :shape-name
                                       "ListDocuments" :input
                                       list-documents-request :output
                                       list-documents-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/index/{indexId}/documents")

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices/{indexId}/groups")

(smithy/sdk/operation:define-operation list-indices :shape-name "ListIndices"
                                       :input list-indices-request :output
                                       list-indices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/indices")

(smithy/sdk/operation:define-operation list-messages :shape-name "ListMessages"
                                       :input list-messages-request :output
                                       list-messages-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/conversations/{conversationId}")

(smithy/sdk/operation:define-operation list-plugin-actions :shape-name
                                       "ListPluginActions" :input
                                       list-plugin-actions-request :output
                                       list-plugin-actions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/plugins/{pluginId}/actions")

(smithy/sdk/operation:define-operation list-plugin-type-actions :shape-name
                                       "ListPluginTypeActions" :input
                                       list-plugin-type-actions-request :output
                                       list-plugin-type-actions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/pluginTypes/{pluginType}/actions")

(smithy/sdk/operation:define-operation list-plugin-type-metadata :shape-name
                                       "ListPluginTypeMetadata" :input
                                       list-plugin-type-metadata-request
                                       :output
                                       list-plugin-type-metadata-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/pluginTypeMetadata")

(smithy/sdk/operation:define-operation list-plugins :shape-name "ListPlugins"
                                       :input list-plugins-request :output
                                       list-plugins-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/plugins")

(smithy/sdk/operation:define-operation list-retrievers :shape-name
                                       "ListRetrievers" :input
                                       list-retrievers-request :output
                                       list-retrievers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/retrievers")

(smithy/sdk/operation:define-operation list-subscriptions :shape-name
                                       "ListSubscriptions" :input
                                       list-subscriptions-request :output
                                       list-subscriptions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/subscriptions")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceARN}")

(smithy/sdk/operation:define-operation list-web-experiences :shape-name
                                       "ListWebExperiences" :input
                                       list-web-experiences-request :output
                                       list-web-experiences-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/experiences")

(smithy/sdk/operation:define-operation put-feedback :shape-name "PutFeedback"
                                       :input put-feedback-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback")

(smithy/sdk/operation:define-operation put-group :shape-name "PutGroup" :input
                                       put-group-request :output
                                       put-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/indices/{indexId}/groups")

(smithy/sdk/operation:define-operation search-relevant-content :shape-name
                                       "SearchRelevantContent" :input
                                       search-relevant-content-request :output
                                       search-relevant-content-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        license-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/relevant-content")

(smithy/sdk/operation:define-operation start-data-source-sync-job :shape-name
                                       "StartDataSourceSyncJob" :input
                                       start-data-source-sync-job-request
                                       :output
                                       start-data-source-sync-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync")

(smithy/sdk/operation:define-operation stop-data-source-sync-job :shape-name
                                       "StopDataSourceSyncJob" :input
                                       stop-data-source-sync-job-request
                                       :output
                                       stop-data-source-sync-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceARN}")

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
                                       "/v1/tags/{resourceARN}")

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}")

(smithy/sdk/operation:define-operation update-chat-controls-configuration
                                       :shape-name
                                       "UpdateChatControlsConfiguration" :input
                                       update-chat-controls-configuration-request
                                       :output
                                       update-chat-controls-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{applicationId}/chatcontrols"
                                       :code 200)

(smithy/sdk/operation:define-operation update-chat-response-configuration
                                       :shape-name
                                       "UpdateChatResponseConfiguration" :input
                                       update-chat-response-configuration-request
                                       :output
                                       update-chat-response-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}")

(smithy/sdk/operation:define-operation update-data-accessor :shape-name
                                       "UpdateDataAccessor" :input
                                       update-data-accessor-request :output
                                       update-data-accessor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/dataaccessors/{dataAccessorId}")

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
                                       "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}")

(smithy/sdk/operation:define-operation update-index :shape-name "UpdateIndex"
                                       :input update-index-request :output
                                       update-index-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/indices/{indexId}")

(smithy/sdk/operation:define-operation update-plugin :shape-name "UpdatePlugin"
                                       :input update-plugin-request :output
                                       update-plugin-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/plugins/{pluginId}")

(smithy/sdk/operation:define-operation update-retriever :shape-name
                                       "UpdateRetriever" :input
                                       update-retriever-request :output
                                       update-retriever-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/retrievers/{retrieverId}")

(smithy/sdk/operation:define-operation update-subscription :shape-name
                                       "UpdateSubscription" :input
                                       update-subscription-request :output
                                       update-subscription-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/subscriptions/{subscriptionId}")

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/users/{userId}")

(smithy/sdk/operation:define-operation update-web-experience :shape-name
                                       "UpdateWebExperience" :input
                                       update-web-experience-request :output
                                       update-web-experience-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{applicationId}/experiences/{webExperienceId}")
