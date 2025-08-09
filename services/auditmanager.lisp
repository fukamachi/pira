(uiop/package:define-package #:pira/auditmanager (:use)
                             (:export #:awsaccount #:awsaccounts #:awsservice
                              #:awsservice-name #:awsservices
                              #:access-denied-exception #:account-id
                              #:account-name #:account-status #:action-enum
                              #:action-plan-instructions #:action-plan-title
                              #:assessment #:assessment-control
                              #:assessment-control-set
                              #:assessment-control-sets #:assessment-controls
                              #:assessment-description
                              #:assessment-evidence-folder
                              #:assessment-evidence-folder-name
                              #:assessment-evidence-folders
                              #:assessment-framework
                              #:assessment-framework-description
                              #:assessment-framework-metadata
                              #:assessment-framework-share-request
                              #:assessment-framework-share-request-list
                              #:assessment-metadata #:assessment-metadata-item
                              #:assessment-name #:assessment-report
                              #:assessment-report-description
                              #:assessment-report-destination-type
                              #:assessment-report-evidence-error
                              #:assessment-report-evidence-errors
                              #:assessment-report-metadata
                              #:assessment-report-name
                              #:assessment-report-status
                              #:assessment-reports-destination
                              #:assessment-reports-metadata #:assessment-status
                              #:associate-assessment-report-evidence-folder
                              #:associate-assessment-report-evidence-folder-request
                              #:associate-assessment-report-evidence-folder-response
                              #:audit-manager-arn
                              #:batch-associate-assessment-report-evidence
                              #:batch-associate-assessment-report-evidence-request
                              #:batch-associate-assessment-report-evidence-response
                              #:batch-create-delegation-by-assessment
                              #:batch-create-delegation-by-assessment-error
                              #:batch-create-delegation-by-assessment-errors
                              #:batch-create-delegation-by-assessment-request
                              #:batch-create-delegation-by-assessment-response
                              #:batch-delete-delegation-by-assessment
                              #:batch-delete-delegation-by-assessment-error
                              #:batch-delete-delegation-by-assessment-errors
                              #:batch-delete-delegation-by-assessment-request
                              #:batch-delete-delegation-by-assessment-response
                              #:batch-disassociate-assessment-report-evidence
                              #:batch-disassociate-assessment-report-evidence-request
                              #:batch-disassociate-assessment-report-evidence-response
                              #:batch-import-evidence-to-assessment-control
                              #:batch-import-evidence-to-assessment-control-error
                              #:batch-import-evidence-to-assessment-control-errors
                              #:batch-import-evidence-to-assessment-control-request
                              #:batch-import-evidence-to-assessment-control-response
                              #:bedrock-assessment-manager-lambda #:boolean
                              #:change-log #:change-logs #:cloud-trail-arn
                              #:compliance-type #:control #:control-catalog-id
                              #:control-comment #:control-comment-body
                              #:control-comments #:control-description
                              #:control-domain-id #:control-domain-insights
                              #:control-domain-insights-list
                              #:control-insights-metadata
                              #:control-insights-metadata-by-assessment
                              #:control-insights-metadata-by-assessment-item
                              #:control-insights-metadata-item
                              #:control-mapping-source
                              #:control-mapping-sources #:control-metadata
                              #:control-metadata-list #:control-name
                              #:control-response #:control-set #:control-set-id
                              #:control-set-name #:control-set-status
                              #:control-sets #:control-sets-count
                              #:control-sources #:control-state
                              #:control-status #:control-type #:controls
                              #:controls-count #:create-assessment
                              #:create-assessment-framework
                              #:create-assessment-framework-control
                              #:create-assessment-framework-control-set
                              #:create-assessment-framework-control-sets
                              #:create-assessment-framework-controls
                              #:create-assessment-framework-request
                              #:create-assessment-framework-response
                              #:create-assessment-report
                              #:create-assessment-report-request
                              #:create-assessment-report-response
                              #:create-assessment-request
                              #:create-assessment-response #:create-control
                              #:create-control-mapping-source
                              #:create-control-mapping-sources
                              #:create-control-request
                              #:create-control-response
                              #:create-delegation-request
                              #:create-delegation-requests #:created-by
                              #:data-source-type #:default-export-destination
                              #:delegation #:delegation-comment
                              #:delegation-ids #:delegation-metadata
                              #:delegation-metadata-list #:delegation-status
                              #:delegations #:delete-assessment
                              #:delete-assessment-framework
                              #:delete-assessment-framework-request
                              #:delete-assessment-framework-response
                              #:delete-assessment-framework-share
                              #:delete-assessment-framework-share-request
                              #:delete-assessment-framework-share-response
                              #:delete-assessment-report
                              #:delete-assessment-report-request
                              #:delete-assessment-report-response
                              #:delete-assessment-request
                              #:delete-assessment-response #:delete-control
                              #:delete-control-request
                              #:delete-control-response #:delete-resources
                              #:deregister-account #:deregister-account-request
                              #:deregister-account-response
                              #:deregister-organization-admin-account
                              #:deregister-organization-admin-account-request
                              #:deregister-organization-admin-account-response
                              #:deregistration-policy
                              #:disassociate-assessment-report-evidence-folder
                              #:disassociate-assessment-report-evidence-folder-request
                              #:disassociate-assessment-report-evidence-folder-response
                              #:email-address #:error-code #:error-message
                              #:event-name #:evidence #:evidence-attribute-key
                              #:evidence-attribute-value #:evidence-attributes
                              #:evidence-finder-backfill-status
                              #:evidence-finder-enablement
                              #:evidence-finder-enablement-status
                              #:evidence-ids #:evidence-insights
                              #:evidence-list #:evidence-sources
                              #:export-destination-type #:filename #:framework
                              #:framework-description #:framework-metadata
                              #:framework-metadata-list #:framework-name
                              #:framework-type #:generic-arn
                              #:get-account-status #:get-account-status-request
                              #:get-account-status-response #:get-assessment
                              #:get-assessment-framework
                              #:get-assessment-framework-request
                              #:get-assessment-framework-response
                              #:get-assessment-report-url
                              #:get-assessment-report-url-request
                              #:get-assessment-report-url-response
                              #:get-assessment-request
                              #:get-assessment-response #:get-change-logs
                              #:get-change-logs-request
                              #:get-change-logs-response #:get-control
                              #:get-control-request #:get-control-response
                              #:get-delegations #:get-delegations-request
                              #:get-delegations-response #:get-evidence
                              #:get-evidence-by-evidence-folder
                              #:get-evidence-by-evidence-folder-request
                              #:get-evidence-by-evidence-folder-response
                              #:get-evidence-file-upload-url
                              #:get-evidence-file-upload-url-request
                              #:get-evidence-file-upload-url-response
                              #:get-evidence-folder
                              #:get-evidence-folder-request
                              #:get-evidence-folder-response
                              #:get-evidence-folders-by-assessment
                              #:get-evidence-folders-by-assessment-control
                              #:get-evidence-folders-by-assessment-control-request
                              #:get-evidence-folders-by-assessment-control-response
                              #:get-evidence-folders-by-assessment-request
                              #:get-evidence-folders-by-assessment-response
                              #:get-evidence-request #:get-evidence-response
                              #:get-insights #:get-insights-by-assessment
                              #:get-insights-by-assessment-request
                              #:get-insights-by-assessment-response
                              #:get-insights-request #:get-insights-response
                              #:get-organization-admin-account
                              #:get-organization-admin-account-request
                              #:get-organization-admin-account-response
                              #:get-services-in-scope
                              #:get-services-in-scope-request
                              #:get-services-in-scope-response #:get-settings
                              #:get-settings-request #:get-settings-response
                              #:hyperlink-name #:iam-arn #:insights
                              #:insights-by-assessment #:integer
                              #:internal-server-exception #:keyword-input-type
                              #:keyword-value #:keywords #:kms-key
                              #:last-updated-by
                              #:list-assessment-control-insights-by-control-domain
                              #:list-assessment-control-insights-by-control-domain-request
                              #:list-assessment-control-insights-by-control-domain-response
                              #:list-assessment-framework-share-requests
                              #:list-assessment-framework-share-requests-request
                              #:list-assessment-framework-share-requests-response
                              #:list-assessment-frameworks
                              #:list-assessment-frameworks-request
                              #:list-assessment-frameworks-response
                              #:list-assessment-metadata
                              #:list-assessment-reports
                              #:list-assessment-reports-request
                              #:list-assessment-reports-response
                              #:list-assessments #:list-assessments-request
                              #:list-assessments-response
                              #:list-control-domain-insights
                              #:list-control-domain-insights-by-assessment
                              #:list-control-domain-insights-by-assessment-request
                              #:list-control-domain-insights-by-assessment-response
                              #:list-control-domain-insights-request
                              #:list-control-domain-insights-response
                              #:list-control-insights-by-control-domain
                              #:list-control-insights-by-control-domain-request
                              #:list-control-insights-by-control-domain-response
                              #:list-controls #:list-controls-request
                              #:list-controls-response
                              #:list-keywords-for-data-source
                              #:list-keywords-for-data-source-request
                              #:list-keywords-for-data-source-response
                              #:list-notifications #:list-notifications-request
                              #:list-notifications-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:manual-evidence #:manual-evidence-list
                              #:manual-evidence-local-file-name
                              #:manual-evidence-text-response #:max-results
                              #:non-empty-string #:notification #:notifications
                              #:nullable-integer #:object-type-enum
                              #:query-statement #:region #:register-account
                              #:register-account-request
                              #:register-account-response
                              #:register-organization-admin-account
                              #:register-organization-admin-account-request
                              #:register-organization-admin-account-response
                              #:resource #:resource-not-found-exception
                              #:resources #:role #:role-type #:roles #:s3url
                              #:snstopic #:scope #:service-metadata
                              #:service-metadata-list
                              #:service-quota-exceeded-exception
                              #:setting-attribute #:settings
                              #:share-request-action #:share-request-comment
                              #:share-request-status #:share-request-type
                              #:sns-arn #:source-description #:source-frequency
                              #:source-keyword #:source-name
                              #:source-set-up-option #:source-type
                              #:start-assessment-framework-share
                              #:start-assessment-framework-share-request
                              #:start-assessment-framework-share-response
                              #:string #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:testing-information #:throttling-exception
                              #:timestamp #:timestamp-uuid #:token
                              #:troubleshooting-text #:url #:uuid
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-assessment
                              #:update-assessment-control
                              #:update-assessment-control-request
                              #:update-assessment-control-response
                              #:update-assessment-control-set-status
                              #:update-assessment-control-set-status-request
                              #:update-assessment-control-set-status-response
                              #:update-assessment-framework
                              #:update-assessment-framework-control-set
                              #:update-assessment-framework-control-sets
                              #:update-assessment-framework-request
                              #:update-assessment-framework-response
                              #:update-assessment-framework-share
                              #:update-assessment-framework-share-request
                              #:update-assessment-framework-share-response
                              #:update-assessment-request
                              #:update-assessment-response
                              #:update-assessment-status
                              #:update-assessment-status-request
                              #:update-assessment-status-response
                              #:update-control #:update-control-request
                              #:update-control-response #:update-settings
                              #:update-settings-request
                              #:update-settings-response #:url-link #:username
                              #:validate-assessment-report-integrity
                              #:validate-assessment-report-integrity-request
                              #:validate-assessment-report-integrity-response
                              #:validation-errors #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:organization-id))
(common-lisp:in-package #:pira/auditmanager)

(smithy/sdk/service:define-service bedrock-assessment-manager-lambda
                                   :shape-name "BedrockAssessmentManagerLambda"
                                   :version "2017-07-25" :title
                                   "AWS Audit Manager" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "AuditManager")
                                      ("arnNamespace" . "auditmanager")
                                      ("cloudFormationName" . "AuditManager")
                                      ("cloudTrailEventSource"
                                       . "auditmanager.amazonaws.com")
                                      ("endpointPrefix" . "auditmanager"))
                                     ("aws.auth#sigv4"
                                      ("name" . "auditmanager"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure awsaccount common-lisp:nil
                                    ((id :target-type account-id :member-name
                                      "id")
                                     (email-address :target-type email-address
                                      :member-name "emailAddress")
                                     (name :target-type account-name
                                      :member-name "name"))
                                    (:shape-name "AWSAccount"))

(smithy/sdk/shapes:define-list awsaccounts :member awsaccount)

(smithy/sdk/shapes:define-structure awsservice common-lisp:nil
                                    ((service-name :target-type awsservice-name
                                      :member-name "serviceName"))
                                    (:shape-name "AWSService"))

(smithy/sdk/shapes:define-type awsservice-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list awsservices :member awsservice)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum account-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:pending-activation "PENDING_ACTIVATION"))

(smithy/sdk/shapes:define-enum action-enum
    common-lisp:nil
  (:create "CREATE")
  (:update-metadata "UPDATE_METADATA")
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:delete "DELETE")
  (:under-review "UNDER_REVIEW")
  (:reviewed "REVIEWED")
  (:import-evidence "IMPORT_EVIDENCE"))

(smithy/sdk/shapes:define-type action-plan-instructions
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-plan-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment common-lisp:nil
                                    ((arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (aws-account :target-type awsaccount
                                      :member-name "awsAccount")
                                     (metadata :target-type assessment-metadata
                                      :member-name "metadata")
                                     (framework :target-type
                                      assessment-framework :member-name
                                      "framework")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Assessment"))

(smithy/sdk/shapes:define-structure assessment-control common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type control-name
                                      :member-name "name")
                                     (description :target-type
                                      control-description :member-name
                                      "description")
                                     (status :target-type control-status
                                      :member-name "status")
                                     (response :target-type control-response
                                      :member-name "response")
                                     (comments :target-type control-comments
                                      :member-name "comments")
                                     (evidence-sources :target-type
                                      evidence-sources :member-name
                                      "evidenceSources")
                                     (evidence-count :target-type integer
                                      :member-name "evidenceCount")
                                     (assessment-report-evidence-count
                                      :target-type integer :member-name
                                      "assessmentReportEvidenceCount"))
                                    (:shape-name "AssessmentControl"))

(smithy/sdk/shapes:define-structure assessment-control-set common-lisp:nil
                                    ((id :target-type control-set-id
                                      :member-name "id")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (status :target-type control-set-status
                                      :member-name "status")
                                     (roles :target-type roles :member-name
                                      "roles")
                                     (controls :target-type assessment-controls
                                      :member-name "controls")
                                     (delegations :target-type delegations
                                      :member-name "delegations")
                                     (system-evidence-count :target-type
                                      integer :member-name
                                      "systemEvidenceCount")
                                     (manual-evidence-count :target-type
                                      integer :member-name
                                      "manualEvidenceCount"))
                                    (:shape-name "AssessmentControlSet"))

(smithy/sdk/shapes:define-list assessment-control-sets :member
                               assessment-control-set)

(smithy/sdk/shapes:define-list assessment-controls :member assessment-control)

(smithy/sdk/shapes:define-type assessment-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-evidence-folder common-lisp:nil
                                    ((name :target-type
                                      assessment-evidence-folder-name
                                      :member-name "name")
                                     (date :target-type timestamp :member-name
                                      "date")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (control-set-id :target-type
                                      control-set-id :member-name
                                      "controlSetId")
                                     (control-id :target-type uuid :member-name
                                      "controlId")
                                     (id :target-type uuid :member-name "id")
                                     (data-source :target-type string
                                      :member-name "dataSource")
                                     (author :target-type string :member-name
                                      "author")
                                     (total-evidence :target-type integer
                                      :member-name "totalEvidence")
                                     (assessment-report-selection-count
                                      :target-type integer :member-name
                                      "assessmentReportSelectionCount")
                                     (control-name :target-type control-name
                                      :member-name "controlName")
                                     (evidence-resources-included-count
                                      :target-type integer :member-name
                                      "evidenceResourcesIncludedCount")
                                     (evidence-by-type-configuration-data-count
                                      :target-type integer :member-name
                                      "evidenceByTypeConfigurationDataCount")
                                     (evidence-by-type-manual-count
                                      :target-type integer :member-name
                                      "evidenceByTypeManualCount")
                                     (evidence-by-type-compliance-check-count
                                      :target-type integer :member-name
                                      "evidenceByTypeComplianceCheckCount")
                                     (evidence-by-type-compliance-check-issues-count
                                      :target-type integer :member-name
                                      "evidenceByTypeComplianceCheckIssuesCount")
                                     (evidence-by-type-user-activity-count
                                      :target-type integer :member-name
                                      "evidenceByTypeUserActivityCount")
                                     (evidence-aws-service-source-count
                                      :target-type integer :member-name
                                      "evidenceAwsServiceSourceCount"))
                                    (:shape-name "AssessmentEvidenceFolder"))

(smithy/sdk/shapes:define-type assessment-evidence-folder-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list assessment-evidence-folders :member
                               assessment-evidence-folder)

(smithy/sdk/shapes:define-structure assessment-framework common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (metadata :target-type framework-metadata
                                      :member-name "metadata")
                                     (control-sets :target-type
                                      assessment-control-sets :member-name
                                      "controlSets"))
                                    (:shape-name "AssessmentFramework"))

(smithy/sdk/shapes:define-type assessment-framework-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-framework-metadata
                                    common-lisp:nil
                                    ((arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (id :target-type uuid :member-name "id")
                                     (type :target-type framework-type
                                      :member-name "type")
                                     (name :target-type framework-name
                                      :member-name "name")
                                     (description :target-type
                                      framework-description :member-name
                                      "description")
                                     (logo :target-type filename :member-name
                                      "logo")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType")
                                     (controls-count :target-type
                                      controls-count :member-name
                                      "controlsCount")
                                     (control-sets-count :target-type
                                      control-sets-count :member-name
                                      "controlSetsCount")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "AssessmentFrameworkMetadata"))

(smithy/sdk/shapes:define-structure assessment-framework-share-request
                                    common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (framework-id :target-type uuid
                                      :member-name "frameworkId")
                                     (framework-name :target-type
                                      framework-name :member-name
                                      "frameworkName")
                                     (framework-description :target-type
                                      framework-description :member-name
                                      "frameworkDescription")
                                     (status :target-type share-request-status
                                      :member-name "status")
                                     (source-account :target-type account-id
                                      :member-name "sourceAccount")
                                     (destination-account :target-type
                                      account-id :member-name
                                      "destinationAccount")
                                     (destination-region :target-type region
                                      :member-name "destinationRegion")
                                     (expiration-time :target-type timestamp
                                      :member-name "expirationTime")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated")
                                     (comment :target-type
                                      share-request-comment :member-name
                                      "comment")
                                     (standard-controls-count :target-type
                                      nullable-integer :member-name
                                      "standardControlsCount")
                                     (custom-controls-count :target-type
                                      nullable-integer :member-name
                                      "customControlsCount")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType"))
                                    (:shape-name
                                     "AssessmentFrameworkShareRequest"))

(smithy/sdk/shapes:define-list assessment-framework-share-request-list :member
                               assessment-framework-share-request)

(smithy/sdk/shapes:define-structure assessment-metadata common-lisp:nil
                                    ((name :target-type assessment-name
                                      :member-name "name")
                                     (id :target-type uuid :member-name "id")
                                     (description :target-type
                                      assessment-description :member-name
                                      "description")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType")
                                     (status :target-type assessment-status
                                      :member-name "status")
                                     (assessment-reports-destination
                                      :target-type
                                      assessment-reports-destination
                                      :member-name
                                      "assessmentReportsDestination")
                                     (scope :target-type scope :member-name
                                      "scope")
                                     (roles :target-type roles :member-name
                                      "roles")
                                     (delegations :target-type delegations
                                      :member-name "delegations")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "AssessmentMetadata"))

(smithy/sdk/shapes:define-structure assessment-metadata-item common-lisp:nil
                                    ((name :target-type assessment-name
                                      :member-name "name")
                                     (id :target-type uuid :member-name "id")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType")
                                     (status :target-type assessment-status
                                      :member-name "status")
                                     (roles :target-type roles :member-name
                                      "roles")
                                     (delegations :target-type delegations
                                      :member-name "delegations")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "AssessmentMetadataItem"))

(smithy/sdk/shapes:define-type assessment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-report common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type assessment-report-name
                                      :member-name "name")
                                     (description :target-type
                                      assessment-report-description
                                      :member-name "description")
                                     (aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (assessment-name :target-type
                                      assessment-name :member-name
                                      "assessmentName")
                                     (author :target-type username :member-name
                                      "author")
                                     (status :target-type
                                      assessment-report-status :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "AssessmentReport"))

(smithy/sdk/shapes:define-type assessment-report-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum assessment-report-destination-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-structure assessment-report-evidence-error
                                    common-lisp:nil
                                    ((evidence-id :target-type uuid
                                      :member-name "evidenceId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "AssessmentReportEvidenceError"))

(smithy/sdk/shapes:define-list assessment-report-evidence-errors :member
                               assessment-report-evidence-error)

(smithy/sdk/shapes:define-structure assessment-report-metadata common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type assessment-report-name
                                      :member-name "name")
                                     (description :target-type
                                      assessment-report-description
                                      :member-name "description")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (assessment-name :target-type
                                      assessment-name :member-name
                                      "assessmentName")
                                     (author :target-type username :member-name
                                      "author")
                                     (status :target-type
                                      assessment-report-status :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "AssessmentReportMetadata"))

(smithy/sdk/shapes:define-type assessment-report-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum assessment-report-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure assessment-reports-destination
                                    common-lisp:nil
                                    ((destination-type :target-type
                                      assessment-report-destination-type
                                      :member-name "destinationType")
                                     (destination :target-type s3url
                                      :member-name "destination"))
                                    (:shape-name
                                     "AssessmentReportsDestination"))

(smithy/sdk/shapes:define-list assessment-reports-metadata :member
                               assessment-report-metadata)

(smithy/sdk/shapes:define-enum assessment-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-input
 associate-assessment-report-evidence-folder-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (evidence-folder-id :target-type uuid :required common-lisp:t :member-name
   "evidenceFolderId"))
 (:shape-name "AssociateAssessmentReportEvidenceFolderRequest"))

(smithy/sdk/shapes:define-output
 associate-assessment-report-evidence-folder-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateAssessmentReportEvidenceFolderResponse"))

(smithy/sdk/shapes:define-type audit-manager-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 batch-associate-assessment-report-evidence-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (evidence-folder-id :target-type uuid :required common-lisp:t :member-name
   "evidenceFolderId")
  (evidence-ids :target-type evidence-ids :required common-lisp:t :member-name
   "evidenceIds"))
 (:shape-name "BatchAssociateAssessmentReportEvidenceRequest"))

(smithy/sdk/shapes:define-output
 batch-associate-assessment-report-evidence-response common-lisp:nil
 ((evidence-ids :target-type evidence-ids :member-name "evidenceIds")
  (errors :target-type assessment-report-evidence-errors :member-name
   "errors"))
 (:shape-name "BatchAssociateAssessmentReportEvidenceResponse"))

(smithy/sdk/shapes:define-structure batch-create-delegation-by-assessment-error
                                    common-lisp:nil
                                    ((create-delegation-request :target-type
                                      create-delegation-request :member-name
                                      "createDelegationRequest")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "BatchCreateDelegationByAssessmentError"))

(smithy/sdk/shapes:define-list batch-create-delegation-by-assessment-errors
                               :member
                               batch-create-delegation-by-assessment-error)

(smithy/sdk/shapes:define-input batch-create-delegation-by-assessment-request
                                common-lisp:nil
                                ((create-delegation-requests :target-type
                                  create-delegation-requests :required
                                  common-lisp:t :member-name
                                  "createDelegationRequests")
                                 (assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "BatchCreateDelegationByAssessmentRequest"))

(smithy/sdk/shapes:define-output batch-create-delegation-by-assessment-response
                                 common-lisp:nil
                                 ((delegations :target-type delegations
                                   :member-name "delegations")
                                  (errors :target-type
                                   batch-create-delegation-by-assessment-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchCreateDelegationByAssessmentResponse"))

(smithy/sdk/shapes:define-structure batch-delete-delegation-by-assessment-error
                                    common-lisp:nil
                                    ((delegation-id :target-type uuid
                                      :member-name "delegationId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "BatchDeleteDelegationByAssessmentError"))

(smithy/sdk/shapes:define-list batch-delete-delegation-by-assessment-errors
                               :member
                               batch-delete-delegation-by-assessment-error)

(smithy/sdk/shapes:define-input batch-delete-delegation-by-assessment-request
                                common-lisp:nil
                                ((delegation-ids :target-type delegation-ids
                                  :required common-lisp:t :member-name
                                  "delegationIds")
                                 (assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "BatchDeleteDelegationByAssessmentRequest"))

(smithy/sdk/shapes:define-output batch-delete-delegation-by-assessment-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-delegation-by-assessment-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchDeleteDelegationByAssessmentResponse"))

(smithy/sdk/shapes:define-input
 batch-disassociate-assessment-report-evidence-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (evidence-folder-id :target-type uuid :required common-lisp:t :member-name
   "evidenceFolderId")
  (evidence-ids :target-type evidence-ids :required common-lisp:t :member-name
   "evidenceIds"))
 (:shape-name "BatchDisassociateAssessmentReportEvidenceRequest"))

(smithy/sdk/shapes:define-output
 batch-disassociate-assessment-report-evidence-response common-lisp:nil
 ((evidence-ids :target-type evidence-ids :member-name "evidenceIds")
  (errors :target-type assessment-report-evidence-errors :member-name
   "errors"))
 (:shape-name "BatchDisassociateAssessmentReportEvidenceResponse"))

(smithy/sdk/shapes:define-structure
 batch-import-evidence-to-assessment-control-error common-lisp:nil
 ((manual-evidence :target-type manual-evidence :member-name "manualEvidence")
  (error-code :target-type error-code :member-name "errorCode")
  (error-message :target-type error-message :member-name "errorMessage"))
 (:shape-name "BatchImportEvidenceToAssessmentControlError"))

(smithy/sdk/shapes:define-list
 batch-import-evidence-to-assessment-control-errors :member
 batch-import-evidence-to-assessment-control-error)

(smithy/sdk/shapes:define-input
 batch-import-evidence-to-assessment-control-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (control-set-id :target-type control-set-id :required common-lisp:t
   :member-name "controlSetId" :http-label common-lisp:t)
  (control-id :target-type uuid :required common-lisp:t :member-name
   "controlId" :http-label common-lisp:t)
  (manual-evidence :target-type manual-evidence-list :required common-lisp:t
   :member-name "manualEvidence"))
 (:shape-name "BatchImportEvidenceToAssessmentControlRequest"))

(smithy/sdk/shapes:define-output
 batch-import-evidence-to-assessment-control-response common-lisp:nil
 ((errors :target-type batch-import-evidence-to-assessment-control-errors
   :member-name "errors"))
 (:shape-name "BatchImportEvidenceToAssessmentControlResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure change-log common-lisp:nil
                                    ((object-type :target-type object-type-enum
                                      :member-name "objectType")
                                     (object-name :target-type non-empty-string
                                      :member-name "objectName")
                                     (action :target-type action-enum
                                      :member-name "action")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (created-by :target-type iam-arn
                                      :member-name "createdBy"))
                                    (:shape-name "ChangeLog"))

(smithy/sdk/shapes:define-list change-logs :member change-log)

(smithy/sdk/shapes:define-type cloud-trail-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compliance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure control common-lisp:nil
                                    ((arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (id :target-type uuid :member-name "id")
                                     (type :target-type control-type
                                      :member-name "type")
                                     (name :target-type control-name
                                      :member-name "name")
                                     (description :target-type
                                      control-description :member-name
                                      "description")
                                     (testing-information :target-type
                                      testing-information :member-name
                                      "testingInformation")
                                     (action-plan-title :target-type
                                      action-plan-title :member-name
                                      "actionPlanTitle")
                                     (action-plan-instructions :target-type
                                      action-plan-instructions :member-name
                                      "actionPlanInstructions")
                                     (control-sources :target-type
                                      control-sources :member-name
                                      "controlSources")
                                     (control-mapping-sources :target-type
                                      control-mapping-sources :member-name
                                      "controlMappingSources")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (last-updated-by :target-type
                                      last-updated-by :member-name
                                      "lastUpdatedBy")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (state :target-type control-state
                                      :member-name "state"))
                                    (:shape-name "Control"))

(smithy/sdk/shapes:define-type control-catalog-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure control-comment common-lisp:nil
                                    ((author-name :target-type username
                                      :member-name "authorName")
                                     (comment-body :target-type
                                      control-comment-body :member-name
                                      "commentBody")
                                     (posted-date :target-type timestamp
                                      :member-name "postedDate"))
                                    (:shape-name "ControlComment"))

(smithy/sdk/shapes:define-type control-comment-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list control-comments :member control-comment)

(smithy/sdk/shapes:define-type control-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type control-domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure control-domain-insights common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (id :target-type control-domain-id
                                      :member-name "id")
                                     (controls-count-by-noncompliant-evidence
                                      :target-type nullable-integer
                                      :member-name
                                      "controlsCountByNoncompliantEvidence")
                                     (total-controls-count :target-type
                                      nullable-integer :member-name
                                      "totalControlsCount")
                                     (evidence-insights :target-type
                                      evidence-insights :member-name
                                      "evidenceInsights")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "ControlDomainInsights"))

(smithy/sdk/shapes:define-list control-domain-insights-list :member
                               control-domain-insights)

(smithy/sdk/shapes:define-list control-insights-metadata :member
                               control-insights-metadata-item)

(smithy/sdk/shapes:define-list control-insights-metadata-by-assessment :member
                               control-insights-metadata-by-assessment-item)

(smithy/sdk/shapes:define-structure
 control-insights-metadata-by-assessment-item common-lisp:nil
 ((name :target-type string :member-name "name")
  (id :target-type control-domain-id :member-name "id")
  (evidence-insights :target-type evidence-insights :member-name
   "evidenceInsights")
  (control-set-name :target-type non-empty-string :member-name
   "controlSetName")
  (last-updated :target-type timestamp :member-name "lastUpdated"))
 (:shape-name "ControlInsightsMetadataByAssessmentItem"))

(smithy/sdk/shapes:define-structure control-insights-metadata-item
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (id :target-type control-domain-id
                                      :member-name "id")
                                     (evidence-insights :target-type
                                      evidence-insights :member-name
                                      "evidenceInsights")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "ControlInsightsMetadataItem"))

(smithy/sdk/shapes:define-structure control-mapping-source common-lisp:nil
                                    ((source-id :target-type uuid :member-name
                                      "sourceId")
                                     (source-name :target-type source-name
                                      :member-name "sourceName")
                                     (source-description :target-type
                                      source-description :member-name
                                      "sourceDescription")
                                     (source-set-up-option :target-type
                                      source-set-up-option :member-name
                                      "sourceSetUpOption")
                                     (source-type :target-type source-type
                                      :member-name "sourceType")
                                     (source-keyword :target-type
                                      source-keyword :member-name
                                      "sourceKeyword")
                                     (source-frequency :target-type
                                      source-frequency :member-name
                                      "sourceFrequency")
                                     (troubleshooting-text :target-type
                                      troubleshooting-text :member-name
                                      "troubleshootingText"))
                                    (:shape-name "ControlMappingSource"))

(smithy/sdk/shapes:define-list control-mapping-sources :member
                               control-mapping-source)

(smithy/sdk/shapes:define-structure control-metadata common-lisp:nil
                                    ((arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (id :target-type uuid :member-name "id")
                                     (name :target-type control-name
                                      :member-name "name")
                                     (control-sources :target-type
                                      control-sources :member-name
                                      "controlSources")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ControlMetadata"))

(smithy/sdk/shapes:define-list control-metadata-list :member control-metadata)

(smithy/sdk/shapes:define-type control-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum control-response
    common-lisp:nil
  (:manual "MANUAL")
  (:automate "AUTOMATE")
  (:defer "DEFER")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-structure control-set common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type control-set-name
                                      :member-name "name")
                                     (controls :target-type controls
                                      :member-name "controls"))
                                    (:shape-name "ControlSet"))

(smithy/sdk/shapes:define-type control-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type control-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum control-set-status
    common-lisp:nil
  (:active "ACTIVE")
  (:under-review "UNDER_REVIEW")
  (:reviewed "REVIEWED"))

(smithy/sdk/shapes:define-list control-sets :member control-set)

(smithy/sdk/shapes:define-type control-sets-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type control-sources smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum control-state
    common-lisp:nil
  (:active "ACTIVE")
  (:end-of-support "END_OF_SUPPORT"))

(smithy/sdk/shapes:define-enum control-status
    common-lisp:nil
  (:under-review "UNDER_REVIEW")
  (:reviewed "REVIEWED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum control-type
    common-lisp:nil
  (:standard "Standard")
  (:custom "Custom")
  (:core "Core"))

(smithy/sdk/shapes:define-list controls :member control)

(smithy/sdk/shapes:define-type controls-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure create-assessment-framework-control
                                    common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "CreateAssessmentFrameworkControl"))

(smithy/sdk/shapes:define-structure create-assessment-framework-control-set
                                    common-lisp:nil
                                    ((name :target-type control-set-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (controls :target-type
                                      create-assessment-framework-controls
                                      :member-name "controls"))
                                    (:shape-name
                                     "CreateAssessmentFrameworkControlSet"))

(smithy/sdk/shapes:define-list create-assessment-framework-control-sets :member
                               create-assessment-framework-control-set)

(smithy/sdk/shapes:define-list create-assessment-framework-controls :member
                               create-assessment-framework-control)

(smithy/sdk/shapes:define-input create-assessment-framework-request
                                common-lisp:nil
                                ((name :target-type framework-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  framework-description :member-name
                                  "description")
                                 (compliance-type :target-type compliance-type
                                  :member-name "complianceType")
                                 (control-sets :target-type
                                  create-assessment-framework-control-sets
                                  :required common-lisp:t :member-name
                                  "controlSets")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateAssessmentFrameworkRequest"))

(smithy/sdk/shapes:define-output create-assessment-framework-response
                                 common-lisp:nil
                                 ((framework :target-type framework
                                   :member-name "framework"))
                                 (:shape-name
                                  "CreateAssessmentFrameworkResponse"))

(smithy/sdk/shapes:define-input create-assessment-report-request
                                common-lisp:nil
                                ((name :target-type assessment-report-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type
                                  assessment-report-description :member-name
                                  "description")
                                 (assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (query-statement :target-type query-statement
                                  :member-name "queryStatement"))
                                (:shape-name "CreateAssessmentReportRequest"))

(smithy/sdk/shapes:define-output create-assessment-report-response
                                 common-lisp:nil
                                 ((assessment-report :target-type
                                   assessment-report :member-name
                                   "assessmentReport"))
                                 (:shape-name "CreateAssessmentReportResponse"))

(smithy/sdk/shapes:define-input create-assessment-request common-lisp:nil
                                ((name :target-type assessment-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  assessment-description :member-name
                                  "description")
                                 (assessment-reports-destination :target-type
                                  assessment-reports-destination :required
                                  common-lisp:t :member-name
                                  "assessmentReportsDestination")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "scope")
                                 (roles :target-type roles :required
                                  common-lisp:t :member-name "roles")
                                 (framework-id :target-type uuid :required
                                  common-lisp:t :member-name "frameworkId")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateAssessmentRequest"))

(smithy/sdk/shapes:define-output create-assessment-response common-lisp:nil
                                 ((assessment :target-type assessment
                                   :member-name "assessment"))
                                 (:shape-name "CreateAssessmentResponse"))

(smithy/sdk/shapes:define-structure create-control-mapping-source
                                    common-lisp:nil
                                    ((source-name :target-type source-name
                                      :member-name "sourceName")
                                     (source-description :target-type
                                      source-description :member-name
                                      "sourceDescription")
                                     (source-set-up-option :target-type
                                      source-set-up-option :member-name
                                      "sourceSetUpOption")
                                     (source-type :target-type source-type
                                      :member-name "sourceType")
                                     (source-keyword :target-type
                                      source-keyword :member-name
                                      "sourceKeyword")
                                     (source-frequency :target-type
                                      source-frequency :member-name
                                      "sourceFrequency")
                                     (troubleshooting-text :target-type
                                      troubleshooting-text :member-name
                                      "troubleshootingText"))
                                    (:shape-name "CreateControlMappingSource"))

(smithy/sdk/shapes:define-list create-control-mapping-sources :member
                               create-control-mapping-source)

(smithy/sdk/shapes:define-input create-control-request common-lisp:nil
                                ((name :target-type control-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type control-description
                                  :member-name "description")
                                 (testing-information :target-type
                                  testing-information :member-name
                                  "testingInformation")
                                 (action-plan-title :target-type
                                  action-plan-title :member-name
                                  "actionPlanTitle")
                                 (action-plan-instructions :target-type
                                  action-plan-instructions :member-name
                                  "actionPlanInstructions")
                                 (control-mapping-sources :target-type
                                  create-control-mapping-sources :required
                                  common-lisp:t :member-name
                                  "controlMappingSources")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateControlRequest"))

(smithy/sdk/shapes:define-output create-control-response common-lisp:nil
                                 ((control :target-type control :member-name
                                   "control"))
                                 (:shape-name "CreateControlResponse"))

(smithy/sdk/shapes:define-structure create-delegation-request common-lisp:nil
                                    ((comment :target-type delegation-comment
                                      :member-name "comment")
                                     (control-set-id :target-type
                                      control-set-id :member-name
                                      "controlSetId")
                                     (role-arn :target-type iam-arn
                                      :member-name "roleArn")
                                     (role-type :target-type role-type
                                      :member-name "roleType"))
                                    (:shape-name "CreateDelegationRequest"))

(smithy/sdk/shapes:define-list create-delegation-requests :member
                               create-delegation-request)

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-source-type
    common-lisp:nil
  (:aws-cloudtrail "AWS_Cloudtrail")
  (:aws-config "AWS_Config")
  (:aws-security-hub "AWS_Security_Hub")
  (:aws-api-call "AWS_API_Call")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-structure default-export-destination common-lisp:nil
                                    ((destination-type :target-type
                                      export-destination-type :member-name
                                      "destinationType")
                                     (destination :target-type s3url
                                      :member-name "destination"))
                                    (:shape-name "DefaultExportDestination"))

(smithy/sdk/shapes:define-structure delegation common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (assessment-name :target-type
                                      assessment-name :member-name
                                      "assessmentName")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (status :target-type delegation-status
                                      :member-name "status")
                                     (role-arn :target-type iam-arn
                                      :member-name "roleArn")
                                     (role-type :target-type role-type
                                      :member-name "roleType")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated")
                                     (control-set-id :target-type
                                      control-set-id :member-name
                                      "controlSetId")
                                     (comment :target-type delegation-comment
                                      :member-name "comment")
                                     (created-by :target-type created-by
                                      :member-name "createdBy"))
                                    (:shape-name "Delegation"))

(smithy/sdk/shapes:define-type delegation-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list delegation-ids :member uuid)

(smithy/sdk/shapes:define-structure delegation-metadata common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (assessment-name :target-type
                                      assessment-name :member-name
                                      "assessmentName")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (status :target-type delegation-status
                                      :member-name "status")
                                     (role-arn :target-type iam-arn
                                      :member-name "roleArn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (control-set-name :target-type
                                      non-empty-string :member-name
                                      "controlSetName"))
                                    (:shape-name "DelegationMetadata"))

(smithy/sdk/shapes:define-list delegation-metadata-list :member
                               delegation-metadata)

(smithy/sdk/shapes:define-enum delegation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:under-review "UNDER_REVIEW")
  (:complete "COMPLETE"))

(smithy/sdk/shapes:define-list delegations :member delegation)

(smithy/sdk/shapes:define-input delete-assessment-framework-request
                                common-lisp:nil
                                ((framework-id :target-type uuid :required
                                  common-lisp:t :member-name "frameworkId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteAssessmentFrameworkRequest"))

(smithy/sdk/shapes:define-output delete-assessment-framework-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAssessmentFrameworkResponse"))

(smithy/sdk/shapes:define-input delete-assessment-framework-share-request
                                common-lisp:nil
                                ((request-id :target-type uuid :required
                                  common-lisp:t :member-name "requestId"
                                  :http-label common-lisp:t)
                                 (request-type :target-type share-request-type
                                  :required common-lisp:t :member-name
                                  "requestType" :http-query "requestType"))
                                (:shape-name
                                 "DeleteAssessmentFrameworkShareRequest"))

(smithy/sdk/shapes:define-output delete-assessment-framework-share-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAssessmentFrameworkShareResponse"))

(smithy/sdk/shapes:define-input delete-assessment-report-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (assessment-report-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "assessmentReportId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAssessmentReportRequest"))

(smithy/sdk/shapes:define-output delete-assessment-report-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAssessmentReportResponse"))

(smithy/sdk/shapes:define-input delete-assessment-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAssessmentRequest"))

(smithy/sdk/shapes:define-output delete-assessment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAssessmentResponse"))

(smithy/sdk/shapes:define-input delete-control-request common-lisp:nil
                                ((control-id :target-type uuid :required
                                  common-lisp:t :member-name "controlId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteControlRequest"))

(smithy/sdk/shapes:define-output delete-control-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteControlResponse"))

(smithy/sdk/shapes:define-enum delete-resources
    common-lisp:nil
  (:all "ALL")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-input deregister-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeregisterAccountRequest"))

(smithy/sdk/shapes:define-output deregister-account-response common-lisp:nil
                                 ((status :target-type account-status
                                   :member-name "status"))
                                 (:shape-name "DeregisterAccountResponse"))

(smithy/sdk/shapes:define-input deregister-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type account-id
                                  :member-name "adminAccountId"))
                                (:shape-name
                                 "DeregisterOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output deregister-organization-admin-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-structure deregistration-policy common-lisp:nil
                                    ((delete-resources :target-type
                                      delete-resources :member-name
                                      "deleteResources"))
                                    (:shape-name "DeregistrationPolicy"))

(smithy/sdk/shapes:define-input
 disassociate-assessment-report-evidence-folder-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (evidence-folder-id :target-type uuid :required common-lisp:t :member-name
   "evidenceFolderId"))
 (:shape-name "DisassociateAssessmentReportEvidenceFolderRequest"))

(smithy/sdk/shapes:define-output
 disassociate-assessment-report-evidence-folder-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateAssessmentReportEvidenceFolderResponse"))

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evidence common-lisp:nil
                                    ((data-source :target-type string
                                      :member-name "dataSource")
                                     (evidence-aws-account-id :target-type
                                      account-id :member-name
                                      "evidenceAwsAccountId")
                                     (time :target-type timestamp :member-name
                                      "time")
                                     (event-source :target-type awsservice-name
                                      :member-name "eventSource")
                                     (event-name :target-type event-name
                                      :member-name "eventName")
                                     (evidence-by-type :target-type string
                                      :member-name "evidenceByType")
                                     (resources-included :target-type resources
                                      :member-name "resourcesIncluded")
                                     (attributes :target-type
                                      evidence-attributes :member-name
                                      "attributes")
                                     (iam-id :target-type iam-arn :member-name
                                      "iamId")
                                     (compliance-check :target-type string
                                      :member-name "complianceCheck")
                                     (aws-organization :target-type string
                                      :member-name "awsOrganization")
                                     (aws-account-id :target-type account-id
                                      :member-name "awsAccountId")
                                     (evidence-folder-id :target-type uuid
                                      :member-name "evidenceFolderId")
                                     (id :target-type uuid :member-name "id")
                                     (assessment-report-selection :target-type
                                      string :member-name
                                      "assessmentReportSelection"))
                                    (:shape-name "Evidence"))

(smithy/sdk/shapes:define-type evidence-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evidence-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map evidence-attributes :key evidence-attribute-key
                              :value evidence-attribute-value)

(smithy/sdk/shapes:define-enum evidence-finder-backfill-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure evidence-finder-enablement common-lisp:nil
                                    ((event-data-store-arn :target-type
                                      cloud-trail-arn :member-name
                                      "eventDataStoreArn")
                                     (enablement-status :target-type
                                      evidence-finder-enablement-status
                                      :member-name "enablementStatus")
                                     (backfill-status :target-type
                                      evidence-finder-backfill-status
                                      :member-name "backfillStatus")
                                     (error :target-type error-message
                                      :member-name "error"))
                                    (:shape-name "EvidenceFinderEnablement"))

(smithy/sdk/shapes:define-enum evidence-finder-enablement-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:enable-in-progress "ENABLE_IN_PROGRESS")
  (:disable-in-progress "DISABLE_IN_PROGRESS"))

(smithy/sdk/shapes:define-list evidence-ids :member uuid)

(smithy/sdk/shapes:define-structure evidence-insights common-lisp:nil
                                    ((noncompliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "noncompliantEvidenceCount")
                                     (compliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "compliantEvidenceCount")
                                     (inconclusive-evidence-count :target-type
                                      nullable-integer :member-name
                                      "inconclusiveEvidenceCount"))
                                    (:shape-name "EvidenceInsights"))

(smithy/sdk/shapes:define-list evidence-list :member evidence)

(smithy/sdk/shapes:define-list evidence-sources :member non-empty-string)

(smithy/sdk/shapes:define-enum export-destination-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-type filename smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure framework common-lisp:nil
                                    ((arn :target-type audit-manager-arn
                                      :member-name "arn")
                                     (id :target-type uuid :member-name "id")
                                     (name :target-type framework-name
                                      :member-name "name")
                                     (type :target-type framework-type
                                      :member-name "type")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType")
                                     (description :target-type
                                      framework-description :member-name
                                      "description")
                                     (logo :target-type filename :member-name
                                      "logo")
                                     (control-sources :target-type
                                      control-sources :member-name
                                      "controlSources")
                                     (control-sets :target-type control-sets
                                      :member-name "controlSets")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (last-updated-by :target-type
                                      last-updated-by :member-name
                                      "lastUpdatedBy")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Framework"))

(smithy/sdk/shapes:define-type framework-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure framework-metadata common-lisp:nil
                                    ((name :target-type assessment-name
                                      :member-name "name")
                                     (description :target-type
                                      assessment-framework-description
                                      :member-name "description")
                                     (logo :target-type filename :member-name
                                      "logo")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "complianceType"))
                                    (:shape-name "FrameworkMetadata"))

(smithy/sdk/shapes:define-list framework-metadata-list :member
                               assessment-framework-metadata)

(smithy/sdk/shapes:define-type framework-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum framework-type
    common-lisp:nil
  (:standard "Standard")
  (:custom "Custom"))

(smithy/sdk/shapes:define-type generic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-status-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountStatusRequest"))

(smithy/sdk/shapes:define-output get-account-status-response common-lisp:nil
                                 ((status :target-type account-status
                                   :member-name "status"))
                                 (:shape-name "GetAccountStatusResponse"))

(smithy/sdk/shapes:define-input get-assessment-framework-request
                                common-lisp:nil
                                ((framework-id :target-type uuid :required
                                  common-lisp:t :member-name "frameworkId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssessmentFrameworkRequest"))

(smithy/sdk/shapes:define-output get-assessment-framework-response
                                 common-lisp:nil
                                 ((framework :target-type framework
                                   :member-name "framework"))
                                 (:shape-name "GetAssessmentFrameworkResponse"))

(smithy/sdk/shapes:define-input get-assessment-report-url-request
                                common-lisp:nil
                                ((assessment-report-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "assessmentReportId" :http-label
                                  common-lisp:t)
                                 (assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssessmentReportUrlRequest"))

(smithy/sdk/shapes:define-output get-assessment-report-url-response
                                 common-lisp:nil
                                 ((pre-signed-url :target-type url :member-name
                                   "preSignedUrl"))
                                 (:shape-name "GetAssessmentReportUrlResponse"))

(smithy/sdk/shapes:define-input get-assessment-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssessmentRequest"))

(smithy/sdk/shapes:define-output get-assessment-response common-lisp:nil
                                 ((assessment :target-type assessment
                                   :member-name "assessment")
                                  (user-role :target-type role :member-name
                                   "userRole"))
                                 (:shape-name "GetAssessmentResponse"))

(smithy/sdk/shapes:define-input get-change-logs-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type control-set-id
                                  :member-name "controlSetId" :http-query
                                  "controlSetId")
                                 (control-id :target-type uuid :member-name
                                  "controlId" :http-query "controlId")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetChangeLogsRequest"))

(smithy/sdk/shapes:define-output get-change-logs-response common-lisp:nil
                                 ((change-logs :target-type change-logs
                                   :member-name "changeLogs")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "GetChangeLogsResponse"))

(smithy/sdk/shapes:define-input get-control-request common-lisp:nil
                                ((control-id :target-type uuid :required
                                  common-lisp:t :member-name "controlId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetControlRequest"))

(smithy/sdk/shapes:define-output get-control-response common-lisp:nil
                                 ((control :target-type control :member-name
                                   "control"))
                                 (:shape-name "GetControlResponse"))

(smithy/sdk/shapes:define-input get-delegations-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetDelegationsRequest"))

(smithy/sdk/shapes:define-output get-delegations-response common-lisp:nil
                                 ((delegations :target-type
                                   delegation-metadata-list :member-name
                                   "delegations")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "GetDelegationsResponse"))

(smithy/sdk/shapes:define-input get-evidence-by-evidence-folder-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type control-set-id
                                  :required common-lisp:t :member-name
                                  "controlSetId" :http-label common-lisp:t)
                                 (evidence-folder-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "evidenceFolderId" :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetEvidenceByEvidenceFolderRequest"))

(smithy/sdk/shapes:define-output get-evidence-by-evidence-folder-response
                                 common-lisp:nil
                                 ((evidence :target-type evidence-list
                                   :member-name "evidence")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "GetEvidenceByEvidenceFolderResponse"))

(smithy/sdk/shapes:define-input get-evidence-file-upload-url-request
                                common-lisp:nil
                                ((file-name :target-type
                                  manual-evidence-local-file-name :required
                                  common-lisp:t :member-name "fileName"
                                  :http-query "fileName"))
                                (:shape-name "GetEvidenceFileUploadUrlRequest"))

(smithy/sdk/shapes:define-output get-evidence-file-upload-url-response
                                 common-lisp:nil
                                 ((evidence-file-name :target-type
                                   non-empty-string :member-name
                                   "evidenceFileName")
                                  (upload-url :target-type non-empty-string
                                   :member-name "uploadUrl"))
                                 (:shape-name
                                  "GetEvidenceFileUploadUrlResponse"))

(smithy/sdk/shapes:define-input get-evidence-folder-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type control-set-id
                                  :required common-lisp:t :member-name
                                  "controlSetId" :http-label common-lisp:t)
                                 (evidence-folder-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "evidenceFolderId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEvidenceFolderRequest"))

(smithy/sdk/shapes:define-output get-evidence-folder-response common-lisp:nil
                                 ((evidence-folder :target-type
                                   assessment-evidence-folder :member-name
                                   "evidenceFolder"))
                                 (:shape-name "GetEvidenceFolderResponse"))

(smithy/sdk/shapes:define-input
 get-evidence-folders-by-assessment-control-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-label common-lisp:t)
  (control-set-id :target-type control-set-id :required common-lisp:t
   :member-name "controlSetId" :http-label common-lisp:t)
  (control-id :target-type uuid :required common-lisp:t :member-name
   "controlId" :http-label common-lisp:t)
  (next-token :target-type token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "GetEvidenceFoldersByAssessmentControlRequest"))

(smithy/sdk/shapes:define-output
 get-evidence-folders-by-assessment-control-response common-lisp:nil
 ((evidence-folders :target-type assessment-evidence-folders :member-name
   "evidenceFolders")
  (next-token :target-type token :member-name "nextToken"))
 (:shape-name "GetEvidenceFoldersByAssessmentControlResponse"))

(smithy/sdk/shapes:define-input get-evidence-folders-by-assessment-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetEvidenceFoldersByAssessmentRequest"))

(smithy/sdk/shapes:define-output get-evidence-folders-by-assessment-response
                                 common-lisp:nil
                                 ((evidence-folders :target-type
                                   assessment-evidence-folders :member-name
                                   "evidenceFolders")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "GetEvidenceFoldersByAssessmentResponse"))

(smithy/sdk/shapes:define-input get-evidence-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type control-set-id
                                  :required common-lisp:t :member-name
                                  "controlSetId" :http-label common-lisp:t)
                                 (evidence-folder-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "evidenceFolderId" :http-label common-lisp:t)
                                 (evidence-id :target-type uuid :required
                                  common-lisp:t :member-name "evidenceId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEvidenceRequest"))

(smithy/sdk/shapes:define-output get-evidence-response common-lisp:nil
                                 ((evidence :target-type evidence :member-name
                                   "evidence"))
                                 (:shape-name "GetEvidenceResponse"))

(smithy/sdk/shapes:define-input get-insights-by-assessment-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetInsightsByAssessmentRequest"))

(smithy/sdk/shapes:define-output get-insights-by-assessment-response
                                 common-lisp:nil
                                 ((insights :target-type insights-by-assessment
                                   :member-name "insights"))
                                 (:shape-name
                                  "GetInsightsByAssessmentResponse"))

(smithy/sdk/shapes:define-input get-insights-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetInsightsRequest"))

(smithy/sdk/shapes:define-output get-insights-response common-lisp:nil
                                 ((insights :target-type insights :member-name
                                   "insights"))
                                 (:shape-name "GetInsightsResponse"))

(smithy/sdk/shapes:define-input get-organization-admin-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output get-organization-admin-account-response
                                 common-lisp:nil
                                 ((admin-account-id :target-type account-id
                                   :member-name "adminAccountId")
                                  (organization-id :target-type organization-id
                                   :member-name "organizationId"))
                                 (:shape-name
                                  "GetOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-input get-services-in-scope-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetServicesInScopeRequest"))

(smithy/sdk/shapes:define-output get-services-in-scope-response common-lisp:nil
                                 ((service-metadata :target-type
                                   service-metadata-list :member-name
                                   "serviceMetadata"))
                                 (:shape-name "GetServicesInScopeResponse"))

(smithy/sdk/shapes:define-input get-settings-request common-lisp:nil
                                ((attribute :target-type setting-attribute
                                  :required common-lisp:t :member-name
                                  "attribute" :http-label common-lisp:t))
                                (:shape-name "GetSettingsRequest"))

(smithy/sdk/shapes:define-output get-settings-response common-lisp:nil
                                 ((settings :target-type settings :member-name
                                   "settings"))
                                 (:shape-name "GetSettingsResponse"))

(smithy/sdk/shapes:define-type hyperlink-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insights common-lisp:nil
                                    ((active-assessments-count :target-type
                                      nullable-integer :member-name
                                      "activeAssessmentsCount")
                                     (noncompliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "noncompliantEvidenceCount")
                                     (compliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "compliantEvidenceCount")
                                     (inconclusive-evidence-count :target-type
                                      nullable-integer :member-name
                                      "inconclusiveEvidenceCount")
                                     (assessment-controls-count-by-noncompliant-evidence
                                      :target-type nullable-integer
                                      :member-name
                                      "assessmentControlsCountByNoncompliantEvidence")
                                     (total-assessment-controls-count
                                      :target-type nullable-integer
                                      :member-name
                                      "totalAssessmentControlsCount")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "Insights"))

(smithy/sdk/shapes:define-structure insights-by-assessment common-lisp:nil
                                    ((noncompliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "noncompliantEvidenceCount")
                                     (compliant-evidence-count :target-type
                                      nullable-integer :member-name
                                      "compliantEvidenceCount")
                                     (inconclusive-evidence-count :target-type
                                      nullable-integer :member-name
                                      "inconclusiveEvidenceCount")
                                     (assessment-controls-count-by-noncompliant-evidence
                                      :target-type nullable-integer
                                      :member-name
                                      "assessmentControlsCountByNoncompliantEvidence")
                                     (total-assessment-controls-count
                                      :target-type nullable-integer
                                      :member-name
                                      "totalAssessmentControlsCount")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated"))
                                    (:shape-name "InsightsByAssessment"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum keyword-input-type
    common-lisp:nil
  (:select-from-list "SELECT_FROM_LIST")
  (:upload-file "UPLOAD_FILE")
  (:input-text "INPUT_TEXT"))

(smithy/sdk/shapes:define-type keyword-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list keywords :member keyword-value)

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 list-assessment-control-insights-by-control-domain-request common-lisp:nil
 ((control-domain-id :target-type control-domain-id :required common-lisp:t
   :member-name "controlDomainId" :http-query "controlDomainId")
  (assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-query "assessmentId")
  (next-token :target-type token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListAssessmentControlInsightsByControlDomainRequest"))

(smithy/sdk/shapes:define-output
 list-assessment-control-insights-by-control-domain-response common-lisp:nil
 ((control-insights-by-assessment :target-type
   control-insights-metadata-by-assessment :member-name
   "controlInsightsByAssessment")
  (next-token :target-type token :member-name "nextToken"))
 (:shape-name "ListAssessmentControlInsightsByControlDomainResponse"))

(smithy/sdk/shapes:define-input
 list-assessment-framework-share-requests-request common-lisp:nil
 ((request-type :target-type share-request-type :required common-lisp:t
   :member-name "requestType" :http-query "requestType")
  (next-token :target-type token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListAssessmentFrameworkShareRequestsRequest"))

(smithy/sdk/shapes:define-output
 list-assessment-framework-share-requests-response common-lisp:nil
 ((assessment-framework-share-requests :target-type
   assessment-framework-share-request-list :member-name
   "assessmentFrameworkShareRequests")
  (next-token :target-type token :member-name "nextToken"))
 (:shape-name "ListAssessmentFrameworkShareRequestsResponse"))

(smithy/sdk/shapes:define-input list-assessment-frameworks-request
                                common-lisp:nil
                                ((framework-type :target-type framework-type
                                  :required common-lisp:t :member-name
                                  "frameworkType" :http-query "frameworkType")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssessmentFrameworksRequest"))

(smithy/sdk/shapes:define-output list-assessment-frameworks-response
                                 common-lisp:nil
                                 ((framework-metadata-list :target-type
                                   framework-metadata-list :member-name
                                   "frameworkMetadataList")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListAssessmentFrameworksResponse"))

(smithy/sdk/shapes:define-list list-assessment-metadata :member
                               assessment-metadata-item)

(smithy/sdk/shapes:define-input list-assessment-reports-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssessmentReportsRequest"))

(smithy/sdk/shapes:define-output list-assessment-reports-response
                                 common-lisp:nil
                                 ((assessment-reports :target-type
                                   assessment-reports-metadata :member-name
                                   "assessmentReports")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListAssessmentReportsResponse"))

(smithy/sdk/shapes:define-input list-assessments-request common-lisp:nil
                                ((status :target-type assessment-status
                                  :member-name "status" :http-query "status")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssessmentsRequest"))

(smithy/sdk/shapes:define-output list-assessments-response common-lisp:nil
                                 ((assessment-metadata :target-type
                                   list-assessment-metadata :member-name
                                   "assessmentMetadata")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListAssessmentsResponse"))

(smithy/sdk/shapes:define-input
 list-control-domain-insights-by-assessment-request common-lisp:nil
 ((assessment-id :target-type uuid :required common-lisp:t :member-name
   "assessmentId" :http-query "assessmentId")
  (next-token :target-type token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListControlDomainInsightsByAssessmentRequest"))

(smithy/sdk/shapes:define-output
 list-control-domain-insights-by-assessment-response common-lisp:nil
 ((control-domain-insights :target-type control-domain-insights-list
   :member-name "controlDomainInsights")
  (next-token :target-type token :member-name "nextToken"))
 (:shape-name "ListControlDomainInsightsByAssessmentResponse"))

(smithy/sdk/shapes:define-input list-control-domain-insights-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListControlDomainInsightsRequest"))

(smithy/sdk/shapes:define-output list-control-domain-insights-response
                                 common-lisp:nil
                                 ((control-domain-insights :target-type
                                   control-domain-insights-list :member-name
                                   "controlDomainInsights")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListControlDomainInsightsResponse"))

(smithy/sdk/shapes:define-input list-control-insights-by-control-domain-request
                                common-lisp:nil
                                ((control-domain-id :target-type
                                  control-domain-id :required common-lisp:t
                                  :member-name "controlDomainId" :http-query
                                  "controlDomainId")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListControlInsightsByControlDomainRequest"))

(smithy/sdk/shapes:define-output
 list-control-insights-by-control-domain-response common-lisp:nil
 ((control-insights-metadata :target-type control-insights-metadata
   :member-name "controlInsightsMetadata")
  (next-token :target-type token :member-name "nextToken"))
 (:shape-name "ListControlInsightsByControlDomainResponse"))

(smithy/sdk/shapes:define-input list-controls-request common-lisp:nil
                                ((control-type :target-type control-type
                                  :required common-lisp:t :member-name
                                  "controlType" :http-query "controlType")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (control-catalog-id :target-type
                                  control-catalog-id :member-name
                                  "controlCatalogId" :http-query
                                  "controlCatalogId"))
                                (:shape-name "ListControlsRequest"))

(smithy/sdk/shapes:define-output list-controls-response common-lisp:nil
                                 ((control-metadata-list :target-type
                                   control-metadata-list :member-name
                                   "controlMetadataList")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListControlsResponse"))

(smithy/sdk/shapes:define-input list-keywords-for-data-source-request
                                common-lisp:nil
                                ((source :target-type data-source-type
                                  :required common-lisp:t :member-name "source"
                                  :http-query "source")
                                 (next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListKeywordsForDataSourceRequest"))

(smithy/sdk/shapes:define-output list-keywords-for-data-source-response
                                 common-lisp:nil
                                 ((keywords :target-type keywords :member-name
                                   "keywords")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListKeywordsForDataSourceResponse"))

(smithy/sdk/shapes:define-input list-notifications-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListNotificationsRequest"))

(smithy/sdk/shapes:define-output list-notifications-response common-lisp:nil
                                 ((notifications :target-type notifications
                                   :member-name "notifications")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListNotificationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type audit-manager-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure manual-evidence common-lisp:nil
                                    ((s3resource-path :target-type s3url
                                      :member-name "s3ResourcePath")
                                     (text-response :target-type
                                      manual-evidence-text-response
                                      :member-name "textResponse")
                                     (evidence-file-name :target-type
                                      manual-evidence-local-file-name
                                      :member-name "evidenceFileName"))
                                    (:shape-name "ManualEvidence"))

(smithy/sdk/shapes:define-list manual-evidence-list :member manual-evidence)

(smithy/sdk/shapes:define-type manual-evidence-local-file-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type manual-evidence-text-response
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification common-lisp:nil
                                    ((id :target-type timestamp-uuid
                                      :member-name "id")
                                     (assessment-id :target-type uuid
                                      :member-name "assessmentId")
                                     (assessment-name :target-type
                                      assessment-name :member-name
                                      "assessmentName")
                                     (control-set-id :target-type
                                      control-set-id :member-name
                                      "controlSetId")
                                     (control-set-name :target-type
                                      non-empty-string :member-name
                                      "controlSetName")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (event-time :target-type timestamp
                                      :member-name "eventTime")
                                     (source :target-type non-empty-string
                                      :member-name "source"))
                                    (:shape-name "Notification"))

(smithy/sdk/shapes:define-list notifications :member notification)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum object-type-enum
    common-lisp:nil
  (:assessment "ASSESSMENT")
  (:control-set "CONTROL_SET")
  (:control "CONTROL")
  (:delegation "DELEGATION")
  (:assessment-report "ASSESSMENT_REPORT"))

(smithy/sdk/shapes:define-type query-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-account-request common-lisp:nil
                                ((kms-key :target-type kms-key :member-name
                                  "kmsKey")
                                 (delegated-admin-account :target-type
                                  account-id :member-name
                                  "delegatedAdminAccount"))
                                (:shape-name "RegisterAccountRequest"))

(smithy/sdk/shapes:define-output register-account-response common-lisp:nil
                                 ((status :target-type account-status
                                   :member-name "status"))
                                 (:shape-name "RegisterAccountResponse"))

(smithy/sdk/shapes:define-input register-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "adminAccountId"))
                                (:shape-name
                                 "RegisterOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output register-organization-admin-account-response
                                 common-lisp:nil
                                 ((admin-account-id :target-type account-id
                                   :member-name "adminAccountId")
                                  (organization-id :target-type organization-id
                                   :member-name "organizationId"))
                                 (:shape-name
                                  "RegisterOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((arn :target-type generic-arn :member-name
                                      "arn")
                                     (value :target-type string :member-name
                                      "value")
                                     (compliance-check :target-type string
                                      :member-name "complianceCheck"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-structure role common-lisp:nil
                                    ((role-type :target-type role-type
                                      :required common-lisp:t :member-name
                                      "roleType")
                                     (role-arn :target-type iam-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "Role"))

(smithy/sdk/shapes:define-enum role-type
    common-lisp:nil
  (:process-owner "PROCESS_OWNER")
  (:resource-owner "RESOURCE_OWNER"))

(smithy/sdk/shapes:define-list roles :member role)

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snstopic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scope common-lisp:nil
                                    ((aws-accounts :target-type awsaccounts
                                      :member-name "awsAccounts")
                                     (aws-services :target-type awsservices
                                      :member-name "awsServices"))
                                    (:shape-name "Scope"))

(smithy/sdk/shapes:define-structure service-metadata common-lisp:nil
                                    ((name :target-type awsservice-name
                                      :member-name "name")
                                     (display-name :target-type
                                      non-empty-string :member-name
                                      "displayName")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (category :target-type non-empty-string
                                      :member-name "category"))
                                    (:shape-name "ServiceMetadata"))

(smithy/sdk/shapes:define-list service-metadata-list :member service-metadata)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum setting-attribute
    common-lisp:nil
  (:all "ALL")
  (:is-aws-org-enabled "IS_AWS_ORG_ENABLED")
  (:sns-topic "SNS_TOPIC")
  (:default-assessment-reports-destination
   "DEFAULT_ASSESSMENT_REPORTS_DESTINATION")
  (:default-process-owners "DEFAULT_PROCESS_OWNERS")
  (:evidence-finder-enablement "EVIDENCE_FINDER_ENABLEMENT")
  (:deregistration-policy "DEREGISTRATION_POLICY")
  (:default-export-destination "DEFAULT_EXPORT_DESTINATION"))

(smithy/sdk/shapes:define-structure settings common-lisp:nil
                                    ((is-aws-org-enabled :target-type boolean
                                      :member-name "isAwsOrgEnabled")
                                     (sns-topic :target-type snstopic
                                      :member-name "snsTopic")
                                     (default-assessment-reports-destination
                                      :target-type
                                      assessment-reports-destination
                                      :member-name
                                      "defaultAssessmentReportsDestination")
                                     (default-process-owners :target-type roles
                                      :member-name "defaultProcessOwners")
                                     (kms-key :target-type kms-key :member-name
                                      "kmsKey")
                                     (evidence-finder-enablement :target-type
                                      evidence-finder-enablement :member-name
                                      "evidenceFinderEnablement")
                                     (deregistration-policy :target-type
                                      deregistration-policy :member-name
                                      "deregistrationPolicy")
                                     (default-export-destination :target-type
                                      default-export-destination :member-name
                                      "defaultExportDestination"))
                                    (:shape-name "Settings"))

(smithy/sdk/shapes:define-enum share-request-action
    common-lisp:nil
  (:accept "ACCEPT")
  (:decline "DECLINE")
  (:revoke "REVOKE"))

(smithy/sdk/shapes:define-type share-request-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum share-request-status
    common-lisp:nil
  (:active "ACTIVE")
  (:replicating "REPLICATING")
  (:shared "SHARED")
  (:expiring "EXPIRING")
  (:failed "FAILED")
  (:expired "EXPIRED")
  (:declined "DECLINED")
  (:revoked "REVOKED"))

(smithy/sdk/shapes:define-enum share-request-type
    common-lisp:nil
  (:sent "SENT")
  (:received "RECEIVED"))

(smithy/sdk/shapes:define-type sns-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-frequency
    common-lisp:nil
  (:daily "DAILY")
  (:weekly "WEEKLY")
  (:monthly "MONTHLY"))

(smithy/sdk/shapes:define-structure source-keyword common-lisp:nil
                                    ((keyword-input-type :target-type
                                      keyword-input-type :member-name
                                      "keywordInputType")
                                     (keyword-value :target-type keyword-value
                                      :member-name "keywordValue"))
                                    (:shape-name "SourceKeyword"))

(smithy/sdk/shapes:define-type source-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-set-up-option
    common-lisp:nil
  (:system-controls-mapping "System_Controls_Mapping")
  (:procedural-controls-mapping "Procedural_Controls_Mapping"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:aws-cloudtrail "AWS_Cloudtrail")
  (:aws-config "AWS_Config")
  (:aws-security-hub "AWS_Security_Hub")
  (:aws-api-call "AWS_API_Call")
  (:manual "MANUAL")
  (:common-control "Common_Control")
  (:core-control "Core_Control"))

(smithy/sdk/shapes:define-input start-assessment-framework-share-request
                                common-lisp:nil
                                ((framework-id :target-type uuid :required
                                  common-lisp:t :member-name "frameworkId"
                                  :http-label common-lisp:t)
                                 (destination-account :target-type account-id
                                  :required common-lisp:t :member-name
                                  "destinationAccount")
                                 (destination-region :target-type region
                                  :required common-lisp:t :member-name
                                  "destinationRegion")
                                 (comment :target-type share-request-comment
                                  :member-name "comment"))
                                (:shape-name
                                 "StartAssessmentFrameworkShareRequest"))

(smithy/sdk/shapes:define-output start-assessment-framework-share-response
                                 common-lisp:nil
                                 ((assessment-framework-share-request
                                   :target-type
                                   assessment-framework-share-request
                                   :member-name
                                   "assessmentFrameworkShareRequest"))
                                 (:shape-name
                                  "StartAssessmentFrameworkShareResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type audit-manager-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type testing-information
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp-uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type troubleshooting-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure url common-lisp:nil
                                    ((hyperlink-name :target-type
                                      hyperlink-name :member-name
                                      "hyperlinkName")
                                     (link :target-type url-link :member-name
                                      "link"))
                                    (:shape-name "URL"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type audit-manager-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-assessment-control-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type control-set-id
                                  :required common-lisp:t :member-name
                                  "controlSetId" :http-label common-lisp:t)
                                 (control-id :target-type uuid :required
                                  common-lisp:t :member-name "controlId"
                                  :http-label common-lisp:t)
                                 (control-status :target-type control-status
                                  :member-name "controlStatus")
                                 (comment-body :target-type
                                  control-comment-body :member-name
                                  "commentBody"))
                                (:shape-name "UpdateAssessmentControlRequest"))

(smithy/sdk/shapes:define-output update-assessment-control-response
                                 common-lisp:nil
                                 ((control :target-type assessment-control
                                   :member-name "control"))
                                 (:shape-name
                                  "UpdateAssessmentControlResponse"))

(smithy/sdk/shapes:define-input update-assessment-control-set-status-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (control-set-id :target-type string :required
                                  common-lisp:t :member-name "controlSetId"
                                  :http-label common-lisp:t)
                                 (status :target-type control-set-status
                                  :required common-lisp:t :member-name
                                  "status")
                                 (comment :target-type delegation-comment
                                  :required common-lisp:t :member-name
                                  "comment"))
                                (:shape-name
                                 "UpdateAssessmentControlSetStatusRequest"))

(smithy/sdk/shapes:define-output update-assessment-control-set-status-response
                                 common-lisp:nil
                                 ((control-set :target-type
                                   assessment-control-set :member-name
                                   "controlSet"))
                                 (:shape-name
                                  "UpdateAssessmentControlSetStatusResponse"))

(smithy/sdk/shapes:define-structure update-assessment-framework-control-set
                                    common-lisp:nil
                                    ((id :target-type control-set-name
                                      :member-name "id")
                                     (name :target-type control-set-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (controls :target-type
                                      create-assessment-framework-controls
                                      :required common-lisp:t :member-name
                                      "controls"))
                                    (:shape-name
                                     "UpdateAssessmentFrameworkControlSet"))

(smithy/sdk/shapes:define-list update-assessment-framework-control-sets :member
                               update-assessment-framework-control-set)

(smithy/sdk/shapes:define-input update-assessment-framework-request
                                common-lisp:nil
                                ((framework-id :target-type uuid :required
                                  common-lisp:t :member-name "frameworkId"
                                  :http-label common-lisp:t)
                                 (name :target-type framework-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  framework-description :member-name
                                  "description")
                                 (compliance-type :target-type compliance-type
                                  :member-name "complianceType")
                                 (control-sets :target-type
                                  update-assessment-framework-control-sets
                                  :required common-lisp:t :member-name
                                  "controlSets"))
                                (:shape-name
                                 "UpdateAssessmentFrameworkRequest"))

(smithy/sdk/shapes:define-output update-assessment-framework-response
                                 common-lisp:nil
                                 ((framework :target-type framework
                                   :member-name "framework"))
                                 (:shape-name
                                  "UpdateAssessmentFrameworkResponse"))

(smithy/sdk/shapes:define-input update-assessment-framework-share-request
                                common-lisp:nil
                                ((request-id :target-type uuid :required
                                  common-lisp:t :member-name "requestId"
                                  :http-label common-lisp:t)
                                 (request-type :target-type share-request-type
                                  :required common-lisp:t :member-name
                                  "requestType")
                                 (action :target-type share-request-action
                                  :required common-lisp:t :member-name
                                  "action"))
                                (:shape-name
                                 "UpdateAssessmentFrameworkShareRequest"))

(smithy/sdk/shapes:define-output update-assessment-framework-share-response
                                 common-lisp:nil
                                 ((assessment-framework-share-request
                                   :target-type
                                   assessment-framework-share-request
                                   :member-name
                                   "assessmentFrameworkShareRequest"))
                                 (:shape-name
                                  "UpdateAssessmentFrameworkShareResponse"))

(smithy/sdk/shapes:define-input update-assessment-request common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (assessment-name :target-type assessment-name
                                  :member-name "assessmentName")
                                 (assessment-description :target-type
                                  assessment-description :member-name
                                  "assessmentDescription")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "scope")
                                 (assessment-reports-destination :target-type
                                  assessment-reports-destination :member-name
                                  "assessmentReportsDestination")
                                 (roles :target-type roles :member-name
                                  "roles"))
                                (:shape-name "UpdateAssessmentRequest"))

(smithy/sdk/shapes:define-output update-assessment-response common-lisp:nil
                                 ((assessment :target-type assessment
                                   :member-name "assessment"))
                                 (:shape-name "UpdateAssessmentResponse"))

(smithy/sdk/shapes:define-input update-assessment-status-request
                                common-lisp:nil
                                ((assessment-id :target-type uuid :required
                                  common-lisp:t :member-name "assessmentId"
                                  :http-label common-lisp:t)
                                 (status :target-type assessment-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name "UpdateAssessmentStatusRequest"))

(smithy/sdk/shapes:define-output update-assessment-status-response
                                 common-lisp:nil
                                 ((assessment :target-type assessment
                                   :member-name "assessment"))
                                 (:shape-name "UpdateAssessmentStatusResponse"))

(smithy/sdk/shapes:define-input update-control-request common-lisp:nil
                                ((control-id :target-type uuid :required
                                  common-lisp:t :member-name "controlId"
                                  :http-label common-lisp:t)
                                 (name :target-type control-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type control-description
                                  :member-name "description")
                                 (testing-information :target-type
                                  testing-information :member-name
                                  "testingInformation")
                                 (action-plan-title :target-type
                                  action-plan-title :member-name
                                  "actionPlanTitle")
                                 (action-plan-instructions :target-type
                                  action-plan-instructions :member-name
                                  "actionPlanInstructions")
                                 (control-mapping-sources :target-type
                                  control-mapping-sources :required
                                  common-lisp:t :member-name
                                  "controlMappingSources"))
                                (:shape-name "UpdateControlRequest"))

(smithy/sdk/shapes:define-output update-control-response common-lisp:nil
                                 ((control :target-type control :member-name
                                   "control"))
                                 (:shape-name "UpdateControlResponse"))

(smithy/sdk/shapes:define-input update-settings-request common-lisp:nil
                                ((sns-topic :target-type sns-arn :member-name
                                  "snsTopic")
                                 (default-assessment-reports-destination
                                  :target-type assessment-reports-destination
                                  :member-name
                                  "defaultAssessmentReportsDestination")
                                 (default-process-owners :target-type roles
                                  :member-name "defaultProcessOwners")
                                 (kms-key :target-type kms-key :member-name
                                  "kmsKey")
                                 (evidence-finder-enabled :target-type boolean
                                  :member-name "evidenceFinderEnabled")
                                 (deregistration-policy :target-type
                                  deregistration-policy :member-name
                                  "deregistrationPolicy")
                                 (default-export-destination :target-type
                                  default-export-destination :member-name
                                  "defaultExportDestination"))
                                (:shape-name "UpdateSettingsRequest"))

(smithy/sdk/shapes:define-output update-settings-response common-lisp:nil
                                 ((settings :target-type settings :member-name
                                   "settings"))
                                 (:shape-name "UpdateSettingsResponse"))

(smithy/sdk/shapes:define-type url-link smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input validate-assessment-report-integrity-request
                                common-lisp:nil
                                ((s3relative-path :target-type s3url :required
                                  common-lisp:t :member-name "s3RelativePath"))
                                (:shape-name
                                 "ValidateAssessmentReportIntegrityRequest"))

(smithy/sdk/shapes:define-output validate-assessment-report-integrity-response
                                 common-lisp:nil
                                 ((signature-valid :target-type boolean
                                   :member-name "signatureValid")
                                  (signature-algorithm :target-type string
                                   :member-name "signatureAlgorithm")
                                  (signature-date-time :target-type string
                                   :member-name "signatureDateTime")
                                  (signature-key-id :target-type string
                                   :member-name "signatureKeyId")
                                  (validation-errors :target-type
                                   validation-errors :member-name
                                   "validationErrors"))
                                 (:shape-name
                                  "ValidateAssessmentReportIntegrityResponse"))

(smithy/sdk/shapes:define-list validation-errors :member non-empty-string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation
 associate-assessment-report-evidence-folder :shape-name
 "AssociateAssessmentReportEvidenceFolder" :input
 associate-assessment-report-evidence-folder-request :output
 associate-assessment-report-evidence-folder-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "PUT" :uri "/assessments/{assessmentId}/associateToAssessmentReport"
 :code 200)

(smithy/sdk/operation:define-operation
 batch-associate-assessment-report-evidence :shape-name
 "BatchAssociateAssessmentReportEvidence" :input
 batch-associate-assessment-report-evidence-request :output
 batch-associate-assessment-report-evidence-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "PUT" :uri
 "/assessments/{assessmentId}/batchAssociateToAssessmentReport" :code 200)

(smithy/sdk/operation:define-operation batch-create-delegation-by-assessment
                                       :shape-name
                                       "BatchCreateDelegationByAssessment"
                                       :input
                                       batch-create-delegation-by-assessment-request
                                       :output
                                       batch-create-delegation-by-assessment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assessments/{assessmentId}/delegations"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-delete-delegation-by-assessment
                                       :shape-name
                                       "BatchDeleteDelegationByAssessment"
                                       :input
                                       batch-delete-delegation-by-assessment-request
                                       :output
                                       batch-delete-delegation-by-assessment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessments/{assessmentId}/delegations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 batch-disassociate-assessment-report-evidence :shape-name
 "BatchDisassociateAssessmentReportEvidence" :input
 batch-disassociate-assessment-report-evidence-request :output
 batch-disassociate-assessment-report-evidence-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "PUT" :uri
 "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport" :code 200)

(smithy/sdk/operation:define-operation
 batch-import-evidence-to-assessment-control :shape-name
 "BatchImportEvidenceToAssessmentControl" :input
 batch-import-evidence-to-assessment-control-request :output
 batch-import-evidence-to-assessment-control-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence"
 :code 200)

(smithy/sdk/operation:define-operation create-assessment :shape-name
                                       "CreateAssessment" :input
                                       create-assessment-request :output
                                       create-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/assessments" :code
                                       200)

(smithy/sdk/operation:define-operation create-assessment-framework :shape-name
                                       "CreateAssessmentFramework" :input
                                       create-assessment-framework-request
                                       :output
                                       create-assessment-framework-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assessmentFrameworks" :code 200)

(smithy/sdk/operation:define-operation create-assessment-report :shape-name
                                       "CreateAssessmentReport" :input
                                       create-assessment-report-request :output
                                       create-assessment-report-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assessments/{assessmentId}/reports"
                                       :code 200)

(smithy/sdk/operation:define-operation create-control :shape-name
                                       "CreateControl" :input
                                       create-control-request :output
                                       create-control-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/controls" :code
                                       200)

(smithy/sdk/operation:define-operation delete-assessment :shape-name
                                       "DeleteAssessment" :input
                                       delete-assessment-request :output
                                       delete-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assessments/{assessmentId}" :code 200)

(smithy/sdk/operation:define-operation delete-assessment-framework :shape-name
                                       "DeleteAssessmentFramework" :input
                                       delete-assessment-framework-request
                                       :output
                                       delete-assessment-framework-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assessmentFrameworks/{frameworkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-assessment-framework-share
                                       :shape-name
                                       "DeleteAssessmentFrameworkShare" :input
                                       delete-assessment-framework-share-request
                                       :output
                                       delete-assessment-framework-share-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assessmentFrameworkShareRequests/{requestId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-assessment-report :shape-name
                                       "DeleteAssessmentReport" :input
                                       delete-assessment-report-request :output
                                       delete-assessment-report-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/assessments/{assessmentId}/reports/{assessmentReportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-control :shape-name
                                       "DeleteControl" :input
                                       delete-control-request :output
                                       delete-control-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/controls/{controlId}" :code 200)

(smithy/sdk/operation:define-operation deregister-account :shape-name
                                       "DeregisterAccount" :input
                                       deregister-account-request :output
                                       deregister-account-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account/deregisterAccount" :code 200)

(smithy/sdk/operation:define-operation deregister-organization-admin-account
                                       :shape-name
                                       "DeregisterOrganizationAdminAccount"
                                       :input
                                       deregister-organization-admin-account-request
                                       :output
                                       deregister-organization-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account/deregisterOrganizationAdminAccount"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disassociate-assessment-report-evidence-folder :shape-name
 "DisassociateAssessmentReportEvidenceFolder" :input
 disassociate-assessment-report-evidence-folder-request :output
 disassociate-assessment-report-evidence-folder-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "PUT" :uri
 "/assessments/{assessmentId}/disassociateFromAssessmentReport" :code 200)

(smithy/sdk/operation:define-operation get-account-status :shape-name
                                       "GetAccountStatus" :input
                                       get-account-status-request :output
                                       get-account-status-response :errors
                                       (internal-server-exception) :method
                                       "GET" :uri "/account/status" :code 200)

(smithy/sdk/operation:define-operation get-assessment :shape-name
                                       "GetAssessment" :input
                                       get-assessment-request :output
                                       get-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}" :code 200)

(smithy/sdk/operation:define-operation get-assessment-framework :shape-name
                                       "GetAssessmentFramework" :input
                                       get-assessment-framework-request :output
                                       get-assessment-framework-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessmentFrameworks/{frameworkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-assessment-report-url :shape-name
                                       "GetAssessmentReportUrl" :input
                                       get-assessment-report-url-request
                                       :output
                                       get-assessment-report-url-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/reports/{assessmentReportId}/url"
                                       :code 200)

(smithy/sdk/operation:define-operation get-change-logs :shape-name
                                       "GetChangeLogs" :input
                                       get-change-logs-request :output
                                       get-change-logs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/changelogs"
                                       :code 200)

(smithy/sdk/operation:define-operation get-control :shape-name "GetControl"
                                       :input get-control-request :output
                                       get-control-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/controls/{controlId}" :code 200)

(smithy/sdk/operation:define-operation get-delegations :shape-name
                                       "GetDelegations" :input
                                       get-delegations-request :output
                                       get-delegations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/delegations" :code
                                       200)

(smithy/sdk/operation:define-operation get-evidence :shape-name "GetEvidence"
                                       :input get-evidence-request :output
                                       get-evidence-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-evidence-by-evidence-folder
                                       :shape-name
                                       "GetEvidenceByEvidenceFolder" :input
                                       get-evidence-by-evidence-folder-request
                                       :output
                                       get-evidence-by-evidence-folder-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence"
                                       :code 200)

(smithy/sdk/operation:define-operation get-evidence-file-upload-url :shape-name
                                       "GetEvidenceFileUploadUrl" :input
                                       get-evidence-file-upload-url-request
                                       :output
                                       get-evidence-file-upload-url-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/evidenceFileUploadUrl" :code 200)

(smithy/sdk/operation:define-operation get-evidence-folder :shape-name
                                       "GetEvidenceFolder" :input
                                       get-evidence-folder-request :output
                                       get-evidence-folder-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-evidence-folders-by-assessment
                                       :shape-name
                                       "GetEvidenceFoldersByAssessment" :input
                                       get-evidence-folders-by-assessment-request
                                       :output
                                       get-evidence-folders-by-assessment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessments/{assessmentId}/evidenceFolders"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-evidence-folders-by-assessment-control :shape-name
 "GetEvidenceFoldersByAssessmentControl" :input
 get-evidence-folders-by-assessment-control-request :output
 get-evidence-folders-by-assessment-control-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "GET" :uri
 "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}"
 :code 200)

(smithy/sdk/operation:define-operation get-insights :shape-name "GetInsights"
                                       :input get-insights-request :output
                                       get-insights-response :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "GET" :uri "/insights" :code 200)

(smithy/sdk/operation:define-operation get-insights-by-assessment :shape-name
                                       "GetInsightsByAssessment" :input
                                       get-insights-by-assessment-request
                                       :output
                                       get-insights-by-assessment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/insights/assessments/{assessmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-organization-admin-account
                                       :shape-name
                                       "GetOrganizationAdminAccount" :input
                                       get-organization-admin-account-request
                                       :output
                                       get-organization-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/account/organizationAdminAccount"
                                       :code 200)

(smithy/sdk/operation:define-operation get-services-in-scope :shape-name
                                       "GetServicesInScope" :input
                                       get-services-in-scope-request :output
                                       get-services-in-scope-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/services" :code 200)

(smithy/sdk/operation:define-operation get-settings :shape-name "GetSettings"
                                       :input get-settings-request :output
                                       get-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/settings/{attribute}" :code 200)

(smithy/sdk/operation:define-operation
 list-assessment-control-insights-by-control-domain :shape-name
 "ListAssessmentControlInsightsByControlDomain" :input
 list-assessment-control-insights-by-control-domain-request :output
 list-assessment-control-insights-by-control-domain-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "GET" :uri "/insights/controls-by-assessment" :code 200)

(smithy/sdk/operation:define-operation list-assessment-framework-share-requests
                                       :shape-name
                                       "ListAssessmentFrameworkShareRequests"
                                       :input
                                       list-assessment-framework-share-requests-request
                                       :output
                                       list-assessment-framework-share-requests-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessmentFrameworkShareRequests"
                                       :code 200)

(smithy/sdk/operation:define-operation list-assessment-frameworks :shape-name
                                       "ListAssessmentFrameworks" :input
                                       list-assessment-frameworks-request
                                       :output
                                       list-assessment-frameworks-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/assessmentFrameworks" :code 200)

(smithy/sdk/operation:define-operation list-assessment-reports :shape-name
                                       "ListAssessmentReports" :input
                                       list-assessment-reports-request :output
                                       list-assessment-reports-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/assessmentReports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-assessments :shape-name
                                       "ListAssessments" :input
                                       list-assessments-request :output
                                       list-assessments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/assessments" :code
                                       200)

(smithy/sdk/operation:define-operation list-control-domain-insights :shape-name
                                       "ListControlDomainInsights" :input
                                       list-control-domain-insights-request
                                       :output
                                       list-control-domain-insights-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/insights/control-domains" :code 200)

(smithy/sdk/operation:define-operation
 list-control-domain-insights-by-assessment :shape-name
 "ListControlDomainInsightsByAssessment" :input
 list-control-domain-insights-by-assessment-request :output
 list-control-domain-insights-by-assessment-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "GET" :uri "/insights/control-domains-by-assessment" :code 200)

(smithy/sdk/operation:define-operation list-control-insights-by-control-domain
                                       :shape-name
                                       "ListControlInsightsByControlDomain"
                                       :input
                                       list-control-insights-by-control-domain-request
                                       :output
                                       list-control-insights-by-control-domain-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/insights/controls"
                                       :code 200)

(smithy/sdk/operation:define-operation list-controls :shape-name "ListControls"
                                       :input list-controls-request :output
                                       list-controls-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/controls" :code 200)

(smithy/sdk/operation:define-operation list-keywords-for-data-source
                                       :shape-name "ListKeywordsForDataSource"
                                       :input
                                       list-keywords-for-data-source-request
                                       :output
                                       list-keywords-for-data-source-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/dataSourceKeywords"
                                       :code 200)

(smithy/sdk/operation:define-operation list-notifications :shape-name
                                       "ListNotifications" :input
                                       list-notifications-request :output
                                       list-notifications-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/notifications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation register-account :shape-name
                                       "RegisterAccount" :input
                                       register-account-request :output
                                       register-account-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account/registerAccount" :code 200)

(smithy/sdk/operation:define-operation register-organization-admin-account
                                       :shape-name
                                       "RegisterOrganizationAdminAccount"
                                       :input
                                       register-organization-admin-account-request
                                       :output
                                       register-organization-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account/registerOrganizationAdminAccount"
                                       :code 200)

(smithy/sdk/operation:define-operation start-assessment-framework-share
                                       :shape-name
                                       "StartAssessmentFrameworkShare" :input
                                       start-assessment-framework-share-request
                                       :output
                                       start-assessment-framework-share-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assessmentFrameworks/{frameworkId}/shareRequests"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-assessment :shape-name
                                       "UpdateAssessment" :input
                                       update-assessment-request :output
                                       update-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessments/{assessmentId}" :code 200)

(smithy/sdk/operation:define-operation update-assessment-control :shape-name
                                       "UpdateAssessmentControl" :input
                                       update-assessment-control-request
                                       :output
                                       update-assessment-control-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-assessment-control-set-status
                                       :shape-name
                                       "UpdateAssessmentControlSetStatus"
                                       :input
                                       update-assessment-control-set-status-request
                                       :output
                                       update-assessment-control-set-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessments/{assessmentId}/controlSets/{controlSetId}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation update-assessment-framework :shape-name
                                       "UpdateAssessmentFramework" :input
                                       update-assessment-framework-request
                                       :output
                                       update-assessment-framework-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessmentFrameworks/{frameworkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-assessment-framework-share
                                       :shape-name
                                       "UpdateAssessmentFrameworkShare" :input
                                       update-assessment-framework-share-request
                                       :output
                                       update-assessment-framework-share-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessmentFrameworkShareRequests/{requestId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-assessment-status :shape-name
                                       "UpdateAssessmentStatus" :input
                                       update-assessment-status-request :output
                                       update-assessment-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/assessments/{assessmentId}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation update-control :shape-name
                                       "UpdateControl" :input
                                       update-control-request :output
                                       update-control-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/controls/{controlId}" :code 200)

(smithy/sdk/operation:define-operation update-settings :shape-name
                                       "UpdateSettings" :input
                                       update-settings-request :output
                                       update-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri "/settings" :code 200)

(smithy/sdk/operation:define-operation validate-assessment-report-integrity
                                       :shape-name
                                       "ValidateAssessmentReportIntegrity"
                                       :input
                                       validate-assessment-report-integrity-request
                                       :output
                                       validate-assessment-report-integrity-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/assessmentReports/integrity" :code 200)
