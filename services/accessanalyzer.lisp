(uiop/package:define-package #:pira/accessanalyzer (:use)
                             (:export #:access #:access-analyzer
                              #:access-check-policy-document
                              #:access-check-policy-type
                              #:access-check-resource-type #:access-list
                              #:access-point-arn #:access-point-policy
                              #:access-preview #:access-preview-finding
                              #:access-preview-finding-id
                              #:access-preview-findings-list
                              #:access-preview-id #:access-preview-status
                              #:access-preview-status-reason
                              #:access-preview-status-reason-code
                              #:access-preview-summary #:access-previews-list
                              #:account-aggregations #:account-ids-list
                              #:acl-canonical-id #:acl-grantee #:acl-permission
                              #:acl-uri #:action #:action-list #:actions-list
                              #:analysis-rule #:analysis-rule-criteria
                              #:analysis-rule-criteria-list #:analyzed-resource
                              #:analyzed-resource-summary
                              #:analyzed-resources-list #:analyzer
                              #:analyzer-arn #:analyzer-configuration
                              #:analyzer-status #:analyzer-summary
                              #:analyzers-list #:apply-archive-rule
                              #:apply-archive-rule-request #:archive-rule
                              #:archive-rule-summary #:archive-rules-list
                              #:cancel-policy-generation
                              #:cancel-policy-generation-request
                              #:cancel-policy-generation-response
                              #:check-access-not-granted
                              #:check-access-not-granted-result
                              #:check-no-new-access
                              #:check-no-new-access-result
                              #:check-no-public-access
                              #:check-no-public-access-result #:cloud-trail-arn
                              #:cloud-trail-details #:cloud-trail-properties
                              #:condition-key-map #:configuration
                              #:configurations-map #:configurations-map-key
                              #:create-access-preview
                              #:create-access-preview-request
                              #:create-access-preview-response
                              #:create-analyzer #:create-analyzer-request
                              #:create-analyzer-response #:create-archive-rule
                              #:create-archive-rule-request #:criterion
                              #:delete-analyzer #:delete-analyzer-request
                              #:delete-archive-rule
                              #:delete-archive-rule-request
                              #:dynamodb-stream-configuration
                              #:dynamodb-stream-policy
                              #:dynamodb-table-configuration
                              #:dynamodb-table-policy #:ebs-group
                              #:ebs-group-list #:ebs-snapshot-configuration
                              #:ebs-snapshot-data-encryption-key-id
                              #:ebs-user-id #:ebs-user-id-list
                              #:ecr-repository-configuration
                              #:ecr-repository-policy
                              #:efs-file-system-configuration
                              #:efs-file-system-policy
                              #:external-access-details
                              #:external-access-findings-statistics
                              #:filter-criteria-map #:finding
                              #:finding-aggregation-account-details
                              #:finding-aggregation-account-details-map
                              #:finding-change-type #:finding-details
                              #:finding-details-list #:finding-id
                              #:finding-id-list #:finding-source
                              #:finding-source-detail #:finding-source-list
                              #:finding-source-type #:finding-status
                              #:finding-status-update #:finding-summary
                              #:finding-summary-v2 #:finding-type
                              #:findings-list #:findings-list-v2
                              #:findings-statistics #:findings-statistics-list
                              #:generate-finding-recommendation
                              #:generated-policy #:generated-policy-list
                              #:generated-policy-properties
                              #:generated-policy-result #:get-access-preview
                              #:get-access-preview-request
                              #:get-access-preview-response
                              #:get-analyzed-resource
                              #:get-analyzed-resource-request
                              #:get-analyzed-resource-response #:get-analyzer
                              #:get-analyzer-request #:get-analyzer-response
                              #:get-archive-rule #:get-archive-rule-request
                              #:get-archive-rule-response #:get-finding
                              #:get-finding-recommendation
                              #:get-finding-request #:get-finding-response
                              #:get-finding-v2 #:get-findings-statistics
                              #:get-generated-policy
                              #:get-generated-policy-request
                              #:get-generated-policy-response
                              #:grantee-principal #:iam-role-configuration
                              #:iam-trust-policy #:inline-archive-rule
                              #:inline-archive-rules-list
                              #:internal-access-analysis-rule
                              #:internal-access-analysis-rule-criteria
                              #:internal-access-analysis-rule-criteria-list
                              #:internal-access-configuration
                              #:internal-access-details
                              #:internal-access-findings-statistics
                              #:internal-access-resource-type-details
                              #:internal-access-resource-type-statistics-map
                              #:internal-access-type #:internet-configuration
                              #:issue-code #:issuing-account #:job-details
                              #:job-error #:job-error-code #:job-id
                              #:job-status #:kms-constraints-key
                              #:kms-constraints-map #:kms-constraints-value
                              #:kms-grant-configuration
                              #:kms-grant-configurations-list
                              #:kms-grant-constraints #:kms-grant-operation
                              #:kms-grant-operations-list
                              #:kms-key-configuration #:kms-key-policies-map
                              #:kms-key-policy #:learn-more-link
                              #:list-access-preview-findings
                              #:list-access-preview-findings-request
                              #:list-access-preview-findings-response
                              #:list-access-previews
                              #:list-access-previews-request
                              #:list-access-previews-response
                              #:list-analyzed-resources
                              #:list-analyzed-resources-request
                              #:list-analyzed-resources-response
                              #:list-analyzers #:list-analyzers-request
                              #:list-analyzers-response #:list-archive-rules
                              #:list-archive-rules-request
                              #:list-archive-rules-response #:list-findings
                              #:list-findings-request #:list-findings-response
                              #:list-findings-v2 #:list-policy-generations
                              #:list-policy-generations-request
                              #:list-policy-generations-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:locale
                              #:location #:location-list #:name
                              #:network-origin-configuration #:order-by
                              #:path-element #:path-element-list
                              #:policy-document #:policy-generation
                              #:policy-generation-details
                              #:policy-generation-list #:policy-name
                              #:policy-type #:position #:principal-arn
                              #:principal-map #:principal-type
                              #:rds-db-cluster-snapshot-account-id
                              #:rds-db-cluster-snapshot-account-ids-list
                              #:rds-db-cluster-snapshot-attribute-name
                              #:rds-db-cluster-snapshot-attribute-value
                              #:rds-db-cluster-snapshot-attributes-map
                              #:rds-db-cluster-snapshot-configuration
                              #:rds-db-cluster-snapshot-kms-key-id
                              #:rds-db-snapshot-account-id
                              #:rds-db-snapshot-account-ids-list
                              #:rds-db-snapshot-attribute-name
                              #:rds-db-snapshot-attribute-value
                              #:rds-db-snapshot-attributes-map
                              #:rds-db-snapshot-configuration
                              #:rds-db-snapshot-kms-key-id #:reason-code
                              #:reason-summary #:reason-summary-list
                              #:recommendation-error #:recommendation-type
                              #:recommended-remediation-action
                              #:recommended-step #:recommended-step-list
                              #:region-list #:resource #:resource-arn
                              #:resource-arns-list
                              #:resource-control-policy-restriction
                              #:resource-type #:resource-type-details
                              #:resource-type-list
                              #:resource-type-statistics-map #:resources-list
                              #:retiring-principal #:role-arn
                              #:s3access-point-configuration
                              #:s3access-point-configurations-map
                              #:s3bucket-acl-grant-configuration
                              #:s3bucket-acl-grant-configurations-list
                              #:s3bucket-configuration #:s3bucket-policy
                              #:s3express-directory-access-point-arn
                              #:s3express-directory-access-point-configuration
                              #:s3express-directory-access-point-configurations-map
                              #:s3express-directory-bucket-configuration
                              #:s3express-directory-bucket-policy
                              #:s3public-access-block-configuration
                              #:secrets-manager-secret-configuration
                              #:secrets-manager-secret-kms-id
                              #:secrets-manager-secret-policy
                              #:service-control-policy-restriction
                              #:shared-via-list #:sns-topic-configuration
                              #:sns-topic-policy #:sort-criteria #:span
                              #:sqs-queue-configuration #:sqs-queue-policy
                              #:start-policy-generation
                              #:start-policy-generation-request
                              #:start-policy-generation-response
                              #:start-resource-scan
                              #:start-resource-scan-request #:status
                              #:status-reason #:substring #:tag-keys
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tags-list #:tags-map
                              #:timestamp #:token #:trail #:trail-list
                              #:trail-properties #:trail-properties-list #:type
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:unused-access-configuration
                              #:unused-access-findings-statistics
                              #:unused-access-type-statistics
                              #:unused-access-type-statistics-list
                              #:unused-action #:unused-action-list
                              #:unused-iam-role-details
                              #:unused-iam-user-access-key-details
                              #:unused-iam-user-password-details
                              #:unused-permission-details
                              #:unused-permissions-recommended-step
                              #:update-analyzer #:update-archive-rule
                              #:update-archive-rule-request #:update-findings
                              #:update-findings-request #:validate-policy
                              #:validate-policy-finding
                              #:validate-policy-finding-list
                              #:validate-policy-finding-type
                              #:validate-policy-request
                              #:validate-policy-resource-type
                              #:validate-policy-response
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:value-list
                              #:vpc-configuration #:vpc-id))
(common-lisp:in-package #:pira/accessanalyzer)

(smithy/sdk/service:define-service access-analyzer :shape-name "AccessAnalyzer"
                                   :version "2019-11-01" :title
                                   "Access Analyzer" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "AccessAnalyzer")
                                      ("arnNamespace" . "access-analyzer")
                                      ("cloudTrailEventSource"
                                       . "access-analyzer.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "access-analyzer"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure access common-lisp:nil
                                    ((actions :target-type actions-list
                                      :member-name "actions")
                                     (resources :target-type resources-list
                                      :member-name "resources"))
                                    (:shape-name "Access"))

(smithy/sdk/shapes:define-type access-check-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-check-policy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-check-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list access-list :member access)

(smithy/sdk/shapes:define-type access-point-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-point-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-preview common-lisp:nil
                                    ((id :target-type access-preview-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (configurations :target-type
                                      configurations-map :required
                                      common-lisp:t :member-name
                                      "configurations")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (status :target-type access-preview-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      access-preview-status-reason :member-name
                                      "statusReason"))
                                    (:shape-name "AccessPreview"))

(smithy/sdk/shapes:define-structure access-preview-finding common-lisp:nil
                                    ((id :target-type access-preview-finding-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (existing-finding-id :target-type
                                      finding-id :member-name
                                      "existingFindingId")
                                     (existing-finding-status :target-type
                                      finding-status :member-name
                                      "existingFindingStatus")
                                     (principal :target-type principal-map
                                      :member-name "principal")
                                     (action :target-type action-list
                                      :member-name "action")
                                     (condition :target-type condition-key-map
                                      :member-name "condition")
                                     (resource :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resource")
                                     (is-public :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPublic")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (change-type :target-type
                                      finding-change-type :required
                                      common-lisp:t :member-name "changeType")
                                     (status :target-type finding-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error")
                                     (sources :target-type finding-source-list
                                      :member-name "sources")
                                     (resource-control-policy-restriction
                                      :target-type
                                      resource-control-policy-restriction
                                      :member-name
                                      "resourceControlPolicyRestriction"))
                                    (:shape-name "AccessPreviewFinding"))

(smithy/sdk/shapes:define-type access-preview-finding-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-preview-findings-list :member
                               access-preview-finding)

(smithy/sdk/shapes:define-type access-preview-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-preview-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-preview-status-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      access-preview-status-reason-code
                                      :required common-lisp:t :member-name
                                      "code"))
                                    (:shape-name "AccessPreviewStatusReason"))

(smithy/sdk/shapes:define-type access-preview-status-reason-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-preview-summary common-lisp:nil
                                    ((id :target-type access-preview-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (status :target-type access-preview-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      access-preview-status-reason :member-name
                                      "statusReason"))
                                    (:shape-name "AccessPreviewSummary"))

(smithy/sdk/shapes:define-list access-previews-list :member
                               access-preview-summary)

(smithy/sdk/shapes:define-list account-aggregations :member
                               finding-aggregation-account-details)

(smithy/sdk/shapes:define-list account-ids-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type acl-canonical-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union acl-grantee common-lisp:nil
                                ((id :target-type acl-canonical-id :member-name
                                  "id")
                                 (uri :target-type acl-uri :member-name "uri"))
                                (:shape-name "AclGrantee"))

(smithy/sdk/shapes:define-type acl-permission smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type acl-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list actions-list :member action)

(smithy/sdk/shapes:define-structure analysis-rule common-lisp:nil
                                    ((exclusions :target-type
                                      analysis-rule-criteria-list :member-name
                                      "exclusions"))
                                    (:shape-name "AnalysisRule"))

(smithy/sdk/shapes:define-structure analysis-rule-criteria common-lisp:nil
                                    ((account-ids :target-type account-ids-list
                                      :member-name "accountIds")
                                     (resource-tags :target-type tags-list
                                      :member-name "resourceTags"))
                                    (:shape-name "AnalysisRuleCriteria"))

(smithy/sdk/shapes:define-list analysis-rule-criteria-list :member
                               analysis-rule-criteria)

(smithy/sdk/shapes:define-structure analyzed-resource common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (analyzed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "analyzedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (is-public :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isPublic")
                                     (actions :target-type action-list
                                      :member-name "actions")
                                     (shared-via :target-type shared-via-list
                                      :member-name "sharedVia")
                                     (status :target-type finding-status
                                      :member-name "status")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error"))
                                    (:shape-name "AnalyzedResource"))

(smithy/sdk/shapes:define-structure analyzed-resource-summary common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType"))
                                    (:shape-name "AnalyzedResourceSummary"))

(smithy/sdk/shapes:define-list analyzed-resources-list :member
                               analyzed-resource-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type analyzer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union analyzer-configuration common-lisp:nil
                                ((unused-access :target-type
                                  unused-access-configuration :member-name
                                  "unusedAccess")
                                 (internal-access :target-type
                                  internal-access-configuration :member-name
                                  "internalAccess"))
                                (:shape-name "AnalyzerConfiguration"))

(smithy/sdk/shapes:define-type analyzer-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analyzer-summary common-lisp:nil
                                    ((arn :target-type analyzer-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "type")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-resource-analyzed :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastResourceAnalyzed")
                                     (last-resource-analyzed-at :target-type
                                      timestamp :member-name
                                      "lastResourceAnalyzedAt")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (status :target-type analyzer-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (configuration :target-type
                                      analyzer-configuration :member-name
                                      "configuration"))
                                    (:shape-name "AnalyzerSummary"))

(smithy/sdk/shapes:define-list analyzers-list :member analyzer-summary)

(smithy/sdk/shapes:define-structure apply-archive-rule-request common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "ApplyArchiveRuleRequest"))

common-lisp:nil

(smithy/sdk/shapes:define-structure archive-rule-summary common-lisp:nil
                                    ((rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (filter :target-type filter-criteria-map
                                      :required common-lisp:t :member-name
                                      "filter")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "ArchiveRuleSummary"))

(smithy/sdk/shapes:define-list archive-rules-list :member archive-rule-summary)

(smithy/sdk/shapes:define-structure cancel-policy-generation-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId"))
                                    (:shape-name
                                     "CancelPolicyGenerationRequest"))

(smithy/sdk/shapes:define-structure cancel-policy-generation-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "CancelPolicyGenerationResponse"))

(smithy/sdk/shapes:define-input check-access-not-granted-request
                                common-lisp:nil
                                ((policy-document :target-type
                                  access-check-policy-document :required
                                  common-lisp:t :member-name "policyDocument")
                                 (access :target-type access-list :required
                                  common-lisp:t :member-name "access")
                                 (policy-type :target-type
                                  access-check-policy-type :required
                                  common-lisp:t :member-name "policyType"))
                                (:shape-name "CheckAccessNotGrantedRequest"))

(smithy/sdk/shapes:define-output check-access-not-granted-response
                                 common-lisp:nil
                                 ((result :target-type
                                   check-access-not-granted-result :member-name
                                   "result")
                                  (message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "message")
                                  (reasons :target-type reason-summary-list
                                   :member-name "reasons"))
                                 (:shape-name "CheckAccessNotGrantedResponse"))

(smithy/sdk/shapes:define-type check-access-not-granted-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input check-no-new-access-request common-lisp:nil
                                ((new-policy-document :target-type
                                  access-check-policy-document :required
                                  common-lisp:t :member-name
                                  "newPolicyDocument")
                                 (existing-policy-document :target-type
                                  access-check-policy-document :required
                                  common-lisp:t :member-name
                                  "existingPolicyDocument")
                                 (policy-type :target-type
                                  access-check-policy-type :required
                                  common-lisp:t :member-name "policyType"))
                                (:shape-name "CheckNoNewAccessRequest"))

(smithy/sdk/shapes:define-output check-no-new-access-response common-lisp:nil
                                 ((result :target-type
                                   check-no-new-access-result :member-name
                                   "result")
                                  (message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "message")
                                  (reasons :target-type reason-summary-list
                                   :member-name "reasons"))
                                 (:shape-name "CheckNoNewAccessResponse"))

(smithy/sdk/shapes:define-type check-no-new-access-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input check-no-public-access-request common-lisp:nil
                                ((policy-document :target-type
                                  access-check-policy-document :required
                                  common-lisp:t :member-name "policyDocument")
                                 (resource-type :target-type
                                  access-check-resource-type :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "CheckNoPublicAccessRequest"))

(smithy/sdk/shapes:define-output check-no-public-access-response
                                 common-lisp:nil
                                 ((result :target-type
                                   check-no-public-access-result :member-name
                                   "result")
                                  (message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "message")
                                  (reasons :target-type reason-summary-list
                                   :member-name "reasons"))
                                 (:shape-name "CheckNoPublicAccessResponse"))

(smithy/sdk/shapes:define-type check-no-public-access-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-trail-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-trail-details common-lisp:nil
                                    ((trails :target-type trail-list :required
                                      common-lisp:t :member-name "trails")
                                     (access-role :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "accessRole")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime"))
                                    (:shape-name "CloudTrailDetails"))

(smithy/sdk/shapes:define-structure cloud-trail-properties common-lisp:nil
                                    ((trail-properties :target-type
                                      trail-properties-list :required
                                      common-lisp:t :member-name
                                      "trailProperties")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name "CloudTrailProperties"))

(smithy/sdk/shapes:define-map condition-key-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union configuration common-lisp:nil
                                ((ebs-snapshot :target-type
                                  ebs-snapshot-configuration :member-name
                                  "ebsSnapshot")
                                 (ecr-repository :target-type
                                  ecr-repository-configuration :member-name
                                  "ecrRepository")
                                 (iam-role :target-type iam-role-configuration
                                  :member-name "iamRole")
                                 (efs-file-system :target-type
                                  efs-file-system-configuration :member-name
                                  "efsFileSystem")
                                 (kms-key :target-type kms-key-configuration
                                  :member-name "kmsKey")
                                 (rds-db-cluster-snapshot :target-type
                                  rds-db-cluster-snapshot-configuration
                                  :member-name "rdsDbClusterSnapshot")
                                 (rds-db-snapshot :target-type
                                  rds-db-snapshot-configuration :member-name
                                  "rdsDbSnapshot")
                                 (secrets-manager-secret :target-type
                                  secrets-manager-secret-configuration
                                  :member-name "secretsManagerSecret")
                                 (s3bucket :target-type s3bucket-configuration
                                  :member-name "s3Bucket")
                                 (sns-topic :target-type
                                  sns-topic-configuration :member-name
                                  "snsTopic")
                                 (sqs-queue :target-type
                                  sqs-queue-configuration :member-name
                                  "sqsQueue")
                                 (s3express-directory-bucket :target-type
                                  s3express-directory-bucket-configuration
                                  :member-name "s3ExpressDirectoryBucket")
                                 (dynamodb-stream :target-type
                                  dynamodb-stream-configuration :member-name
                                  "dynamodbStream")
                                 (dynamodb-table :target-type
                                  dynamodb-table-configuration :member-name
                                  "dynamodbTable"))
                                (:shape-name "Configuration"))

(smithy/sdk/shapes:define-map configurations-map :key configurations-map-key
                              :value configuration)

(smithy/sdk/shapes:define-type configurations-map-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-access-preview-request
                                    common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (configurations :target-type
                                      configurations-map :required
                                      common-lisp:t :member-name
                                      "configurations")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "CreateAccessPreviewRequest"))

(smithy/sdk/shapes:define-structure create-access-preview-response
                                    common-lisp:nil
                                    ((id :target-type access-preview-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "CreateAccessPreviewResponse"))

(smithy/sdk/shapes:define-structure create-analyzer-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "type")
                                     (archive-rules :target-type
                                      inline-archive-rules-list :member-name
                                      "archiveRules")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (configuration :target-type
                                      analyzer-configuration :member-name
                                      "configuration"))
                                    (:shape-name "CreateAnalyzerRequest"))

(smithy/sdk/shapes:define-structure create-analyzer-response common-lisp:nil
                                    ((arn :target-type analyzer-arn
                                      :member-name "arn"))
                                    (:shape-name "CreateAnalyzerResponse"))

(smithy/sdk/shapes:define-structure create-archive-rule-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (filter :target-type filter-criteria-map
                                      :required common-lisp:t :member-name
                                      "filter")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "CreateArchiveRuleRequest"))

(smithy/sdk/shapes:define-structure criterion common-lisp:nil
                                    ((eq :target-type value-list :member-name
                                      "eq")
                                     (neq :target-type value-list :member-name
                                      "neq")
                                     (contains :target-type value-list
                                      :member-name "contains")
                                     (exists :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "exists"))
                                    (:shape-name "Criterion"))

(smithy/sdk/shapes:define-structure delete-analyzer-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken"))
                                    (:shape-name "DeleteAnalyzerRequest"))

(smithy/sdk/shapes:define-structure delete-archive-rule-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken"))
                                    (:shape-name "DeleteArchiveRuleRequest"))

(smithy/sdk/shapes:define-structure dynamodb-stream-configuration
                                    common-lisp:nil
                                    ((stream-policy :target-type
                                      dynamodb-stream-policy :member-name
                                      "streamPolicy"))
                                    (:shape-name "DynamodbStreamConfiguration"))

(smithy/sdk/shapes:define-type dynamodb-stream-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dynamodb-table-configuration
                                    common-lisp:nil
                                    ((table-policy :target-type
                                      dynamodb-table-policy :member-name
                                      "tablePolicy"))
                                    (:shape-name "DynamodbTableConfiguration"))

(smithy/sdk/shapes:define-type dynamodb-table-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ebs-group-list :member ebs-group)

(smithy/sdk/shapes:define-structure ebs-snapshot-configuration common-lisp:nil
                                    ((user-ids :target-type ebs-user-id-list
                                      :member-name "userIds")
                                     (groups :target-type ebs-group-list
                                      :member-name "groups")
                                     (kms-key-id :target-type
                                      ebs-snapshot-data-encryption-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "EbsSnapshotConfiguration"))

(smithy/sdk/shapes:define-type ebs-snapshot-data-encryption-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ebs-user-id-list :member ebs-user-id)

(smithy/sdk/shapes:define-structure ecr-repository-configuration
                                    common-lisp:nil
                                    ((repository-policy :target-type
                                      ecr-repository-policy :member-name
                                      "repositoryPolicy"))
                                    (:shape-name "EcrRepositoryConfiguration"))

(smithy/sdk/shapes:define-type ecr-repository-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure efs-file-system-configuration
                                    common-lisp:nil
                                    ((file-system-policy :target-type
                                      efs-file-system-policy :member-name
                                      "fileSystemPolicy"))
                                    (:shape-name "EfsFileSystemConfiguration"))

(smithy/sdk/shapes:define-type efs-file-system-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure external-access-details common-lisp:nil
                                    ((action :target-type action-list
                                      :member-name "action")
                                     (condition :target-type condition-key-map
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (is-public :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPublic")
                                     (principal :target-type principal-map
                                      :member-name "principal")
                                     (sources :target-type finding-source-list
                                      :member-name "sources")
                                     (resource-control-policy-restriction
                                      :target-type
                                      resource-control-policy-restriction
                                      :member-name
                                      "resourceControlPolicyRestriction"))
                                    (:shape-name "ExternalAccessDetails"))

(smithy/sdk/shapes:define-structure external-access-findings-statistics
                                    common-lisp:nil
                                    ((resource-type-statistics :target-type
                                      resource-type-statistics-map :member-name
                                      "resourceTypeStatistics")
                                     (total-active-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActiveFindings")
                                     (total-archived-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalArchivedFindings")
                                     (total-resolved-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalResolvedFindings"))
                                    (:shape-name
                                     "ExternalAccessFindingsStatistics"))

(smithy/sdk/shapes:define-map filter-criteria-map :key
                              smithy/sdk/smithy-types:string :value criterion)

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((id :target-type finding-id :required
                                      common-lisp:t :member-name "id")
                                     (principal :target-type principal-map
                                      :member-name "principal")
                                     (action :target-type action-list
                                      :member-name "action")
                                     (resource :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resource")
                                     (is-public :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPublic")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (condition :target-type condition-key-map
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (analyzed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "analyzedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (status :target-type finding-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error")
                                     (sources :target-type finding-source-list
                                      :member-name "sources")
                                     (resource-control-policy-restriction
                                      :target-type
                                      resource-control-policy-restriction
                                      :member-name
                                      "resourceControlPolicyRestriction"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-structure finding-aggregation-account-details
                                    common-lisp:nil
                                    ((account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "account")
                                     (number-of-active-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfActiveFindings")
                                     (details :target-type
                                      finding-aggregation-account-details-map
                                      :member-name "details"))
                                    (:shape-name
                                     "FindingAggregationAccountDetails"))

(smithy/sdk/shapes:define-map finding-aggregation-account-details-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type finding-change-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union finding-details common-lisp:nil
                                ((internal-access-details :target-type
                                  internal-access-details :member-name
                                  "internalAccessDetails")
                                 (external-access-details :target-type
                                  external-access-details :member-name
                                  "externalAccessDetails")
                                 (unused-permission-details :target-type
                                  unused-permission-details :member-name
                                  "unusedPermissionDetails")
                                 (unused-iam-user-access-key-details
                                  :target-type
                                  unused-iam-user-access-key-details
                                  :member-name "unusedIamUserAccessKeyDetails")
                                 (unused-iam-role-details :target-type
                                  unused-iam-role-details :member-name
                                  "unusedIamRoleDetails")
                                 (unused-iam-user-password-details :target-type
                                  unused-iam-user-password-details :member-name
                                  "unusedIamUserPasswordDetails"))
                                (:shape-name "FindingDetails"))

(smithy/sdk/shapes:define-list finding-details-list :member finding-details)

(smithy/sdk/shapes:define-type finding-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-id-list :member finding-id)

(smithy/sdk/shapes:define-structure finding-source common-lisp:nil
                                    ((type :target-type finding-source-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (detail :target-type finding-source-detail
                                      :member-name "detail"))
                                    (:shape-name "FindingSource"))

(smithy/sdk/shapes:define-structure finding-source-detail common-lisp:nil
                                    ((access-point-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accessPointArn")
                                     (access-point-account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accessPointAccount"))
                                    (:shape-name "FindingSourceDetail"))

(smithy/sdk/shapes:define-list finding-source-list :member finding-source)

(smithy/sdk/shapes:define-type finding-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-status-update
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure finding-summary common-lisp:nil
                                    ((id :target-type finding-id :required
                                      common-lisp:t :member-name "id")
                                     (principal :target-type principal-map
                                      :member-name "principal")
                                     (action :target-type action-list
                                      :member-name "action")
                                     (resource :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resource")
                                     (is-public :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPublic")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (condition :target-type condition-key-map
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (analyzed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "analyzedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (status :target-type finding-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error")
                                     (sources :target-type finding-source-list
                                      :member-name "sources")
                                     (resource-control-policy-restriction
                                      :target-type
                                      resource-control-policy-restriction
                                      :member-name
                                      "resourceControlPolicyRestriction"))
                                    (:shape-name "FindingSummary"))

(smithy/sdk/shapes:define-structure finding-summary-v2 common-lisp:nil
                                    ((analyzed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "analyzedAt")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error")
                                     (id :target-type finding-id :required
                                      common-lisp:t :member-name "id")
                                     (resource :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resource")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceOwnerAccount")
                                     (status :target-type finding-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (finding-type :target-type finding-type
                                      :member-name "findingType"))
                                    (:shape-name "FindingSummaryV2"))

(smithy/sdk/shapes:define-type finding-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list findings-list :member finding-summary)

(smithy/sdk/shapes:define-list findings-list-v2 :member finding-summary-v2)

(smithy/sdk/shapes:define-union findings-statistics common-lisp:nil
                                ((external-access-findings-statistics
                                  :target-type
                                  external-access-findings-statistics
                                  :member-name
                                  "externalAccessFindingsStatistics")
                                 (internal-access-findings-statistics
                                  :target-type
                                  internal-access-findings-statistics
                                  :member-name
                                  "internalAccessFindingsStatistics")
                                 (unused-access-findings-statistics
                                  :target-type
                                  unused-access-findings-statistics
                                  :member-name
                                  "unusedAccessFindingsStatistics"))
                                (:shape-name "FindingsStatistics"))

(smithy/sdk/shapes:define-list findings-statistics-list :member
                               findings-statistics)

(smithy/sdk/shapes:define-input generate-finding-recommendation-request
                                common-lisp:nil
                                ((analyzer-arn :target-type analyzer-arn
                                  :required common-lisp:t :member-name
                                  "analyzerArn" :http-query "analyzerArn")
                                 (id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GenerateFindingRecommendationRequest"))

(smithy/sdk/shapes:define-structure generated-policy common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "policy"))
                                    (:shape-name "GeneratedPolicy"))

(smithy/sdk/shapes:define-list generated-policy-list :member generated-policy)

(smithy/sdk/shapes:define-structure generated-policy-properties common-lisp:nil
                                    ((is-complete :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isComplete")
                                     (principal-arn :target-type principal-arn
                                      :required common-lisp:t :member-name
                                      "principalArn")
                                     (cloud-trail-properties :target-type
                                      cloud-trail-properties :member-name
                                      "cloudTrailProperties"))
                                    (:shape-name "GeneratedPolicyProperties"))

(smithy/sdk/shapes:define-structure generated-policy-result common-lisp:nil
                                    ((properties :target-type
                                      generated-policy-properties :required
                                      common-lisp:t :member-name "properties")
                                     (generated-policies :target-type
                                      generated-policy-list :member-name
                                      "generatedPolicies"))
                                    (:shape-name "GeneratedPolicyResult"))

(smithy/sdk/shapes:define-structure get-access-preview-request common-lisp:nil
                                    ((access-preview-id :target-type
                                      access-preview-id :required common-lisp:t
                                      :member-name "accessPreviewId")
                                     (analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn" :http-query "analyzerArn"))
                                    (:shape-name "GetAccessPreviewRequest"))

(smithy/sdk/shapes:define-structure get-access-preview-response common-lisp:nil
                                    ((access-preview :target-type
                                      access-preview :required common-lisp:t
                                      :member-name "accessPreview"))
                                    (:shape-name "GetAccessPreviewResponse"))

(smithy/sdk/shapes:define-structure get-analyzed-resource-request
                                    common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn" :http-query "analyzerArn")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn" :http-query "resourceArn"))
                                    (:shape-name "GetAnalyzedResourceRequest"))

(smithy/sdk/shapes:define-structure get-analyzed-resource-response
                                    common-lisp:nil
                                    ((resource :target-type analyzed-resource
                                      :member-name "resource"))
                                    (:shape-name "GetAnalyzedResourceResponse"))

(smithy/sdk/shapes:define-structure get-analyzer-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName"))
                                    (:shape-name "GetAnalyzerRequest"))

(smithy/sdk/shapes:define-structure get-analyzer-response common-lisp:nil
                                    ((analyzer :target-type analyzer-summary
                                      :required common-lisp:t :member-name
                                      "analyzer"))
                                    (:shape-name "GetAnalyzerResponse"))

(smithy/sdk/shapes:define-structure get-archive-rule-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName"))
                                    (:shape-name "GetArchiveRuleRequest"))

(smithy/sdk/shapes:define-structure get-archive-rule-response common-lisp:nil
                                    ((archive-rule :target-type
                                      archive-rule-summary :required
                                      common-lisp:t :member-name
                                      "archiveRule"))
                                    (:shape-name "GetArchiveRuleResponse"))

(smithy/sdk/shapes:define-input get-finding-recommendation-request
                                common-lisp:nil
                                ((analyzer-arn :target-type analyzer-arn
                                  :required common-lisp:t :member-name
                                  "analyzerArn" :http-query "analyzerArn")
                                 (id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "GetFindingRecommendationRequest"))

(smithy/sdk/shapes:define-output get-finding-recommendation-response
                                 common-lisp:nil
                                 ((started-at :target-type timestamp :required
                                   common-lisp:t :member-name "startedAt")
                                  (completed-at :target-type timestamp
                                   :member-name "completedAt")
                                  (next-token :target-type token :member-name
                                   "nextToken")
                                  (error :target-type recommendation-error
                                   :member-name "error")
                                  (resource-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "resourceArn")
                                  (recommended-steps :target-type
                                   recommended-step-list :member-name
                                   "recommendedSteps")
                                  (recommendation-type :target-type
                                   recommendation-type :required common-lisp:t
                                   :member-name "recommendationType")
                                  (status :target-type status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "GetFindingRecommendationResponse"))

(smithy/sdk/shapes:define-structure get-finding-request common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn" :http-query "analyzerArn")
                                     (id :target-type finding-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetFindingRequest"))

(smithy/sdk/shapes:define-structure get-finding-response common-lisp:nil
                                    ((finding :target-type finding :member-name
                                      "finding"))
                                    (:shape-name "GetFindingResponse"))

(smithy/sdk/shapes:define-input get-finding-v2request common-lisp:nil
                                ((analyzer-arn :target-type analyzer-arn
                                  :required common-lisp:t :member-name
                                  "analyzerArn" :http-query "analyzerArn")
                                 (id :target-type finding-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "GetFindingV2Request"))

(smithy/sdk/shapes:define-output get-finding-v2response common-lisp:nil
                                 ((analyzed-at :target-type timestamp :required
                                   common-lisp:t :member-name "analyzedAt")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (error :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "error")
                                  (id :target-type finding-id :required
                                   common-lisp:t :member-name "id")
                                  (next-token :target-type token :member-name
                                   "nextToken")
                                  (resource :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "resource")
                                  (resource-type :target-type resource-type
                                   :required common-lisp:t :member-name
                                   "resourceType")
                                  (resource-owner-account :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "resourceOwnerAccount")
                                  (status :target-type finding-status :required
                                   common-lisp:t :member-name "status")
                                  (updated-at :target-type timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (finding-details :target-type
                                   finding-details-list :required common-lisp:t
                                   :member-name "findingDetails")
                                  (finding-type :target-type finding-type
                                   :member-name "findingType"))
                                 (:shape-name "GetFindingV2Response"))

(smithy/sdk/shapes:define-input get-findings-statistics-request common-lisp:nil
                                ((analyzer-arn :target-type analyzer-arn
                                  :required common-lisp:t :member-name
                                  "analyzerArn"))
                                (:shape-name "GetFindingsStatisticsRequest"))

(smithy/sdk/shapes:define-output get-findings-statistics-response
                                 common-lisp:nil
                                 ((findings-statistics :target-type
                                   findings-statistics-list :member-name
                                   "findingsStatistics")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "GetFindingsStatisticsResponse"))

(smithy/sdk/shapes:define-structure get-generated-policy-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (include-resource-placeholders
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "includeResourcePlaceholders" :http-query
                                      "includeResourcePlaceholders")
                                     (include-service-level-template
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "includeServiceLevelTemplate" :http-query
                                      "includeServiceLevelTemplate"))
                                    (:shape-name "GetGeneratedPolicyRequest"))

(smithy/sdk/shapes:define-structure get-generated-policy-response
                                    common-lisp:nil
                                    ((job-details :target-type job-details
                                      :required common-lisp:t :member-name
                                      "jobDetails")
                                     (generated-policy-result :target-type
                                      generated-policy-result :required
                                      common-lisp:t :member-name
                                      "generatedPolicyResult"))
                                    (:shape-name "GetGeneratedPolicyResponse"))

(smithy/sdk/shapes:define-type grantee-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iam-role-configuration common-lisp:nil
                                    ((trust-policy :target-type
                                      iam-trust-policy :member-name
                                      "trustPolicy"))
                                    (:shape-name "IamRoleConfiguration"))

(smithy/sdk/shapes:define-type iam-trust-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inline-archive-rule common-lisp:nil
                                    ((rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (filter :target-type filter-criteria-map
                                      :required common-lisp:t :member-name
                                      "filter"))
                                    (:shape-name "InlineArchiveRule"))

(smithy/sdk/shapes:define-list inline-archive-rules-list :member
                               inline-archive-rule)

(smithy/sdk/shapes:define-structure internal-access-analysis-rule
                                    common-lisp:nil
                                    ((inclusions :target-type
                                      internal-access-analysis-rule-criteria-list
                                      :member-name "inclusions"))
                                    (:shape-name "InternalAccessAnalysisRule"))

(smithy/sdk/shapes:define-structure internal-access-analysis-rule-criteria
                                    common-lisp:nil
                                    ((account-ids :target-type account-ids-list
                                      :member-name "accountIds")
                                     (resource-types :target-type
                                      resource-type-list :member-name
                                      "resourceTypes")
                                     (resource-arns :target-type
                                      resource-arns-list :member-name
                                      "resourceArns"))
                                    (:shape-name
                                     "InternalAccessAnalysisRuleCriteria"))

(smithy/sdk/shapes:define-list internal-access-analysis-rule-criteria-list
                               :member internal-access-analysis-rule-criteria)

(smithy/sdk/shapes:define-structure internal-access-configuration
                                    common-lisp:nil
                                    ((analysis-rule :target-type
                                      internal-access-analysis-rule
                                      :member-name "analysisRule"))
                                    (:shape-name "InternalAccessConfiguration"))

(smithy/sdk/shapes:define-structure internal-access-details common-lisp:nil
                                    ((action :target-type action-list
                                      :member-name "action")
                                     (condition :target-type condition-key-map
                                      :member-name "condition")
                                     (principal :target-type principal-map
                                      :member-name "principal")
                                     (principal-owner-account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "principalOwnerAccount")
                                     (access-type :target-type
                                      internal-access-type :member-name
                                      "accessType")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "principalType")
                                     (sources :target-type finding-source-list
                                      :member-name "sources")
                                     (resource-control-policy-restriction
                                      :target-type
                                      resource-control-policy-restriction
                                      :member-name
                                      "resourceControlPolicyRestriction")
                                     (service-control-policy-restriction
                                      :target-type
                                      service-control-policy-restriction
                                      :member-name
                                      "serviceControlPolicyRestriction"))
                                    (:shape-name "InternalAccessDetails"))

(smithy/sdk/shapes:define-structure internal-access-findings-statistics
                                    common-lisp:nil
                                    ((resource-type-statistics :target-type
                                      internal-access-resource-type-statistics-map
                                      :member-name "resourceTypeStatistics")
                                     (total-active-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActiveFindings")
                                     (total-archived-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalArchivedFindings")
                                     (total-resolved-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalResolvedFindings"))
                                    (:shape-name
                                     "InternalAccessFindingsStatistics"))

(smithy/sdk/shapes:define-structure internal-access-resource-type-details
                                    common-lisp:nil
                                    ((total-active-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActiveFindings")
                                     (total-resolved-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalResolvedFindings")
                                     (total-archived-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalArchivedFindings"))
                                    (:shape-name
                                     "InternalAccessResourceTypeDetails"))

(smithy/sdk/shapes:define-map internal-access-resource-type-statistics-map :key
                              resource-type :value
                              internal-access-resource-type-details)

(smithy/sdk/shapes:define-type internal-access-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure internet-configuration common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InternetConfiguration"))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type issue-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type issuing-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-details common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (started-on :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startedOn")
                                     (completed-on :target-type timestamp
                                      :member-name "completedOn")
                                     (job-error :target-type job-error
                                      :member-name "jobError"))
                                    (:shape-name "JobDetails"))

(smithy/sdk/shapes:define-structure job-error common-lisp:nil
                                    ((code :target-type job-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "JobError"))

(smithy/sdk/shapes:define-type job-error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-constraints-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map kms-constraints-map :key kms-constraints-key
                              :value kms-constraints-value)

(smithy/sdk/shapes:define-type kms-constraints-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kms-grant-configuration common-lisp:nil
                                    ((operations :target-type
                                      kms-grant-operations-list :required
                                      common-lisp:t :member-name "operations")
                                     (grantee-principal :target-type
                                      grantee-principal :required common-lisp:t
                                      :member-name "granteePrincipal")
                                     (retiring-principal :target-type
                                      retiring-principal :member-name
                                      "retiringPrincipal")
                                     (constraints :target-type
                                      kms-grant-constraints :member-name
                                      "constraints")
                                     (issuing-account :target-type
                                      issuing-account :required common-lisp:t
                                      :member-name "issuingAccount"))
                                    (:shape-name "KmsGrantConfiguration"))

(smithy/sdk/shapes:define-list kms-grant-configurations-list :member
                               kms-grant-configuration)

(smithy/sdk/shapes:define-structure kms-grant-constraints common-lisp:nil
                                    ((encryption-context-equals :target-type
                                      kms-constraints-map :member-name
                                      "encryptionContextEquals")
                                     (encryption-context-subset :target-type
                                      kms-constraints-map :member-name
                                      "encryptionContextSubset"))
                                    (:shape-name "KmsGrantConstraints"))

(smithy/sdk/shapes:define-type kms-grant-operation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kms-grant-operations-list :member
                               kms-grant-operation)

(smithy/sdk/shapes:define-structure kms-key-configuration common-lisp:nil
                                    ((key-policies :target-type
                                      kms-key-policies-map :member-name
                                      "keyPolicies")
                                     (grants :target-type
                                      kms-grant-configurations-list
                                      :member-name "grants"))
                                    (:shape-name "KmsKeyConfiguration"))

(smithy/sdk/shapes:define-map kms-key-policies-map :key policy-name :value
                              kms-key-policy)

(smithy/sdk/shapes:define-type kms-key-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type learn-more-link smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-access-preview-findings-request
                                    common-lisp:nil
                                    ((access-preview-id :target-type
                                      access-preview-id :required common-lisp:t
                                      :member-name "accessPreviewId")
                                     (analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (filter :target-type filter-criteria-map
                                      :member-name "filter")
                                     (next-token :target-type token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAccessPreviewFindingsRequest"))

(smithy/sdk/shapes:define-structure list-access-preview-findings-response
                                    common-lisp:nil
                                    ((findings :target-type
                                      access-preview-findings-list :required
                                      common-lisp:t :member-name "findings")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAccessPreviewFindingsResponse"))

(smithy/sdk/shapes:define-structure list-access-previews-request
                                    common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn" :http-query "analyzerArn")
                                     (next-token :target-type token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListAccessPreviewsRequest"))

(smithy/sdk/shapes:define-structure list-access-previews-response
                                    common-lisp:nil
                                    ((access-previews :target-type
                                      access-previews-list :required
                                      common-lisp:t :member-name
                                      "accessPreviews")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAccessPreviewsResponse"))

(smithy/sdk/shapes:define-structure list-analyzed-resources-request
                                    common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (next-token :target-type token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAnalyzedResourcesRequest"))

(smithy/sdk/shapes:define-structure list-analyzed-resources-response
                                    common-lisp:nil
                                    ((analyzed-resources :target-type
                                      analyzed-resources-list :required
                                      common-lisp:t :member-name
                                      "analyzedResources")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAnalyzedResourcesResponse"))

(smithy/sdk/shapes:define-structure list-analyzers-request common-lisp:nil
                                    ((next-token :target-type token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (type :target-type type :member-name
                                      "type" :http-query "type"))
                                    (:shape-name "ListAnalyzersRequest"))

(smithy/sdk/shapes:define-structure list-analyzers-response common-lisp:nil
                                    ((analyzers :target-type analyzers-list
                                      :required common-lisp:t :member-name
                                      "analyzers")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAnalyzersResponse"))

(smithy/sdk/shapes:define-structure list-archive-rules-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (next-token :target-type token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListArchiveRulesRequest"))

(smithy/sdk/shapes:define-structure list-archive-rules-response common-lisp:nil
                                    ((archive-rules :target-type
                                      archive-rules-list :required
                                      common-lisp:t :member-name
                                      "archiveRules")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name "ListArchiveRulesResponse"))

(smithy/sdk/shapes:define-structure list-findings-request common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (filter :target-type filter-criteria-map
                                      :member-name "filter")
                                     (sort :target-type sort-criteria
                                      :member-name "sort")
                                     (next-token :target-type token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListFindingsRequest"))

(smithy/sdk/shapes:define-structure list-findings-response common-lisp:nil
                                    ((findings :target-type findings-list
                                      :required common-lisp:t :member-name
                                      "findings")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFindingsResponse"))

(smithy/sdk/shapes:define-input list-findings-v2request common-lisp:nil
                                ((analyzer-arn :target-type analyzer-arn
                                  :required common-lisp:t :member-name
                                  "analyzerArn")
                                 (filter :target-type filter-criteria-map
                                  :member-name "filter")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type token :member-name
                                  "nextToken")
                                 (sort :target-type sort-criteria :member-name
                                  "sort"))
                                (:shape-name "ListFindingsV2Request"))

(smithy/sdk/shapes:define-output list-findings-v2response common-lisp:nil
                                 ((findings :target-type findings-list-v2
                                   :required common-lisp:t :member-name
                                   "findings")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListFindingsV2Response"))

(smithy/sdk/shapes:define-structure list-policy-generations-request
                                    common-lisp:nil
                                    ((principal-arn :target-type principal-arn
                                      :member-name "principalArn" :http-query
                                      "principalArn")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "ListPolicyGenerationsRequest"))

(smithy/sdk/shapes:define-structure list-policy-generations-response
                                    common-lisp:nil
                                    ((policy-generations :target-type
                                      policy-generation-list :required
                                      common-lisp:t :member-name
                                      "policyGenerations")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListPolicyGenerationsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type locale smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((path :target-type path-element-list
                                      :required common-lisp:t :member-name
                                      "path")
                                     (span :target-type span :required
                                      common-lisp:t :member-name "span"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-list location-list :member location)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union network-origin-configuration common-lisp:nil
                                ((vpc-configuration :target-type
                                  vpc-configuration :member-name
                                  "vpcConfiguration")
                                 (internet-configuration :target-type
                                  internet-configuration :member-name
                                  "internetConfiguration"))
                                (:shape-name "NetworkOriginConfiguration"))

(smithy/sdk/shapes:define-type order-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union path-element common-lisp:nil
                                ((index :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "index")
                                 (key :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "key")
                                 (substring :target-type substring :member-name
                                  "substring")
                                 (value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "value"))
                                (:shape-name "PathElement"))

(smithy/sdk/shapes:define-list path-element-list :member path-element)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-generation common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (principal-arn :target-type principal-arn
                                      :required common-lisp:t :member-name
                                      "principalArn")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (started-on :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startedOn")
                                     (completed-on :target-type timestamp
                                      :member-name "completedOn"))
                                    (:shape-name "PolicyGeneration"))

(smithy/sdk/shapes:define-structure policy-generation-details common-lisp:nil
                                    ((principal-arn :target-type principal-arn
                                      :required common-lisp:t :member-name
                                      "principalArn"))
                                    (:shape-name "PolicyGenerationDetails"))

(smithy/sdk/shapes:define-list policy-generation-list :member policy-generation)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure position common-lisp:nil
                                    ((line :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "line")
                                     (column :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "column")
                                     (offset :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "offset"))
                                    (:shape-name "Position"))

(smithy/sdk/shapes:define-type principal-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map principal-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rds-db-cluster-snapshot-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rds-db-cluster-snapshot-account-ids-list :member
                               rds-db-cluster-snapshot-account-id)

(smithy/sdk/shapes:define-type rds-db-cluster-snapshot-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union rds-db-cluster-snapshot-attribute-value
                                common-lisp:nil
                                ((account-ids :target-type
                                  rds-db-cluster-snapshot-account-ids-list
                                  :member-name "accountIds"))
                                (:shape-name
                                 "RdsDbClusterSnapshotAttributeValue"))

(smithy/sdk/shapes:define-map rds-db-cluster-snapshot-attributes-map :key
                              rds-db-cluster-snapshot-attribute-name :value
                              rds-db-cluster-snapshot-attribute-value)

(smithy/sdk/shapes:define-structure rds-db-cluster-snapshot-configuration
                                    common-lisp:nil
                                    ((attributes :target-type
                                      rds-db-cluster-snapshot-attributes-map
                                      :member-name "attributes")
                                     (kms-key-id :target-type
                                      rds-db-cluster-snapshot-kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name
                                     "RdsDbClusterSnapshotConfiguration"))

(smithy/sdk/shapes:define-type rds-db-cluster-snapshot-kms-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rds-db-snapshot-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rds-db-snapshot-account-ids-list :member
                               rds-db-snapshot-account-id)

(smithy/sdk/shapes:define-type rds-db-snapshot-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union rds-db-snapshot-attribute-value common-lisp:nil
                                ((account-ids :target-type
                                  rds-db-snapshot-account-ids-list :member-name
                                  "accountIds"))
                                (:shape-name "RdsDbSnapshotAttributeValue"))

(smithy/sdk/shapes:define-map rds-db-snapshot-attributes-map :key
                              rds-db-snapshot-attribute-name :value
                              rds-db-snapshot-attribute-value)

(smithy/sdk/shapes:define-structure rds-db-snapshot-configuration
                                    common-lisp:nil
                                    ((attributes :target-type
                                      rds-db-snapshot-attributes-map
                                      :member-name "attributes")
                                     (kms-key-id :target-type
                                      rds-db-snapshot-kms-key-id :member-name
                                      "kmsKeyId"))
                                    (:shape-name "RdsDbSnapshotConfiguration"))

(smithy/sdk/shapes:define-type rds-db-snapshot-kms-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reason-summary common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (statement-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "statementIndex")
                                     (statement-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statementId"))
                                    (:shape-name "ReasonSummary"))

(smithy/sdk/shapes:define-list reason-summary-list :member reason-summary)

(smithy/sdk/shapes:define-structure recommendation-error common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "RecommendationError"))

(smithy/sdk/shapes:define-type recommendation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommended-remediation-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union recommended-step common-lisp:nil
                                ((unused-permissions-recommended-step
                                  :target-type
                                  unused-permissions-recommended-step
                                  :member-name
                                  "unusedPermissionsRecommendedStep"))
                                (:shape-name "RecommendedStep"))

(smithy/sdk/shapes:define-list recommended-step-list :member recommended-step)

(smithy/sdk/shapes:define-list region-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arns-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-control-policy-restriction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-type-details common-lisp:nil
                                    ((total-active-public :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActivePublic")
                                     (total-active-cross-account :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActiveCrossAccount"))
                                    (:shape-name "ResourceTypeDetails"))

(smithy/sdk/shapes:define-list resource-type-list :member resource-type)

(smithy/sdk/shapes:define-map resource-type-statistics-map :key resource-type
                              :value resource-type-details)

(smithy/sdk/shapes:define-list resources-list :member resource)

(smithy/sdk/shapes:define-type retiring-principal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3access-point-configuration
                                    common-lisp:nil
                                    ((access-point-policy :target-type
                                      access-point-policy :member-name
                                      "accessPointPolicy")
                                     (public-access-block :target-type
                                      s3public-access-block-configuration
                                      :member-name "publicAccessBlock")
                                     (network-origin :target-type
                                      network-origin-configuration :member-name
                                      "networkOrigin"))
                                    (:shape-name "S3AccessPointConfiguration"))

(smithy/sdk/shapes:define-map s3access-point-configurations-map :key
                              access-point-arn :value
                              s3access-point-configuration)

(smithy/sdk/shapes:define-structure s3bucket-acl-grant-configuration
                                    common-lisp:nil
                                    ((permission :target-type acl-permission
                                      :required common-lisp:t :member-name
                                      "permission")
                                     (grantee :target-type acl-grantee
                                      :required common-lisp:t :member-name
                                      "grantee"))
                                    (:shape-name
                                     "S3BucketAclGrantConfiguration"))

(smithy/sdk/shapes:define-list s3bucket-acl-grant-configurations-list :member
                               s3bucket-acl-grant-configuration)

(smithy/sdk/shapes:define-structure s3bucket-configuration common-lisp:nil
                                    ((bucket-policy :target-type
                                      s3bucket-policy :member-name
                                      "bucketPolicy")
                                     (bucket-acl-grants :target-type
                                      s3bucket-acl-grant-configurations-list
                                      :member-name "bucketAclGrants")
                                     (bucket-public-access-block :target-type
                                      s3public-access-block-configuration
                                      :member-name "bucketPublicAccessBlock")
                                     (access-points :target-type
                                      s3access-point-configurations-map
                                      :member-name "accessPoints"))
                                    (:shape-name "S3BucketConfiguration"))

(smithy/sdk/shapes:define-type s3bucket-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3express-directory-access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 s3express-directory-access-point-configuration common-lisp:nil
 ((access-point-policy :target-type access-point-policy :member-name
   "accessPointPolicy")
  (network-origin :target-type network-origin-configuration :member-name
   "networkOrigin"))
 (:shape-name "S3ExpressDirectoryAccessPointConfiguration"))

(smithy/sdk/shapes:define-map
 s3express-directory-access-point-configurations-map :key
 s3express-directory-access-point-arn :value
 s3express-directory-access-point-configuration)

(smithy/sdk/shapes:define-structure s3express-directory-bucket-configuration
                                    common-lisp:nil
                                    ((bucket-policy :target-type
                                      s3express-directory-bucket-policy
                                      :member-name "bucketPolicy")
                                     (access-points :target-type
                                      s3express-directory-access-point-configurations-map
                                      :member-name "accessPoints"))
                                    (:shape-name
                                     "S3ExpressDirectoryBucketConfiguration"))

(smithy/sdk/shapes:define-type s3express-directory-bucket-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3public-access-block-configuration
                                    common-lisp:nil
                                    ((ignore-public-acls :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "ignorePublicAcls")
                                     (restrict-public-buckets :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "restrictPublicBuckets"))
                                    (:shape-name
                                     "S3PublicAccessBlockConfiguration"))

(smithy/sdk/shapes:define-structure secrets-manager-secret-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type
                                      secrets-manager-secret-kms-id
                                      :member-name "kmsKeyId")
                                     (secret-policy :target-type
                                      secrets-manager-secret-policy
                                      :member-name "secretPolicy"))
                                    (:shape-name
                                     "SecretsManagerSecretConfiguration"))

(smithy/sdk/shapes:define-type secrets-manager-secret-kms-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secrets-manager-secret-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-control-policy-restriction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list shared-via-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sns-topic-configuration common-lisp:nil
                                    ((topic-policy :target-type
                                      sns-topic-policy :member-name
                                      "topicPolicy"))
                                    (:shape-name "SnsTopicConfiguration"))

(smithy/sdk/shapes:define-type sns-topic-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sort-criteria common-lisp:nil
                                    ((attribute-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy"))
                                    (:shape-name "SortCriteria"))

(smithy/sdk/shapes:define-structure span common-lisp:nil
                                    ((start :target-type position :required
                                      common-lisp:t :member-name "start")
                                     (end :target-type position :required
                                      common-lisp:t :member-name "end"))
                                    (:shape-name "Span"))

(smithy/sdk/shapes:define-structure sqs-queue-configuration common-lisp:nil
                                    ((queue-policy :target-type
                                      sqs-queue-policy :member-name
                                      "queuePolicy"))
                                    (:shape-name "SqsQueueConfiguration"))

(smithy/sdk/shapes:define-type sqs-queue-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-policy-generation-request
                                    common-lisp:nil
                                    ((policy-generation-details :target-type
                                      policy-generation-details :required
                                      common-lisp:t :member-name
                                      "policyGenerationDetails")
                                     (cloud-trail-details :target-type
                                      cloud-trail-details :member-name
                                      "cloudTrailDetails")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "StartPolicyGenerationRequest"))

(smithy/sdk/shapes:define-structure start-policy-generation-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId"))
                                    (:shape-name
                                     "StartPolicyGenerationResponse"))

(smithy/sdk/shapes:define-structure start-resource-scan-request common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (resource-owner-account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceOwnerAccount"))
                                    (:shape-name "StartResourceScanRequest"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure status-reason common-lisp:nil
                                    ((code :target-type reason-code :required
                                      common-lisp:t :member-name "code"))
                                    (:shape-name "StatusReason"))

(smithy/sdk/shapes:define-structure substring common-lisp:nil
                                    ((start :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "start")
                                     (length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "length"))
                                    (:shape-name "Substring"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tags-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-list tags-list :member tags-map)

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trail common-lisp:nil
                                    ((cloud-trail-arn :target-type
                                      cloud-trail-arn :required common-lisp:t
                                      :member-name "cloudTrailArn")
                                     (regions :target-type region-list
                                      :member-name "regions")
                                     (all-regions :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allRegions"))
                                    (:shape-name "Trail"))

(smithy/sdk/shapes:define-list trail-list :member trail)

(smithy/sdk/shapes:define-structure trail-properties common-lisp:nil
                                    ((cloud-trail-arn :target-type
                                      cloud-trail-arn :required common-lisp:t
                                      :member-name "cloudTrailArn")
                                     (regions :target-type region-list
                                      :member-name "regions")
                                     (all-regions :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allRegions"))
                                    (:shape-name "TrailProperties"))

(smithy/sdk/shapes:define-list trail-properties-list :member trail-properties)

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure unused-access-configuration common-lisp:nil
                                    ((unused-access-age :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "unusedAccessAge")
                                     (analysis-rule :target-type analysis-rule
                                      :member-name "analysisRule"))
                                    (:shape-name "UnusedAccessConfiguration"))

(smithy/sdk/shapes:define-structure unused-access-findings-statistics
                                    common-lisp:nil
                                    ((unused-access-type-statistics
                                      :target-type
                                      unused-access-type-statistics-list
                                      :member-name
                                      "unusedAccessTypeStatistics")
                                     (top-accounts :target-type
                                      account-aggregations :member-name
                                      "topAccounts")
                                     (total-active-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalActiveFindings")
                                     (total-archived-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalArchivedFindings")
                                     (total-resolved-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalResolvedFindings"))
                                    (:shape-name
                                     "UnusedAccessFindingsStatistics"))

(smithy/sdk/shapes:define-structure unused-access-type-statistics
                                    common-lisp:nil
                                    ((unused-access-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unusedAccessType")
                                     (total :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "total"))
                                    (:shape-name "UnusedAccessTypeStatistics"))

(smithy/sdk/shapes:define-list unused-access-type-statistics-list :member
                               unused-access-type-statistics)

(smithy/sdk/shapes:define-structure unused-action common-lisp:nil
                                    ((action :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "action")
                                     (last-accessed :target-type timestamp
                                      :member-name "lastAccessed"))
                                    (:shape-name "UnusedAction"))

(smithy/sdk/shapes:define-list unused-action-list :member unused-action)

(smithy/sdk/shapes:define-structure unused-iam-role-details common-lisp:nil
                                    ((last-accessed :target-type timestamp
                                      :member-name "lastAccessed"))
                                    (:shape-name "UnusedIamRoleDetails"))

(smithy/sdk/shapes:define-structure unused-iam-user-access-key-details
                                    common-lisp:nil
                                    ((access-key-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "accessKeyId")
                                     (last-accessed :target-type timestamp
                                      :member-name "lastAccessed"))
                                    (:shape-name
                                     "UnusedIamUserAccessKeyDetails"))

(smithy/sdk/shapes:define-structure unused-iam-user-password-details
                                    common-lisp:nil
                                    ((last-accessed :target-type timestamp
                                      :member-name "lastAccessed"))
                                    (:shape-name
                                     "UnusedIamUserPasswordDetails"))

(smithy/sdk/shapes:define-structure unused-permission-details common-lisp:nil
                                    ((actions :target-type unused-action-list
                                      :member-name "actions")
                                     (service-namespace :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "serviceNamespace")
                                     (last-accessed :target-type timestamp
                                      :member-name "lastAccessed"))
                                    (:shape-name "UnusedPermissionDetails"))

(smithy/sdk/shapes:define-structure unused-permissions-recommended-step
                                    common-lisp:nil
                                    ((policy-updated-at :target-type timestamp
                                      :member-name "policyUpdatedAt")
                                     (recommended-action :target-type
                                      recommended-remediation-action :required
                                      common-lisp:t :member-name
                                      "recommendedAction")
                                     (recommended-policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recommendedPolicy")
                                     (existing-policy-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "existingPolicyId"))
                                    (:shape-name
                                     "UnusedPermissionsRecommendedStep"))

(smithy/sdk/shapes:define-input update-analyzer-request common-lisp:nil
                                ((analyzer-name :target-type name :required
                                  common-lisp:t :member-name "analyzerName"
                                  :http-label common-lisp:t)
                                 (configuration :target-type
                                  analyzer-configuration :member-name
                                  "configuration"))
                                (:shape-name "UpdateAnalyzerRequest"))

(smithy/sdk/shapes:define-output update-analyzer-response common-lisp:nil
                                 ((configuration :target-type
                                   analyzer-configuration :member-name
                                   "configuration"))
                                 (:shape-name "UpdateAnalyzerResponse"))

(smithy/sdk/shapes:define-structure update-archive-rule-request common-lisp:nil
                                    ((analyzer-name :target-type name :required
                                      common-lisp:t :member-name
                                      "analyzerName")
                                     (rule-name :target-type name :required
                                      common-lisp:t :member-name "ruleName")
                                     (filter :target-type filter-criteria-map
                                      :required common-lisp:t :member-name
                                      "filter")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateArchiveRuleRequest"))

(smithy/sdk/shapes:define-structure update-findings-request common-lisp:nil
                                    ((analyzer-arn :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "analyzerArn")
                                     (status :target-type finding-status-update
                                      :required common-lisp:t :member-name
                                      "status")
                                     (ids :target-type finding-id-list
                                      :member-name "ids")
                                     (resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateFindingsRequest"))

(smithy/sdk/shapes:define-structure validate-policy-finding common-lisp:nil
                                    ((finding-details :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "findingDetails")
                                     (finding-type :target-type
                                      validate-policy-finding-type :required
                                      common-lisp:t :member-name "findingType")
                                     (issue-code :target-type issue-code
                                      :required common-lisp:t :member-name
                                      "issueCode")
                                     (learn-more-link :target-type
                                      learn-more-link :required common-lisp:t
                                      :member-name "learnMoreLink")
                                     (locations :target-type location-list
                                      :required common-lisp:t :member-name
                                      "locations"))
                                    (:shape-name "ValidatePolicyFinding"))

(smithy/sdk/shapes:define-list validate-policy-finding-list :member
                               validate-policy-finding)

(smithy/sdk/shapes:define-type validate-policy-finding-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure validate-policy-request common-lisp:nil
                                    ((locale :target-type locale :member-name
                                      "locale")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (policy-document :target-type
                                      policy-document :required common-lisp:t
                                      :member-name "policyDocument")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "policyType")
                                     (validate-policy-resource-type
                                      :target-type
                                      validate-policy-resource-type
                                      :member-name
                                      "validatePolicyResourceType"))
                                    (:shape-name "ValidatePolicyRequest"))

(smithy/sdk/shapes:define-type validate-policy-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure validate-policy-response common-lisp:nil
                                    ((findings :target-type
                                      validate-policy-finding-list :required
                                      common-lisp:t :member-name "findings")
                                     (next-token :target-type token
                                      :member-name "nextToken"))
                                    (:shape-name "ValidatePolicyResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list value-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "vpcId"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation apply-archive-rule :shape-name
                                       "ApplyArchiveRule" :input
                                       apply-archive-rule-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/archive-rule" :code
                                       200)

(smithy/sdk/operation:define-operation cancel-policy-generation :shape-name
                                       "CancelPolicyGeneration" :input
                                       cancel-policy-generation-request :output
                                       cancel-policy-generation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/policy/generation/{jobId}" :code 200)

(smithy/sdk/operation:define-operation check-access-not-granted :shape-name
                                       "CheckAccessNotGranted" :input
                                       check-access-not-granted-request :output
                                       check-access-not-granted-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception
                                        unprocessable-entity-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policy/check-access-not-granted" :code
                                       200)

(smithy/sdk/operation:define-operation check-no-new-access :shape-name
                                       "CheckNoNewAccess" :input
                                       check-no-new-access-request :output
                                       check-no-new-access-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception
                                        unprocessable-entity-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policy/check-no-new-access" :code 200)

(smithy/sdk/operation:define-operation check-no-public-access :shape-name
                                       "CheckNoPublicAccess" :input
                                       check-no-public-access-request :output
                                       check-no-public-access-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception
                                        unprocessable-entity-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policy/check-no-public-access" :code
                                       200)

(smithy/sdk/operation:define-operation create-access-preview :shape-name
                                       "CreateAccessPreview" :input
                                       create-access-preview-request :output
                                       create-access-preview-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/access-preview"
                                       :code 200)

(smithy/sdk/operation:define-operation create-analyzer :shape-name
                                       "CreateAnalyzer" :input
                                       create-analyzer-request :output
                                       create-analyzer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/analyzer" :code 200)

(smithy/sdk/operation:define-operation create-archive-rule :shape-name
                                       "CreateArchiveRule" :input
                                       create-archive-rule-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/analyzer/{analyzerName}/archive-rule"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-analyzer :shape-name
                                       "DeleteAnalyzer" :input
                                       delete-analyzer-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/analyzer/{analyzerName}" :code 200)

(smithy/sdk/operation:define-operation delete-archive-rule :shape-name
                                       "DeleteArchiveRule" :input
                                       delete-archive-rule-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/analyzer/{analyzerName}/archive-rule/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation generate-finding-recommendation
                                       :shape-name
                                       "GenerateFindingRecommendation" :input
                                       generate-finding-recommendation-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/recommendation/{id}" :code 200)

(smithy/sdk/operation:define-operation get-access-preview :shape-name
                                       "GetAccessPreview" :input
                                       get-access-preview-request :output
                                       get-access-preview-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/access-preview/{accessPreviewId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-analyzed-resource :shape-name
                                       "GetAnalyzedResource" :input
                                       get-analyzed-resource-request :output
                                       get-analyzed-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/analyzed-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation get-analyzer :shape-name "GetAnalyzer"
                                       :input get-analyzer-request :output
                                       get-analyzer-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/analyzer/{analyzerName}" :code 200)

(smithy/sdk/operation:define-operation get-archive-rule :shape-name
                                       "GetArchiveRule" :input
                                       get-archive-rule-request :output
                                       get-archive-rule-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/analyzer/{analyzerName}/archive-rule/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-finding :shape-name "GetFinding"
                                       :input get-finding-request :output
                                       get-finding-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/finding/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-finding-recommendation :shape-name
                                       "GetFindingRecommendation" :input
                                       get-finding-recommendation-request
                                       :output
                                       get-finding-recommendation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/recommendation/{id}" :code 200)

(smithy/sdk/operation:define-operation get-finding-v2 :shape-name
                                       "GetFindingV2" :input
                                       get-finding-v2request :output
                                       get-finding-v2response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/findingv2/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings-statistics :shape-name
                                       "GetFindingsStatistics" :input
                                       get-findings-statistics-request :output
                                       get-findings-statistics-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/analyzer/findings/statistics" :code
                                       200)

(smithy/sdk/operation:define-operation get-generated-policy :shape-name
                                       "GetGeneratedPolicy" :input
                                       get-generated-policy-request :output
                                       get-generated-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/policy/generation/{jobId}" :code 200)

(smithy/sdk/operation:define-operation list-access-preview-findings :shape-name
                                       "ListAccessPreviewFindings" :input
                                       list-access-preview-findings-request
                                       :output
                                       list-access-preview-findings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/access-preview/{accessPreviewId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-previews :shape-name
                                       "ListAccessPreviews" :input
                                       list-access-previews-request :output
                                       list-access-previews-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/access-preview"
                                       :code 200)

(smithy/sdk/operation:define-operation list-analyzed-resources :shape-name
                                       "ListAnalyzedResources" :input
                                       list-analyzed-resources-request :output
                                       list-analyzed-resources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/analyzed-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation list-analyzers :shape-name
                                       "ListAnalyzers" :input
                                       list-analyzers-request :output
                                       list-analyzers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/analyzer" :code 200)

(smithy/sdk/operation:define-operation list-archive-rules :shape-name
                                       "ListArchiveRules" :input
                                       list-archive-rules-request :output
                                       list-archive-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/analyzer/{analyzerName}/archive-rule"
                                       :code 200)

(smithy/sdk/operation:define-operation list-findings :shape-name "ListFindings"
                                       :input list-findings-request :output
                                       list-findings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/finding" :code 200)

(smithy/sdk/operation:define-operation list-findings-v2 :shape-name
                                       "ListFindingsV2" :input
                                       list-findings-v2request :output
                                       list-findings-v2response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findingv2" :code
                                       200)

(smithy/sdk/operation:define-operation list-policy-generations :shape-name
                                       "ListPolicyGenerations" :input
                                       list-policy-generations-request :output
                                       list-policy-generations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/policy/generation"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation start-policy-generation :shape-name
                                       "StartPolicyGeneration" :input
                                       start-policy-generation-request :output
                                       start-policy-generation-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/policy/generation"
                                       :code 200)

(smithy/sdk/operation:define-operation start-resource-scan :shape-name
                                       "StartResourceScan" :input
                                       start-resource-scan-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/resource/scan"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

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
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-analyzer :shape-name
                                       "UpdateAnalyzer" :input
                                       update-analyzer-request :output
                                       update-analyzer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/analyzer/{analyzerName}" :code 200)

(smithy/sdk/operation:define-operation update-archive-rule :shape-name
                                       "UpdateArchiveRule" :input
                                       update-archive-rule-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/analyzer/{analyzerName}/archive-rule/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-findings :shape-name
                                       "UpdateFindings" :input
                                       update-findings-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/finding" :code 200)

(smithy/sdk/operation:define-operation validate-policy :shape-name
                                       "ValidatePolicy" :input
                                       validate-policy-request :output
                                       validate-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/policy/validation"
                                       :code 200)
