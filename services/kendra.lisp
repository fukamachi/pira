(uiop/package:define-package #:pira/kendra (:use)
                             (:export #:awskendra-frontend-service
                              #:access-control-configuration-id
                              #:access-control-configuration-name
                              #:access-control-configuration-summary
                              #:access-control-configuration-summary-list
                              #:access-control-list-configuration
                              #:acl-configuration #:additional-result-attribute
                              #:additional-result-attribute-list
                              #:additional-result-attribute-value
                              #:additional-result-attribute-value-type
                              #:alfresco-configuration #:alfresco-entity
                              #:amazon-resource-name
                              #:associate-entities-to-experience
                              #:associate-entities-to-experience-failed-entity-list
                              #:associate-entity-list
                              #:associate-personas-to-entities
                              #:attribute-filter #:attribute-filter-list
                              #:attribute-suggestions-describe-config
                              #:attribute-suggestions-get-config
                              #:attribute-suggestions-mode
                              #:attribute-suggestions-update-config
                              #:authentication-configuration
                              #:basic-authentication-configuration
                              #:basic-authentication-configuration-list
                              #:batch-delete-document
                              #:batch-delete-document-response-failed-document
                              #:batch-delete-document-response-failed-documents
                              #:batch-delete-featured-results-set
                              #:batch-delete-featured-results-set-error
                              #:batch-delete-featured-results-set-errors
                              #:batch-get-document-status
                              #:batch-get-document-status-response-error
                              #:batch-get-document-status-response-errors
                              #:batch-put-document
                              #:batch-put-document-response-failed-document
                              #:batch-put-document-response-failed-documents
                              #:blob #:boolean #:box-configuration
                              #:capacity-units-configuration
                              #:change-detecting-columns #:claim-regex
                              #:clear-query-suggestions #:click-feedback
                              #:click-feedback-list #:client-token-name
                              #:collapse-configuration
                              #:collapsed-result-detail #:column-configuration
                              #:column-name #:condition-operator
                              #:conflicting-item #:conflicting-items
                              #:confluence-attachment-configuration
                              #:confluence-attachment-field-mappings-list
                              #:confluence-attachment-field-name
                              #:confluence-attachment-to-index-field-mapping
                              #:confluence-authentication-type
                              #:confluence-blog-configuration
                              #:confluence-blog-field-mappings-list
                              #:confluence-blog-field-name
                              #:confluence-blog-to-index-field-mapping
                              #:confluence-configuration
                              #:confluence-page-configuration
                              #:confluence-page-field-mappings-list
                              #:confluence-page-field-name
                              #:confluence-page-to-index-field-mapping
                              #:confluence-space-configuration
                              #:confluence-space-field-mappings-list
                              #:confluence-space-field-name
                              #:confluence-space-identifier
                              #:confluence-space-list
                              #:confluence-space-to-index-field-mapping
                              #:confluence-version #:connection-configuration
                              #:content #:content-source-configuration
                              #:content-type #:correction #:correction-list
                              #:crawl-depth
                              #:create-access-control-configuration
                              #:create-data-source #:create-experience
                              #:create-faq #:create-featured-results-set
                              #:create-index
                              #:create-query-suggestions-block-list
                              #:create-thesaurus
                              #:custom-document-enrichment-configuration
                              #:data-source-configuration
                              #:data-source-date-field-format
                              #:data-source-field-name #:data-source-group
                              #:data-source-groups #:data-source-id
                              #:data-source-id-list
                              #:data-source-inclusions-exclusions-strings
                              #:data-source-inclusions-exclusions-strings-member
                              #:data-source-name #:data-source-status
                              #:data-source-summary #:data-source-summary-list
                              #:data-source-sync-job
                              #:data-source-sync-job-history-list
                              #:data-source-sync-job-id
                              #:data-source-sync-job-metric-target
                              #:data-source-sync-job-metrics
                              #:data-source-sync-job-status
                              #:data-source-to-index-field-mapping
                              #:data-source-to-index-field-mapping-list
                              #:data-source-type
                              #:data-source-vpc-configuration
                              #:database-configuration #:database-engine-type
                              #:database-host #:database-name #:database-port
                              #:delete-access-control-configuration
                              #:delete-data-source #:delete-experience
                              #:delete-faq #:delete-index
                              #:delete-principal-mapping
                              #:delete-query-suggestions-block-list
                              #:delete-thesaurus
                              #:describe-access-control-configuration
                              #:describe-data-source #:describe-experience
                              #:describe-faq #:describe-featured-results-set
                              #:describe-index #:describe-principal-mapping
                              #:describe-query-suggestions-block-list
                              #:describe-query-suggestions-config
                              #:describe-thesaurus #:description
                              #:disassociate-entities-from-experience
                              #:disassociate-entity-list
                              #:disassociate-personas-from-entities #:document
                              #:document-attribute
                              #:document-attribute-condition
                              #:document-attribute-key
                              #:document-attribute-key-list
                              #:document-attribute-list
                              #:document-attribute-string-list-value
                              #:document-attribute-string-value
                              #:document-attribute-target
                              #:document-attribute-value
                              #:document-attribute-value-count-pair
                              #:document-attribute-value-count-pair-list
                              #:document-attribute-value-type #:document-id
                              #:document-id-list #:document-info
                              #:document-info-list #:document-list
                              #:document-metadata-boolean
                              #:document-metadata-configuration
                              #:document-metadata-configuration-list
                              #:document-metadata-configuration-name
                              #:document-relevance-configuration
                              #:document-relevance-override-configuration-list
                              #:document-status #:document-status-list
                              #:document-title
                              #:documents-metadata-configuration #:domain
                              #:duration #:endpoint #:endpoint-type
                              #:enterprise-id #:entity-configuration
                              #:entity-display-data #:entity-filter #:entity-id
                              #:entity-ids-list #:entity-persona-configuration
                              #:entity-persona-configuration-list #:entity-type
                              #:error-code #:error-message
                              #:exclude-mime-types-list
                              #:exclude-shared-drives-list
                              #:exclude-user-accounts-list
                              #:expand-configuration #:expanded-result-item
                              #:expanded-result-list #:experience-configuration
                              #:experience-endpoint #:experience-endpoints
                              #:experience-entities-summary
                              #:experience-entities-summary-list
                              #:experience-id #:experience-name
                              #:experience-status #:experiences-summary
                              #:experiences-summary-list #:facet #:facet-list
                              #:facet-result #:facet-result-list
                              #:failed-entity #:failed-entity-list
                              #:failure-reason #:faq-file-format #:faq-id
                              #:faq-ids-list #:faq-name #:faq-statistics
                              #:faq-status #:faq-summary #:faq-summary-items
                              #:featured-document #:featured-document-list
                              #:featured-document-missing
                              #:featured-document-missing-list
                              #:featured-document-with-metadata
                              #:featured-document-with-metadata-list
                              #:featured-results-item
                              #:featured-results-item-list
                              #:featured-results-set
                              #:featured-results-set-description
                              #:featured-results-set-id
                              #:featured-results-set-id-list
                              #:featured-results-set-name
                              #:featured-results-set-status
                              #:featured-results-set-summary
                              #:featured-results-set-summary-items
                              #:feedback-token #:file-system-id #:folder-id
                              #:folder-id-list #:fsx-configuration
                              #:fsx-file-system-type #:get-query-suggestions
                              #:get-snapshots #:git-hub-configuration
                              #:git-hub-document-crawl-properties
                              #:google-drive-configuration
                              #:group-attribute-field #:group-id
                              #:group-members #:group-ordering-id-summaries
                              #:group-ordering-id-summary #:group-summary
                              #:groups #:hierarchical-principal
                              #:hierarchical-principal-list #:highlight
                              #:highlight-list #:highlight-type
                              #:hook-configuration #:host
                              #:identity-attribute-name #:importance
                              #:index-configuration-summary
                              #:index-configuration-summary-list
                              #:index-edition #:index-field-name #:index-id
                              #:index-name #:index-statistics #:index-status
                              #:indexed-question-answers-count
                              #:indexed-text-bytes
                              #:indexed-text-documents-count
                              #:inline-custom-document-enrichment-configuration
                              #:inline-custom-document-enrichment-configuration-list
                              #:integer #:interval #:issue-sub-entity
                              #:issue-sub-entity-filter #:issue-type #:issuer
                              #:jira-account-url #:jira-configuration
                              #:jira-status #:json-token-type-configuration
                              #:jwt-token-type-configuration #:key-location
                              #:kms-key-id #:lambda-arn #:language-code
                              #:list-access-control-configurations
                              #:list-data-source-sync-jobs #:list-data-sources
                              #:list-entity-personas #:list-experience-entities
                              #:list-experiences #:list-faqs
                              #:list-featured-results-sets
                              #:list-groups-older-than-ordering-id
                              #:list-indices #:list-of-group-summaries
                              #:list-query-suggestions-block-lists
                              #:list-tags-for-resource #:list-thesauri #:long
                              #:look-back-period
                              #:max-content-size-per-page-in-mega-bytes
                              #:max-links-per-page
                              #:max-results-integer-for-list-access-control-configurations-request
                              #:max-results-integer-for-list-data-source-sync-jobs-request
                              #:max-results-integer-for-list-data-sources-request
                              #:max-results-integer-for-list-entity-personas-request
                              #:max-results-integer-for-list-experiences-request
                              #:max-results-integer-for-list-faqs-request
                              #:max-results-integer-for-list-featured-results-sets-request
                              #:max-results-integer-for-list-indices-request
                              #:max-results-integer-for-list-principals-request
                              #:max-results-integer-for-list-query-suggestions-block-lists
                              #:max-results-integer-for-list-thesauri-request
                              #:max-urls-per-minute-crawl-rate #:member-group
                              #:member-groups #:member-user #:member-users
                              #:metric-type #:metric-value #:mime-type
                              #:minimum-number-of-querying-users
                              #:minimum-query-count
                              #:missing-attribute-key-strategy #:mode
                              #:name-type #:next-token #:object-boolean
                              #:on-premise-configuration
                              #:one-drive-configuration #:one-drive-user
                              #:one-drive-user-list #:one-drive-users #:order
                              #:organization-id #:organization-name #:persona
                              #:personas-summary #:personas-summary-list #:port
                              #:principal #:principal-list
                              #:principal-mapping-status #:principal-name
                              #:principal-ordering-id #:principal-type
                              #:private-channel-filter #:project
                              #:proxy-configuration #:public-channel-filter
                              #:put-principal-mapping #:query
                              #:query-capacity-unit #:query-id
                              #:query-identifiers-enclosing-option
                              #:query-result-format #:query-result-item
                              #:query-result-item-list #:query-result-type
                              #:query-suggestions-block-list-id
                              #:query-suggestions-block-list-name
                              #:query-suggestions-block-list-status
                              #:query-suggestions-block-list-summary
                              #:query-suggestions-block-list-summary-items
                              #:query-suggestions-id #:query-suggestions-status
                              #:query-text #:query-text-list
                              #:quip-configuration #:read-access-type
                              #:relevance #:relevance-feedback
                              #:relevance-feedback-list #:relevance-type
                              #:repository-name #:repository-names #:result-id
                              #:retrieve #:retrieve-result-item
                              #:retrieve-result-item-list #:role-arn
                              #:s3bucket-name #:s3data-source-configuration
                              #:s3object-key #:s3path #:saa-sconfiguration
                              #:salesforce-chatter-feed-configuration
                              #:salesforce-chatter-feed-include-filter-type
                              #:salesforce-chatter-feed-include-filter-types
                              #:salesforce-configuration
                              #:salesforce-custom-knowledge-article-type-configuration
                              #:salesforce-custom-knowledge-article-type-configuration-list
                              #:salesforce-custom-knowledge-article-type-name
                              #:salesforce-knowledge-article-configuration
                              #:salesforce-knowledge-article-state
                              #:salesforce-knowledge-article-state-list
                              #:salesforce-standard-knowledge-article-type-configuration
                              #:salesforce-standard-object-attachment-configuration
                              #:salesforce-standard-object-configuration
                              #:salesforce-standard-object-configuration-list
                              #:salesforce-standard-object-name #:scan-schedule
                              #:score-attributes #:score-confidence #:search
                              #:secret-arn #:security-group-id-list #:seed-url
                              #:seed-url-configuration #:seed-url-list
                              #:server-side-encryption-configuration
                              #:service-now-authentication-type
                              #:service-now-build-version-type
                              #:service-now-configuration
                              #:service-now-host-url
                              #:service-now-knowledge-article-configuration
                              #:service-now-knowledge-article-filter-query
                              #:service-now-service-catalog-configuration
                              #:share-point-configuration
                              #:share-point-online-authentication-type
                              #:share-point-url-list #:share-point-version
                              #:shared-drive-id #:since-crawl-date #:site-id
                              #:site-map #:site-maps-configuration
                              #:site-maps-list #:site-url #:slack-configuration
                              #:slack-entity #:slack-entity-list
                              #:snapshots-data-header-fields
                              #:snapshots-data-record #:snapshots-data-records
                              #:sort-order #:sorting-configuration
                              #:sorting-configuration-list #:source-document
                              #:source-documents #:spell-corrected-query
                              #:spell-corrected-query-list
                              #:spell-correction-configuration
                              #:sql-configuration #:start-data-source-sync-job
                              #:status #:stop-data-source-sync-job
                              #:storage-capacity-unit #:string #:string-list
                              #:submit-feedback #:subnet-id #:subnet-id-list
                              #:suggestable-config #:suggestable-config-list
                              #:suggested-query-text #:suggestion
                              #:suggestion-highlight
                              #:suggestion-highlight-list #:suggestion-list
                              #:suggestion-query-text
                              #:suggestion-text-with-highlights
                              #:suggestion-type #:suggestion-types
                              #:suggestion-value #:table-cell #:table-cell-list
                              #:table-excerpt #:table-name #:table-row
                              #:table-row-list #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value #:team-id
                              #:template #:template-configuration
                              #:tenant-domain #:text-document-statistics
                              #:text-with-highlights #:thesaurus-id
                              #:thesaurus-name #:thesaurus-status
                              #:thesaurus-summary #:thesaurus-summary-items
                              #:time-range #:timestamp #:title #:token
                              #:top-document-attribute-value-count-pairs-size
                              #:type #:untag-resource
                              #:update-access-control-configuration
                              #:update-data-source #:update-experience
                              #:update-featured-results-set #:update-index
                              #:update-query-suggestions-block-list
                              #:update-query-suggestions-config
                              #:update-thesaurus #:url #:urls #:user-account
                              #:user-context #:user-context-policy
                              #:user-group-resolution-configuration
                              #:user-group-resolution-mode #:user-id
                              #:user-identity-configuration
                              #:user-name-attribute-field
                              #:user-token-configuration
                              #:user-token-configuration-list
                              #:value-importance-map #:value-importance-map-key
                              #:visitor-id #:vpc-security-group-id #:warning
                              #:warning-code #:warning-list #:warning-message
                              #:web-crawler-configuration #:web-crawler-mode
                              #:work-docs-configuration))
(common-lisp:in-package #:pira/kendra)

(smithy/sdk/service:define-service awskendra-frontend-service :shape-name
                                   "AWSKendraFrontendService" :version
                                   "2019-02-03" :title
                                   "AWSKendraFrontendService" :operations
                                   '(associate-entities-to-experience
                                     associate-personas-to-entities
                                     batch-delete-document
                                     batch-delete-featured-results-set
                                     batch-get-document-status
                                     batch-put-document clear-query-suggestions
                                     create-access-control-configuration
                                     create-data-source create-experience
                                     create-faq create-featured-results-set
                                     create-index
                                     create-query-suggestions-block-list
                                     create-thesaurus
                                     delete-access-control-configuration
                                     delete-data-source delete-experience
                                     delete-faq delete-index
                                     delete-principal-mapping
                                     delete-query-suggestions-block-list
                                     delete-thesaurus
                                     describe-access-control-configuration
                                     describe-data-source describe-experience
                                     describe-faq describe-featured-results-set
                                     describe-index describe-principal-mapping
                                     describe-query-suggestions-block-list
                                     describe-query-suggestions-config
                                     describe-thesaurus
                                     disassociate-entities-from-experience
                                     disassociate-personas-from-entities
                                     get-query-suggestions get-snapshots
                                     list-access-control-configurations
                                     list-data-sources
                                     list-data-source-sync-jobs
                                     list-entity-personas
                                     list-experience-entities list-experiences
                                     list-faqs list-featured-results-sets
                                     list-groups-older-than-ordering-id
                                     list-indices
                                     list-query-suggestions-block-lists
                                     list-tags-for-resource list-thesauri
                                     put-principal-mapping query retrieve
                                     start-data-source-sync-job
                                     stop-data-source-sync-job submit-feedback
                                     tag-resource untag-resource
                                     update-access-control-configuration
                                     update-data-source update-experience
                                     update-featured-results-set update-index
                                     update-query-suggestions-block-list
                                     update-query-suggestions-config
                                     update-thesaurus)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "kendra")
                                      ("arnNamespace" . "kendra")
                                      ("cloudFormationName" . "Kendra")
                                      ("cloudTrailEventSource"
                                       . "kendra.amazonaws.com")
                                      ("endpointPrefix" . "kendra"))
                                     ("aws.auth#sigv4" ("name" . "kendra"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type access-control-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-control-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-control-configuration-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      access-control-configuration-id :required
                                      common-lisp:t :member-name "Id"))
                                    (:shape-name
                                     "AccessControlConfigurationSummary"))

(smithy/sdk/shapes:define-list access-control-configuration-summary-list
                               :member access-control-configuration-summary)

(smithy/sdk/shapes:define-structure access-control-list-configuration
                                    common-lisp:nil
                                    ((key-path :target-type s3object-key
                                      :member-name "KeyPath"))
                                    (:shape-name
                                     "AccessControlListConfiguration"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure acl-configuration common-lisp:nil
                                    ((allowed-groups-column-name :target-type
                                      column-name :required common-lisp:t
                                      :member-name "AllowedGroupsColumnName"))
                                    (:shape-name "AclConfiguration"))

(smithy/sdk/shapes:define-structure additional-result-attribute common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (value-type :target-type
                                      additional-result-attribute-value-type
                                      :required common-lisp:t :member-name
                                      "ValueType")
                                     (value :target-type
                                      additional-result-attribute-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "AdditionalResultAttribute"))

(smithy/sdk/shapes:define-list additional-result-attribute-list :member
                               additional-result-attribute)

(smithy/sdk/shapes:define-structure additional-result-attribute-value
                                    common-lisp:nil
                                    ((text-with-highlights-value :target-type
                                      text-with-highlights :member-name
                                      "TextWithHighlightsValue"))
                                    (:shape-name
                                     "AdditionalResultAttributeValue"))

(smithy/sdk/shapes:define-enum additional-result-attribute-value-type
    common-lisp:nil
  (:text-with-highlights-value "TEXT_WITH_HIGHLIGHTS_VALUE"))

(smithy/sdk/shapes:define-structure alfresco-configuration common-lisp:nil
                                    ((site-url :target-type site-url :required
                                      common-lisp:t :member-name "SiteUrl")
                                     (site-id :target-type site-id :required
                                      common-lisp:t :member-name "SiteId")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (ssl-certificate-s3path :target-type
                                      s3path :required common-lisp:t
                                      :member-name "SslCertificateS3Path")
                                     (crawl-system-folders :target-type boolean
                                      :member-name "CrawlSystemFolders")
                                     (crawl-comments :target-type boolean
                                      :member-name "CrawlComments")
                                     (entity-filter :target-type entity-filter
                                      :member-name "EntityFilter")
                                     (document-library-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "DocumentLibraryFieldMappings")
                                     (blog-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "BlogFieldMappings")
                                     (wiki-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "WikiFieldMappings")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration"))
                                    (:shape-name "AlfrescoConfiguration"))

(smithy/sdk/shapes:define-enum alfresco-entity
    common-lisp:nil
  (:wiki "wiki")
  (:blog "blog")
  (:document-library "documentLibrary"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 associate-entities-to-experience-failed-entity-list :member failed-entity)

(smithy/sdk/shapes:define-input associate-entities-to-experience-request
                                common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (entity-list :target-type
                                  associate-entity-list :required common-lisp:t
                                  :member-name "EntityList"))
                                (:shape-name
                                 "AssociateEntitiesToExperienceRequest"))

(smithy/sdk/shapes:define-output associate-entities-to-experience-response
                                 common-lisp:nil
                                 ((failed-entity-list :target-type
                                   associate-entities-to-experience-failed-entity-list
                                   :member-name "FailedEntityList"))
                                 (:shape-name
                                  "AssociateEntitiesToExperienceResponse"))

(smithy/sdk/shapes:define-list associate-entity-list :member
                               entity-configuration)

(smithy/sdk/shapes:define-input associate-personas-to-entities-request
                                common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (personas :target-type
                                  entity-persona-configuration-list :required
                                  common-lisp:t :member-name "Personas"))
                                (:shape-name
                                 "AssociatePersonasToEntitiesRequest"))

(smithy/sdk/shapes:define-output associate-personas-to-entities-response
                                 common-lisp:nil
                                 ((failed-entity-list :target-type
                                   failed-entity-list :member-name
                                   "FailedEntityList"))
                                 (:shape-name
                                  "AssociatePersonasToEntitiesResponse"))

(smithy/sdk/shapes:define-structure attribute-filter common-lisp:nil
                                    ((and-all-filters :target-type
                                      attribute-filter-list :member-name
                                      "AndAllFilters")
                                     (or-all-filters :target-type
                                      attribute-filter-list :member-name
                                      "OrAllFilters")
                                     (not-filter :target-type attribute-filter
                                      :member-name "NotFilter")
                                     (equals-to :target-type document-attribute
                                      :member-name "EqualsTo")
                                     (contains-all :target-type
                                      document-attribute :member-name
                                      "ContainsAll")
                                     (contains-any :target-type
                                      document-attribute :member-name
                                      "ContainsAny")
                                     (greater-than :target-type
                                      document-attribute :member-name
                                      "GreaterThan")
                                     (greater-than-or-equals :target-type
                                      document-attribute :member-name
                                      "GreaterThanOrEquals")
                                     (less-than :target-type document-attribute
                                      :member-name "LessThan")
                                     (less-than-or-equals :target-type
                                      document-attribute :member-name
                                      "LessThanOrEquals"))
                                    (:shape-name "AttributeFilter"))

(smithy/sdk/shapes:define-list attribute-filter-list :member attribute-filter)

(smithy/sdk/shapes:define-structure attribute-suggestions-describe-config
                                    common-lisp:nil
                                    ((suggestable-config-list :target-type
                                      suggestable-config-list :member-name
                                      "SuggestableConfigList")
                                     (attribute-suggestions-mode :target-type
                                      attribute-suggestions-mode :member-name
                                      "AttributeSuggestionsMode"))
                                    (:shape-name
                                     "AttributeSuggestionsDescribeConfig"))

(smithy/sdk/shapes:define-structure attribute-suggestions-get-config
                                    common-lisp:nil
                                    ((suggestion-attributes :target-type
                                      document-attribute-key-list :member-name
                                      "SuggestionAttributes")
                                     (additional-response-attributes
                                      :target-type document-attribute-key-list
                                      :member-name
                                      "AdditionalResponseAttributes")
                                     (attribute-filter :target-type
                                      attribute-filter :member-name
                                      "AttributeFilter")
                                     (user-context :target-type user-context
                                      :member-name "UserContext"))
                                    (:shape-name
                                     "AttributeSuggestionsGetConfig"))

(smithy/sdk/shapes:define-enum attribute-suggestions-mode
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure attribute-suggestions-update-config
                                    common-lisp:nil
                                    ((suggestable-config-list :target-type
                                      suggestable-config-list :member-name
                                      "SuggestableConfigList")
                                     (attribute-suggestions-mode :target-type
                                      attribute-suggestions-mode :member-name
                                      "AttributeSuggestionsMode"))
                                    (:shape-name
                                     "AttributeSuggestionsUpdateConfig"))

(smithy/sdk/shapes:define-structure authentication-configuration
                                    common-lisp:nil
                                    ((basic-authentication :target-type
                                      basic-authentication-configuration-list
                                      :member-name "BasicAuthentication"))
                                    (:shape-name "AuthenticationConfiguration"))

(smithy/sdk/shapes:define-structure basic-authentication-configuration
                                    common-lisp:nil
                                    ((host :target-type host :required
                                      common-lisp:t :member-name "Host")
                                     (port :target-type port :required
                                      common-lisp:t :member-name "Port")
                                     (credentials :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "Credentials"))
                                    (:shape-name
                                     "BasicAuthenticationConfiguration"))

(smithy/sdk/shapes:define-list basic-authentication-configuration-list :member
                               basic-authentication-configuration)

(smithy/sdk/shapes:define-input batch-delete-document-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (document-id-list :target-type
                                  document-id-list :required common-lisp:t
                                  :member-name "DocumentIdList")
                                 (data-source-sync-job-metric-target
                                  :target-type
                                  data-source-sync-job-metric-target
                                  :member-name
                                  "DataSourceSyncJobMetricTarget"))
                                (:shape-name "BatchDeleteDocumentRequest"))

(smithy/sdk/shapes:define-output batch-delete-document-response common-lisp:nil
                                 ((failed-documents :target-type
                                   batch-delete-document-response-failed-documents
                                   :member-name "FailedDocuments"))
                                 (:shape-name "BatchDeleteDocumentResponse"))

(smithy/sdk/shapes:define-structure
 batch-delete-document-response-failed-document common-lisp:nil
 ((id :target-type document-id :member-name "Id")
  (data-source-id :target-type data-source-id :member-name "DataSourceId")
  (error-code :target-type error-code :member-name "ErrorCode")
  (error-message :target-type error-message :member-name "ErrorMessage"))
 (:shape-name "BatchDeleteDocumentResponseFailedDocument"))

(smithy/sdk/shapes:define-list batch-delete-document-response-failed-documents
                               :member
                               batch-delete-document-response-failed-document)

(smithy/sdk/shapes:define-structure batch-delete-featured-results-set-error
                                    common-lisp:nil
                                    ((id :target-type featured-results-set-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (error-code :target-type error-code
                                      :required common-lisp:t :member-name
                                      "ErrorCode")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name
                                     "BatchDeleteFeaturedResultsSetError"))

(smithy/sdk/shapes:define-list batch-delete-featured-results-set-errors :member
                               batch-delete-featured-results-set-error)

(smithy/sdk/shapes:define-input batch-delete-featured-results-set-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (featured-results-set-ids :target-type
                                  featured-results-set-id-list :required
                                  common-lisp:t :member-name
                                  "FeaturedResultsSetIds"))
                                (:shape-name
                                 "BatchDeleteFeaturedResultsSetRequest"))

(smithy/sdk/shapes:define-output batch-delete-featured-results-set-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-featured-results-set-errors
                                   :required common-lisp:t :member-name
                                   "Errors"))
                                 (:shape-name
                                  "BatchDeleteFeaturedResultsSetResponse"))

(smithy/sdk/shapes:define-input batch-get-document-status-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (document-info-list :target-type
                                  document-info-list :required common-lisp:t
                                  :member-name "DocumentInfoList"))
                                (:shape-name "BatchGetDocumentStatusRequest"))

(smithy/sdk/shapes:define-output batch-get-document-status-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-get-document-status-response-errors
                                   :member-name "Errors")
                                  (document-status-list :target-type
                                   document-status-list :member-name
                                   "DocumentStatusList"))
                                 (:shape-name "BatchGetDocumentStatusResponse"))

(smithy/sdk/shapes:define-structure batch-get-document-status-response-error
                                    common-lisp:nil
                                    ((document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "DataSourceId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "BatchGetDocumentStatusResponseError"))

(smithy/sdk/shapes:define-list batch-get-document-status-response-errors
                               :member batch-get-document-status-response-error)

(smithy/sdk/shapes:define-input batch-put-document-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (documents :target-type document-list
                                  :required common-lisp:t :member-name
                                  "Documents")
                                 (custom-document-enrichment-configuration
                                  :target-type
                                  custom-document-enrichment-configuration
                                  :member-name
                                  "CustomDocumentEnrichmentConfiguration"))
                                (:shape-name "BatchPutDocumentRequest"))

(smithy/sdk/shapes:define-output batch-put-document-response common-lisp:nil
                                 ((failed-documents :target-type
                                   batch-put-document-response-failed-documents
                                   :member-name "FailedDocuments"))
                                 (:shape-name "BatchPutDocumentResponse"))

(smithy/sdk/shapes:define-structure batch-put-document-response-failed-document
                                    common-lisp:nil
                                    ((id :target-type document-id :member-name
                                      "Id")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "DataSourceId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "BatchPutDocumentResponseFailedDocument"))

(smithy/sdk/shapes:define-list batch-put-document-response-failed-documents
                               :member
                               batch-put-document-response-failed-document)

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure box-configuration common-lisp:nil
                                    ((enterprise-id :target-type enterprise-id
                                      :required common-lisp:t :member-name
                                      "EnterpriseId")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (crawl-comments :target-type boolean
                                      :member-name "CrawlComments")
                                     (crawl-tasks :target-type boolean
                                      :member-name "CrawlTasks")
                                     (crawl-web-links :target-type boolean
                                      :member-name "CrawlWebLinks")
                                     (file-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FileFieldMappings")
                                     (task-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "TaskFieldMappings")
                                     (comment-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "CommentFieldMappings")
                                     (web-link-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "WebLinkFieldMappings")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration"))
                                    (:shape-name "BoxConfiguration"))

(smithy/sdk/shapes:define-structure capacity-units-configuration
                                    common-lisp:nil
                                    ((storage-capacity-units :target-type
                                      storage-capacity-unit :required
                                      common-lisp:t :member-name
                                      "StorageCapacityUnits")
                                     (query-capacity-units :target-type
                                      query-capacity-unit :required
                                      common-lisp:t :member-name
                                      "QueryCapacityUnits"))
                                    (:shape-name "CapacityUnitsConfiguration"))

(smithy/sdk/shapes:define-list change-detecting-columns :member column-name)

(smithy/sdk/shapes:define-type claim-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input clear-query-suggestions-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "ClearQuerySuggestionsRequest"))

(smithy/sdk/shapes:define-structure click-feedback common-lisp:nil
                                    ((result-id :target-type result-id
                                      :required common-lisp:t :member-name
                                      "ResultId")
                                     (click-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ClickTime"))
                                    (:shape-name "ClickFeedback"))

(smithy/sdk/shapes:define-list click-feedback-list :member click-feedback)

(smithy/sdk/shapes:define-type client-token-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collapse-configuration common-lisp:nil
                                    ((document-attribute-key :target-type
                                      document-attribute-key :required
                                      common-lisp:t :member-name
                                      "DocumentAttributeKey")
                                     (sorting-configurations :target-type
                                      sorting-configuration-list :member-name
                                      "SortingConfigurations")
                                     (missing-attribute-key-strategy
                                      :target-type
                                      missing-attribute-key-strategy
                                      :member-name
                                      "MissingAttributeKeyStrategy")
                                     (expand :target-type boolean :member-name
                                      "Expand")
                                     (expand-configuration :target-type
                                      expand-configuration :member-name
                                      "ExpandConfiguration"))
                                    (:shape-name "CollapseConfiguration"))

(smithy/sdk/shapes:define-structure collapsed-result-detail common-lisp:nil
                                    ((document-attribute :target-type
                                      document-attribute :required
                                      common-lisp:t :member-name
                                      "DocumentAttribute")
                                     (expanded-results :target-type
                                      expanded-result-list :member-name
                                      "ExpandedResults"))
                                    (:shape-name "CollapsedResultDetail"))

(smithy/sdk/shapes:define-structure column-configuration common-lisp:nil
                                    ((document-id-column-name :target-type
                                      column-name :required common-lisp:t
                                      :member-name "DocumentIdColumnName")
                                     (document-data-column-name :target-type
                                      column-name :required common-lisp:t
                                      :member-name "DocumentDataColumnName")
                                     (document-title-column-name :target-type
                                      column-name :member-name
                                      "DocumentTitleColumnName")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (change-detecting-columns :target-type
                                      change-detecting-columns :required
                                      common-lisp:t :member-name
                                      "ChangeDetectingColumns"))
                                    (:shape-name "ColumnConfiguration"))

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum condition-operator
    common-lisp:nil
  (:greater-than "GreaterThan")
  (:greater-than-or-equals "GreaterThanOrEquals")
  (:less-than "LessThan")
  (:less-than-or-equals "LessThanOrEquals")
  (:equals "Equals")
  (:not-equals "NotEquals")
  (:contains "Contains")
  (:not-contains "NotContains")
  (:exists "Exists")
  (:not-exists "NotExists")
  (:begins-with "BeginsWith"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure conflicting-item common-lisp:nil
                                    ((query-text :target-type query-text
                                      :member-name "QueryText")
                                     (set-name :target-type string :member-name
                                      "SetName")
                                     (set-id :target-type string :member-name
                                      "SetId"))
                                    (:shape-name "ConflictingItem"))

(smithy/sdk/shapes:define-list conflicting-items :member conflicting-item)

(smithy/sdk/shapes:define-structure confluence-attachment-configuration
                                    common-lisp:nil
                                    ((crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (attachment-field-mappings :target-type
                                      confluence-attachment-field-mappings-list
                                      :member-name "AttachmentFieldMappings"))
                                    (:shape-name
                                     "ConfluenceAttachmentConfiguration"))

(smithy/sdk/shapes:define-list confluence-attachment-field-mappings-list
                               :member
                               confluence-attachment-to-index-field-mapping)

(smithy/sdk/shapes:define-enum confluence-attachment-field-name
    common-lisp:nil
  (:author "AUTHOR")
  (:content-type "CONTENT_TYPE")
  (:created-date "CREATED_DATE")
  (:display-url "DISPLAY_URL")
  (:file-size "FILE_SIZE")
  (:item-type "ITEM_TYPE")
  (:parent-id "PARENT_ID")
  (:space-key "SPACE_KEY")
  (:space-name "SPACE_NAME")
  (:url "URL")
  (:version "VERSION"))

(smithy/sdk/shapes:define-structure
 confluence-attachment-to-index-field-mapping common-lisp:nil
 ((data-source-field-name :target-type confluence-attachment-field-name
   :member-name "DataSourceFieldName")
  (date-field-format :target-type data-source-date-field-format :member-name
   "DateFieldFormat")
  (index-field-name :target-type index-field-name :member-name
   "IndexFieldName"))
 (:shape-name "ConfluenceAttachmentToIndexFieldMapping"))

(smithy/sdk/shapes:define-enum confluence-authentication-type
    common-lisp:nil
  (:http-basic "HTTP_BASIC")
  (:pat "PAT"))

(smithy/sdk/shapes:define-structure confluence-blog-configuration
                                    common-lisp:nil
                                    ((blog-field-mappings :target-type
                                      confluence-blog-field-mappings-list
                                      :member-name "BlogFieldMappings"))
                                    (:shape-name "ConfluenceBlogConfiguration"))

(smithy/sdk/shapes:define-list confluence-blog-field-mappings-list :member
                               confluence-blog-to-index-field-mapping)

(smithy/sdk/shapes:define-enum confluence-blog-field-name
    common-lisp:nil
  (:author "AUTHOR")
  (:display-url "DISPLAY_URL")
  (:item-type "ITEM_TYPE")
  (:labels "LABELS")
  (:publish-date "PUBLISH_DATE")
  (:space-key "SPACE_KEY")
  (:space-name "SPACE_NAME")
  (:url "URL")
  (:version "VERSION"))

(smithy/sdk/shapes:define-structure confluence-blog-to-index-field-mapping
                                    common-lisp:nil
                                    ((data-source-field-name :target-type
                                      confluence-blog-field-name :member-name
                                      "DataSourceFieldName")
                                     (date-field-format :target-type
                                      data-source-date-field-format
                                      :member-name "DateFieldFormat")
                                     (index-field-name :target-type
                                      index-field-name :member-name
                                      "IndexFieldName"))
                                    (:shape-name
                                     "ConfluenceBlogToIndexFieldMapping"))

(smithy/sdk/shapes:define-structure confluence-configuration common-lisp:nil
                                    ((server-url :target-type url :required
                                      common-lisp:t :member-name "ServerUrl")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (version :target-type confluence-version
                                      :required common-lisp:t :member-name
                                      "Version")
                                     (space-configuration :target-type
                                      confluence-space-configuration
                                      :member-name "SpaceConfiguration")
                                     (page-configuration :target-type
                                      confluence-page-configuration
                                      :member-name "PageConfiguration")
                                     (blog-configuration :target-type
                                      confluence-blog-configuration
                                      :member-name "BlogConfiguration")
                                     (attachment-configuration :target-type
                                      confluence-attachment-configuration
                                      :member-name "AttachmentConfiguration")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (proxy-configuration :target-type
                                      proxy-configuration :member-name
                                      "ProxyConfiguration")
                                     (authentication-type :target-type
                                      confluence-authentication-type
                                      :member-name "AuthenticationType"))
                                    (:shape-name "ConfluenceConfiguration"))

(smithy/sdk/shapes:define-structure confluence-page-configuration
                                    common-lisp:nil
                                    ((page-field-mappings :target-type
                                      confluence-page-field-mappings-list
                                      :member-name "PageFieldMappings"))
                                    (:shape-name "ConfluencePageConfiguration"))

(smithy/sdk/shapes:define-list confluence-page-field-mappings-list :member
                               confluence-page-to-index-field-mapping)

(smithy/sdk/shapes:define-enum confluence-page-field-name
    common-lisp:nil
  (:author "AUTHOR")
  (:content-status "CONTENT_STATUS")
  (:created-date "CREATED_DATE")
  (:display-url "DISPLAY_URL")
  (:item-type "ITEM_TYPE")
  (:labels "LABELS")
  (:modified-date "MODIFIED_DATE")
  (:parent-id "PARENT_ID")
  (:space-key "SPACE_KEY")
  (:space-name "SPACE_NAME")
  (:url "URL")
  (:version "VERSION"))

(smithy/sdk/shapes:define-structure confluence-page-to-index-field-mapping
                                    common-lisp:nil
                                    ((data-source-field-name :target-type
                                      confluence-page-field-name :member-name
                                      "DataSourceFieldName")
                                     (date-field-format :target-type
                                      data-source-date-field-format
                                      :member-name "DateFieldFormat")
                                     (index-field-name :target-type
                                      index-field-name :member-name
                                      "IndexFieldName"))
                                    (:shape-name
                                     "ConfluencePageToIndexFieldMapping"))

(smithy/sdk/shapes:define-structure confluence-space-configuration
                                    common-lisp:nil
                                    ((crawl-personal-spaces :target-type
                                      boolean :member-name
                                      "CrawlPersonalSpaces")
                                     (crawl-archived-spaces :target-type
                                      boolean :member-name
                                      "CrawlArchivedSpaces")
                                     (include-spaces :target-type
                                      confluence-space-list :member-name
                                      "IncludeSpaces")
                                     (exclude-spaces :target-type
                                      confluence-space-list :member-name
                                      "ExcludeSpaces")
                                     (space-field-mappings :target-type
                                      confluence-space-field-mappings-list
                                      :member-name "SpaceFieldMappings"))
                                    (:shape-name
                                     "ConfluenceSpaceConfiguration"))

(smithy/sdk/shapes:define-list confluence-space-field-mappings-list :member
                               confluence-space-to-index-field-mapping)

(smithy/sdk/shapes:define-enum confluence-space-field-name
    common-lisp:nil
  (:display-url "DISPLAY_URL")
  (:item-type "ITEM_TYPE")
  (:space-key "SPACE_KEY")
  (:url "URL"))

(smithy/sdk/shapes:define-type confluence-space-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list confluence-space-list :member
                               confluence-space-identifier)

(smithy/sdk/shapes:define-structure confluence-space-to-index-field-mapping
                                    common-lisp:nil
                                    ((data-source-field-name :target-type
                                      confluence-space-field-name :member-name
                                      "DataSourceFieldName")
                                     (date-field-format :target-type
                                      data-source-date-field-format
                                      :member-name "DateFieldFormat")
                                     (index-field-name :target-type
                                      index-field-name :member-name
                                      "IndexFieldName"))
                                    (:shape-name
                                     "ConfluenceSpaceToIndexFieldMapping"))

(smithy/sdk/shapes:define-enum confluence-version
    common-lisp:nil
  (:cloud "CLOUD")
  (:server "SERVER"))

(smithy/sdk/shapes:define-structure connection-configuration common-lisp:nil
                                    ((database-host :target-type database-host
                                      :required common-lisp:t :member-name
                                      "DatabaseHost")
                                     (database-port :target-type database-port
                                      :required common-lisp:t :member-name
                                      "DatabasePort")
                                     (database-name :target-type database-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn"))
                                    (:shape-name "ConnectionConfiguration"))

(smithy/sdk/shapes:define-type content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure content-source-configuration
                                    common-lisp:nil
                                    ((data-source-ids :target-type
                                      data-source-id-list :member-name
                                      "DataSourceIds")
                                     (faq-ids :target-type faq-ids-list
                                      :member-name "FaqIds")
                                     (direct-put-content :target-type boolean
                                      :member-name "DirectPutContent"))
                                    (:shape-name "ContentSourceConfiguration"))

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

(smithy/sdk/shapes:define-structure correction common-lisp:nil
                                    ((begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset")
                                     (term :target-type string :member-name
                                      "Term")
                                     (corrected-term :target-type string
                                      :member-name "CorrectedTerm"))
                                    (:shape-name "Correction"))

(smithy/sdk/shapes:define-list correction-list :member correction)

(smithy/sdk/shapes:define-type crawl-depth smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-access-control-configuration-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (name :target-type
                                  access-control-configuration-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (access-control-list :target-type
                                  principal-list :member-name
                                  "AccessControlList")
                                 (hierarchical-access-control-list :target-type
                                  hierarchical-principal-list :member-name
                                  "HierarchicalAccessControlList")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateAccessControlConfigurationRequest"))

(smithy/sdk/shapes:define-output create-access-control-configuration-response
                                 common-lisp:nil
                                 ((id :target-type
                                   access-control-configuration-id :required
                                   common-lisp:t :member-name "Id"))
                                 (:shape-name
                                  "CreateAccessControlConfigurationResponse"))

(smithy/sdk/shapes:define-input create-data-source-request common-lisp:nil
                                ((name :target-type data-source-name :required
                                  common-lisp:t :member-name "Name")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (type :target-type data-source-type :required
                                  common-lisp:t :member-name "Type")
                                 (configuration :target-type
                                  data-source-configuration :member-name
                                  "Configuration")
                                 (vpc-configuration :target-type
                                  data-source-vpc-configuration :member-name
                                  "VpcConfiguration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (schedule :target-type scan-schedule
                                  :member-name "Schedule")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (custom-document-enrichment-configuration
                                  :target-type
                                  custom-document-enrichment-configuration
                                  :member-name
                                  "CustomDocumentEnrichmentConfiguration"))
                                (:shape-name "CreateDataSourceRequest"))

(smithy/sdk/shapes:define-output create-data-source-response common-lisp:nil
                                 ((id :target-type data-source-id :required
                                   common-lisp:t :member-name "Id"))
                                 (:shape-name "CreateDataSourceResponse"))

(smithy/sdk/shapes:define-input create-experience-request common-lisp:nil
                                ((name :target-type experience-name :required
                                  common-lisp:t :member-name "Name")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (configuration :target-type
                                  experience-configuration :member-name
                                  "Configuration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken"))
                                (:shape-name "CreateExperienceRequest"))

(smithy/sdk/shapes:define-output create-experience-response common-lisp:nil
                                 ((id :target-type experience-id :required
                                   common-lisp:t :member-name "Id"))
                                 (:shape-name "CreateExperienceResponse"))

(smithy/sdk/shapes:define-input create-faq-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (name :target-type faq-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (s3path :target-type s3path :required
                                  common-lisp:t :member-name "S3Path")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (file-format :target-type faq-file-format
                                  :member-name "FileFormat")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode"))
                                (:shape-name "CreateFaqRequest"))

(smithy/sdk/shapes:define-output create-faq-response common-lisp:nil
                                 ((id :target-type faq-id :member-name "Id"))
                                 (:shape-name "CreateFaqResponse"))

(smithy/sdk/shapes:define-input create-featured-results-set-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (featured-results-set-name :target-type
                                  featured-results-set-name :required
                                  common-lisp:t :member-name
                                  "FeaturedResultsSetName")
                                 (description :target-type
                                  featured-results-set-description :member-name
                                  "Description")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken")
                                 (status :target-type
                                  featured-results-set-status :member-name
                                  "Status")
                                 (query-texts :target-type query-text-list
                                  :member-name "QueryTexts")
                                 (featured-documents :target-type
                                  featured-document-list :member-name
                                  "FeaturedDocuments")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateFeaturedResultsSetRequest"))

(smithy/sdk/shapes:define-output create-featured-results-set-response
                                 common-lisp:nil
                                 ((featured-results-set :target-type
                                   featured-results-set :member-name
                                   "FeaturedResultsSet"))
                                 (:shape-name
                                  "CreateFeaturedResultsSetResponse"))

(smithy/sdk/shapes:define-input create-index-request common-lisp:nil
                                ((name :target-type index-name :required
                                  common-lisp:t :member-name "Name")
                                 (edition :target-type index-edition
                                  :member-name "Edition")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (server-side-encryption-configuration
                                  :target-type
                                  server-side-encryption-configuration
                                  :member-name
                                  "ServerSideEncryptionConfiguration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (user-token-configurations :target-type
                                  user-token-configuration-list :member-name
                                  "UserTokenConfigurations")
                                 (user-context-policy :target-type
                                  user-context-policy :member-name
                                  "UserContextPolicy")
                                 (user-group-resolution-configuration
                                  :target-type
                                  user-group-resolution-configuration
                                  :member-name
                                  "UserGroupResolutionConfiguration"))
                                (:shape-name "CreateIndexRequest"))

(smithy/sdk/shapes:define-output create-index-response common-lisp:nil
                                 ((id :target-type index-id :member-name "Id"))
                                 (:shape-name "CreateIndexResponse"))

(smithy/sdk/shapes:define-input create-query-suggestions-block-list-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (name :target-type
                                  query-suggestions-block-list-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (source-s3path :target-type s3path :required
                                  common-lisp:t :member-name "SourceS3Path")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateQuerySuggestionsBlockListRequest"))

(smithy/sdk/shapes:define-output create-query-suggestions-block-list-response
                                 common-lisp:nil
                                 ((id :target-type
                                   query-suggestions-block-list-id :member-name
                                   "Id"))
                                 (:shape-name
                                  "CreateQuerySuggestionsBlockListResponse"))

(smithy/sdk/shapes:define-input create-thesaurus-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (name :target-type thesaurus-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (source-s3path :target-type s3path :required
                                  common-lisp:t :member-name "SourceS3Path")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken"))
                                (:shape-name "CreateThesaurusRequest"))

(smithy/sdk/shapes:define-output create-thesaurus-response common-lisp:nil
                                 ((id :target-type thesaurus-id :member-name
                                   "Id"))
                                 (:shape-name "CreateThesaurusResponse"))

(smithy/sdk/shapes:define-structure custom-document-enrichment-configuration
                                    common-lisp:nil
                                    ((inline-configurations :target-type
                                      inline-custom-document-enrichment-configuration-list
                                      :member-name "InlineConfigurations")
                                     (pre-extraction-hook-configuration
                                      :target-type hook-configuration
                                      :member-name
                                      "PreExtractionHookConfiguration")
                                     (post-extraction-hook-configuration
                                      :target-type hook-configuration
                                      :member-name
                                      "PostExtractionHookConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name
                                     "CustomDocumentEnrichmentConfiguration"))

(smithy/sdk/shapes:define-structure data-source-configuration common-lisp:nil
                                    ((s3configuration :target-type
                                      s3data-source-configuration :member-name
                                      "S3Configuration")
                                     (share-point-configuration :target-type
                                      share-point-configuration :member-name
                                      "SharePointConfiguration")
                                     (database-configuration :target-type
                                      database-configuration :member-name
                                      "DatabaseConfiguration")
                                     (salesforce-configuration :target-type
                                      salesforce-configuration :member-name
                                      "SalesforceConfiguration")
                                     (one-drive-configuration :target-type
                                      one-drive-configuration :member-name
                                      "OneDriveConfiguration")
                                     (service-now-configuration :target-type
                                      service-now-configuration :member-name
                                      "ServiceNowConfiguration")
                                     (confluence-configuration :target-type
                                      confluence-configuration :member-name
                                      "ConfluenceConfiguration")
                                     (google-drive-configuration :target-type
                                      google-drive-configuration :member-name
                                      "GoogleDriveConfiguration")
                                     (web-crawler-configuration :target-type
                                      web-crawler-configuration :member-name
                                      "WebCrawlerConfiguration")
                                     (work-docs-configuration :target-type
                                      work-docs-configuration :member-name
                                      "WorkDocsConfiguration")
                                     (fsx-configuration :target-type
                                      fsx-configuration :member-name
                                      "FsxConfiguration")
                                     (slack-configuration :target-type
                                      slack-configuration :member-name
                                      "SlackConfiguration")
                                     (box-configuration :target-type
                                      box-configuration :member-name
                                      "BoxConfiguration")
                                     (quip-configuration :target-type
                                      quip-configuration :member-name
                                      "QuipConfiguration")
                                     (jira-configuration :target-type
                                      jira-configuration :member-name
                                      "JiraConfiguration")
                                     (git-hub-configuration :target-type
                                      git-hub-configuration :member-name
                                      "GitHubConfiguration")
                                     (alfresco-configuration :target-type
                                      alfresco-configuration :member-name
                                      "AlfrescoConfiguration")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration"))
                                    (:shape-name "DataSourceConfiguration"))

(smithy/sdk/shapes:define-type data-source-date-field-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-source-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source-group common-lisp:nil
                                    ((group-id :target-type principal-name
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (data-source-id :target-type
                                      data-source-id :required common-lisp:t
                                      :member-name "DataSourceId"))
                                    (:shape-name "DataSourceGroup"))

(smithy/sdk/shapes:define-list data-source-groups :member data-source-group)

(smithy/sdk/shapes:define-type data-source-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-source-id-list :member data-source-id)

(smithy/sdk/shapes:define-list data-source-inclusions-exclusions-strings
                               :member
                               data-source-inclusions-exclusions-strings-member)

(smithy/sdk/shapes:define-type data-source-inclusions-exclusions-strings-member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-source-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure data-source-summary common-lisp:nil
                                    ((name :target-type data-source-name
                                      :member-name "Name")
                                     (id :target-type data-source-id
                                      :member-name "Id")
                                     (type :target-type data-source-type
                                      :member-name "Type")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (status :target-type data-source-status
                                      :member-name "Status")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode"))
                                    (:shape-name "DataSourceSummary"))

(smithy/sdk/shapes:define-list data-source-summary-list :member
                               data-source-summary)

(smithy/sdk/shapes:define-structure data-source-sync-job common-lisp:nil
                                    ((execution-id :target-type string
                                      :member-name "ExecutionId")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (status :target-type
                                      data-source-sync-job-status :member-name
                                      "Status")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (data-source-error-code :target-type
                                      string :member-name
                                      "DataSourceErrorCode")
                                     (metrics :target-type
                                      data-source-sync-job-metrics :member-name
                                      "Metrics"))
                                    (:shape-name "DataSourceSyncJob"))

(smithy/sdk/shapes:define-list data-source-sync-job-history-list :member
                               data-source-sync-job)

(smithy/sdk/shapes:define-type data-source-sync-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source-sync-job-metric-target
                                    common-lisp:nil
                                    ((data-source-id :target-type
                                      data-source-id :required common-lisp:t
                                      :member-name "DataSourceId")
                                     (data-source-sync-job-id :target-type
                                      data-source-sync-job-id :member-name
                                      "DataSourceSyncJobId"))
                                    (:shape-name
                                     "DataSourceSyncJobMetricTarget"))

(smithy/sdk/shapes:define-structure data-source-sync-job-metrics
                                    common-lisp:nil
                                    ((documents-added :target-type metric-value
                                      :member-name "DocumentsAdded")
                                     (documents-modified :target-type
                                      metric-value :member-name
                                      "DocumentsModified")
                                     (documents-deleted :target-type
                                      metric-value :member-name
                                      "DocumentsDeleted")
                                     (documents-failed :target-type
                                      metric-value :member-name
                                      "DocumentsFailed")
                                     (documents-scanned :target-type
                                      metric-value :member-name
                                      "DocumentsScanned"))
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

(smithy/sdk/shapes:define-structure data-source-to-index-field-mapping
                                    common-lisp:nil
                                    ((data-source-field-name :target-type
                                      data-source-field-name :required
                                      common-lisp:t :member-name
                                      "DataSourceFieldName")
                                     (date-field-format :target-type
                                      data-source-date-field-format
                                      :member-name "DateFieldFormat")
                                     (index-field-name :target-type
                                      index-field-name :required common-lisp:t
                                      :member-name "IndexFieldName"))
                                    (:shape-name
                                     "DataSourceToIndexFieldMapping"))

(smithy/sdk/shapes:define-list data-source-to-index-field-mapping-list :member
                               data-source-to-index-field-mapping)

(smithy/sdk/shapes:define-enum data-source-type
    common-lisp:nil
  (:s3 "S3")
  (:sharepoint "SHAREPOINT")
  (:database "DATABASE")
  (:salesforce "SALESFORCE")
  (:onedrive "ONEDRIVE")
  (:servicenow "SERVICENOW")
  (:custom "CUSTOM")
  (:confluence "CONFLUENCE")
  (:googledrive "GOOGLEDRIVE")
  (:webcrawler "WEBCRAWLER")
  (:workdocs "WORKDOCS")
  (:fsx "FSX")
  (:slack "SLACK")
  (:box "BOX")
  (:quip "QUIP")
  (:jira "JIRA")
  (:github "GITHUB")
  (:alfresco "ALFRESCO")
  (:template "TEMPLATE"))

(smithy/sdk/shapes:define-structure data-source-vpc-configuration
                                    common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "DataSourceVpcConfiguration"))

(smithy/sdk/shapes:define-structure database-configuration common-lisp:nil
                                    ((database-engine-type :target-type
                                      database-engine-type :required
                                      common-lisp:t :member-name
                                      "DatabaseEngineType")
                                     (connection-configuration :target-type
                                      connection-configuration :required
                                      common-lisp:t :member-name
                                      "ConnectionConfiguration")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration")
                                     (column-configuration :target-type
                                      column-configuration :required
                                      common-lisp:t :member-name
                                      "ColumnConfiguration")
                                     (acl-configuration :target-type
                                      acl-configuration :member-name
                                      "AclConfiguration")
                                     (sql-configuration :target-type
                                      sql-configuration :member-name
                                      "SqlConfiguration"))
                                    (:shape-name "DatabaseConfiguration"))

(smithy/sdk/shapes:define-enum database-engine-type
    common-lisp:nil
  (:rds-aurora-mysql "RDS_AURORA_MYSQL")
  (:rds-aurora-postgresql "RDS_AURORA_POSTGRESQL")
  (:rds-mysql "RDS_MYSQL")
  (:rds-postgresql "RDS_POSTGRESQL"))

(smithy/sdk/shapes:define-type database-host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-access-control-configuration-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  access-control-configuration-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name
                                 "DeleteAccessControlConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-access-control-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAccessControlConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-data-source-request common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DeleteDataSourceRequest"))

(smithy/sdk/shapes:define-input delete-experience-request common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DeleteExperienceRequest"))

(smithy/sdk/shapes:define-output delete-experience-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteExperienceResponse"))

(smithy/sdk/shapes:define-input delete-faq-request common-lisp:nil
                                ((id :target-type faq-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DeleteFaqRequest"))

(smithy/sdk/shapes:define-input delete-index-request common-lisp:nil
                                ((id :target-type index-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DeleteIndexRequest"))

(smithy/sdk/shapes:define-input delete-principal-mapping-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (data-source-id :target-type data-source-id
                                  :member-name "DataSourceId")
                                 (group-id :target-type group-id :required
                                  common-lisp:t :member-name "GroupId")
                                 (ordering-id :target-type
                                  principal-ordering-id :member-name
                                  "OrderingId"))
                                (:shape-name "DeletePrincipalMappingRequest"))

(smithy/sdk/shapes:define-input delete-query-suggestions-block-list-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  query-suggestions-block-list-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name
                                 "DeleteQuerySuggestionsBlockListRequest"))

(smithy/sdk/shapes:define-input delete-thesaurus-request common-lisp:nil
                                ((id :target-type thesaurus-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DeleteThesaurusRequest"))

(smithy/sdk/shapes:define-input describe-access-control-configuration-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  access-control-configuration-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name
                                 "DescribeAccessControlConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-access-control-configuration-response
                                 common-lisp:nil
                                 ((name :target-type
                                   access-control-configuration-name :required
                                   common-lisp:t :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (access-control-list :target-type
                                   principal-list :member-name
                                   "AccessControlList")
                                  (hierarchical-access-control-list
                                   :target-type hierarchical-principal-list
                                   :member-name
                                   "HierarchicalAccessControlList"))
                                 (:shape-name
                                  "DescribeAccessControlConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-data-source-request common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DescribeDataSourceRequest"))

(smithy/sdk/shapes:define-output describe-data-source-response common-lisp:nil
                                 ((id :target-type data-source-id :member-name
                                   "Id")
                                  (index-id :target-type index-id :member-name
                                   "IndexId")
                                  (name :target-type data-source-name
                                   :member-name "Name")
                                  (type :target-type data-source-type
                                   :member-name "Type")
                                  (configuration :target-type
                                   data-source-configuration :member-name
                                   "Configuration")
                                  (vpc-configuration :target-type
                                   data-source-vpc-configuration :member-name
                                   "VpcConfiguration")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type data-source-status
                                   :member-name "Status")
                                  (schedule :target-type scan-schedule
                                   :member-name "Schedule")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode")
                                  (custom-document-enrichment-configuration
                                   :target-type
                                   custom-document-enrichment-configuration
                                   :member-name
                                   "CustomDocumentEnrichmentConfiguration"))
                                 (:shape-name "DescribeDataSourceResponse"))

(smithy/sdk/shapes:define-input describe-experience-request common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DescribeExperienceRequest"))

(smithy/sdk/shapes:define-output describe-experience-response common-lisp:nil
                                 ((id :target-type experience-id :member-name
                                   "Id")
                                  (index-id :target-type index-id :member-name
                                   "IndexId")
                                  (name :target-type experience-name
                                   :member-name "Name")
                                  (endpoints :target-type experience-endpoints
                                   :member-name "Endpoints")
                                  (configuration :target-type
                                   experience-configuration :member-name
                                   "Configuration")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type experience-status
                                   :member-name "Status")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage"))
                                 (:shape-name "DescribeExperienceResponse"))

(smithy/sdk/shapes:define-input describe-faq-request common-lisp:nil
                                ((id :target-type faq-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DescribeFaqRequest"))

(smithy/sdk/shapes:define-output describe-faq-response common-lisp:nil
                                 ((id :target-type faq-id :member-name "Id")
                                  (index-id :target-type index-id :member-name
                                   "IndexId")
                                  (name :target-type faq-name :member-name
                                   "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (s3path :target-type s3path :member-name
                                   "S3Path")
                                  (status :target-type faq-status :member-name
                                   "Status")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (file-format :target-type faq-file-format
                                   :member-name "FileFormat")
                                  (language-code :target-type language-code
                                   :member-name "LanguageCode"))
                                 (:shape-name "DescribeFaqResponse"))

(smithy/sdk/shapes:define-input describe-featured-results-set-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (featured-results-set-id :target-type
                                  featured-results-set-id :required
                                  common-lisp:t :member-name
                                  "FeaturedResultsSetId"))
                                (:shape-name
                                 "DescribeFeaturedResultsSetRequest"))

(smithy/sdk/shapes:define-output describe-featured-results-set-response
                                 common-lisp:nil
                                 ((featured-results-set-id :target-type
                                   featured-results-set-id :member-name
                                   "FeaturedResultsSetId")
                                  (featured-results-set-name :target-type
                                   featured-results-set-name :member-name
                                   "FeaturedResultsSetName")
                                  (description :target-type
                                   featured-results-set-description
                                   :member-name "Description")
                                  (status :target-type
                                   featured-results-set-status :member-name
                                   "Status")
                                  (query-texts :target-type query-text-list
                                   :member-name "QueryTexts")
                                  (featured-documents-with-metadata
                                   :target-type
                                   featured-document-with-metadata-list
                                   :member-name
                                   "FeaturedDocumentsWithMetadata")
                                  (featured-documents-missing :target-type
                                   featured-document-missing-list :member-name
                                   "FeaturedDocumentsMissing")
                                  (last-updated-timestamp :target-type long
                                   :member-name "LastUpdatedTimestamp")
                                  (creation-timestamp :target-type long
                                   :member-name "CreationTimestamp"))
                                 (:shape-name
                                  "DescribeFeaturedResultsSetResponse"))

(smithy/sdk/shapes:define-input describe-index-request common-lisp:nil
                                ((id :target-type index-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DescribeIndexRequest"))

(smithy/sdk/shapes:define-output describe-index-response common-lisp:nil
                                 ((name :target-type index-name :member-name
                                   "Name")
                                  (id :target-type index-id :member-name "Id")
                                  (edition :target-type index-edition
                                   :member-name "Edition")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (server-side-encryption-configuration
                                   :target-type
                                   server-side-encryption-configuration
                                   :member-name
                                   "ServerSideEncryptionConfiguration")
                                  (status :target-type index-status
                                   :member-name "Status")
                                  (description :target-type description
                                   :member-name "Description")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (document-metadata-configurations
                                   :target-type
                                   document-metadata-configuration-list
                                   :member-name
                                   "DocumentMetadataConfigurations")
                                  (index-statistics :target-type
                                   index-statistics :member-name
                                   "IndexStatistics")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (capacity-units :target-type
                                   capacity-units-configuration :member-name
                                   "CapacityUnits")
                                  (user-token-configurations :target-type
                                   user-token-configuration-list :member-name
                                   "UserTokenConfigurations")
                                  (user-context-policy :target-type
                                   user-context-policy :member-name
                                   "UserContextPolicy")
                                  (user-group-resolution-configuration
                                   :target-type
                                   user-group-resolution-configuration
                                   :member-name
                                   "UserGroupResolutionConfiguration"))
                                 (:shape-name "DescribeIndexResponse"))

(smithy/sdk/shapes:define-input describe-principal-mapping-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (data-source-id :target-type data-source-id
                                  :member-name "DataSourceId")
                                 (group-id :target-type group-id :required
                                  common-lisp:t :member-name "GroupId"))
                                (:shape-name "DescribePrincipalMappingRequest"))

(smithy/sdk/shapes:define-output describe-principal-mapping-response
                                 common-lisp:nil
                                 ((index-id :target-type index-id :member-name
                                   "IndexId")
                                  (data-source-id :target-type data-source-id
                                   :member-name "DataSourceId")
                                  (group-id :target-type group-id :member-name
                                   "GroupId")
                                  (group-ordering-id-summaries :target-type
                                   group-ordering-id-summaries :member-name
                                   "GroupOrderingIdSummaries"))
                                 (:shape-name
                                  "DescribePrincipalMappingResponse"))

(smithy/sdk/shapes:define-input describe-query-suggestions-block-list-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  query-suggestions-block-list-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name
                                 "DescribeQuerySuggestionsBlockListRequest"))

(smithy/sdk/shapes:define-output describe-query-suggestions-block-list-response
                                 common-lisp:nil
                                 ((index-id :target-type index-id :member-name
                                   "IndexId")
                                  (id :target-type
                                   query-suggestions-block-list-id :member-name
                                   "Id")
                                  (name :target-type
                                   query-suggestions-block-list-name
                                   :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type
                                   query-suggestions-block-list-status
                                   :member-name "Status")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (source-s3path :target-type s3path
                                   :member-name "SourceS3Path")
                                  (item-count :target-type integer :member-name
                                   "ItemCount")
                                  (file-size-bytes :target-type long
                                   :member-name "FileSizeBytes")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn"))
                                 (:shape-name
                                  "DescribeQuerySuggestionsBlockListResponse"))

(smithy/sdk/shapes:define-input describe-query-suggestions-config-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name
                                 "DescribeQuerySuggestionsConfigRequest"))

(smithy/sdk/shapes:define-output describe-query-suggestions-config-response
                                 common-lisp:nil
                                 ((mode :target-type mode :member-name "Mode")
                                  (status :target-type query-suggestions-status
                                   :member-name "Status")
                                  (query-log-look-back-window-in-days
                                   :target-type integer :member-name
                                   "QueryLogLookBackWindowInDays")
                                  (include-queries-without-user-information
                                   :target-type object-boolean :member-name
                                   "IncludeQueriesWithoutUserInformation")
                                  (minimum-number-of-querying-users
                                   :target-type
                                   minimum-number-of-querying-users
                                   :member-name "MinimumNumberOfQueryingUsers")
                                  (minimum-query-count :target-type
                                   minimum-query-count :member-name
                                   "MinimumQueryCount")
                                  (last-suggestions-build-time :target-type
                                   timestamp :member-name
                                   "LastSuggestionsBuildTime")
                                  (last-clear-time :target-type timestamp
                                   :member-name "LastClearTime")
                                  (total-suggestions-count :target-type integer
                                   :member-name "TotalSuggestionsCount")
                                  (attribute-suggestions-config :target-type
                                   attribute-suggestions-describe-config
                                   :member-name "AttributeSuggestionsConfig"))
                                 (:shape-name
                                  "DescribeQuerySuggestionsConfigResponse"))

(smithy/sdk/shapes:define-input describe-thesaurus-request common-lisp:nil
                                ((id :target-type thesaurus-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "DescribeThesaurusRequest"))

(smithy/sdk/shapes:define-output describe-thesaurus-response common-lisp:nil
                                 ((id :target-type thesaurus-id :member-name
                                   "Id")
                                  (index-id :target-type index-id :member-name
                                   "IndexId")
                                  (name :target-type thesaurus-name
                                   :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type thesaurus-status
                                   :member-name "Status")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (source-s3path :target-type s3path
                                   :member-name "SourceS3Path")
                                  (file-size-bytes :target-type long
                                   :member-name "FileSizeBytes")
                                  (term-count :target-type long :member-name
                                   "TermCount")
                                  (synonym-rule-count :target-type long
                                   :member-name "SynonymRuleCount"))
                                 (:shape-name "DescribeThesaurusResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-entities-from-experience-request
                                common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (entity-list :target-type
                                  disassociate-entity-list :required
                                  common-lisp:t :member-name "EntityList"))
                                (:shape-name
                                 "DisassociateEntitiesFromExperienceRequest"))

(smithy/sdk/shapes:define-output disassociate-entities-from-experience-response
                                 common-lisp:nil
                                 ((failed-entity-list :target-type
                                   failed-entity-list :member-name
                                   "FailedEntityList"))
                                 (:shape-name
                                  "DisassociateEntitiesFromExperienceResponse"))

(smithy/sdk/shapes:define-list disassociate-entity-list :member
                               entity-configuration)

(smithy/sdk/shapes:define-input disassociate-personas-from-entities-request
                                common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (entity-ids :target-type entity-ids-list
                                  :required common-lisp:t :member-name
                                  "EntityIds"))
                                (:shape-name
                                 "DisassociatePersonasFromEntitiesRequest"))

(smithy/sdk/shapes:define-output disassociate-personas-from-entities-response
                                 common-lisp:nil
                                 ((failed-entity-list :target-type
                                   failed-entity-list :member-name
                                   "FailedEntityList"))
                                 (:shape-name
                                  "DisassociatePersonasFromEntitiesResponse"))

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((id :target-type document-id :required
                                      common-lisp:t :member-name "Id")
                                     (title :target-type title :member-name
                                      "Title")
                                     (blob :target-type blob :member-name
                                      "Blob")
                                     (s3path :target-type s3path :member-name
                                      "S3Path")
                                     (attributes :target-type
                                      document-attribute-list :member-name
                                      "Attributes")
                                     (access-control-list :target-type
                                      principal-list :member-name
                                      "AccessControlList")
                                     (hierarchical-access-control-list
                                      :target-type hierarchical-principal-list
                                      :member-name
                                      "HierarchicalAccessControlList")
                                     (content-type :target-type content-type
                                      :member-name "ContentType")
                                     (access-control-configuration-id
                                      :target-type
                                      access-control-configuration-id
                                      :member-name
                                      "AccessControlConfigurationId"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-structure document-attribute common-lisp:nil
                                    ((key :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type
                                      document-attribute-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "DocumentAttribute"))

(smithy/sdk/shapes:define-structure document-attribute-condition
                                    common-lisp:nil
                                    ((condition-document-attribute-key
                                      :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "ConditionDocumentAttributeKey")
                                     (operator :target-type condition-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (condition-on-value :target-type
                                      document-attribute-value :member-name
                                      "ConditionOnValue"))
                                    (:shape-name "DocumentAttributeCondition"))

(smithy/sdk/shapes:define-type document-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-attribute-key-list :member
                               document-attribute-key)

(smithy/sdk/shapes:define-list document-attribute-list :member
                               document-attribute)

(smithy/sdk/shapes:define-list document-attribute-string-list-value :member
                               string)

(smithy/sdk/shapes:define-type document-attribute-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-attribute-target common-lisp:nil
                                    ((target-document-attribute-key
                                      :target-type document-attribute-key
                                      :member-name
                                      "TargetDocumentAttributeKey")
                                     (target-document-attribute-value-deletion
                                      :target-type boolean :member-name
                                      "TargetDocumentAttributeValueDeletion")
                                     (target-document-attribute-value
                                      :target-type document-attribute-value
                                      :member-name
                                      "TargetDocumentAttributeValue"))
                                    (:shape-name "DocumentAttributeTarget"))

(smithy/sdk/shapes:define-structure document-attribute-value common-lisp:nil
                                    ((string-value :target-type
                                      document-attribute-string-value
                                      :member-name "StringValue")
                                     (string-list-value :target-type
                                      document-attribute-string-list-value
                                      :member-name "StringListValue")
                                     (long-value :target-type long :member-name
                                      "LongValue")
                                     (date-value :target-type timestamp
                                      :member-name "DateValue"))
                                    (:shape-name "DocumentAttributeValue"))

(smithy/sdk/shapes:define-structure document-attribute-value-count-pair
                                    common-lisp:nil
                                    ((document-attribute-value :target-type
                                      document-attribute-value :member-name
                                      "DocumentAttributeValue")
                                     (count :target-type integer :member-name
                                      "Count")
                                     (facet-results :target-type
                                      facet-result-list :member-name
                                      "FacetResults"))
                                    (:shape-name
                                     "DocumentAttributeValueCountPair"))

(smithy/sdk/shapes:define-list document-attribute-value-count-pair-list :member
                               document-attribute-value-count-pair)

(smithy/sdk/shapes:define-enum document-attribute-value-type
    common-lisp:nil
  (:string-value "STRING_VALUE")
  (:string-list-value "STRING_LIST_VALUE")
  (:long-value "LONG_VALUE")
  (:date-value "DATE_VALUE"))

(smithy/sdk/shapes:define-type document-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-id-list :member document-id)

(smithy/sdk/shapes:define-structure document-info common-lisp:nil
                                    ((document-id :target-type document-id
                                      :required common-lisp:t :member-name
                                      "DocumentId")
                                     (attributes :target-type
                                      document-attribute-list :member-name
                                      "Attributes"))
                                    (:shape-name "DocumentInfo"))

(smithy/sdk/shapes:define-list document-info-list :member document-info)

(smithy/sdk/shapes:define-list document-list :member document)

(smithy/sdk/shapes:define-type document-metadata-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure document-metadata-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      document-metadata-configuration-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type
                                      document-attribute-value-type :required
                                      common-lisp:t :member-name "Type")
                                     (relevance :target-type relevance
                                      :member-name "Relevance")
                                     (search :target-type search :member-name
                                      "Search"))
                                    (:shape-name
                                     "DocumentMetadataConfiguration"))

(smithy/sdk/shapes:define-list document-metadata-configuration-list :member
                               document-metadata-configuration)

(smithy/sdk/shapes:define-type document-metadata-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-relevance-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      document-metadata-configuration-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (relevance :target-type relevance
                                      :required common-lisp:t :member-name
                                      "Relevance"))
                                    (:shape-name
                                     "DocumentRelevanceConfiguration"))

(smithy/sdk/shapes:define-list document-relevance-override-configuration-list
                               :member document-relevance-configuration)

(smithy/sdk/shapes:define-enum document-status
    common-lisp:nil
  (:not-found "NOT_FOUND")
  (:processing "PROCESSING")
  (:indexed "INDEXED")
  (:updated "UPDATED")
  (:failed "FAILED")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-list document-status-list :member status)

(smithy/sdk/shapes:define-type document-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure documents-metadata-configuration
                                    common-lisp:nil
                                    ((s3prefix :target-type s3object-key
                                      :member-name "S3Prefix"))
                                    (:shape-name
                                     "DocumentsMetadataConfiguration"))

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:home "HOME"))

(smithy/sdk/shapes:define-type enterprise-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-configuration common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "EntityId")
                                     (entity-type :target-type entity-type
                                      :required common-lisp:t :member-name
                                      "EntityType"))
                                    (:shape-name "EntityConfiguration"))

(smithy/sdk/shapes:define-structure entity-display-data common-lisp:nil
                                    ((user-name :target-type name-type
                                      :member-name "UserName")
                                     (group-name :target-type name-type
                                      :member-name "GroupName")
                                     (identified-user-name :target-type
                                      name-type :member-name
                                      "IdentifiedUserName")
                                     (first-name :target-type name-type
                                      :member-name "FirstName")
                                     (last-name :target-type name-type
                                      :member-name "LastName"))
                                    (:shape-name "EntityDisplayData"))

(smithy/sdk/shapes:define-list entity-filter :member alfresco-entity)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-ids-list :member entity-id)

(smithy/sdk/shapes:define-structure entity-persona-configuration
                                    common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "EntityId")
                                     (persona :target-type persona :required
                                      common-lisp:t :member-name "Persona"))
                                    (:shape-name "EntityPersonaConfiguration"))

(smithy/sdk/shapes:define-list entity-persona-configuration-list :member
                               entity-persona-configuration)

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:internal-error "InternalError")
  (:invalid-request "InvalidRequest"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exclude-mime-types-list :member mime-type)

(smithy/sdk/shapes:define-list exclude-shared-drives-list :member
                               shared-drive-id)

(smithy/sdk/shapes:define-list exclude-user-accounts-list :member user-account)

(smithy/sdk/shapes:define-structure expand-configuration common-lisp:nil
                                    ((max-result-items-to-expand :target-type
                                      integer :member-name
                                      "MaxResultItemsToExpand")
                                     (max-expanded-results-per-item
                                      :target-type integer :member-name
                                      "MaxExpandedResultsPerItem"))
                                    (:shape-name "ExpandConfiguration"))

(smithy/sdk/shapes:define-structure expanded-result-item common-lisp:nil
                                    ((id :target-type result-id :member-name
                                      "Id")
                                     (document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (document-title :target-type
                                      text-with-highlights :member-name
                                      "DocumentTitle")
                                     (document-excerpt :target-type
                                      text-with-highlights :member-name
                                      "DocumentExcerpt")
                                     (document-uri :target-type url
                                      :member-name "DocumentURI")
                                     (document-attributes :target-type
                                      document-attribute-list :member-name
                                      "DocumentAttributes"))
                                    (:shape-name "ExpandedResultItem"))

(smithy/sdk/shapes:define-list expanded-result-list :member
                               expanded-result-item)

(smithy/sdk/shapes:define-structure experience-configuration common-lisp:nil
                                    ((content-source-configuration :target-type
                                      content-source-configuration :member-name
                                      "ContentSourceConfiguration")
                                     (user-identity-configuration :target-type
                                      user-identity-configuration :member-name
                                      "UserIdentityConfiguration"))
                                    (:shape-name "ExperienceConfiguration"))

(smithy/sdk/shapes:define-structure experience-endpoint common-lisp:nil
                                    ((endpoint-type :target-type endpoint-type
                                      :member-name "EndpointType")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint"))
                                    (:shape-name "ExperienceEndpoint"))

(smithy/sdk/shapes:define-list experience-endpoints :member experience-endpoint)

(smithy/sdk/shapes:define-structure experience-entities-summary common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :member-name "EntityId")
                                     (entity-type :target-type entity-type
                                      :member-name "EntityType")
                                     (display-data :target-type
                                      entity-display-data :member-name
                                      "DisplayData"))
                                    (:shape-name "ExperienceEntitiesSummary"))

(smithy/sdk/shapes:define-list experience-entities-summary-list :member
                               experience-entities-summary)

(smithy/sdk/shapes:define-type experience-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experience-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum experience-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure experiences-summary common-lisp:nil
                                    ((name :target-type experience-name
                                      :member-name "Name")
                                     (id :target-type experience-id
                                      :member-name "Id")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (status :target-type experience-status
                                      :member-name "Status")
                                     (endpoints :target-type
                                      experience-endpoints :member-name
                                      "Endpoints"))
                                    (:shape-name "ExperiencesSummary"))

(smithy/sdk/shapes:define-list experiences-summary-list :member
                               experiences-summary)

(smithy/sdk/shapes:define-structure facet common-lisp:nil
                                    ((document-attribute-key :target-type
                                      document-attribute-key :member-name
                                      "DocumentAttributeKey")
                                     (facets :target-type facet-list
                                      :member-name "Facets")
                                     (max-results :target-type
                                      top-document-attribute-value-count-pairs-size
                                      :member-name "MaxResults"))
                                    (:shape-name "Facet"))

(smithy/sdk/shapes:define-list facet-list :member facet)

(smithy/sdk/shapes:define-structure facet-result common-lisp:nil
                                    ((document-attribute-key :target-type
                                      document-attribute-key :member-name
                                      "DocumentAttributeKey")
                                     (document-attribute-value-type
                                      :target-type
                                      document-attribute-value-type
                                      :member-name
                                      "DocumentAttributeValueType")
                                     (document-attribute-value-count-pairs
                                      :target-type
                                      document-attribute-value-count-pair-list
                                      :member-name
                                      "DocumentAttributeValueCountPairs"))
                                    (:shape-name "FacetResult"))

(smithy/sdk/shapes:define-list facet-result-list :member facet-result)

(smithy/sdk/shapes:define-structure failed-entity common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :member-name "EntityId")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "FailedEntity"))

(smithy/sdk/shapes:define-list failed-entity-list :member failed-entity)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum faq-file-format
    common-lisp:nil
  (:csv "CSV")
  (:csv-with-header "CSV_WITH_HEADER")
  (:json "JSON"))

(smithy/sdk/shapes:define-type faq-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list faq-ids-list :member faq-id)

(smithy/sdk/shapes:define-type faq-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure faq-statistics common-lisp:nil
                                    ((indexed-question-answers-count
                                      :target-type
                                      indexed-question-answers-count :required
                                      common-lisp:t :member-name
                                      "IndexedQuestionAnswersCount"))
                                    (:shape-name "FaqStatistics"))

(smithy/sdk/shapes:define-enum faq-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure faq-summary common-lisp:nil
                                    ((id :target-type faq-id :member-name "Id")
                                     (name :target-type faq-name :member-name
                                      "Name")
                                     (status :target-type faq-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (file-format :target-type faq-file-format
                                      :member-name "FileFormat")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode"))
                                    (:shape-name "FaqSummary"))

(smithy/sdk/shapes:define-list faq-summary-items :member faq-summary)

(smithy/sdk/shapes:define-structure featured-document common-lisp:nil
                                    ((id :target-type document-id :member-name
                                      "Id"))
                                    (:shape-name "FeaturedDocument"))

(smithy/sdk/shapes:define-list featured-document-list :member featured-document)

(smithy/sdk/shapes:define-structure featured-document-missing common-lisp:nil
                                    ((id :target-type document-id :member-name
                                      "Id"))
                                    (:shape-name "FeaturedDocumentMissing"))

(smithy/sdk/shapes:define-list featured-document-missing-list :member
                               featured-document-missing)

(smithy/sdk/shapes:define-structure featured-document-with-metadata
                                    common-lisp:nil
                                    ((id :target-type document-id :member-name
                                      "Id")
                                     (title :target-type string :member-name
                                      "Title")
                                     (uri :target-type url :member-name "URI"))
                                    (:shape-name
                                     "FeaturedDocumentWithMetadata"))

(smithy/sdk/shapes:define-list featured-document-with-metadata-list :member
                               featured-document-with-metadata)

(smithy/sdk/shapes:define-error featured-results-conflict-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (conflicting-items :target-type
                                  conflicting-items :member-name
                                  "ConflictingItems"))
                                (:shape-name
                                 "FeaturedResultsConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure featured-results-item common-lisp:nil
                                    ((id :target-type result-id :member-name
                                      "Id")
                                     (type :target-type query-result-type
                                      :member-name "Type")
                                     (additional-attributes :target-type
                                      additional-result-attribute-list
                                      :member-name "AdditionalAttributes")
                                     (document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (document-title :target-type
                                      text-with-highlights :member-name
                                      "DocumentTitle")
                                     (document-excerpt :target-type
                                      text-with-highlights :member-name
                                      "DocumentExcerpt")
                                     (document-uri :target-type url
                                      :member-name "DocumentURI")
                                     (document-attributes :target-type
                                      document-attribute-list :member-name
                                      "DocumentAttributes")
                                     (feedback-token :target-type
                                      feedback-token :member-name
                                      "FeedbackToken"))
                                    (:shape-name "FeaturedResultsItem"))

(smithy/sdk/shapes:define-list featured-results-item-list :member
                               featured-results-item)

(smithy/sdk/shapes:define-structure featured-results-set common-lisp:nil
                                    ((featured-results-set-id :target-type
                                      featured-results-set-id :member-name
                                      "FeaturedResultsSetId")
                                     (featured-results-set-name :target-type
                                      featured-results-set-name :member-name
                                      "FeaturedResultsSetName")
                                     (description :target-type
                                      featured-results-set-description
                                      :member-name "Description")
                                     (status :target-type
                                      featured-results-set-status :member-name
                                      "Status")
                                     (query-texts :target-type query-text-list
                                      :member-name "QueryTexts")
                                     (featured-documents :target-type
                                      featured-document-list :member-name
                                      "FeaturedDocuments")
                                     (last-updated-timestamp :target-type long
                                      :member-name "LastUpdatedTimestamp")
                                     (creation-timestamp :target-type long
                                      :member-name "CreationTimestamp"))
                                    (:shape-name "FeaturedResultsSet"))

(smithy/sdk/shapes:define-type featured-results-set-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type featured-results-set-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list featured-results-set-id-list :member
                               featured-results-set-id)

(smithy/sdk/shapes:define-type featured-results-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum featured-results-set-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure featured-results-set-summary
                                    common-lisp:nil
                                    ((featured-results-set-id :target-type
                                      featured-results-set-id :member-name
                                      "FeaturedResultsSetId")
                                     (featured-results-set-name :target-type
                                      featured-results-set-name :member-name
                                      "FeaturedResultsSetName")
                                     (status :target-type
                                      featured-results-set-status :member-name
                                      "Status")
                                     (last-updated-timestamp :target-type long
                                      :member-name "LastUpdatedTimestamp")
                                     (creation-timestamp :target-type long
                                      :member-name "CreationTimestamp"))
                                    (:shape-name "FeaturedResultsSetSummary"))

(smithy/sdk/shapes:define-list featured-results-set-summary-items :member
                               featured-results-set-summary)

(smithy/sdk/shapes:define-type feedback-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-system-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type folder-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list folder-id-list :member folder-id)

(smithy/sdk/shapes:define-structure fsx-configuration common-lisp:nil
                                    ((file-system-id :target-type
                                      file-system-id :required common-lisp:t
                                      :member-name "FileSystemId")
                                     (file-system-type :target-type
                                      fsx-file-system-type :required
                                      common-lisp:t :member-name
                                      "FileSystemType")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration :required
                                      common-lisp:t :member-name
                                      "VpcConfiguration")
                                     (secret-arn :target-type secret-arn
                                      :member-name "SecretArn")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings"))
                                    (:shape-name "FsxConfiguration"))

(smithy/sdk/shapes:define-enum fsx-file-system-type
    common-lisp:nil
  (:windows "WINDOWS"))

(smithy/sdk/shapes:define-input get-query-suggestions-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (query-text :target-type suggestion-query-text
                                  :required common-lisp:t :member-name
                                  "QueryText")
                                 (max-suggestions-count :target-type integer
                                  :member-name "MaxSuggestionsCount")
                                 (suggestion-types :target-type
                                  suggestion-types :member-name
                                  "SuggestionTypes")
                                 (attribute-suggestions-config :target-type
                                  attribute-suggestions-get-config :member-name
                                  "AttributeSuggestionsConfig"))
                                (:shape-name "GetQuerySuggestionsRequest"))

(smithy/sdk/shapes:define-output get-query-suggestions-response common-lisp:nil
                                 ((query-suggestions-id :target-type
                                   query-suggestions-id :member-name
                                   "QuerySuggestionsId")
                                  (suggestions :target-type suggestion-list
                                   :member-name "Suggestions"))
                                 (:shape-name "GetQuerySuggestionsResponse"))

(smithy/sdk/shapes:define-input get-snapshots-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (interval :target-type interval :required
                                  common-lisp:t :member-name "Interval")
                                 (metric-type :target-type metric-type
                                  :required common-lisp:t :member-name
                                  "MetricType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "GetSnapshotsRequest"))

(smithy/sdk/shapes:define-output get-snapshots-response common-lisp:nil
                                 ((snap-shot-time-filter :target-type
                                   time-range :member-name
                                   "SnapShotTimeFilter")
                                  (snapshots-data-header :target-type
                                   snapshots-data-header-fields :member-name
                                   "SnapshotsDataHeader")
                                  (snapshots-data :target-type
                                   snapshots-data-records :member-name
                                   "SnapshotsData")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetSnapshotsResponse"))

(smithy/sdk/shapes:define-structure git-hub-configuration common-lisp:nil
                                    ((saa-sconfiguration :target-type
                                      saa-sconfiguration :member-name
                                      "SaaSConfiguration")
                                     (on-premise-configuration :target-type
                                      on-premise-configuration :member-name
                                      "OnPremiseConfiguration")
                                     (type :target-type type :member-name
                                      "Type")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (git-hub-document-crawl-properties
                                      :target-type
                                      git-hub-document-crawl-properties
                                      :member-name
                                      "GitHubDocumentCrawlProperties")
                                     (repository-filter :target-type
                                      repository-names :member-name
                                      "RepositoryFilter")
                                     (inclusion-folder-name-patterns
                                      :target-type string-list :member-name
                                      "InclusionFolderNamePatterns")
                                     (inclusion-file-type-patterns :target-type
                                      string-list :member-name
                                      "InclusionFileTypePatterns")
                                     (inclusion-file-name-patterns :target-type
                                      string-list :member-name
                                      "InclusionFileNamePatterns")
                                     (exclusion-folder-name-patterns
                                      :target-type string-list :member-name
                                      "ExclusionFolderNamePatterns")
                                     (exclusion-file-type-patterns :target-type
                                      string-list :member-name
                                      "ExclusionFileTypePatterns")
                                     (exclusion-file-name-patterns :target-type
                                      string-list :member-name
                                      "ExclusionFileNamePatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration")
                                     (git-hub-repository-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubRepositoryConfigurationFieldMappings")
                                     (git-hub-commit-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubCommitConfigurationFieldMappings")
                                     (git-hub-issue-document-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubIssueDocumentConfigurationFieldMappings")
                                     (git-hub-issue-comment-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubIssueCommentConfigurationFieldMappings")
                                     (git-hub-issue-attachment-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubIssueAttachmentConfigurationFieldMappings")
                                     (git-hub-pull-request-comment-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubPullRequestCommentConfigurationFieldMappings")
                                     (git-hub-pull-request-document-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubPullRequestDocumentConfigurationFieldMappings")
                                     (git-hub-pull-request-document-attachment-configuration-field-mappings
                                      :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name
                                      "GitHubPullRequestDocumentAttachmentConfigurationFieldMappings"))
                                    (:shape-name "GitHubConfiguration"))

(smithy/sdk/shapes:define-structure git-hub-document-crawl-properties
                                    common-lisp:nil
                                    ((crawl-repository-documents :target-type
                                      boolean :member-name
                                      "CrawlRepositoryDocuments")
                                     (crawl-issue :target-type boolean
                                      :member-name "CrawlIssue")
                                     (crawl-issue-comment :target-type boolean
                                      :member-name "CrawlIssueComment")
                                     (crawl-issue-comment-attachment
                                      :target-type boolean :member-name
                                      "CrawlIssueCommentAttachment")
                                     (crawl-pull-request :target-type boolean
                                      :member-name "CrawlPullRequest")
                                     (crawl-pull-request-comment :target-type
                                      boolean :member-name
                                      "CrawlPullRequestComment")
                                     (crawl-pull-request-comment-attachment
                                      :target-type boolean :member-name
                                      "CrawlPullRequestCommentAttachment"))
                                    (:shape-name
                                     "GitHubDocumentCrawlProperties"))

(smithy/sdk/shapes:define-structure google-drive-configuration common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (exclude-mime-types :target-type
                                      exclude-mime-types-list :member-name
                                      "ExcludeMimeTypes")
                                     (exclude-user-accounts :target-type
                                      exclude-user-accounts-list :member-name
                                      "ExcludeUserAccounts")
                                     (exclude-shared-drives :target-type
                                      exclude-shared-drives-list :member-name
                                      "ExcludeSharedDrives"))
                                    (:shape-name "GoogleDriveConfiguration"))

(smithy/sdk/shapes:define-type group-attribute-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-members common-lisp:nil
                                    ((member-groups :target-type member-groups
                                      :member-name "MemberGroups")
                                     (member-users :target-type member-users
                                      :member-name "MemberUsers")
                                     (s3pathfor-group-members :target-type
                                      s3path :member-name
                                      "S3PathforGroupMembers"))
                                    (:shape-name "GroupMembers"))

(smithy/sdk/shapes:define-list group-ordering-id-summaries :member
                               group-ordering-id-summary)

(smithy/sdk/shapes:define-structure group-ordering-id-summary common-lisp:nil
                                    ((status :target-type
                                      principal-mapping-status :member-name
                                      "Status")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (received-at :target-type timestamp
                                      :member-name "ReceivedAt")
                                     (ordering-id :target-type
                                      principal-ordering-id :member-name
                                      "OrderingId")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "GroupOrderingIdSummary"))

(smithy/sdk/shapes:define-structure group-summary common-lisp:nil
                                    ((group-id :target-type group-id
                                      :member-name "GroupId")
                                     (ordering-id :target-type
                                      principal-ordering-id :member-name
                                      "OrderingId"))
                                    (:shape-name "GroupSummary"))

(smithy/sdk/shapes:define-list groups :member principal-name)

(smithy/sdk/shapes:define-structure hierarchical-principal common-lisp:nil
                                    ((principal-list :target-type
                                      principal-list :required common-lisp:t
                                      :member-name "PrincipalList"))
                                    (:shape-name "HierarchicalPrincipal"))

(smithy/sdk/shapes:define-list hierarchical-principal-list :member
                               hierarchical-principal)

(smithy/sdk/shapes:define-structure highlight common-lisp:nil
                                    ((begin-offset :target-type integer
                                      :required common-lisp:t :member-name
                                      "BeginOffset")
                                     (end-offset :target-type integer :required
                                      common-lisp:t :member-name "EndOffset")
                                     (top-answer :target-type boolean
                                      :member-name "TopAnswer")
                                     (type :target-type highlight-type
                                      :member-name "Type"))
                                    (:shape-name "Highlight"))

(smithy/sdk/shapes:define-list highlight-list :member highlight)

(smithy/sdk/shapes:define-enum highlight-type
    common-lisp:nil
  (:standard "STANDARD")
  (:thesaurus-synonym "THESAURUS_SYNONYM"))

(smithy/sdk/shapes:define-structure hook-configuration common-lisp:nil
                                    ((invocation-condition :target-type
                                      document-attribute-condition :member-name
                                      "InvocationCondition")
                                     (lambda-arn :target-type lambda-arn
                                      :required common-lisp:t :member-name
                                      "LambdaArn")
                                     (s3bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "S3Bucket"))
                                    (:shape-name "HookConfiguration"))

(smithy/sdk/shapes:define-type host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type importance smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure index-configuration-summary common-lisp:nil
                                    ((name :target-type index-name :member-name
                                      "Name")
                                     (id :target-type index-id :member-name
                                      "Id")
                                     (edition :target-type index-edition
                                      :member-name "Edition")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt")
                                     (status :target-type index-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "IndexConfigurationSummary"))

(smithy/sdk/shapes:define-list index-configuration-summary-list :member
                               index-configuration-summary)

(smithy/sdk/shapes:define-enum index-edition
    common-lisp:nil
  (:developer-edition "DEVELOPER_EDITION")
  (:enterprise-edition "ENTERPRISE_EDITION")
  (:gen-ai-enterprise-edition "GEN_AI_ENTERPRISE_EDITION"))

(smithy/sdk/shapes:define-type index-field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure index-statistics common-lisp:nil
                                    ((faq-statistics :target-type
                                      faq-statistics :required common-lisp:t
                                      :member-name "FaqStatistics")
                                     (text-document-statistics :target-type
                                      text-document-statistics :required
                                      common-lisp:t :member-name
                                      "TextDocumentStatistics"))
                                    (:shape-name "IndexStatistics"))

(smithy/sdk/shapes:define-enum index-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:system-updating "SYSTEM_UPDATING"))

(smithy/sdk/shapes:define-type indexed-question-answers-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type indexed-text-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type indexed-text-documents-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure
 inline-custom-document-enrichment-configuration common-lisp:nil
 ((condition :target-type document-attribute-condition :member-name
   "Condition")
  (target :target-type document-attribute-target :member-name "Target")
  (document-content-deletion :target-type boolean :member-name
   "DocumentContentDeletion"))
 (:shape-name "InlineCustomDocumentEnrichmentConfiguration"))

(smithy/sdk/shapes:define-list
 inline-custom-document-enrichment-configuration-list :member
 inline-custom-document-enrichment-configuration)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum interval
    common-lisp:nil
  (:this-month "THIS_MONTH")
  (:this-week "THIS_WEEK")
  (:one-week-ago "ONE_WEEK_AGO")
  (:two-weeks-ago "TWO_WEEKS_AGO")
  (:one-month-ago "ONE_MONTH_AGO")
  (:two-months-ago "TWO_MONTHS_AGO"))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum issue-sub-entity
    common-lisp:nil
  (:comments "COMMENTS")
  (:attachments "ATTACHMENTS")
  (:worklogs "WORKLOGS"))

(smithy/sdk/shapes:define-list issue-sub-entity-filter :member issue-sub-entity)

(smithy/sdk/shapes:define-list issue-type :member string)

(smithy/sdk/shapes:define-type issuer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type jira-account-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure jira-configuration common-lisp:nil
                                    ((jira-account-url :target-type
                                      jira-account-url :required common-lisp:t
                                      :member-name "JiraAccountUrl")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (project :target-type project :member-name
                                      "Project")
                                     (issue-type :target-type issue-type
                                      :member-name "IssueType")
                                     (status :target-type jira-status
                                      :member-name "Status")
                                     (issue-sub-entity-filter :target-type
                                      issue-sub-entity-filter :member-name
                                      "IssueSubEntityFilter")
                                     (attachment-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "AttachmentFieldMappings")
                                     (comment-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "CommentFieldMappings")
                                     (issue-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "IssueFieldMappings")
                                     (project-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "ProjectFieldMappings")
                                     (work-log-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "WorkLogFieldMappings")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration"))
                                    (:shape-name "JiraConfiguration"))

(smithy/sdk/shapes:define-list jira-status :member string)

(smithy/sdk/shapes:define-structure json-token-type-configuration
                                    common-lisp:nil
                                    ((user-name-attribute-field :target-type
                                      string :required common-lisp:t
                                      :member-name "UserNameAttributeField")
                                     (group-attribute-field :target-type string
                                      :required common-lisp:t :member-name
                                      "GroupAttributeField"))
                                    (:shape-name "JsonTokenTypeConfiguration"))

(smithy/sdk/shapes:define-structure jwt-token-type-configuration
                                    common-lisp:nil
                                    ((key-location :target-type key-location
                                      :required common-lisp:t :member-name
                                      "KeyLocation")
                                     (url :target-type url :member-name "URL")
                                     (secret-manager-arn :target-type role-arn
                                      :member-name "SecretManagerArn")
                                     (user-name-attribute-field :target-type
                                      user-name-attribute-field :member-name
                                      "UserNameAttributeField")
                                     (group-attribute-field :target-type
                                      group-attribute-field :member-name
                                      "GroupAttributeField")
                                     (issuer :target-type issuer :member-name
                                      "Issuer")
                                     (claim-regex :target-type claim-regex
                                      :member-name "ClaimRegex"))
                                    (:shape-name "JwtTokenTypeConfiguration"))

(smithy/sdk/shapes:define-enum key-location
    common-lisp:nil
  (:url "URL")
  (:secret-manager "SECRET_MANAGER"))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-access-control-configurations-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-access-control-configurations-request
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListAccessControlConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-access-control-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (access-control-configurations :target-type
                                   access-control-configuration-summary-list
                                   :required common-lisp:t :member-name
                                   "AccessControlConfigurations"))
                                 (:shape-name
                                  "ListAccessControlConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-data-source-sync-jobs-request
                                common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-data-source-sync-jobs-request
                                  :member-name "MaxResults")
                                 (start-time-filter :target-type time-range
                                  :member-name "StartTimeFilter")
                                 (status-filter :target-type
                                  data-source-sync-job-status :member-name
                                  "StatusFilter"))
                                (:shape-name "ListDataSourceSyncJobsRequest"))

(smithy/sdk/shapes:define-output list-data-source-sync-jobs-response
                                 common-lisp:nil
                                 ((history :target-type
                                   data-source-sync-job-history-list
                                   :member-name "History")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDataSourceSyncJobsResponse"))

(smithy/sdk/shapes:define-input list-data-sources-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-data-sources-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-data-sources-response common-lisp:nil
                                 ((summary-items :target-type
                                   data-source-summary-list :member-name
                                   "SummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-entity-personas-request common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-entity-personas-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListEntityPersonasRequest"))

(smithy/sdk/shapes:define-output list-entity-personas-response common-lisp:nil
                                 ((summary-items :target-type
                                   personas-summary-list :member-name
                                   "SummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEntityPersonasResponse"))

(smithy/sdk/shapes:define-input list-experience-entities-request
                                common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExperienceEntitiesRequest"))

(smithy/sdk/shapes:define-output list-experience-entities-response
                                 common-lisp:nil
                                 ((summary-items :target-type
                                   experience-entities-summary-list
                                   :member-name "SummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExperienceEntitiesResponse"))

(smithy/sdk/shapes:define-input list-experiences-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-experiences-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListExperiencesRequest"))

(smithy/sdk/shapes:define-output list-experiences-response common-lisp:nil
                                 ((summary-items :target-type
                                   experiences-summary-list :member-name
                                   "SummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExperiencesResponse"))

(smithy/sdk/shapes:define-input list-faqs-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-faqs-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListFaqsRequest"))

(smithy/sdk/shapes:define-output list-faqs-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (faq-summary-items :target-type
                                   faq-summary-items :member-name
                                   "FaqSummaryItems"))
                                 (:shape-name "ListFaqsResponse"))

(smithy/sdk/shapes:define-input list-featured-results-sets-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-featured-results-sets-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListFeaturedResultsSetsRequest"))

(smithy/sdk/shapes:define-output list-featured-results-sets-response
                                 common-lisp:nil
                                 ((featured-results-set-summary-items
                                   :target-type
                                   featured-results-set-summary-items
                                   :member-name
                                   "FeaturedResultsSetSummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListFeaturedResultsSetsResponse"))

(smithy/sdk/shapes:define-input list-groups-older-than-ordering-id-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (data-source-id :target-type data-source-id
                                  :member-name "DataSourceId")
                                 (ordering-id :target-type
                                  principal-ordering-id :required common-lisp:t
                                  :member-name "OrderingId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-principals-request
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListGroupsOlderThanOrderingIdRequest"))

(smithy/sdk/shapes:define-output list-groups-older-than-ordering-id-response
                                 common-lisp:nil
                                 ((groups-summaries :target-type
                                   list-of-group-summaries :member-name
                                   "GroupsSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListGroupsOlderThanOrderingIdResponse"))

(smithy/sdk/shapes:define-input list-indices-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-indices-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListIndicesRequest"))

(smithy/sdk/shapes:define-output list-indices-response common-lisp:nil
                                 ((index-configuration-summary-items
                                   :target-type
                                   index-configuration-summary-list
                                   :member-name
                                   "IndexConfigurationSummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIndicesResponse"))

(smithy/sdk/shapes:define-list list-of-group-summaries :member group-summary)

(smithy/sdk/shapes:define-input list-query-suggestions-block-lists-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-query-suggestions-block-lists
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListQuerySuggestionsBlockListsRequest"))

(smithy/sdk/shapes:define-output list-query-suggestions-block-lists-response
                                 common-lisp:nil
                                 ((block-list-summary-items :target-type
                                   query-suggestions-block-list-summary-items
                                   :member-name "BlockListSummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListQuerySuggestionsBlockListsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-thesauri-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-thesauri-request
                                  :member-name "MaxResults"))
                                (:shape-name "ListThesauriRequest"))

(smithy/sdk/shapes:define-output list-thesauri-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (thesaurus-summary-items :target-type
                                   thesaurus-summary-items :member-name
                                   "ThesaurusSummaryItems"))
                                 (:shape-name "ListThesauriResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type look-back-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-content-size-per-page-in-mega-bytes
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type max-links-per-page
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-access-control-configurations-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-data-source-sync-jobs-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-data-sources-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-entity-personas-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-experiences-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-faqs-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-featured-results-sets-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-indices-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-principals-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-query-suggestions-block-lists
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer-for-list-thesauri-request
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-urls-per-minute-crawl-rate
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member-group common-lisp:nil
                                    ((group-id :target-type group-id :required
                                      common-lisp:t :member-name "GroupId")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "DataSourceId"))
                                    (:shape-name "MemberGroup"))

(smithy/sdk/shapes:define-list member-groups :member member-group)

(smithy/sdk/shapes:define-structure member-user common-lisp:nil
                                    ((user-id :target-type user-id :required
                                      common-lisp:t :member-name "UserId"))
                                    (:shape-name "MemberUser"))

(smithy/sdk/shapes:define-list member-users :member member-user)

(smithy/sdk/shapes:define-enum metric-type
    common-lisp:nil
  (:queries-by-count "QUERIES_BY_COUNT")
  (:queries-by-zero-click-rate "QUERIES_BY_ZERO_CLICK_RATE")
  (:queries-by-zero-result-rate "QUERIES_BY_ZERO_RESULT_RATE")
  (:docs-by-click-count "DOCS_BY_CLICK_COUNT")
  (:agg-query-doc-metrics "AGG_QUERY_DOC_METRICS")
  (:trend-query-doc-metrics "TREND_QUERY_DOC_METRICS"))

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mime-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-number-of-querying-users
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minimum-query-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum missing-attribute-key-strategy
    common-lisp:nil
  (:ignore "IGNORE")
  (:collapse "COLLAPSE")
  (:expand "EXPAND"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:enabled "ENABLED")
  (:learn-only "LEARN_ONLY"))

(smithy/sdk/shapes:define-type name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure on-premise-configuration common-lisp:nil
                                    ((host-url :target-type url :required
                                      common-lisp:t :member-name "HostUrl")
                                     (organization-name :target-type
                                      organization-name :required common-lisp:t
                                      :member-name "OrganizationName")
                                     (ssl-certificate-s3path :target-type
                                      s3path :required common-lisp:t
                                      :member-name "SslCertificateS3Path"))
                                    (:shape-name "OnPremiseConfiguration"))

(smithy/sdk/shapes:define-structure one-drive-configuration common-lisp:nil
                                    ((tenant-domain :target-type tenant-domain
                                      :required common-lisp:t :member-name
                                      "TenantDomain")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (one-drive-users :target-type
                                      one-drive-users :required common-lisp:t
                                      :member-name "OneDriveUsers")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (disable-local-groups :target-type boolean
                                      :member-name "DisableLocalGroups"))
                                    (:shape-name "OneDriveConfiguration"))

(smithy/sdk/shapes:define-type one-drive-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list one-drive-user-list :member one-drive-user)

(smithy/sdk/shapes:define-structure one-drive-users common-lisp:nil
                                    ((one-drive-user-list :target-type
                                      one-drive-user-list :member-name
                                      "OneDriveUserList")
                                     (one-drive-user-s3path :target-type s3path
                                      :member-name "OneDriveUserS3Path"))
                                    (:shape-name "OneDriveUsers"))

(smithy/sdk/shapes:define-enum order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum persona
    common-lisp:nil
  (:owner "OWNER")
  (:viewer "VIEWER"))

(smithy/sdk/shapes:define-structure personas-summary common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :member-name "EntityId")
                                     (persona :target-type persona :member-name
                                      "Persona")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "PersonasSummary"))

(smithy/sdk/shapes:define-list personas-summary-list :member personas-summary)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure principal common-lisp:nil
                                    ((name :target-type principal-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type principal-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (access :target-type read-access-type
                                      :required common-lisp:t :member-name
                                      "Access")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "DataSourceId"))
                                    (:shape-name "Principal"))

(smithy/sdk/shapes:define-list principal-list :member principal)

(smithy/sdk/shapes:define-enum principal-mapping-status
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:processing "PROCESSING")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type principal-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-ordering-id
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-list private-channel-filter :member string)

(smithy/sdk/shapes:define-list project :member string)

(smithy/sdk/shapes:define-structure proxy-configuration common-lisp:nil
                                    ((host :target-type host :required
                                      common-lisp:t :member-name "Host")
                                     (port :target-type port :required
                                      common-lisp:t :member-name "Port")
                                     (credentials :target-type secret-arn
                                      :member-name "Credentials"))
                                    (:shape-name "ProxyConfiguration"))

(smithy/sdk/shapes:define-list public-channel-filter :member string)

(smithy/sdk/shapes:define-input put-principal-mapping-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (data-source-id :target-type data-source-id
                                  :member-name "DataSourceId")
                                 (group-id :target-type group-id :required
                                  common-lisp:t :member-name "GroupId")
                                 (group-members :target-type group-members
                                  :required common-lisp:t :member-name
                                  "GroupMembers")
                                 (ordering-id :target-type
                                  principal-ordering-id :member-name
                                  "OrderingId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn"))
                                (:shape-name "PutPrincipalMappingRequest"))

(smithy/sdk/shapes:define-type query-capacity-unit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-identifiers-enclosing-option
    common-lisp:nil
  (:double-quotes "DOUBLE_QUOTES")
  (:none "NONE"))

(smithy/sdk/shapes:define-input query-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (query-text :target-type query-text
                                  :member-name "QueryText")
                                 (attribute-filter :target-type
                                  attribute-filter :member-name
                                  "AttributeFilter")
                                 (facets :target-type facet-list :member-name
                                  "Facets")
                                 (requested-document-attributes :target-type
                                  document-attribute-key-list :member-name
                                  "RequestedDocumentAttributes")
                                 (query-result-type-filter :target-type
                                  query-result-type :member-name
                                  "QueryResultTypeFilter")
                                 (document-relevance-override-configurations
                                  :target-type
                                  document-relevance-override-configuration-list
                                  :member-name
                                  "DocumentRelevanceOverrideConfigurations")
                                 (page-number :target-type integer :member-name
                                  "PageNumber")
                                 (page-size :target-type integer :member-name
                                  "PageSize")
                                 (sorting-configuration :target-type
                                  sorting-configuration :member-name
                                  "SortingConfiguration")
                                 (sorting-configurations :target-type
                                  sorting-configuration-list :member-name
                                  "SortingConfigurations")
                                 (user-context :target-type user-context
                                  :member-name "UserContext")
                                 (visitor-id :target-type visitor-id
                                  :member-name "VisitorId")
                                 (spell-correction-configuration :target-type
                                  spell-correction-configuration :member-name
                                  "SpellCorrectionConfiguration")
                                 (collapse-configuration :target-type
                                  collapse-configuration :member-name
                                  "CollapseConfiguration"))
                                (:shape-name "QueryRequest"))

(smithy/sdk/shapes:define-output query-result common-lisp:nil
                                 ((query-id :target-type query-id :member-name
                                   "QueryId")
                                  (result-items :target-type
                                   query-result-item-list :member-name
                                   "ResultItems")
                                  (facet-results :target-type facet-result-list
                                   :member-name "FacetResults")
                                  (total-number-of-results :target-type integer
                                   :member-name "TotalNumberOfResults")
                                  (warnings :target-type warning-list
                                   :member-name "Warnings")
                                  (spell-corrected-queries :target-type
                                   spell-corrected-query-list :member-name
                                   "SpellCorrectedQueries")
                                  (featured-results-items :target-type
                                   featured-results-item-list :member-name
                                   "FeaturedResultsItems"))
                                 (:shape-name "QueryResult"))

(smithy/sdk/shapes:define-enum query-result-format
    common-lisp:nil
  (:table "TABLE")
  (:text "TEXT"))

(smithy/sdk/shapes:define-structure query-result-item common-lisp:nil
                                    ((id :target-type result-id :member-name
                                      "Id")
                                     (type :target-type query-result-type
                                      :member-name "Type")
                                     (format :target-type query-result-format
                                      :member-name "Format")
                                     (additional-attributes :target-type
                                      additional-result-attribute-list
                                      :member-name "AdditionalAttributes")
                                     (document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (document-title :target-type
                                      text-with-highlights :member-name
                                      "DocumentTitle")
                                     (document-excerpt :target-type
                                      text-with-highlights :member-name
                                      "DocumentExcerpt")
                                     (document-uri :target-type url
                                      :member-name "DocumentURI")
                                     (document-attributes :target-type
                                      document-attribute-list :member-name
                                      "DocumentAttributes")
                                     (score-attributes :target-type
                                      score-attributes :member-name
                                      "ScoreAttributes")
                                     (feedback-token :target-type
                                      feedback-token :member-name
                                      "FeedbackToken")
                                     (table-excerpt :target-type table-excerpt
                                      :member-name "TableExcerpt")
                                     (collapsed-result-detail :target-type
                                      collapsed-result-detail :member-name
                                      "CollapsedResultDetail"))
                                    (:shape-name "QueryResultItem"))

(smithy/sdk/shapes:define-list query-result-item-list :member query-result-item)

(smithy/sdk/shapes:define-enum query-result-type
    common-lisp:nil
  (:document "DOCUMENT")
  (:question-answer "QUESTION_ANSWER")
  (:answer "ANSWER"))

(smithy/sdk/shapes:define-type query-suggestions-block-list-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-suggestions-block-list-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-suggestions-block-list-status
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:active-but-update-failed "ACTIVE_BUT_UPDATE_FAILED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure query-suggestions-block-list-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      query-suggestions-block-list-id
                                      :member-name "Id")
                                     (name :target-type
                                      query-suggestions-block-list-name
                                      :member-name "Name")
                                     (status :target-type
                                      query-suggestions-block-list-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (item-count :target-type integer
                                      :member-name "ItemCount"))
                                    (:shape-name
                                     "QuerySuggestionsBlockListSummary"))

(smithy/sdk/shapes:define-list query-suggestions-block-list-summary-items
                               :member query-suggestions-block-list-summary)

(smithy/sdk/shapes:define-type query-suggestions-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-suggestions-status
    common-lisp:nil
  (:active "ACTIVE")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type query-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-text-list :member query-text)

(smithy/sdk/shapes:define-structure quip-configuration common-lisp:nil
                                    ((domain :target-type domain :required
                                      common-lisp:t :member-name "Domain")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (crawl-file-comments :target-type boolean
                                      :member-name "CrawlFileComments")
                                     (crawl-chat-rooms :target-type boolean
                                      :member-name "CrawlChatRooms")
                                     (crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (folder-ids :target-type folder-id-list
                                      :member-name "FolderIds")
                                     (thread-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "ThreadFieldMappings")
                                     (message-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "MessageFieldMappings")
                                     (attachment-field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "AttachmentFieldMappings")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration"))
                                    (:shape-name "QuipConfiguration"))

(smithy/sdk/shapes:define-enum read-access-type
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure relevance common-lisp:nil
                                    ((freshness :target-type
                                      document-metadata-boolean :member-name
                                      "Freshness")
                                     (importance :target-type importance
                                      :member-name "Importance")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (rank-order :target-type order
                                      :member-name "RankOrder")
                                     (value-importance-map :target-type
                                      value-importance-map :member-name
                                      "ValueImportanceMap"))
                                    (:shape-name "Relevance"))

(smithy/sdk/shapes:define-structure relevance-feedback common-lisp:nil
                                    ((result-id :target-type result-id
                                      :required common-lisp:t :member-name
                                      "ResultId")
                                     (relevance-value :target-type
                                      relevance-type :required common-lisp:t
                                      :member-name "RelevanceValue"))
                                    (:shape-name "RelevanceFeedback"))

(smithy/sdk/shapes:define-list relevance-feedback-list :member
                               relevance-feedback)

(smithy/sdk/shapes:define-enum relevance-type
    common-lisp:nil
  (:relevant "RELEVANT")
  (:not-relevant "NOT_RELEVANT"))

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-names :member repository-name)

(smithy/sdk/shapes:define-error resource-already-exist-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type result-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input retrieve-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (query-text :target-type query-text :required
                                  common-lisp:t :member-name "QueryText")
                                 (attribute-filter :target-type
                                  attribute-filter :member-name
                                  "AttributeFilter")
                                 (requested-document-attributes :target-type
                                  document-attribute-key-list :member-name
                                  "RequestedDocumentAttributes")
                                 (document-relevance-override-configurations
                                  :target-type
                                  document-relevance-override-configuration-list
                                  :member-name
                                  "DocumentRelevanceOverrideConfigurations")
                                 (page-number :target-type integer :member-name
                                  "PageNumber")
                                 (page-size :target-type integer :member-name
                                  "PageSize")
                                 (user-context :target-type user-context
                                  :member-name "UserContext"))
                                (:shape-name "RetrieveRequest"))

(smithy/sdk/shapes:define-output retrieve-result common-lisp:nil
                                 ((query-id :target-type query-id :member-name
                                   "QueryId")
                                  (result-items :target-type
                                   retrieve-result-item-list :member-name
                                   "ResultItems"))
                                 (:shape-name "RetrieveResult"))

(smithy/sdk/shapes:define-structure retrieve-result-item common-lisp:nil
                                    ((id :target-type result-id :member-name
                                      "Id")
                                     (document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (document-title :target-type
                                      document-title :member-name
                                      "DocumentTitle")
                                     (content :target-type content :member-name
                                      "Content")
                                     (document-uri :target-type url
                                      :member-name "DocumentURI")
                                     (document-attributes :target-type
                                      document-attribute-list :member-name
                                      "DocumentAttributes")
                                     (score-attributes :target-type
                                      score-attributes :member-name
                                      "ScoreAttributes"))
                                    (:shape-name "RetrieveResultItem"))

(smithy/sdk/shapes:define-list retrieve-result-item-list :member
                               retrieve-result-item)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3data-source-configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (inclusion-prefixes :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPrefixes")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (documents-metadata-configuration
                                      :target-type
                                      documents-metadata-configuration
                                      :member-name
                                      "DocumentsMetadataConfiguration")
                                     (access-control-list-configuration
                                      :target-type
                                      access-control-list-configuration
                                      :member-name
                                      "AccessControlListConfiguration"))
                                    (:shape-name "S3DataSourceConfiguration"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3path common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "Bucket")
                                     (key :target-type s3object-key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "S3Path"))

(smithy/sdk/shapes:define-structure saa-sconfiguration common-lisp:nil
                                    ((organization-name :target-type
                                      organization-name :required common-lisp:t
                                      :member-name "OrganizationName")
                                     (host-url :target-type url :required
                                      common-lisp:t :member-name "HostUrl"))
                                    (:shape-name "SaaSConfiguration"))

(smithy/sdk/shapes:define-structure salesforce-chatter-feed-configuration
                                    common-lisp:nil
                                    ((document-data-field-name :target-type
                                      data-source-field-name :required
                                      common-lisp:t :member-name
                                      "DocumentDataFieldName")
                                     (document-title-field-name :target-type
                                      data-source-field-name :member-name
                                      "DocumentTitleFieldName")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (include-filter-types :target-type
                                      salesforce-chatter-feed-include-filter-types
                                      :member-name "IncludeFilterTypes"))
                                    (:shape-name
                                     "SalesforceChatterFeedConfiguration"))

(smithy/sdk/shapes:define-enum salesforce-chatter-feed-include-filter-type
    common-lisp:nil
  (:active-user "ACTIVE_USER")
  (:standard-user "STANDARD_USER"))

(smithy/sdk/shapes:define-list salesforce-chatter-feed-include-filter-types
                               :member
                               salesforce-chatter-feed-include-filter-type)

(smithy/sdk/shapes:define-structure salesforce-configuration common-lisp:nil
                                    ((server-url :target-type url :required
                                      common-lisp:t :member-name "ServerUrl")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (standard-object-configurations
                                      :target-type
                                      salesforce-standard-object-configuration-list
                                      :member-name
                                      "StandardObjectConfigurations")
                                     (knowledge-article-configuration
                                      :target-type
                                      salesforce-knowledge-article-configuration
                                      :member-name
                                      "KnowledgeArticleConfiguration")
                                     (chatter-feed-configuration :target-type
                                      salesforce-chatter-feed-configuration
                                      :member-name "ChatterFeedConfiguration")
                                     (crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (standard-object-attachment-configuration
                                      :target-type
                                      salesforce-standard-object-attachment-configuration
                                      :member-name
                                      "StandardObjectAttachmentConfiguration")
                                     (include-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "IncludeAttachmentFilePatterns")
                                     (exclude-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "ExcludeAttachmentFilePatterns"))
                                    (:shape-name "SalesforceConfiguration"))

(smithy/sdk/shapes:define-structure
 salesforce-custom-knowledge-article-type-configuration common-lisp:nil
 ((name :target-type salesforce-custom-knowledge-article-type-name :required
   common-lisp:t :member-name "Name")
  (document-data-field-name :target-type data-source-field-name :required
   common-lisp:t :member-name "DocumentDataFieldName")
  (document-title-field-name :target-type data-source-field-name :member-name
   "DocumentTitleFieldName")
  (field-mappings :target-type data-source-to-index-field-mapping-list
   :member-name "FieldMappings"))
 (:shape-name "SalesforceCustomKnowledgeArticleTypeConfiguration"))

(smithy/sdk/shapes:define-list
 salesforce-custom-knowledge-article-type-configuration-list :member
 salesforce-custom-knowledge-article-type-configuration)

(smithy/sdk/shapes:define-type salesforce-custom-knowledge-article-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure salesforce-knowledge-article-configuration
                                    common-lisp:nil
                                    ((included-states :target-type
                                      salesforce-knowledge-article-state-list
                                      :required common-lisp:t :member-name
                                      "IncludedStates")
                                     (standard-knowledge-article-type-configuration
                                      :target-type
                                      salesforce-standard-knowledge-article-type-configuration
                                      :member-name
                                      "StandardKnowledgeArticleTypeConfiguration")
                                     (custom-knowledge-article-type-configurations
                                      :target-type
                                      salesforce-custom-knowledge-article-type-configuration-list
                                      :member-name
                                      "CustomKnowledgeArticleTypeConfigurations"))
                                    (:shape-name
                                     "SalesforceKnowledgeArticleConfiguration"))

(smithy/sdk/shapes:define-enum salesforce-knowledge-article-state
    common-lisp:nil
  (:draft "DRAFT")
  (:published "PUBLISHED")
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-list salesforce-knowledge-article-state-list :member
                               salesforce-knowledge-article-state)

(smithy/sdk/shapes:define-structure
 salesforce-standard-knowledge-article-type-configuration common-lisp:nil
 ((document-data-field-name :target-type data-source-field-name :required
   common-lisp:t :member-name "DocumentDataFieldName")
  (document-title-field-name :target-type data-source-field-name :member-name
   "DocumentTitleFieldName")
  (field-mappings :target-type data-source-to-index-field-mapping-list
   :member-name "FieldMappings"))
 (:shape-name "SalesforceStandardKnowledgeArticleTypeConfiguration"))

(smithy/sdk/shapes:define-structure
 salesforce-standard-object-attachment-configuration common-lisp:nil
 ((document-title-field-name :target-type data-source-field-name :member-name
   "DocumentTitleFieldName")
  (field-mappings :target-type data-source-to-index-field-mapping-list
   :member-name "FieldMappings"))
 (:shape-name "SalesforceStandardObjectAttachmentConfiguration"))

(smithy/sdk/shapes:define-structure salesforce-standard-object-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      salesforce-standard-object-name :required
                                      common-lisp:t :member-name "Name")
                                     (document-data-field-name :target-type
                                      data-source-field-name :required
                                      common-lisp:t :member-name
                                      "DocumentDataFieldName")
                                     (document-title-field-name :target-type
                                      data-source-field-name :member-name
                                      "DocumentTitleFieldName")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings"))
                                    (:shape-name
                                     "SalesforceStandardObjectConfiguration"))

(smithy/sdk/shapes:define-list salesforce-standard-object-configuration-list
                               :member salesforce-standard-object-configuration)

(smithy/sdk/shapes:define-enum salesforce-standard-object-name
    common-lisp:nil
  (:account "ACCOUNT")
  (:campaign "CAMPAIGN")
  (:case "CASE")
  (:contact "CONTACT")
  (:contract "CONTRACT")
  (:document "DOCUMENT")
  (:group "GROUP")
  (:idea "IDEA")
  (:lead "LEAD")
  (:opportunity "OPPORTUNITY")
  (:partner "PARTNER")
  (:pricebook "PRICEBOOK")
  (:product "PRODUCT")
  (:profile "PROFILE")
  (:solution "SOLUTION")
  (:task "TASK")
  (:user "USER"))

(smithy/sdk/shapes:define-type scan-schedule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure score-attributes common-lisp:nil
                                    ((score-confidence :target-type
                                      score-confidence :member-name
                                      "ScoreConfidence"))
                                    (:shape-name "ScoreAttributes"))

(smithy/sdk/shapes:define-enum score-confidence
    common-lisp:nil
  (:very-high "VERY_HIGH")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-structure search common-lisp:nil
                                    ((facetable :target-type boolean
                                      :member-name "Facetable")
                                     (searchable :target-type boolean
                                      :member-name "Searchable")
                                     (displayable :target-type boolean
                                      :member-name "Displayable")
                                     (sortable :target-type boolean
                                      :member-name "Sortable"))
                                    (:shape-name "Search"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member
                               vpc-security-group-id)

(smithy/sdk/shapes:define-type seed-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure seed-url-configuration common-lisp:nil
                                    ((seed-urls :target-type seed-url-list
                                      :required common-lisp:t :member-name
                                      "SeedUrls")
                                     (web-crawler-mode :target-type
                                      web-crawler-mode :member-name
                                      "WebCrawlerMode"))
                                    (:shape-name "SeedUrlConfiguration"))

(smithy/sdk/shapes:define-list seed-url-list :member seed-url)

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-enum service-now-authentication-type
    common-lisp:nil
  (:http-basic "HTTP_BASIC")
  (:oauth2 "OAUTH2"))

(smithy/sdk/shapes:define-enum service-now-build-version-type
    common-lisp:nil
  (:london "LONDON")
  (:others "OTHERS"))

(smithy/sdk/shapes:define-structure service-now-configuration common-lisp:nil
                                    ((host-url :target-type
                                      service-now-host-url :required
                                      common-lisp:t :member-name "HostUrl")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (service-now-build-version :target-type
                                      service-now-build-version-type :required
                                      common-lisp:t :member-name
                                      "ServiceNowBuildVersion")
                                     (knowledge-article-configuration
                                      :target-type
                                      service-now-knowledge-article-configuration
                                      :member-name
                                      "KnowledgeArticleConfiguration")
                                     (service-catalog-configuration
                                      :target-type
                                      service-now-service-catalog-configuration
                                      :member-name
                                      "ServiceCatalogConfiguration")
                                     (authentication-type :target-type
                                      service-now-authentication-type
                                      :member-name "AuthenticationType"))
                                    (:shape-name "ServiceNowConfiguration"))

(smithy/sdk/shapes:define-type service-now-host-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-now-knowledge-article-configuration
                                    common-lisp:nil
                                    ((crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (include-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "IncludeAttachmentFilePatterns")
                                     (exclude-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "ExcludeAttachmentFilePatterns")
                                     (document-data-field-name :target-type
                                      data-source-field-name :required
                                      common-lisp:t :member-name
                                      "DocumentDataFieldName")
                                     (document-title-field-name :target-type
                                      data-source-field-name :member-name
                                      "DocumentTitleFieldName")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (filter-query :target-type
                                      service-now-knowledge-article-filter-query
                                      :member-name "FilterQuery"))
                                    (:shape-name
                                     "ServiceNowKnowledgeArticleConfiguration"))

(smithy/sdk/shapes:define-type service-now-knowledge-article-filter-query
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-now-service-catalog-configuration
                                    common-lisp:nil
                                    ((crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (include-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "IncludeAttachmentFilePatterns")
                                     (exclude-attachment-file-patterns
                                      :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name
                                      "ExcludeAttachmentFilePatterns")
                                     (document-data-field-name :target-type
                                      data-source-field-name :required
                                      common-lisp:t :member-name
                                      "DocumentDataFieldName")
                                     (document-title-field-name :target-type
                                      data-source-field-name :member-name
                                      "DocumentTitleFieldName")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings"))
                                    (:shape-name
                                     "ServiceNowServiceCatalogConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure share-point-configuration common-lisp:nil
                                    ((share-point-version :target-type
                                      share-point-version :required
                                      common-lisp:t :member-name
                                      "SharePointVersion")
                                     (urls :target-type share-point-url-list
                                      :required common-lisp:t :member-name
                                      "Urls")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (crawl-attachments :target-type boolean
                                      :member-name "CrawlAttachments")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings")
                                     (document-title-field-name :target-type
                                      data-source-field-name :member-name
                                      "DocumentTitleFieldName")
                                     (disable-local-groups :target-type boolean
                                      :member-name "DisableLocalGroups")
                                     (ssl-certificate-s3path :target-type
                                      s3path :member-name
                                      "SslCertificateS3Path")
                                     (authentication-type :target-type
                                      share-point-online-authentication-type
                                      :member-name "AuthenticationType")
                                     (proxy-configuration :target-type
                                      proxy-configuration :member-name
                                      "ProxyConfiguration"))
                                    (:shape-name "SharePointConfiguration"))

(smithy/sdk/shapes:define-enum share-point-online-authentication-type
    common-lisp:nil
  (:http-basic "HTTP_BASIC")
  (:oauth2 "OAUTH2"))

(smithy/sdk/shapes:define-list share-point-url-list :member url)

(smithy/sdk/shapes:define-enum share-point-version
    common-lisp:nil
  (:sharepoint-2013 "SHAREPOINT_2013")
  (:sharepoint-2016 "SHAREPOINT_2016")
  (:sharepoint-online "SHAREPOINT_ONLINE")
  (:sharepoint-2019 "SHAREPOINT_2019"))

(smithy/sdk/shapes:define-type shared-drive-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type since-crawl-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-map smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure site-maps-configuration common-lisp:nil
                                    ((site-maps :target-type site-maps-list
                                      :required common-lisp:t :member-name
                                      "SiteMaps"))
                                    (:shape-name "SiteMapsConfiguration"))

(smithy/sdk/shapes:define-list site-maps-list :member site-map)

(smithy/sdk/shapes:define-type site-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure slack-configuration common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "TeamId")
                                     (secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn")
                                     (vpc-configuration :target-type
                                      data-source-vpc-configuration
                                      :member-name "VpcConfiguration")
                                     (slack-entity-list :target-type
                                      slack-entity-list :required common-lisp:t
                                      :member-name "SlackEntityList")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (crawl-bot-message :target-type boolean
                                      :member-name "CrawlBotMessage")
                                     (exclude-archived :target-type boolean
                                      :member-name "ExcludeArchived")
                                     (since-crawl-date :target-type
                                      since-crawl-date :required common-lisp:t
                                      :member-name "SinceCrawlDate")
                                     (look-back-period :target-type
                                      look-back-period :member-name
                                      "LookBackPeriod")
                                     (private-channel-filter :target-type
                                      private-channel-filter :member-name
                                      "PrivateChannelFilter")
                                     (public-channel-filter :target-type
                                      public-channel-filter :member-name
                                      "PublicChannelFilter")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings"))
                                    (:shape-name "SlackConfiguration"))

(smithy/sdk/shapes:define-enum slack-entity
    common-lisp:nil
  (:public-channel "PUBLIC_CHANNEL")
  (:private-channel "PRIVATE_CHANNEL")
  (:group-message "GROUP_MESSAGE")
  (:direct-message "DIRECT_MESSAGE"))

(smithy/sdk/shapes:define-list slack-entity-list :member slack-entity)

(smithy/sdk/shapes:define-list snapshots-data-header-fields :member string)

(smithy/sdk/shapes:define-list snapshots-data-record :member string)

(smithy/sdk/shapes:define-list snapshots-data-records :member
                               snapshots-data-record)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:desc "DESC")
  (:asc "ASC"))

(smithy/sdk/shapes:define-structure sorting-configuration common-lisp:nil
                                    ((document-attribute-key :target-type
                                      document-attribute-key :required
                                      common-lisp:t :member-name
                                      "DocumentAttributeKey")
                                     (sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder"))
                                    (:shape-name "SortingConfiguration"))

(smithy/sdk/shapes:define-list sorting-configuration-list :member
                               sorting-configuration)

(smithy/sdk/shapes:define-structure source-document common-lisp:nil
                                    ((document-id :target-type string
                                      :member-name "DocumentId")
                                     (suggestion-attributes :target-type
                                      document-attribute-key-list :member-name
                                      "SuggestionAttributes")
                                     (additional-attributes :target-type
                                      document-attribute-list :member-name
                                      "AdditionalAttributes"))
                                    (:shape-name "SourceDocument"))

(smithy/sdk/shapes:define-list source-documents :member source-document)

(smithy/sdk/shapes:define-structure spell-corrected-query common-lisp:nil
                                    ((suggested-query-text :target-type
                                      suggested-query-text :member-name
                                      "SuggestedQueryText")
                                     (corrections :target-type correction-list
                                      :member-name "Corrections"))
                                    (:shape-name "SpellCorrectedQuery"))

(smithy/sdk/shapes:define-list spell-corrected-query-list :member
                               spell-corrected-query)

(smithy/sdk/shapes:define-structure spell-correction-configuration
                                    common-lisp:nil
                                    ((include-query-spell-check-suggestions
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "IncludeQuerySpellCheckSuggestions"))
                                    (:shape-name
                                     "SpellCorrectionConfiguration"))

(smithy/sdk/shapes:define-structure sql-configuration common-lisp:nil
                                    ((query-identifiers-enclosing-option
                                      :target-type
                                      query-identifiers-enclosing-option
                                      :member-name
                                      "QueryIdentifiersEnclosingOption"))
                                    (:shape-name "SqlConfiguration"))

(smithy/sdk/shapes:define-input start-data-source-sync-job-request
                                common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "StartDataSourceSyncJobRequest"))

(smithy/sdk/shapes:define-output start-data-source-sync-job-response
                                 common-lisp:nil
                                 ((execution-id :target-type string
                                   :member-name "ExecutionId"))
                                 (:shape-name "StartDataSourceSyncJobResponse"))

(smithy/sdk/shapes:define-structure status common-lisp:nil
                                    ((document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (document-status :target-type
                                      document-status :member-name
                                      "DocumentStatus")
                                     (failure-code :target-type string
                                      :member-name "FailureCode")
                                     (failure-reason :target-type string
                                      :member-name "FailureReason"))
                                    (:shape-name "Status"))

(smithy/sdk/shapes:define-input stop-data-source-sync-job-request
                                common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId"))
                                (:shape-name "StopDataSourceSyncJobRequest"))

(smithy/sdk/shapes:define-type storage-capacity-unit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-input submit-feedback-request common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (query-id :target-type query-id :required
                                  common-lisp:t :member-name "QueryId")
                                 (click-feedback-items :target-type
                                  click-feedback-list :member-name
                                  "ClickFeedbackItems")
                                 (relevance-feedback-items :target-type
                                  relevance-feedback-list :member-name
                                  "RelevanceFeedbackItems"))
                                (:shape-name "SubmitFeedbackRequest"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-structure suggestable-config common-lisp:nil
                                    ((attribute-name :target-type
                                      document-attribute-key :member-name
                                      "AttributeName")
                                     (suggestable :target-type object-boolean
                                      :member-name "Suggestable"))
                                    (:shape-name "SuggestableConfig"))

(smithy/sdk/shapes:define-list suggestable-config-list :member
                               suggestable-config)

(smithy/sdk/shapes:define-type suggested-query-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggestion common-lisp:nil
                                    ((id :target-type result-id :member-name
                                      "Id")
                                     (value :target-type suggestion-value
                                      :member-name "Value")
                                     (source-documents :target-type
                                      source-documents :member-name
                                      "SourceDocuments"))
                                    (:shape-name "Suggestion"))

(smithy/sdk/shapes:define-structure suggestion-highlight common-lisp:nil
                                    ((begin-offset :target-type integer
                                      :member-name "BeginOffset")
                                     (end-offset :target-type integer
                                      :member-name "EndOffset"))
                                    (:shape-name "SuggestionHighlight"))

(smithy/sdk/shapes:define-list suggestion-highlight-list :member
                               suggestion-highlight)

(smithy/sdk/shapes:define-list suggestion-list :member suggestion)

(smithy/sdk/shapes:define-type suggestion-query-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggestion-text-with-highlights
                                    common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (highlights :target-type
                                      suggestion-highlight-list :member-name
                                      "Highlights"))
                                    (:shape-name
                                     "SuggestionTextWithHighlights"))

(smithy/sdk/shapes:define-enum suggestion-type
    common-lisp:nil
  (:query "QUERY")
  (:document-attributes "DOCUMENT_ATTRIBUTES"))

(smithy/sdk/shapes:define-list suggestion-types :member suggestion-type)

(smithy/sdk/shapes:define-structure suggestion-value common-lisp:nil
                                    ((text :target-type
                                      suggestion-text-with-highlights
                                      :member-name "Text"))
                                    (:shape-name "SuggestionValue"))

(smithy/sdk/shapes:define-structure table-cell common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value")
                                     (top-answer :target-type boolean
                                      :member-name "TopAnswer")
                                     (highlighted :target-type boolean
                                      :member-name "Highlighted")
                                     (header :target-type boolean :member-name
                                      "Header"))
                                    (:shape-name "TableCell"))

(smithy/sdk/shapes:define-list table-cell-list :member table-cell)

(smithy/sdk/shapes:define-structure table-excerpt common-lisp:nil
                                    ((rows :target-type table-row-list
                                      :member-name "Rows")
                                     (total-number-of-rows :target-type integer
                                      :member-name "TotalNumberOfRows"))
                                    (:shape-name "TableExcerpt"))

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table-row common-lisp:nil
                                    ((cells :target-type table-cell-list
                                      :member-name "Cells"))
                                    (:shape-name "TableRow"))

(smithy/sdk/shapes:define-list table-row-list :member table-row)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type team-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure template-configuration common-lisp:nil
                                    ((template :target-type template
                                      :member-name "Template"))
                                    (:shape-name "TemplateConfiguration"))

(smithy/sdk/shapes:define-type tenant-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-document-statistics common-lisp:nil
                                    ((indexed-text-documents-count :target-type
                                      indexed-text-documents-count :required
                                      common-lisp:t :member-name
                                      "IndexedTextDocumentsCount")
                                     (indexed-text-bytes :target-type
                                      indexed-text-bytes :required
                                      common-lisp:t :member-name
                                      "IndexedTextBytes"))
                                    (:shape-name "TextDocumentStatistics"))

(smithy/sdk/shapes:define-structure text-with-highlights common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (highlights :target-type highlight-list
                                      :member-name "Highlights"))
                                    (:shape-name "TextWithHighlights"))

(smithy/sdk/shapes:define-type thesaurus-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thesaurus-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum thesaurus-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:active-but-update-failed "ACTIVE_BUT_UPDATE_FAILED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure thesaurus-summary common-lisp:nil
                                    ((id :target-type thesaurus-id :member-name
                                      "Id")
                                     (name :target-type thesaurus-name
                                      :member-name "Name")
                                     (status :target-type thesaurus-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ThesaurusSummary"))

(smithy/sdk/shapes:define-list thesaurus-summary-items :member
                               thesaurus-summary)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type top-document-attribute-value-count-pairs-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:saas "SAAS")
  (:on-premise "ON_PREMISE"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-access-control-configuration-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  access-control-configuration-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type
                                  access-control-configuration-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (access-control-list :target-type
                                  principal-list :member-name
                                  "AccessControlList")
                                 (hierarchical-access-control-list :target-type
                                  hierarchical-principal-list :member-name
                                  "HierarchicalAccessControlList"))
                                (:shape-name
                                 "UpdateAccessControlConfigurationRequest"))

(smithy/sdk/shapes:define-output update-access-control-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateAccessControlConfigurationResponse"))

(smithy/sdk/shapes:define-input update-data-source-request common-lisp:nil
                                ((id :target-type data-source-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type data-source-name
                                  :member-name "Name")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (configuration :target-type
                                  data-source-configuration :member-name
                                  "Configuration")
                                 (vpc-configuration :target-type
                                  data-source-vpc-configuration :member-name
                                  "VpcConfiguration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (schedule :target-type scan-schedule
                                  :member-name "Schedule")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (language-code :target-type language-code
                                  :member-name "LanguageCode")
                                 (custom-document-enrichment-configuration
                                  :target-type
                                  custom-document-enrichment-configuration
                                  :member-name
                                  "CustomDocumentEnrichmentConfiguration"))
                                (:shape-name "UpdateDataSourceRequest"))

(smithy/sdk/shapes:define-input update-experience-request common-lisp:nil
                                ((id :target-type experience-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type experience-name
                                  :member-name "Name")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (configuration :target-type
                                  experience-configuration :member-name
                                  "Configuration")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateExperienceRequest"))

(smithy/sdk/shapes:define-input update-featured-results-set-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (featured-results-set-id :target-type
                                  featured-results-set-id :required
                                  common-lisp:t :member-name
                                  "FeaturedResultsSetId")
                                 (featured-results-set-name :target-type
                                  featured-results-set-name :member-name
                                  "FeaturedResultsSetName")
                                 (description :target-type
                                  featured-results-set-description :member-name
                                  "Description")
                                 (status :target-type
                                  featured-results-set-status :member-name
                                  "Status")
                                 (query-texts :target-type query-text-list
                                  :member-name "QueryTexts")
                                 (featured-documents :target-type
                                  featured-document-list :member-name
                                  "FeaturedDocuments"))
                                (:shape-name "UpdateFeaturedResultsSetRequest"))

(smithy/sdk/shapes:define-output update-featured-results-set-response
                                 common-lisp:nil
                                 ((featured-results-set :target-type
                                   featured-results-set :member-name
                                   "FeaturedResultsSet"))
                                 (:shape-name
                                  "UpdateFeaturedResultsSetResponse"))

(smithy/sdk/shapes:define-input update-index-request common-lisp:nil
                                ((id :target-type index-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type index-name :member-name
                                  "Name")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (description :target-type description
                                  :member-name "Description")
                                 (document-metadata-configuration-updates
                                  :target-type
                                  document-metadata-configuration-list
                                  :member-name
                                  "DocumentMetadataConfigurationUpdates")
                                 (capacity-units :target-type
                                  capacity-units-configuration :member-name
                                  "CapacityUnits")
                                 (user-token-configurations :target-type
                                  user-token-configuration-list :member-name
                                  "UserTokenConfigurations")
                                 (user-context-policy :target-type
                                  user-context-policy :member-name
                                  "UserContextPolicy")
                                 (user-group-resolution-configuration
                                  :target-type
                                  user-group-resolution-configuration
                                  :member-name
                                  "UserGroupResolutionConfiguration"))
                                (:shape-name "UpdateIndexRequest"))

(smithy/sdk/shapes:define-input update-query-suggestions-block-list-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (id :target-type
                                  query-suggestions-block-list-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type
                                  query-suggestions-block-list-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (source-s3path :target-type s3path
                                  :member-name "SourceS3Path")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn"))
                                (:shape-name
                                 "UpdateQuerySuggestionsBlockListRequest"))

(smithy/sdk/shapes:define-input update-query-suggestions-config-request
                                common-lisp:nil
                                ((index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (mode :target-type mode :member-name "Mode")
                                 (query-log-look-back-window-in-days
                                  :target-type integer :member-name
                                  "QueryLogLookBackWindowInDays")
                                 (include-queries-without-user-information
                                  :target-type object-boolean :member-name
                                  "IncludeQueriesWithoutUserInformation")
                                 (minimum-number-of-querying-users :target-type
                                  minimum-number-of-querying-users :member-name
                                  "MinimumNumberOfQueryingUsers")
                                 (minimum-query-count :target-type
                                  minimum-query-count :member-name
                                  "MinimumQueryCount")
                                 (attribute-suggestions-config :target-type
                                  attribute-suggestions-update-config
                                  :member-name "AttributeSuggestionsConfig"))
                                (:shape-name
                                 "UpdateQuerySuggestionsConfigRequest"))

(smithy/sdk/shapes:define-input update-thesaurus-request common-lisp:nil
                                ((id :target-type thesaurus-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type thesaurus-name :member-name
                                  "Name")
                                 (index-id :target-type index-id :required
                                  common-lisp:t :member-name "IndexId")
                                 (description :target-type description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (source-s3path :target-type s3path
                                  :member-name "SourceS3Path"))
                                (:shape-name "UpdateThesaurusRequest"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure urls common-lisp:nil
                                    ((seed-url-configuration :target-type
                                      seed-url-configuration :member-name
                                      "SeedUrlConfiguration")
                                     (site-maps-configuration :target-type
                                      site-maps-configuration :member-name
                                      "SiteMapsConfiguration"))
                                    (:shape-name "Urls"))

(smithy/sdk/shapes:define-type user-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-context common-lisp:nil
                                    ((token :target-type token :member-name
                                      "Token")
                                     (user-id :target-type principal-name
                                      :member-name "UserId")
                                     (groups :target-type groups :member-name
                                      "Groups")
                                     (data-source-groups :target-type
                                      data-source-groups :member-name
                                      "DataSourceGroups"))
                                    (:shape-name "UserContext"))

(smithy/sdk/shapes:define-enum user-context-policy
    common-lisp:nil
  (:attribute-filter "ATTRIBUTE_FILTER")
  (:user-token "USER_TOKEN"))

(smithy/sdk/shapes:define-structure user-group-resolution-configuration
                                    common-lisp:nil
                                    ((user-group-resolution-mode :target-type
                                      user-group-resolution-mode :required
                                      common-lisp:t :member-name
                                      "UserGroupResolutionMode"))
                                    (:shape-name
                                     "UserGroupResolutionConfiguration"))

(smithy/sdk/shapes:define-enum user-group-resolution-mode
    common-lisp:nil
  (:aws-sso "AWS_SSO")
  (:none "NONE"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-identity-configuration common-lisp:nil
                                    ((identity-attribute-name :target-type
                                      identity-attribute-name :member-name
                                      "IdentityAttributeName"))
                                    (:shape-name "UserIdentityConfiguration"))

(smithy/sdk/shapes:define-type user-name-attribute-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-token-configuration common-lisp:nil
                                    ((jwt-token-type-configuration :target-type
                                      jwt-token-type-configuration :member-name
                                      "JwtTokenTypeConfiguration")
                                     (json-token-type-configuration
                                      :target-type
                                      json-token-type-configuration
                                      :member-name
                                      "JsonTokenTypeConfiguration"))
                                    (:shape-name "UserTokenConfiguration"))

(smithy/sdk/shapes:define-list user-token-configuration-list :member
                               user-token-configuration)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map value-importance-map :key
                              value-importance-map-key :value importance)

(smithy/sdk/shapes:define-type value-importance-map-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type visitor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-security-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure warning common-lisp:nil
                                    ((message :target-type warning-message
                                      :member-name "Message")
                                     (code :target-type warning-code
                                      :member-name "Code"))
                                    (:shape-name "Warning"))

(smithy/sdk/shapes:define-enum warning-code
    common-lisp:nil
  (:query-language-invalid-syntax "QUERY_LANGUAGE_INVALID_SYNTAX"))

(smithy/sdk/shapes:define-list warning-list :member warning)

(smithy/sdk/shapes:define-type warning-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure web-crawler-configuration common-lisp:nil
                                    ((urls :target-type urls :required
                                      common-lisp:t :member-name "Urls")
                                     (crawl-depth :target-type crawl-depth
                                      :member-name "CrawlDepth")
                                     (max-links-per-page :target-type
                                      max-links-per-page :member-name
                                      "MaxLinksPerPage")
                                     (max-content-size-per-page-in-mega-bytes
                                      :target-type
                                      max-content-size-per-page-in-mega-bytes
                                      :member-name
                                      "MaxContentSizePerPageInMegaBytes")
                                     (max-urls-per-minute-crawl-rate
                                      :target-type
                                      max-urls-per-minute-crawl-rate
                                      :member-name "MaxUrlsPerMinuteCrawlRate")
                                     (url-inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "UrlInclusionPatterns")
                                     (url-exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "UrlExclusionPatterns")
                                     (proxy-configuration :target-type
                                      proxy-configuration :member-name
                                      "ProxyConfiguration")
                                     (authentication-configuration :target-type
                                      authentication-configuration :member-name
                                      "AuthenticationConfiguration"))
                                    (:shape-name "WebCrawlerConfiguration"))

(smithy/sdk/shapes:define-enum web-crawler-mode
    common-lisp:nil
  (:host-only "HOST_ONLY")
  (:subdomains "SUBDOMAINS")
  (:everything "EVERYTHING"))

(smithy/sdk/shapes:define-structure work-docs-configuration common-lisp:nil
                                    ((organization-id :target-type
                                      organization-id :required common-lisp:t
                                      :member-name "OrganizationId")
                                     (crawl-comments :target-type boolean
                                      :member-name "CrawlComments")
                                     (use-change-log :target-type boolean
                                      :member-name "UseChangeLog")
                                     (inclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "InclusionPatterns")
                                     (exclusion-patterns :target-type
                                      data-source-inclusions-exclusions-strings
                                      :member-name "ExclusionPatterns")
                                     (field-mappings :target-type
                                      data-source-to-index-field-mapping-list
                                      :member-name "FieldMappings"))
                                    (:shape-name "WorkDocsConfiguration"))

(smithy/sdk/operation:define-operation associate-entities-to-experience
                                       :shape-name
                                       "AssociateEntitiesToExperience" :input
                                       associate-entities-to-experience-request
                                       :output
                                       associate-entities-to-experience-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-already-exist-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation associate-personas-to-entities
                                       :shape-name
                                       "AssociatePersonasToEntities" :input
                                       associate-personas-to-entities-request
                                       :output
                                       associate-personas-to-entities-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-already-exist-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-delete-document :shape-name
                                       "BatchDeleteDocument" :input
                                       batch-delete-document-request :output
                                       batch-delete-document-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-delete-featured-results-set
                                       :shape-name
                                       "BatchDeleteFeaturedResultsSet" :input
                                       batch-delete-featured-results-set-request
                                       :output
                                       batch-delete-featured-results-set-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-document-status :shape-name
                                       "BatchGetDocumentStatus" :input
                                       batch-get-document-status-request
                                       :output
                                       batch-get-document-status-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

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
                                        validation-exception))

(smithy/sdk/operation:define-operation clear-query-suggestions :shape-name
                                       "ClearQuerySuggestions" :input
                                       clear-query-suggestions-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-access-control-configuration
                                       :shape-name
                                       "CreateAccessControlConfiguration"
                                       :input
                                       create-access-control-configuration-request
                                       :output
                                       create-access-control-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-data-source :shape-name
                                       "CreateDataSource" :input
                                       create-data-source-request :output
                                       create-data-source-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-already-exist-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-experience :shape-name
                                       "CreateExperience" :input
                                       create-experience-request :output
                                       create-experience-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-faq :shape-name "CreateFaq"
                                       :input create-faq-request :output
                                       create-faq-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-featured-results-set :shape-name
                                       "CreateFeaturedResultsSet" :input
                                       create-featured-results-set-request
                                       :output
                                       create-featured-results-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        featured-results-conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-index :shape-name "CreateIndex"
                                       :input create-index-request :output
                                       create-index-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-already-exist-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-query-suggestions-block-list
                                       :shape-name
                                       "CreateQuerySuggestionsBlockList" :input
                                       create-query-suggestions-block-list-request
                                       :output
                                       create-query-suggestions-block-list-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-thesaurus :shape-name
                                       "CreateThesaurus" :input
                                       create-thesaurus-request :output
                                       create-thesaurus-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-access-control-configuration
                                       :shape-name
                                       "DeleteAccessControlConfiguration"
                                       :input
                                       delete-access-control-configuration-request
                                       :output
                                       delete-access-control-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-experience :shape-name
                                       "DeleteExperience" :input
                                       delete-experience-request :output
                                       delete-experience-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-faq :shape-name "DeleteFaq"
                                       :input delete-faq-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-index :shape-name "DeleteIndex"
                                       :input delete-index-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-principal-mapping :shape-name
                                       "DeletePrincipalMapping" :input
                                       delete-principal-mapping-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-query-suggestions-block-list
                                       :shape-name
                                       "DeleteQuerySuggestionsBlockList" :input
                                       delete-query-suggestions-block-list-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-thesaurus :shape-name
                                       "DeleteThesaurus" :input
                                       delete-thesaurus-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-access-control-configuration
                                       :shape-name
                                       "DescribeAccessControlConfiguration"
                                       :input
                                       describe-access-control-configuration-request
                                       :output
                                       describe-access-control-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-data-source :shape-name
                                       "DescribeDataSource" :input
                                       describe-data-source-request :output
                                       describe-data-source-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-experience :shape-name
                                       "DescribeExperience" :input
                                       describe-experience-request :output
                                       describe-experience-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-faq :shape-name "DescribeFaq"
                                       :input describe-faq-request :output
                                       describe-faq-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-featured-results-set
                                       :shape-name "DescribeFeaturedResultsSet"
                                       :input
                                       describe-featured-results-set-request
                                       :output
                                       describe-featured-results-set-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-index :shape-name
                                       "DescribeIndex" :input
                                       describe-index-request :output
                                       describe-index-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-principal-mapping :shape-name
                                       "DescribePrincipalMapping" :input
                                       describe-principal-mapping-request
                                       :output
                                       describe-principal-mapping-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-query-suggestions-block-list
                                       :shape-name
                                       "DescribeQuerySuggestionsBlockList"
                                       :input
                                       describe-query-suggestions-block-list-request
                                       :output
                                       describe-query-suggestions-block-list-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-query-suggestions-config
                                       :shape-name
                                       "DescribeQuerySuggestionsConfig" :input
                                       describe-query-suggestions-config-request
                                       :output
                                       describe-query-suggestions-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-thesaurus :shape-name
                                       "DescribeThesaurus" :input
                                       describe-thesaurus-request :output
                                       describe-thesaurus-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-entities-from-experience
                                       :shape-name
                                       "DisassociateEntitiesFromExperience"
                                       :input
                                       disassociate-entities-from-experience-request
                                       :output
                                       disassociate-entities-from-experience-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-personas-from-entities
                                       :shape-name
                                       "DisassociatePersonasFromEntities"
                                       :input
                                       disassociate-personas-from-entities-request
                                       :output
                                       disassociate-personas-from-entities-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-query-suggestions :shape-name
                                       "GetQuerySuggestions" :input
                                       get-query-suggestions-request :output
                                       get-query-suggestions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-snapshots :shape-name "GetSnapshots"
                                       :input get-snapshots-request :output
                                       get-snapshots-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-access-control-configurations
                                       :shape-name
                                       "ListAccessControlConfigurations" :input
                                       list-access-control-configurations-request
                                       :output
                                       list-access-control-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

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
                                        validation-exception))

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-request :output
                                       list-data-sources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-entity-personas :shape-name
                                       "ListEntityPersonas" :input
                                       list-entity-personas-request :output
                                       list-entity-personas-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-experience-entities :shape-name
                                       "ListExperienceEntities" :input
                                       list-experience-entities-request :output
                                       list-experience-entities-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-experiences :shape-name
                                       "ListExperiences" :input
                                       list-experiences-request :output
                                       list-experiences-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-faqs :shape-name "ListFaqs" :input
                                       list-faqs-request :output
                                       list-faqs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-featured-results-sets :shape-name
                                       "ListFeaturedResultsSets" :input
                                       list-featured-results-sets-request
                                       :output
                                       list-featured-results-sets-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-groups-older-than-ordering-id
                                       :shape-name
                                       "ListGroupsOlderThanOrderingId" :input
                                       list-groups-older-than-ordering-id-request
                                       :output
                                       list-groups-older-than-ordering-id-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-indices :shape-name "ListIndices"
                                       :input list-indices-request :output
                                       list-indices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-query-suggestions-block-lists
                                       :shape-name
                                       "ListQuerySuggestionsBlockLists" :input
                                       list-query-suggestions-block-lists-request
                                       :output
                                       list-query-suggestions-block-lists-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-thesauri :shape-name "ListThesauri"
                                       :input list-thesauri-request :output
                                       list-thesauri-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-principal-mapping :shape-name
                                       "PutPrincipalMapping" :input
                                       put-principal-mapping-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation query :shape-name "Query" :input
                                       query-request :output query-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation retrieve :shape-name "Retrieve" :input
                                       retrieve-request :output retrieve-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-data-source-sync-job :shape-name
                                       "StartDataSourceSyncJob" :input
                                       start-data-source-sync-job-request
                                       :output
                                       start-data-source-sync-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-data-source-sync-job :shape-name
                                       "StopDataSourceSyncJob" :input
                                       stop-data-source-sync-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation submit-feedback :shape-name
                                       "SubmitFeedback" :input
                                       submit-feedback-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-access-control-configuration
                                       :shape-name
                                       "UpdateAccessControlConfiguration"
                                       :input
                                       update-access-control-configuration-request
                                       :output
                                       update-access-control-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-experience :shape-name
                                       "UpdateExperience" :input
                                       update-experience-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-featured-results-set :shape-name
                                       "UpdateFeaturedResultsSet" :input
                                       update-featured-results-set-request
                                       :output
                                       update-featured-results-set-response
                                       :errors
                                       (access-denied-exception
                                        featured-results-conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-index :shape-name "UpdateIndex"
                                       :input update-index-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-query-suggestions-block-list
                                       :shape-name
                                       "UpdateQuerySuggestionsBlockList" :input
                                       update-query-suggestions-block-list-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-query-suggestions-config
                                       :shape-name
                                       "UpdateQuerySuggestionsConfig" :input
                                       update-query-suggestions-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-thesaurus :shape-name
                                       "UpdateThesaurus" :input
                                       update-thesaurus-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
