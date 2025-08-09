(uiop/package:define-package #:pira/backup (:use)
                             (:export #:arn #:account-id
                              #:advanced-backup-setting
                              #:advanced-backup-settings #:aggregation-period
                              #:already-exists-exception
                              #:associate-backup-vault-mpa-approval-team
                              #:associate-backup-vault-mpa-approval-team-input
                              #:backup-job #:backup-job-child-jobs-in-state
                              #:backup-job-state #:backup-job-status
                              #:backup-job-summary #:backup-job-summary-list
                              #:backup-jobs-list #:backup-option-key
                              #:backup-option-value #:backup-options
                              #:backup-plan #:backup-plan-input
                              #:backup-plan-name #:backup-plan-templates-list
                              #:backup-plan-templates-list-member
                              #:backup-plan-versions-list #:backup-plans-list
                              #:backup-plans-list-member #:backup-rule
                              #:backup-rule-input #:backup-rule-name
                              #:backup-rules #:backup-rules-input
                              #:backup-selection #:backup-selection-name
                              #:backup-selections-list
                              #:backup-selections-list-member
                              #:backup-vault-event #:backup-vault-events
                              #:backup-vault-list #:backup-vault-list-member
                              #:backup-vault-name #:boolean #:boolean2
                              #:calculated-lifecycle #:cancel-legal-hold
                              #:cancel-legal-hold-input
                              #:cancel-legal-hold-output
                              #:compliance-resource-id-list #:condition
                              #:condition-key #:condition-parameter
                              #:condition-parameters #:condition-type
                              #:condition-value #:conditions
                              #:conflict-exception #:control-input-parameter
                              #:control-input-parameters #:control-name
                              #:control-scope #:copy-action #:copy-actions
                              #:copy-job #:copy-job-child-jobs-in-state
                              #:copy-job-state #:copy-job-status
                              #:copy-job-summary #:copy-job-summary-list
                              #:copy-jobs-list #:create-backup-plan
                              #:create-backup-plan-input
                              #:create-backup-plan-output
                              #:create-backup-selection
                              #:create-backup-selection-input
                              #:create-backup-selection-output
                              #:create-backup-vault #:create-backup-vault-input
                              #:create-backup-vault-output #:create-framework
                              #:create-framework-input
                              #:create-framework-output #:create-legal-hold
                              #:create-legal-hold-input
                              #:create-legal-hold-output
                              #:create-logically-air-gapped-backup-vault
                              #:create-logically-air-gapped-backup-vault-input
                              #:create-logically-air-gapped-backup-vault-output
                              #:create-report-plan #:create-report-plan-input
                              #:create-report-plan-output
                              #:create-restore-access-backup-vault
                              #:create-restore-access-backup-vault-input
                              #:create-restore-access-backup-vault-output
                              #:create-restore-testing-plan
                              #:create-restore-testing-plan-input
                              #:create-restore-testing-plan-output
                              #:create-restore-testing-selection
                              #:create-restore-testing-selection-input
                              #:create-restore-testing-selection-output
                              #:cron-expression #:cryo-controller-user-manager
                              #:date-range #:delete-backup-plan
                              #:delete-backup-plan-input
                              #:delete-backup-plan-output
                              #:delete-backup-selection
                              #:delete-backup-selection-input
                              #:delete-backup-vault
                              #:delete-backup-vault-access-policy
                              #:delete-backup-vault-access-policy-input
                              #:delete-backup-vault-input
                              #:delete-backup-vault-lock-configuration
                              #:delete-backup-vault-lock-configuration-input
                              #:delete-backup-vault-notifications
                              #:delete-backup-vault-notifications-input
                              #:delete-framework #:delete-framework-input
                              #:delete-recovery-point
                              #:delete-recovery-point-input
                              #:delete-report-plan #:delete-report-plan-input
                              #:delete-restore-testing-plan
                              #:delete-restore-testing-plan-input
                              #:delete-restore-testing-selection
                              #:delete-restore-testing-selection-input
                              #:dependency-failure-exception
                              #:describe-backup-job #:describe-backup-job-input
                              #:describe-backup-job-output
                              #:describe-backup-vault
                              #:describe-backup-vault-input
                              #:describe-backup-vault-output
                              #:describe-copy-job #:describe-copy-job-input
                              #:describe-copy-job-output #:describe-framework
                              #:describe-framework-input
                              #:describe-framework-output
                              #:describe-global-settings
                              #:describe-global-settings-input
                              #:describe-global-settings-output
                              #:describe-protected-resource
                              #:describe-protected-resource-input
                              #:describe-protected-resource-output
                              #:describe-recovery-point
                              #:describe-recovery-point-input
                              #:describe-recovery-point-output
                              #:describe-region-settings
                              #:describe-region-settings-input
                              #:describe-region-settings-output
                              #:describe-report-job #:describe-report-job-input
                              #:describe-report-job-output
                              #:describe-report-plan
                              #:describe-report-plan-input
                              #:describe-report-plan-output
                              #:describe-restore-job
                              #:describe-restore-job-input
                              #:describe-restore-job-output
                              #:disassociate-backup-vault-mpa-approval-team
                              #:disassociate-backup-vault-mpa-approval-team-input
                              #:disassociate-recovery-point
                              #:disassociate-recovery-point-from-parent
                              #:disassociate-recovery-point-from-parent-input
                              #:disassociate-recovery-point-input
                              #:export-backup-plan-template
                              #:export-backup-plan-template-input
                              #:export-backup-plan-template-output
                              #:format-list #:framework #:framework-control
                              #:framework-controls #:framework-description
                              #:framework-list #:framework-name
                              #:get-backup-plan #:get-backup-plan-from-json
                              #:get-backup-plan-from-jsoninput
                              #:get-backup-plan-from-jsonoutput
                              #:get-backup-plan-from-template
                              #:get-backup-plan-from-template-input
                              #:get-backup-plan-from-template-output
                              #:get-backup-plan-input #:get-backup-plan-output
                              #:get-backup-selection
                              #:get-backup-selection-input
                              #:get-backup-selection-output
                              #:get-backup-vault-access-policy
                              #:get-backup-vault-access-policy-input
                              #:get-backup-vault-access-policy-output
                              #:get-backup-vault-notifications
                              #:get-backup-vault-notifications-input
                              #:get-backup-vault-notifications-output
                              #:get-legal-hold #:get-legal-hold-input
                              #:get-legal-hold-output
                              #:get-recovery-point-index-details
                              #:get-recovery-point-index-details-input
                              #:get-recovery-point-index-details-output
                              #:get-recovery-point-restore-metadata
                              #:get-recovery-point-restore-metadata-input
                              #:get-recovery-point-restore-metadata-output
                              #:get-restore-job-metadata
                              #:get-restore-job-metadata-input
                              #:get-restore-job-metadata-output
                              #:get-restore-testing-inferred-metadata
                              #:get-restore-testing-inferred-metadata-input
                              #:get-restore-testing-inferred-metadata-output
                              #:get-restore-testing-plan
                              #:get-restore-testing-plan-input
                              #:get-restore-testing-plan-output
                              #:get-restore-testing-selection
                              #:get-restore-testing-selection-input
                              #:get-restore-testing-selection-output
                              #:get-supported-resource-types
                              #:get-supported-resource-types-output
                              #:global-settings #:global-settings-name
                              #:global-settings-value #:iampolicy #:iamrole-arn
                              #:index #:index-action #:index-actions
                              #:index-status #:indexed-recovery-point
                              #:indexed-recovery-point-list
                              #:invalid-parameter-value-exception
                              #:invalid-request-exception
                              #:invalid-resource-state-exception #:is-enabled
                              #:key-value #:key-value-list
                              #:latest-mpa-approval-team-update
                              #:latest-revoke-request #:legal-hold
                              #:legal-hold-status #:legal-holds-list
                              #:lifecycle #:limit-exceeded-exception
                              #:list-backup-job-summaries
                              #:list-backup-job-summaries-input
                              #:list-backup-job-summaries-output
                              #:list-backup-jobs #:list-backup-jobs-input
                              #:list-backup-jobs-output
                              #:list-backup-plan-templates
                              #:list-backup-plan-templates-input
                              #:list-backup-plan-templates-output
                              #:list-backup-plan-versions
                              #:list-backup-plan-versions-input
                              #:list-backup-plan-versions-output
                              #:list-backup-plans #:list-backup-plans-input
                              #:list-backup-plans-output
                              #:list-backup-selections
                              #:list-backup-selections-input
                              #:list-backup-selections-output
                              #:list-backup-vaults #:list-backup-vaults-input
                              #:list-backup-vaults-output
                              #:list-copy-job-summaries
                              #:list-copy-job-summaries-input
                              #:list-copy-job-summaries-output #:list-copy-jobs
                              #:list-copy-jobs-input #:list-copy-jobs-output
                              #:list-frameworks #:list-frameworks-input
                              #:list-frameworks-output
                              #:list-indexed-recovery-points
                              #:list-indexed-recovery-points-input
                              #:list-indexed-recovery-points-output
                              #:list-legal-holds #:list-legal-holds-input
                              #:list-legal-holds-output #:list-of-tags
                              #:list-protected-resources
                              #:list-protected-resources-by-backup-vault
                              #:list-protected-resources-by-backup-vault-input
                              #:list-protected-resources-by-backup-vault-output
                              #:list-protected-resources-input
                              #:list-protected-resources-output
                              #:list-recovery-points-by-backup-vault
                              #:list-recovery-points-by-backup-vault-input
                              #:list-recovery-points-by-backup-vault-output
                              #:list-recovery-points-by-legal-hold
                              #:list-recovery-points-by-legal-hold-input
                              #:list-recovery-points-by-legal-hold-output
                              #:list-recovery-points-by-resource
                              #:list-recovery-points-by-resource-input
                              #:list-recovery-points-by-resource-output
                              #:list-report-jobs #:list-report-jobs-input
                              #:list-report-jobs-output #:list-report-plans
                              #:list-report-plans-input
                              #:list-report-plans-output
                              #:list-restore-access-backup-vaults
                              #:list-restore-access-backup-vaults-input
                              #:list-restore-access-backup-vaults-output
                              #:list-restore-job-summaries
                              #:list-restore-job-summaries-input
                              #:list-restore-job-summaries-output
                              #:list-restore-jobs
                              #:list-restore-jobs-by-protected-resource
                              #:list-restore-jobs-by-protected-resource-input
                              #:list-restore-jobs-by-protected-resource-output
                              #:list-restore-jobs-input
                              #:list-restore-jobs-output
                              #:list-restore-testing-plans
                              #:list-restore-testing-plans-input
                              #:list-restore-testing-plans-input-max-results-integer
                              #:list-restore-testing-plans-output
                              #:list-restore-testing-selections
                              #:list-restore-testing-selections-input
                              #:list-restore-testing-selections-input-max-results-integer
                              #:list-restore-testing-selections-output
                              #:list-tags #:list-tags-input #:list-tags-output
                              #:long #:long2 #:max-framework-inputs
                              #:max-results #:message-category #:metadata
                              #:metadata-key #:metadata-value
                              #:missing-parameter-value-exception
                              #:mpa-revoke-session-status #:mpa-session-status
                              #:parameter-name #:parameter-value
                              #:protected-resource
                              #:protected-resource-conditions
                              #:protected-resources-list
                              #:put-backup-vault-access-policy
                              #:put-backup-vault-access-policy-input
                              #:put-backup-vault-lock-configuration
                              #:put-backup-vault-lock-configuration-input
                              #:put-backup-vault-notifications
                              #:put-backup-vault-notifications-input
                              #:put-restore-validation-result
                              #:put-restore-validation-result-input
                              #:recovery-point-by-backup-vault
                              #:recovery-point-by-backup-vault-list
                              #:recovery-point-by-resource
                              #:recovery-point-by-resource-list
                              #:recovery-point-creator #:recovery-point-member
                              #:recovery-point-selection
                              #:recovery-point-status #:recovery-points-list
                              #:region #:report-delivery-channel
                              #:report-destination #:report-job #:report-job-id
                              #:report-job-list #:report-plan
                              #:report-plan-description #:report-plan-list
                              #:report-plan-name #:report-setting
                              #:requester-comment #:resource-arns
                              #:resource-identifiers
                              #:resource-not-found-exception #:resource-type
                              #:resource-type-list
                              #:resource-type-management-preference
                              #:resource-type-opt-in-preference
                              #:resource-types
                              #:restore-access-backup-vault-list
                              #:restore-access-backup-vault-list-member
                              #:restore-deletion-status #:restore-job-creator
                              #:restore-job-id #:restore-job-state
                              #:restore-job-status #:restore-job-summary
                              #:restore-job-summary-list #:restore-jobs-list
                              #:restore-jobs-list-member
                              #:restore-testing-plan-for-create
                              #:restore-testing-plan-for-get
                              #:restore-testing-plan-for-list
                              #:restore-testing-plan-for-update
                              #:restore-testing-plans
                              #:restore-testing-recovery-point-selection
                              #:restore-testing-recovery-point-selection-algorithm
                              #:restore-testing-recovery-point-type
                              #:restore-testing-recovery-point-type-list
                              #:restore-testing-selection-for-create
                              #:restore-testing-selection-for-get
                              #:restore-testing-selection-for-list
                              #:restore-testing-selection-for-update
                              #:restore-testing-selections
                              #:restore-validation-status
                              #:revoke-restore-access-backup-vault
                              #:revoke-restore-access-backup-vault-input
                              #:sensitive-string-map
                              #:service-unavailable-exception
                              #:start-backup-job #:start-backup-job-input
                              #:start-backup-job-output #:start-copy-job
                              #:start-copy-job-input #:start-copy-job-output
                              #:start-report-job #:start-report-job-input
                              #:start-report-job-output #:start-restore-job
                              #:start-restore-job-input
                              #:start-restore-job-output #:stop-backup-job
                              #:stop-backup-job-input #:storage-class #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-input #:tag-value #:tags
                              #:timezone #:untag-resource
                              #:untag-resource-input #:update-backup-plan
                              #:update-backup-plan-input
                              #:update-backup-plan-output #:update-framework
                              #:update-framework-input
                              #:update-framework-output
                              #:update-global-settings
                              #:update-global-settings-input
                              #:update-recovery-point-index-settings
                              #:update-recovery-point-index-settings-input
                              #:update-recovery-point-index-settings-output
                              #:update-recovery-point-lifecycle
                              #:update-recovery-point-lifecycle-input
                              #:update-recovery-point-lifecycle-output
                              #:update-region-settings
                              #:update-region-settings-input
                              #:update-report-plan #:update-report-plan-input
                              #:update-report-plan-output
                              #:update-restore-testing-plan
                              #:update-restore-testing-plan-input
                              #:update-restore-testing-plan-output
                              #:update-restore-testing-selection
                              #:update-restore-testing-selection-input
                              #:update-restore-testing-selection-output
                              #:vault-names #:vault-state #:vault-type
                              #:window-minutes #:integer #:string #:string-list
                              #:string-map #:timestamp))
(common-lisp:in-package #:pira/backup)

(smithy/sdk/service:define-service cryo-controller-user-manager :shape-name
                                   "CryoControllerUserManager" :version
                                   "2018-11-15" :title "AWS Backup" :traits
                                   '(("aws.api#service" ("sdkId" . "Backup")
                                      ("arnNamespace" . "backup")
                                      ("cloudFormationName" . "Backup")
                                      ("cloudTrailEventSource"
                                       . "backup.amazonaws.com")
                                      ("endpointPrefix" . "backup"))
                                     ("aws.auth#sigv4" ("name" . "backup"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure advanced-backup-setting common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (backup-options :target-type
                                      backup-options :member-name
                                      "BackupOptions"))
                                    (:shape-name "AdvancedBackupSetting"))

(smithy/sdk/shapes:define-list advanced-backup-settings :member
                               advanced-backup-setting)

(smithy/sdk/shapes:define-enum aggregation-period
    common-lisp:nil
  (:one-day "ONE_DAY")
  (:seven-days "SEVEN_DAYS")
  (:fourteen-days "FOURTEEN_DAYS"))

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId")
                                 (arn :target-type string :member-name "Arn")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input associate-backup-vault-mpa-approval-team-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (mpa-approval-team-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "MpaApprovalTeamArn")
                                 (requester-comment :target-type
                                  requester-comment :member-name
                                  "RequesterComment"))
                                (:shape-name
                                 "AssociateBackupVaultMpaApprovalTeamInput"))

(smithy/sdk/shapes:define-structure backup-job common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (backup-job-id :target-type string
                                      :member-name "BackupJobId")
                                     (backup-vault-name :target-type
                                      backup-vault-name :member-name
                                      "BackupVaultName")
                                     (backup-vault-arn :target-type arn
                                      :member-name "BackupVaultArn")
                                     (recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (completion-date :target-type timestamp
                                      :member-name "CompletionDate")
                                     (state :target-type backup-job-state
                                      :member-name "State")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (percent-done :target-type string
                                      :member-name "PercentDone")
                                     (backup-size-in-bytes :target-type long
                                      :member-name "BackupSizeInBytes")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn")
                                     (created-by :target-type
                                      recovery-point-creator :member-name
                                      "CreatedBy")
                                     (expected-completion-date :target-type
                                      timestamp :member-name
                                      "ExpectedCompletionDate")
                                     (start-by :target-type timestamp
                                      :member-name "StartBy")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (bytes-transferred :target-type long
                                      :member-name "BytesTransferred")
                                     (backup-options :target-type
                                      backup-options :member-name
                                      "BackupOptions")
                                     (backup-type :target-type string
                                      :member-name "BackupType")
                                     (parent-job-id :target-type string
                                      :member-name "ParentJobId")
                                     (is-parent :target-type boolean2
                                      :member-name "IsParent")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (initiation-date :target-type timestamp
                                      :member-name "InitiationDate")
                                     (message-category :target-type string
                                      :member-name "MessageCategory"))
                                    (:shape-name "BackupJob"))

(smithy/sdk/shapes:define-map backup-job-child-jobs-in-state :key
                              backup-job-state :value long)

(smithy/sdk/shapes:define-enum backup-job-state
    common-lisp:nil
  (:created "CREATED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:aborting "ABORTING")
  (:aborted "ABORTED")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:expired "EXPIRED")
  (:partial "PARTIAL"))

(smithy/sdk/shapes:define-enum backup-job-status
    common-lisp:nil
  (:created "CREATED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:aborting "ABORTING")
  (:aborted "ABORTED")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:expired "EXPIRED")
  (:partial "PARTIAL")
  (:aggregate-all "AGGREGATE_ALL")
  (:any "ANY"))

(smithy/sdk/shapes:define-structure backup-job-summary common-lisp:nil
                                    ((region :target-type region :member-name
                                      "Region")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (state :target-type backup-job-status
                                      :member-name "State")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (message-category :target-type
                                      message-category :member-name
                                      "MessageCategory")
                                     (count :target-type integer :member-name
                                      "Count")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "BackupJobSummary"))

(smithy/sdk/shapes:define-list backup-job-summary-list :member
                               backup-job-summary)

(smithy/sdk/shapes:define-list backup-jobs-list :member backup-job)

(smithy/sdk/shapes:define-type backup-option-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backup-option-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map backup-options :key backup-option-key :value
                              backup-option-value)

(smithy/sdk/shapes:define-structure backup-plan common-lisp:nil
                                    ((backup-plan-name :target-type
                                      backup-plan-name :required common-lisp:t
                                      :member-name "BackupPlanName")
                                     (rules :target-type backup-rules :required
                                      common-lisp:t :member-name "Rules")
                                     (advanced-backup-settings :target-type
                                      advanced-backup-settings :member-name
                                      "AdvancedBackupSettings"))
                                    (:shape-name "BackupPlan"))

(smithy/sdk/shapes:define-structure backup-plan-input common-lisp:nil
                                    ((backup-plan-name :target-type
                                      backup-plan-name :required common-lisp:t
                                      :member-name "BackupPlanName")
                                     (rules :target-type backup-rules-input
                                      :required common-lisp:t :member-name
                                      "Rules")
                                     (advanced-backup-settings :target-type
                                      advanced-backup-settings :member-name
                                      "AdvancedBackupSettings"))
                                    (:shape-name "BackupPlanInput"))

(smithy/sdk/shapes:define-type backup-plan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list backup-plan-templates-list :member
                               backup-plan-templates-list-member)

(smithy/sdk/shapes:define-structure backup-plan-templates-list-member
                                    common-lisp:nil
                                    ((backup-plan-template-id :target-type
                                      string :member-name
                                      "BackupPlanTemplateId")
                                     (backup-plan-template-name :target-type
                                      string :member-name
                                      "BackupPlanTemplateName"))
                                    (:shape-name
                                     "BackupPlanTemplatesListMember"))

(smithy/sdk/shapes:define-list backup-plan-versions-list :member
                               backup-plans-list-member)

(smithy/sdk/shapes:define-list backup-plans-list :member
                               backup-plans-list-member)

(smithy/sdk/shapes:define-structure backup-plans-list-member common-lisp:nil
                                    ((backup-plan-arn :target-type arn
                                      :member-name "BackupPlanArn")
                                     (backup-plan-id :target-type string
                                      :member-name "BackupPlanId")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (deletion-date :target-type timestamp
                                      :member-name "DeletionDate")
                                     (version-id :target-type string
                                      :member-name "VersionId")
                                     (backup-plan-name :target-type
                                      backup-plan-name :member-name
                                      "BackupPlanName")
                                     (creator-request-id :target-type string
                                      :member-name "CreatorRequestId")
                                     (last-execution-date :target-type
                                      timestamp :member-name
                                      "LastExecutionDate")
                                     (advanced-backup-settings :target-type
                                      advanced-backup-settings :member-name
                                      "AdvancedBackupSettings"))
                                    (:shape-name "BackupPlansListMember"))

(smithy/sdk/shapes:define-structure backup-rule common-lisp:nil
                                    ((rule-name :target-type backup-rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (target-backup-vault-name :target-type
                                      backup-vault-name :required common-lisp:t
                                      :member-name "TargetBackupVaultName")
                                     (schedule-expression :target-type
                                      cron-expression :member-name
                                      "ScheduleExpression")
                                     (start-window-minutes :target-type
                                      window-minutes :member-name
                                      "StartWindowMinutes")
                                     (completion-window-minutes :target-type
                                      window-minutes :member-name
                                      "CompletionWindowMinutes")
                                     (lifecycle :target-type lifecycle
                                      :member-name "Lifecycle")
                                     (recovery-point-tags :target-type tags
                                      :member-name "RecoveryPointTags")
                                     (rule-id :target-type string :member-name
                                      "RuleId")
                                     (copy-actions :target-type copy-actions
                                      :member-name "CopyActions")
                                     (enable-continuous-backup :target-type
                                      boolean :member-name
                                      "EnableContinuousBackup")
                                     (schedule-expression-timezone :target-type
                                      timezone :member-name
                                      "ScheduleExpressionTimezone")
                                     (index-actions :target-type index-actions
                                      :member-name "IndexActions"))
                                    (:shape-name "BackupRule"))

(smithy/sdk/shapes:define-structure backup-rule-input common-lisp:nil
                                    ((rule-name :target-type backup-rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (target-backup-vault-name :target-type
                                      backup-vault-name :required common-lisp:t
                                      :member-name "TargetBackupVaultName")
                                     (schedule-expression :target-type
                                      cron-expression :member-name
                                      "ScheduleExpression")
                                     (start-window-minutes :target-type
                                      window-minutes :member-name
                                      "StartWindowMinutes")
                                     (completion-window-minutes :target-type
                                      window-minutes :member-name
                                      "CompletionWindowMinutes")
                                     (lifecycle :target-type lifecycle
                                      :member-name "Lifecycle")
                                     (recovery-point-tags :target-type tags
                                      :member-name "RecoveryPointTags")
                                     (copy-actions :target-type copy-actions
                                      :member-name "CopyActions")
                                     (enable-continuous-backup :target-type
                                      boolean :member-name
                                      "EnableContinuousBackup")
                                     (schedule-expression-timezone :target-type
                                      timezone :member-name
                                      "ScheduleExpressionTimezone")
                                     (index-actions :target-type index-actions
                                      :member-name "IndexActions"))
                                    (:shape-name "BackupRuleInput"))

(smithy/sdk/shapes:define-type backup-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list backup-rules :member backup-rule)

(smithy/sdk/shapes:define-list backup-rules-input :member backup-rule-input)

(smithy/sdk/shapes:define-structure backup-selection common-lisp:nil
                                    ((selection-name :target-type
                                      backup-selection-name :required
                                      common-lisp:t :member-name
                                      "SelectionName")
                                     (iam-role-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "IamRoleArn")
                                     (resources :target-type resource-arns
                                      :member-name "Resources")
                                     (list-of-tags :target-type list-of-tags
                                      :member-name "ListOfTags")
                                     (not-resources :target-type resource-arns
                                      :member-name "NotResources")
                                     (conditions :target-type conditions
                                      :member-name "Conditions"))
                                    (:shape-name "BackupSelection"))

(smithy/sdk/shapes:define-type backup-selection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list backup-selections-list :member
                               backup-selections-list-member)

(smithy/sdk/shapes:define-structure backup-selections-list-member
                                    common-lisp:nil
                                    ((selection-id :target-type string
                                      :member-name "SelectionId")
                                     (selection-name :target-type
                                      backup-selection-name :member-name
                                      "SelectionName")
                                     (backup-plan-id :target-type string
                                      :member-name "BackupPlanId")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (creator-request-id :target-type string
                                      :member-name "CreatorRequestId")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn"))
                                    (:shape-name "BackupSelectionsListMember"))

(smithy/sdk/shapes:define-enum backup-vault-event
    common-lisp:nil
  (:backup-job-started "BACKUP_JOB_STARTED")
  (:backup-job-completed "BACKUP_JOB_COMPLETED")
  (:backup-job-successful "BACKUP_JOB_SUCCESSFUL")
  (:backup-job-failed "BACKUP_JOB_FAILED")
  (:backup-job-expired "BACKUP_JOB_EXPIRED")
  (:restore-job-started "RESTORE_JOB_STARTED")
  (:restore-job-completed "RESTORE_JOB_COMPLETED")
  (:restore-job-successful "RESTORE_JOB_SUCCESSFUL")
  (:restore-job-failed "RESTORE_JOB_FAILED")
  (:copy-job-started "COPY_JOB_STARTED")
  (:copy-job-successful "COPY_JOB_SUCCESSFUL")
  (:copy-job-failed "COPY_JOB_FAILED")
  (:recovery-point-modified "RECOVERY_POINT_MODIFIED")
  (:backup-plan-created "BACKUP_PLAN_CREATED")
  (:backup-plan-modified "BACKUP_PLAN_MODIFIED")
  (:s3-backup-object-failed "S3_BACKUP_OBJECT_FAILED")
  (:s3-restore-object-failed "S3_RESTORE_OBJECT_FAILED")
  (:continuous-backup-interrupted "CONTINUOUS_BACKUP_INTERRUPTED")
  (:recovery-point-index-completed "RECOVERY_POINT_INDEX_COMPLETED")
  (:recovery-point-index-deleted "RECOVERY_POINT_INDEX_DELETED")
  (:recovery-point-indexing-failed "RECOVERY_POINT_INDEXING_FAILED"))

(smithy/sdk/shapes:define-list backup-vault-events :member backup-vault-event)

(smithy/sdk/shapes:define-list backup-vault-list :member
                               backup-vault-list-member)

(smithy/sdk/shapes:define-structure backup-vault-list-member common-lisp:nil
                                    ((backup-vault-name :target-type
                                      backup-vault-name :member-name
                                      "BackupVaultName")
                                     (backup-vault-arn :target-type arn
                                      :member-name "BackupVaultArn")
                                     (vault-type :target-type vault-type
                                      :member-name "VaultType")
                                     (vault-state :target-type vault-state
                                      :member-name "VaultState")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (encryption-key-arn :target-type arn
                                      :member-name "EncryptionKeyArn")
                                     (creator-request-id :target-type string
                                      :member-name "CreatorRequestId")
                                     (number-of-recovery-points :target-type
                                      long2 :member-name
                                      "NumberOfRecoveryPoints")
                                     (locked :target-type boolean :member-name
                                      "Locked")
                                     (min-retention-days :target-type long
                                      :member-name "MinRetentionDays")
                                     (max-retention-days :target-type long
                                      :member-name "MaxRetentionDays")
                                     (lock-date :target-type timestamp
                                      :member-name "LockDate"))
                                    (:shape-name "BackupVaultListMember"))

(smithy/sdk/shapes:define-type backup-vault-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean2 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure calculated-lifecycle common-lisp:nil
                                    ((move-to-cold-storage-at :target-type
                                      timestamp :member-name
                                      "MoveToColdStorageAt")
                                     (delete-at :target-type timestamp
                                      :member-name "DeleteAt"))
                                    (:shape-name "CalculatedLifecycle"))

(smithy/sdk/shapes:define-input cancel-legal-hold-input common-lisp:nil
                                ((legal-hold-id :target-type string :required
                                  common-lisp:t :member-name "LegalHoldId"
                                  :http-label common-lisp:t)
                                 (cancel-description :target-type string
                                  :required common-lisp:t :member-name
                                  "CancelDescription" :http-query
                                  "cancelDescription")
                                 (retain-record-in-days :target-type long
                                  :member-name "RetainRecordInDays" :http-query
                                  "retainRecordInDays"))
                                (:shape-name "CancelLegalHoldInput"))

(smithy/sdk/shapes:define-output cancel-legal-hold-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelLegalHoldOutput"))

(smithy/sdk/shapes:define-list compliance-resource-id-list :member string)

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((condition-type :target-type
                                      condition-type :required common-lisp:t
                                      :member-name "ConditionType")
                                     (condition-key :target-type condition-key
                                      :required common-lisp:t :member-name
                                      "ConditionKey")
                                     (condition-value :target-type
                                      condition-value :required common-lisp:t
                                      :member-name "ConditionValue"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-type condition-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure condition-parameter common-lisp:nil
                                    ((condition-key :target-type condition-key
                                      :member-name "ConditionKey")
                                     (condition-value :target-type
                                      condition-value :member-name
                                      "ConditionValue"))
                                    (:shape-name "ConditionParameter"))

(smithy/sdk/shapes:define-list condition-parameters :member condition-parameter)

(smithy/sdk/shapes:define-enum condition-type
    common-lisp:nil
  (:stringequals "STRINGEQUALS"))

(smithy/sdk/shapes:define-type condition-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conditions common-lisp:nil
                                    ((string-equals :target-type
                                      condition-parameters :member-name
                                      "StringEquals")
                                     (string-not-equals :target-type
                                      condition-parameters :member-name
                                      "StringNotEquals")
                                     (string-like :target-type
                                      condition-parameters :member-name
                                      "StringLike")
                                     (string-not-like :target-type
                                      condition-parameters :member-name
                                      "StringNotLike"))
                                    (:shape-name "Conditions"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure control-input-parameter common-lisp:nil
                                    ((parameter-name :target-type
                                      parameter-name :member-name
                                      "ParameterName")
                                     (parameter-value :target-type
                                      parameter-value :member-name
                                      "ParameterValue"))
                                    (:shape-name "ControlInputParameter"))

(smithy/sdk/shapes:define-list control-input-parameters :member
                               control-input-parameter)

(smithy/sdk/shapes:define-type control-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure control-scope common-lisp:nil
                                    ((compliance-resource-ids :target-type
                                      compliance-resource-id-list :member-name
                                      "ComplianceResourceIds")
                                     (compliance-resource-types :target-type
                                      resource-type-list :member-name
                                      "ComplianceResourceTypes")
                                     (tags :target-type string-map :member-name
                                      "Tags"))
                                    (:shape-name "ControlScope"))

(smithy/sdk/shapes:define-structure copy-action common-lisp:nil
                                    ((lifecycle :target-type lifecycle
                                      :member-name "Lifecycle")
                                     (destination-backup-vault-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "DestinationBackupVaultArn"))
                                    (:shape-name "CopyAction"))

(smithy/sdk/shapes:define-list copy-actions :member copy-action)

(smithy/sdk/shapes:define-structure copy-job common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (copy-job-id :target-type string
                                      :member-name "CopyJobId")
                                     (source-backup-vault-arn :target-type arn
                                      :member-name "SourceBackupVaultArn")
                                     (source-recovery-point-arn :target-type
                                      arn :member-name
                                      "SourceRecoveryPointArn")
                                     (destination-backup-vault-arn :target-type
                                      arn :member-name
                                      "DestinationBackupVaultArn")
                                     (destination-recovery-point-arn
                                      :target-type arn :member-name
                                      "DestinationRecoveryPointArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (completion-date :target-type timestamp
                                      :member-name "CompletionDate")
                                     (state :target-type copy-job-state
                                      :member-name "State")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (backup-size-in-bytes :target-type long
                                      :member-name "BackupSizeInBytes")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn")
                                     (created-by :target-type
                                      recovery-point-creator :member-name
                                      "CreatedBy")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (parent-job-id :target-type string
                                      :member-name "ParentJobId")
                                     (is-parent :target-type boolean2
                                      :member-name "IsParent")
                                     (composite-member-identifier :target-type
                                      string :member-name
                                      "CompositeMemberIdentifier")
                                     (number-of-child-jobs :target-type long
                                      :member-name "NumberOfChildJobs")
                                     (child-jobs-in-state :target-type
                                      copy-job-child-jobs-in-state :member-name
                                      "ChildJobsInState")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (message-category :target-type string
                                      :member-name "MessageCategory"))
                                    (:shape-name "CopyJob"))

(smithy/sdk/shapes:define-map copy-job-child-jobs-in-state :key copy-job-state
                              :value long)

(smithy/sdk/shapes:define-enum copy-job-state
    common-lisp:nil
  (:created "CREATED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:partial "PARTIAL"))

(smithy/sdk/shapes:define-enum copy-job-status
    common-lisp:nil
  (:created "CREATED")
  (:running "RUNNING")
  (:aborting "ABORTING")
  (:aborted "ABORTED")
  (:completing "COMPLETING")
  (:completed "COMPLETED")
  (:failing "FAILING")
  (:failed "FAILED")
  (:partial "PARTIAL")
  (:aggregate-all "AGGREGATE_ALL")
  (:any "ANY"))

(smithy/sdk/shapes:define-structure copy-job-summary common-lisp:nil
                                    ((region :target-type region :member-name
                                      "Region")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (state :target-type copy-job-status
                                      :member-name "State")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (message-category :target-type
                                      message-category :member-name
                                      "MessageCategory")
                                     (count :target-type integer :member-name
                                      "Count")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "CopyJobSummary"))

(smithy/sdk/shapes:define-list copy-job-summary-list :member copy-job-summary)

(smithy/sdk/shapes:define-list copy-jobs-list :member copy-job)

(smithy/sdk/shapes:define-input create-backup-plan-input common-lisp:nil
                                ((backup-plan :target-type backup-plan-input
                                  :required common-lisp:t :member-name
                                  "BackupPlan")
                                 (backup-plan-tags :target-type tags
                                  :member-name "BackupPlanTags")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId"))
                                (:shape-name "CreateBackupPlanInput"))

(smithy/sdk/shapes:define-output create-backup-plan-output common-lisp:nil
                                 ((backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (backup-plan-arn :target-type arn
                                   :member-name "BackupPlanArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (version-id :target-type string :member-name
                                   "VersionId")
                                  (advanced-backup-settings :target-type
                                   advanced-backup-settings :member-name
                                   "AdvancedBackupSettings"))
                                 (:shape-name "CreateBackupPlanOutput"))

(smithy/sdk/shapes:define-input create-backup-selection-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (backup-selection :target-type
                                  backup-selection :required common-lisp:t
                                  :member-name "BackupSelection")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId"))
                                (:shape-name "CreateBackupSelectionInput"))

(smithy/sdk/shapes:define-output create-backup-selection-output common-lisp:nil
                                 ((selection-id :target-type string
                                   :member-name "SelectionId")
                                  (backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate"))
                                 (:shape-name "CreateBackupSelectionOutput"))

(smithy/sdk/shapes:define-input create-backup-vault-input common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (backup-vault-tags :target-type tags
                                  :member-name "BackupVaultTags")
                                 (encryption-key-arn :target-type arn
                                  :member-name "EncryptionKeyArn")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId"))
                                (:shape-name "CreateBackupVaultInput"))

(smithy/sdk/shapes:define-output create-backup-vault-output common-lisp:nil
                                 ((backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate"))
                                 (:shape-name "CreateBackupVaultOutput"))

(smithy/sdk/shapes:define-input create-framework-input common-lisp:nil
                                ((framework-name :target-type framework-name
                                  :required common-lisp:t :member-name
                                  "FrameworkName")
                                 (framework-description :target-type
                                  framework-description :member-name
                                  "FrameworkDescription")
                                 (framework-controls :target-type
                                  framework-controls :required common-lisp:t
                                  :member-name "FrameworkControls")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken")
                                 (framework-tags :target-type string-map
                                  :member-name "FrameworkTags"))
                                (:shape-name "CreateFrameworkInput"))

(smithy/sdk/shapes:define-output create-framework-output common-lisp:nil
                                 ((framework-name :target-type framework-name
                                   :member-name "FrameworkName")
                                  (framework-arn :target-type arn :member-name
                                   "FrameworkArn"))
                                 (:shape-name "CreateFrameworkOutput"))

(smithy/sdk/shapes:define-input create-legal-hold-input common-lisp:nil
                                ((title :target-type string :required
                                  common-lisp:t :member-name "Title")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken")
                                 (recovery-point-selection :target-type
                                  recovery-point-selection :member-name
                                  "RecoveryPointSelection")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateLegalHoldInput"))

(smithy/sdk/shapes:define-output create-legal-hold-output common-lisp:nil
                                 ((title :target-type string :member-name
                                   "Title")
                                  (status :target-type legal-hold-status
                                   :member-name "Status")
                                  (description :target-type string :member-name
                                   "Description")
                                  (legal-hold-id :target-type string
                                   :member-name "LegalHoldId")
                                  (legal-hold-arn :target-type arn :member-name
                                   "LegalHoldArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (recovery-point-selection :target-type
                                   recovery-point-selection :member-name
                                   "RecoveryPointSelection"))
                                 (:shape-name "CreateLegalHoldOutput"))

(smithy/sdk/shapes:define-input create-logically-air-gapped-backup-vault-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (backup-vault-tags :target-type tags
                                  :member-name "BackupVaultTags")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId")
                                 (min-retention-days :target-type long
                                  :required common-lisp:t :member-name
                                  "MinRetentionDays")
                                 (max-retention-days :target-type long
                                  :required common-lisp:t :member-name
                                  "MaxRetentionDays"))
                                (:shape-name
                                 "CreateLogicallyAirGappedBackupVaultInput"))

(smithy/sdk/shapes:define-output
 create-logically-air-gapped-backup-vault-output common-lisp:nil
 ((backup-vault-name :target-type backup-vault-name :member-name
   "BackupVaultName")
  (backup-vault-arn :target-type arn :member-name "BackupVaultArn")
  (creation-date :target-type timestamp :member-name "CreationDate")
  (vault-state :target-type vault-state :member-name "VaultState"))
 (:shape-name "CreateLogicallyAirGappedBackupVaultOutput"))

(smithy/sdk/shapes:define-input create-report-plan-input common-lisp:nil
                                ((report-plan-name :target-type
                                  report-plan-name :required common-lisp:t
                                  :member-name "ReportPlanName")
                                 (report-plan-description :target-type
                                  report-plan-description :member-name
                                  "ReportPlanDescription")
                                 (report-delivery-channel :target-type
                                  report-delivery-channel :required
                                  common-lisp:t :member-name
                                  "ReportDeliveryChannel")
                                 (report-setting :target-type report-setting
                                  :required common-lisp:t :member-name
                                  "ReportSetting")
                                 (report-plan-tags :target-type string-map
                                  :member-name "ReportPlanTags")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreateReportPlanInput"))

(smithy/sdk/shapes:define-output create-report-plan-output common-lisp:nil
                                 ((report-plan-name :target-type
                                   report-plan-name :member-name
                                   "ReportPlanName")
                                  (report-plan-arn :target-type arn
                                   :member-name "ReportPlanArn")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "CreateReportPlanOutput"))

(smithy/sdk/shapes:define-input create-restore-access-backup-vault-input
                                common-lisp:nil
                                ((source-backup-vault-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "SourceBackupVaultArn")
                                 (backup-vault-name :target-type
                                  backup-vault-name :member-name
                                  "BackupVaultName")
                                 (backup-vault-tags :target-type tags
                                  :member-name "BackupVaultTags")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId")
                                 (requester-comment :target-type
                                  requester-comment :member-name
                                  "RequesterComment"))
                                (:shape-name
                                 "CreateRestoreAccessBackupVaultInput"))

(smithy/sdk/shapes:define-output create-restore-access-backup-vault-output
                                 common-lisp:nil
                                 ((restore-access-backup-vault-arn :target-type
                                   arn :member-name
                                   "RestoreAccessBackupVaultArn")
                                  (vault-state :target-type vault-state
                                   :member-name "VaultState")
                                  (restore-access-backup-vault-name
                                   :target-type backup-vault-name :member-name
                                   "RestoreAccessBackupVaultName")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate"))
                                 (:shape-name
                                  "CreateRestoreAccessBackupVaultOutput"))

(smithy/sdk/shapes:define-input create-restore-testing-plan-input
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "CreatorRequestId")
                                 (restore-testing-plan :target-type
                                  restore-testing-plan-for-create :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlan")
                                 (tags :target-type sensitive-string-map
                                  :member-name "Tags"))
                                (:shape-name "CreateRestoreTestingPlanInput"))

(smithy/sdk/shapes:define-output create-restore-testing-plan-output
                                 common-lisp:nil
                                 ((creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime")
                                  (restore-testing-plan-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanArn")
                                  (restore-testing-plan-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanName"))
                                 (:shape-name "CreateRestoreTestingPlanOutput"))

(smithy/sdk/shapes:define-input create-restore-testing-selection-input
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "CreatorRequestId")
                                 (restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t)
                                 (restore-testing-selection :target-type
                                  restore-testing-selection-for-create
                                  :required common-lisp:t :member-name
                                  "RestoreTestingSelection"))
                                (:shape-name
                                 "CreateRestoreTestingSelectionInput"))

(smithy/sdk/shapes:define-output create-restore-testing-selection-output
                                 common-lisp:nil
                                 ((creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime")
                                  (restore-testing-plan-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanArn")
                                  (restore-testing-plan-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanName")
                                  (restore-testing-selection-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingSelectionName"))
                                 (:shape-name
                                  "CreateRestoreTestingSelectionOutput"))

(smithy/sdk/shapes:define-type cron-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure date-range common-lisp:nil
                                    ((from-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "FromDate")
                                     (to-date :target-type timestamp :required
                                      common-lisp:t :member-name "ToDate"))
                                    (:shape-name "DateRange"))

(smithy/sdk/shapes:define-input delete-backup-plan-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBackupPlanInput"))

(smithy/sdk/shapes:define-output delete-backup-plan-output common-lisp:nil
                                 ((backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (backup-plan-arn :target-type arn
                                   :member-name "BackupPlanArn")
                                  (deletion-date :target-type timestamp
                                   :member-name "DeletionDate")
                                  (version-id :target-type string :member-name
                                   "VersionId"))
                                 (:shape-name "DeleteBackupPlanOutput"))

(smithy/sdk/shapes:define-input delete-backup-selection-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (selection-id :target-type string :required
                                  common-lisp:t :member-name "SelectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBackupSelectionInput"))

(smithy/sdk/shapes:define-input delete-backup-vault-access-policy-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteBackupVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-input delete-backup-vault-input common-lisp:nil
                                ((backup-vault-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackupVaultName" :http-label common-lisp:t))
                                (:shape-name "DeleteBackupVaultInput"))

(smithy/sdk/shapes:define-input delete-backup-vault-lock-configuration-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteBackupVaultLockConfigurationInput"))

(smithy/sdk/shapes:define-input delete-backup-vault-notifications-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteBackupVaultNotificationsInput"))

(smithy/sdk/shapes:define-input delete-framework-input common-lisp:nil
                                ((framework-name :target-type framework-name
                                  :required common-lisp:t :member-name
                                  "FrameworkName" :http-label common-lisp:t))
                                (:shape-name "DeleteFrameworkInput"))

(smithy/sdk/shapes:define-input delete-recovery-point-input common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRecoveryPointInput"))

(smithy/sdk/shapes:define-input delete-report-plan-input common-lisp:nil
                                ((report-plan-name :target-type
                                  report-plan-name :required common-lisp:t
                                  :member-name "ReportPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteReportPlanInput"))

(smithy/sdk/shapes:define-input delete-restore-testing-plan-input
                                common-lisp:nil
                                ((restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRestoreTestingPlanInput"))

(smithy/sdk/shapes:define-input delete-restore-testing-selection-input
                                common-lisp:nil
                                ((restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t)
                                 (restore-testing-selection-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingSelectionName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteRestoreTestingSelectionInput"))

(smithy/sdk/shapes:define-error dependency-failure-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "DependencyFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input describe-backup-job-input common-lisp:nil
                                ((backup-job-id :target-type string :required
                                  common-lisp:t :member-name "BackupJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBackupJobInput"))

(smithy/sdk/shapes:define-output describe-backup-job-output common-lisp:nil
                                 ((account-id :target-type account-id
                                   :member-name "AccountId")
                                  (backup-job-id :target-type string
                                   :member-name "BackupJobId")
                                  (backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (completion-date :target-type timestamp
                                   :member-name "CompletionDate")
                                  (state :target-type backup-job-state
                                   :member-name "State")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (percent-done :target-type string
                                   :member-name "PercentDone")
                                  (backup-size-in-bytes :target-type long
                                   :member-name "BackupSizeInBytes")
                                  (iam-role-arn :target-type iamrole-arn
                                   :member-name "IamRoleArn")
                                  (created-by :target-type
                                   recovery-point-creator :member-name
                                   "CreatedBy")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (bytes-transferred :target-type long
                                   :member-name "BytesTransferred")
                                  (expected-completion-date :target-type
                                   timestamp :member-name
                                   "ExpectedCompletionDate")
                                  (start-by :target-type timestamp :member-name
                                   "StartBy")
                                  (backup-options :target-type backup-options
                                   :member-name "BackupOptions")
                                  (backup-type :target-type string :member-name
                                   "BackupType")
                                  (parent-job-id :target-type string
                                   :member-name "ParentJobId")
                                  (is-parent :target-type boolean2 :member-name
                                   "IsParent")
                                  (number-of-child-jobs :target-type long
                                   :member-name "NumberOfChildJobs")
                                  (child-jobs-in-state :target-type
                                   backup-job-child-jobs-in-state :member-name
                                   "ChildJobsInState")
                                  (resource-name :target-type string
                                   :member-name "ResourceName")
                                  (initiation-date :target-type timestamp
                                   :member-name "InitiationDate")
                                  (message-category :target-type string
                                   :member-name "MessageCategory"))
                                 (:shape-name "DescribeBackupJobOutput"))

(smithy/sdk/shapes:define-input describe-backup-vault-input common-lisp:nil
                                ((backup-vault-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackupVaultName" :http-label common-lisp:t)
                                 (backup-vault-account-id :target-type string
                                  :member-name "BackupVaultAccountId"
                                  :http-query "backupVaultAccountId"))
                                (:shape-name "DescribeBackupVaultInput"))

(smithy/sdk/shapes:define-output describe-backup-vault-output common-lisp:nil
                                 ((backup-vault-name :target-type string
                                   :member-name "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (vault-type :target-type vault-type
                                   :member-name "VaultType")
                                  (vault-state :target-type vault-state
                                   :member-name "VaultState")
                                  (encryption-key-arn :target-type arn
                                   :member-name "EncryptionKeyArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (creator-request-id :target-type string
                                   :member-name "CreatorRequestId")
                                  (number-of-recovery-points :target-type long2
                                   :member-name "NumberOfRecoveryPoints")
                                  (locked :target-type boolean :member-name
                                   "Locked")
                                  (min-retention-days :target-type long
                                   :member-name "MinRetentionDays")
                                  (max-retention-days :target-type long
                                   :member-name "MaxRetentionDays")
                                  (lock-date :target-type timestamp
                                   :member-name "LockDate")
                                  (source-backup-vault-arn :target-type arn
                                   :member-name "SourceBackupVaultArn")
                                  (mpa-approval-team-arn :target-type arn
                                   :member-name "MpaApprovalTeamArn")
                                  (mpa-session-arn :target-type arn
                                   :member-name "MpaSessionArn")
                                  (latest-mpa-approval-team-update :target-type
                                   latest-mpa-approval-team-update :member-name
                                   "LatestMpaApprovalTeamUpdate"))
                                 (:shape-name "DescribeBackupVaultOutput"))

(smithy/sdk/shapes:define-input describe-copy-job-input common-lisp:nil
                                ((copy-job-id :target-type string :required
                                  common-lisp:t :member-name "CopyJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeCopyJobInput"))

(smithy/sdk/shapes:define-output describe-copy-job-output common-lisp:nil
                                 ((copy-job :target-type copy-job :member-name
                                   "CopyJob"))
                                 (:shape-name "DescribeCopyJobOutput"))

(smithy/sdk/shapes:define-input describe-framework-input common-lisp:nil
                                ((framework-name :target-type framework-name
                                  :required common-lisp:t :member-name
                                  "FrameworkName" :http-label common-lisp:t))
                                (:shape-name "DescribeFrameworkInput"))

(smithy/sdk/shapes:define-output describe-framework-output common-lisp:nil
                                 ((framework-name :target-type framework-name
                                   :member-name "FrameworkName")
                                  (framework-arn :target-type arn :member-name
                                   "FrameworkArn")
                                  (framework-description :target-type
                                   framework-description :member-name
                                   "FrameworkDescription")
                                  (framework-controls :target-type
                                   framework-controls :member-name
                                   "FrameworkControls")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (deployment-status :target-type string
                                   :member-name "DeploymentStatus")
                                  (framework-status :target-type string
                                   :member-name "FrameworkStatus")
                                  (idempotency-token :target-type string
                                   :member-name "IdempotencyToken"))
                                 (:shape-name "DescribeFrameworkOutput"))

(smithy/sdk/shapes:define-input describe-global-settings-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeGlobalSettingsInput"))

(smithy/sdk/shapes:define-output describe-global-settings-output
                                 common-lisp:nil
                                 ((global-settings :target-type global-settings
                                   :member-name "GlobalSettings")
                                  (last-update-time :target-type timestamp
                                   :member-name "LastUpdateTime"))
                                 (:shape-name "DescribeGlobalSettingsOutput"))

(smithy/sdk/shapes:define-input describe-protected-resource-input
                                common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeProtectedResourceInput"))

(smithy/sdk/shapes:define-output describe-protected-resource-output
                                 common-lisp:nil
                                 ((resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (last-backup-time :target-type timestamp
                                   :member-name "LastBackupTime")
                                  (resource-name :target-type string
                                   :member-name "ResourceName")
                                  (last-backup-vault-arn :target-type arn
                                   :member-name "LastBackupVaultArn")
                                  (last-recovery-point-arn :target-type arn
                                   :member-name "LastRecoveryPointArn")
                                  (latest-restore-execution-time-minutes
                                   :target-type long :member-name
                                   "LatestRestoreExecutionTimeMinutes")
                                  (latest-restore-job-creation-date
                                   :target-type timestamp :member-name
                                   "LatestRestoreJobCreationDate")
                                  (latest-restore-recovery-point-creation-date
                                   :target-type timestamp :member-name
                                   "LatestRestoreRecoveryPointCreationDate"))
                                 (:shape-name
                                  "DescribeProtectedResourceOutput"))

(smithy/sdk/shapes:define-input describe-recovery-point-input common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t)
                                 (backup-vault-account-id :target-type
                                  account-id :member-name
                                  "BackupVaultAccountId" :http-query
                                  "backupVaultAccountId"))
                                (:shape-name "DescribeRecoveryPointInput"))

(smithy/sdk/shapes:define-output describe-recovery-point-output common-lisp:nil
                                 ((recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (source-backup-vault-arn :target-type arn
                                   :member-name "SourceBackupVaultArn")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (created-by :target-type
                                   recovery-point-creator :member-name
                                   "CreatedBy")
                                  (iam-role-arn :target-type iamrole-arn
                                   :member-name "IamRoleArn")
                                  (status :target-type recovery-point-status
                                   :member-name "Status")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (initiation-date :target-type timestamp
                                   :member-name "InitiationDate")
                                  (completion-date :target-type timestamp
                                   :member-name "CompletionDate")
                                  (backup-size-in-bytes :target-type long
                                   :member-name "BackupSizeInBytes")
                                  (calculated-lifecycle :target-type
                                   calculated-lifecycle :member-name
                                   "CalculatedLifecycle")
                                  (lifecycle :target-type lifecycle
                                   :member-name "Lifecycle")
                                  (encryption-key-arn :target-type arn
                                   :member-name "EncryptionKeyArn")
                                  (is-encrypted :target-type boolean2
                                   :member-name "IsEncrypted")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass")
                                  (last-restore-time :target-type timestamp
                                   :member-name "LastRestoreTime")
                                  (parent-recovery-point-arn :target-type arn
                                   :member-name "ParentRecoveryPointArn")
                                  (composite-member-identifier :target-type
                                   string :member-name
                                   "CompositeMemberIdentifier")
                                  (is-parent :target-type boolean2 :member-name
                                   "IsParent")
                                  (resource-name :target-type string
                                   :member-name "ResourceName")
                                  (vault-type :target-type vault-type
                                   :member-name "VaultType")
                                  (index-status :target-type index-status
                                   :member-name "IndexStatus")
                                  (index-status-message :target-type string
                                   :member-name "IndexStatusMessage"))
                                 (:shape-name "DescribeRecoveryPointOutput"))

(smithy/sdk/shapes:define-input describe-region-settings-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeRegionSettingsInput"))

(smithy/sdk/shapes:define-output describe-region-settings-output
                                 common-lisp:nil
                                 ((resource-type-opt-in-preference :target-type
                                   resource-type-opt-in-preference :member-name
                                   "ResourceTypeOptInPreference")
                                  (resource-type-management-preference
                                   :target-type
                                   resource-type-management-preference
                                   :member-name
                                   "ResourceTypeManagementPreference"))
                                 (:shape-name "DescribeRegionSettingsOutput"))

(smithy/sdk/shapes:define-input describe-report-job-input common-lisp:nil
                                ((report-job-id :target-type report-job-id
                                  :required common-lisp:t :member-name
                                  "ReportJobId" :http-label common-lisp:t))
                                (:shape-name "DescribeReportJobInput"))

(smithy/sdk/shapes:define-output describe-report-job-output common-lisp:nil
                                 ((report-job :target-type report-job
                                   :member-name "ReportJob"))
                                 (:shape-name "DescribeReportJobOutput"))

(smithy/sdk/shapes:define-input describe-report-plan-input common-lisp:nil
                                ((report-plan-name :target-type
                                  report-plan-name :required common-lisp:t
                                  :member-name "ReportPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeReportPlanInput"))

(smithy/sdk/shapes:define-output describe-report-plan-output common-lisp:nil
                                 ((report-plan :target-type report-plan
                                   :member-name "ReportPlan"))
                                 (:shape-name "DescribeReportPlanOutput"))

(smithy/sdk/shapes:define-input describe-restore-job-input common-lisp:nil
                                ((restore-job-id :target-type restore-job-id
                                  :required common-lisp:t :member-name
                                  "RestoreJobId" :http-label common-lisp:t))
                                (:shape-name "DescribeRestoreJobInput"))

(smithy/sdk/shapes:define-output describe-restore-job-output common-lisp:nil
                                 ((account-id :target-type account-id
                                   :member-name "AccountId")
                                  (restore-job-id :target-type string
                                   :member-name "RestoreJobId")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (completion-date :target-type timestamp
                                   :member-name "CompletionDate")
                                  (status :target-type restore-job-status
                                   :member-name "Status")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (percent-done :target-type string
                                   :member-name "PercentDone")
                                  (backup-size-in-bytes :target-type long
                                   :member-name "BackupSizeInBytes")
                                  (iam-role-arn :target-type iamrole-arn
                                   :member-name "IamRoleArn")
                                  (expected-completion-time-minutes
                                   :target-type long :member-name
                                   "ExpectedCompletionTimeMinutes")
                                  (created-resource-arn :target-type arn
                                   :member-name "CreatedResourceArn")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (recovery-point-creation-date :target-type
                                   timestamp :member-name
                                   "RecoveryPointCreationDate")
                                  (created-by :target-type restore-job-creator
                                   :member-name "CreatedBy")
                                  (validation-status :target-type
                                   restore-validation-status :member-name
                                   "ValidationStatus")
                                  (validation-status-message :target-type
                                   string :member-name
                                   "ValidationStatusMessage")
                                  (deletion-status :target-type
                                   restore-deletion-status :member-name
                                   "DeletionStatus")
                                  (deletion-status-message :target-type string
                                   :member-name "DeletionStatusMessage"))
                                 (:shape-name "DescribeRestoreJobOutput"))

(smithy/sdk/shapes:define-input
 disassociate-backup-vault-mpa-approval-team-input common-lisp:nil
 ((backup-vault-name :target-type backup-vault-name :required common-lisp:t
   :member-name "BackupVaultName" :http-label common-lisp:t)
  (requester-comment :target-type requester-comment :member-name
   "RequesterComment"))
 (:shape-name "DisassociateBackupVaultMpaApprovalTeamInput"))

(smithy/sdk/shapes:define-input disassociate-recovery-point-from-parent-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateRecoveryPointFromParentInput"))

(smithy/sdk/shapes:define-input disassociate-recovery-point-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DisassociateRecoveryPointInput"))

(smithy/sdk/shapes:define-input export-backup-plan-template-input
                                common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t))
                                (:shape-name "ExportBackupPlanTemplateInput"))

(smithy/sdk/shapes:define-output export-backup-plan-template-output
                                 common-lisp:nil
                                 ((backup-plan-template-json :target-type
                                   string :member-name
                                   "BackupPlanTemplateJson"))
                                 (:shape-name "ExportBackupPlanTemplateOutput"))

(smithy/sdk/shapes:define-list format-list :member string)

(smithy/sdk/shapes:define-structure framework common-lisp:nil
                                    ((framework-name :target-type
                                      framework-name :member-name
                                      "FrameworkName")
                                     (framework-arn :target-type arn
                                      :member-name "FrameworkArn")
                                     (framework-description :target-type
                                      framework-description :member-name
                                      "FrameworkDescription")
                                     (number-of-controls :target-type integer
                                      :member-name "NumberOfControls")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (deployment-status :target-type string
                                      :member-name "DeploymentStatus"))
                                    (:shape-name "Framework"))

(smithy/sdk/shapes:define-structure framework-control common-lisp:nil
                                    ((control-name :target-type control-name
                                      :required common-lisp:t :member-name
                                      "ControlName")
                                     (control-input-parameters :target-type
                                      control-input-parameters :member-name
                                      "ControlInputParameters")
                                     (control-scope :target-type control-scope
                                      :member-name "ControlScope"))
                                    (:shape-name "FrameworkControl"))

(smithy/sdk/shapes:define-list framework-controls :member framework-control)

(smithy/sdk/shapes:define-type framework-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list framework-list :member framework)

(smithy/sdk/shapes:define-type framework-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-backup-plan-from-jsoninput common-lisp:nil
                                ((backup-plan-template-json :target-type string
                                  :required common-lisp:t :member-name
                                  "BackupPlanTemplateJson"))
                                (:shape-name "GetBackupPlanFromJSONInput"))

(smithy/sdk/shapes:define-output get-backup-plan-from-jsonoutput
                                 common-lisp:nil
                                 ((backup-plan :target-type backup-plan
                                   :member-name "BackupPlan"))
                                 (:shape-name "GetBackupPlanFromJSONOutput"))

(smithy/sdk/shapes:define-input get-backup-plan-from-template-input
                                common-lisp:nil
                                ((backup-plan-template-id :target-type string
                                  :required common-lisp:t :member-name
                                  "BackupPlanTemplateId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBackupPlanFromTemplateInput"))

(smithy/sdk/shapes:define-output get-backup-plan-from-template-output
                                 common-lisp:nil
                                 ((backup-plan-document :target-type
                                   backup-plan :member-name
                                   "BackupPlanDocument"))
                                 (:shape-name
                                  "GetBackupPlanFromTemplateOutput"))

(smithy/sdk/shapes:define-input get-backup-plan-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (version-id :target-type string :member-name
                                  "VersionId" :http-query "versionId"))
                                (:shape-name "GetBackupPlanInput"))

(smithy/sdk/shapes:define-output get-backup-plan-output common-lisp:nil
                                 ((backup-plan :target-type backup-plan
                                   :member-name "BackupPlan")
                                  (backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (backup-plan-arn :target-type arn
                                   :member-name "BackupPlanArn")
                                  (version-id :target-type string :member-name
                                   "VersionId")
                                  (creator-request-id :target-type string
                                   :member-name "CreatorRequestId")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (deletion-date :target-type timestamp
                                   :member-name "DeletionDate")
                                  (last-execution-date :target-type timestamp
                                   :member-name "LastExecutionDate")
                                  (advanced-backup-settings :target-type
                                   advanced-backup-settings :member-name
                                   "AdvancedBackupSettings"))
                                 (:shape-name "GetBackupPlanOutput"))

(smithy/sdk/shapes:define-input get-backup-selection-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (selection-id :target-type string :required
                                  common-lisp:t :member-name "SelectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBackupSelectionInput"))

(smithy/sdk/shapes:define-output get-backup-selection-output common-lisp:nil
                                 ((backup-selection :target-type
                                   backup-selection :member-name
                                   "BackupSelection")
                                  (selection-id :target-type string
                                   :member-name "SelectionId")
                                  (backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (creator-request-id :target-type string
                                   :member-name "CreatorRequestId"))
                                 (:shape-name "GetBackupSelectionOutput"))

(smithy/sdk/shapes:define-input get-backup-vault-access-policy-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBackupVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-output get-backup-vault-access-policy-output
                                 common-lisp:nil
                                 ((backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (policy :target-type iampolicy :member-name
                                   "Policy"))
                                 (:shape-name
                                  "GetBackupVaultAccessPolicyOutput"))

(smithy/sdk/shapes:define-input get-backup-vault-notifications-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetBackupVaultNotificationsInput"))

(smithy/sdk/shapes:define-output get-backup-vault-notifications-output
                                 common-lisp:nil
                                 ((backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (snstopic-arn :target-type arn :member-name
                                   "SNSTopicArn")
                                  (backup-vault-events :target-type
                                   backup-vault-events :member-name
                                   "BackupVaultEvents"))
                                 (:shape-name
                                  "GetBackupVaultNotificationsOutput"))

(smithy/sdk/shapes:define-input get-legal-hold-input common-lisp:nil
                                ((legal-hold-id :target-type string :required
                                  common-lisp:t :member-name "LegalHoldId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLegalHoldInput"))

(smithy/sdk/shapes:define-output get-legal-hold-output common-lisp:nil
                                 ((title :target-type string :member-name
                                   "Title")
                                  (status :target-type legal-hold-status
                                   :member-name "Status")
                                  (description :target-type string :member-name
                                   "Description")
                                  (cancel-description :target-type string
                                   :member-name "CancelDescription")
                                  (legal-hold-id :target-type string
                                   :member-name "LegalHoldId")
                                  (legal-hold-arn :target-type arn :member-name
                                   "LegalHoldArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (cancellation-date :target-type timestamp
                                   :member-name "CancellationDate")
                                  (retain-record-until :target-type timestamp
                                   :member-name "RetainRecordUntil")
                                  (recovery-point-selection :target-type
                                   recovery-point-selection :member-name
                                   "RecoveryPointSelection"))
                                 (:shape-name "GetLegalHoldOutput"))

(smithy/sdk/shapes:define-input get-recovery-point-index-details-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetRecoveryPointIndexDetailsInput"))

(smithy/sdk/shapes:define-output get-recovery-point-index-details-output
                                 common-lisp:nil
                                 ((recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (source-resource-arn :target-type arn
                                   :member-name "SourceResourceArn")
                                  (index-creation-date :target-type timestamp
                                   :member-name "IndexCreationDate")
                                  (index-deletion-date :target-type timestamp
                                   :member-name "IndexDeletionDate")
                                  (index-completion-date :target-type timestamp
                                   :member-name "IndexCompletionDate")
                                  (index-status :target-type index-status
                                   :member-name "IndexStatus")
                                  (index-status-message :target-type string
                                   :member-name "IndexStatusMessage")
                                  (total-items-indexed :target-type long
                                   :member-name "TotalItemsIndexed"))
                                 (:shape-name
                                  "GetRecoveryPointIndexDetailsOutput"))

(smithy/sdk/shapes:define-input get-recovery-point-restore-metadata-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t)
                                 (backup-vault-account-id :target-type
                                  account-id :member-name
                                  "BackupVaultAccountId" :http-query
                                  "backupVaultAccountId"))
                                (:shape-name
                                 "GetRecoveryPointRestoreMetadataInput"))

(smithy/sdk/shapes:define-output get-recovery-point-restore-metadata-output
                                 common-lisp:nil
                                 ((backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (restore-metadata :target-type metadata
                                   :member-name "RestoreMetadata")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType"))
                                 (:shape-name
                                  "GetRecoveryPointRestoreMetadataOutput"))

(smithy/sdk/shapes:define-input get-restore-job-metadata-input common-lisp:nil
                                ((restore-job-id :target-type restore-job-id
                                  :required common-lisp:t :member-name
                                  "RestoreJobId" :http-label common-lisp:t))
                                (:shape-name "GetRestoreJobMetadataInput"))

(smithy/sdk/shapes:define-output get-restore-job-metadata-output
                                 common-lisp:nil
                                 ((restore-job-id :target-type restore-job-id
                                   :member-name "RestoreJobId")
                                  (metadata :target-type metadata :member-name
                                   "Metadata"))
                                 (:shape-name "GetRestoreJobMetadataOutput"))

(smithy/sdk/shapes:define-input get-restore-testing-inferred-metadata-input
                                common-lisp:nil
                                ((backup-vault-account-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "BackupVaultAccountId" :http-query
                                  "BackupVaultAccountId")
                                 (backup-vault-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "BackupVaultName"
                                  :http-query "BackupVaultName")
                                 (recovery-point-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-query "RecoveryPointArn"))
                                (:shape-name
                                 "GetRestoreTestingInferredMetadataInput"))

(smithy/sdk/shapes:define-output get-restore-testing-inferred-metadata-output
                                 common-lisp:nil
                                 ((inferred-metadata :target-type string-map
                                   :required common-lisp:t :member-name
                                   "InferredMetadata"))
                                 (:shape-name
                                  "GetRestoreTestingInferredMetadataOutput"))

(smithy/sdk/shapes:define-input get-restore-testing-plan-input common-lisp:nil
                                ((restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRestoreTestingPlanInput"))

(smithy/sdk/shapes:define-output get-restore-testing-plan-output
                                 common-lisp:nil
                                 ((restore-testing-plan :target-type
                                   restore-testing-plan-for-get :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlan"))
                                 (:shape-name "GetRestoreTestingPlanOutput"))

(smithy/sdk/shapes:define-input get-restore-testing-selection-input
                                common-lisp:nil
                                ((restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t)
                                 (restore-testing-selection-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingSelectionName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRestoreTestingSelectionInput"))

(smithy/sdk/shapes:define-output get-restore-testing-selection-output
                                 common-lisp:nil
                                 ((restore-testing-selection :target-type
                                   restore-testing-selection-for-get :required
                                   common-lisp:t :member-name
                                   "RestoreTestingSelection"))
                                 (:shape-name
                                  "GetRestoreTestingSelectionOutput"))

(smithy/sdk/shapes:define-output get-supported-resource-types-output
                                 common-lisp:nil
                                 ((resource-types :target-type resource-types
                                   :member-name "ResourceTypes"))
                                 (:shape-name
                                  "GetSupportedResourceTypesOutput"))

(smithy/sdk/shapes:define-map global-settings :key global-settings-name :value
                              global-settings-value)

(smithy/sdk/shapes:define-type global-settings-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type global-settings-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iampolicy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum index
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure index-action common-lisp:nil
                                    ((resource-types :target-type
                                      resource-types :member-name
                                      "ResourceTypes"))
                                    (:shape-name "IndexAction"))

(smithy/sdk/shapes:define-list index-actions :member index-action)

(smithy/sdk/shapes:define-enum index-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure indexed-recovery-point common-lisp:nil
                                    ((recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (source-resource-arn :target-type arn
                                      :member-name "SourceResourceArn")
                                     (iam-role-arn :target-type arn
                                      :member-name "IamRoleArn")
                                     (backup-creation-date :target-type
                                      timestamp :member-name
                                      "BackupCreationDate")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (index-creation-date :target-type
                                      timestamp :member-name
                                      "IndexCreationDate")
                                     (index-status :target-type index-status
                                      :member-name "IndexStatus")
                                     (index-status-message :target-type string
                                      :member-name "IndexStatusMessage")
                                     (backup-vault-arn :target-type arn
                                      :member-name "BackupVaultArn"))
                                    (:shape-name "IndexedRecoveryPoint"))

(smithy/sdk/shapes:define-list indexed-recovery-point-list :member
                               indexed-recovery-point)

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-exception
                                common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "InvalidResourceStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type is-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure key-value common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "KeyValue"))

(smithy/sdk/shapes:define-list key-value-list :member key-value)

(smithy/sdk/shapes:define-structure latest-mpa-approval-team-update
                                    common-lisp:nil
                                    ((mpa-session-arn :target-type arn
                                      :member-name "MpaSessionArn")
                                     (status :target-type mpa-session-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (initiation-date :target-type timestamp
                                      :member-name "InitiationDate")
                                     (expiry-date :target-type timestamp
                                      :member-name "ExpiryDate"))
                                    (:shape-name "LatestMpaApprovalTeamUpdate"))

(smithy/sdk/shapes:define-structure latest-revoke-request common-lisp:nil
                                    ((mpa-session-arn :target-type string
                                      :member-name "MpaSessionArn")
                                     (status :target-type
                                      mpa-revoke-session-status :member-name
                                      "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (initiation-date :target-type timestamp
                                      :member-name "InitiationDate")
                                     (expiry-date :target-type timestamp
                                      :member-name "ExpiryDate"))
                                    (:shape-name "LatestRevokeRequest"))

(smithy/sdk/shapes:define-structure legal-hold common-lisp:nil
                                    ((title :target-type string :member-name
                                      "Title")
                                     (status :target-type legal-hold-status
                                      :member-name "Status")
                                     (description :target-type string
                                      :member-name "Description")
                                     (legal-hold-id :target-type string
                                      :member-name "LegalHoldId")
                                     (legal-hold-arn :target-type arn
                                      :member-name "LegalHoldArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (cancellation-date :target-type timestamp
                                      :member-name "CancellationDate"))
                                    (:shape-name "LegalHold"))

(smithy/sdk/shapes:define-enum legal-hold-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:canceling "CANCELING")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-list legal-holds-list :member legal-hold)

(smithy/sdk/shapes:define-structure lifecycle common-lisp:nil
                                    ((move-to-cold-storage-after-days
                                      :target-type long :member-name
                                      "MoveToColdStorageAfterDays")
                                     (delete-after-days :target-type long
                                      :member-name "DeleteAfterDays")
                                     (opt-in-to-archive-for-supported-resources
                                      :target-type boolean :member-name
                                      "OptInToArchiveForSupportedResources"))
                                    (:shape-name "Lifecycle"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-backup-job-summaries-input common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId" :http-query
                                  "AccountId")
                                 (state :target-type backup-job-status
                                  :member-name "State" :http-query "State")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType" :http-query
                                  "ResourceType")
                                 (message-category :target-type
                                  message-category :member-name
                                  "MessageCategory" :http-query
                                  "MessageCategory")
                                 (aggregation-period :target-type
                                  aggregation-period :member-name
                                  "AggregationPeriod" :http-query
                                  "AggregationPeriod")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListBackupJobSummariesInput"))

(smithy/sdk/shapes:define-output list-backup-job-summaries-output
                                 common-lisp:nil
                                 ((backup-job-summaries :target-type
                                   backup-job-summary-list :member-name
                                   "BackupJobSummaries")
                                  (aggregation-period :target-type string
                                   :member-name "AggregationPeriod")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListBackupJobSummariesOutput"))

(smithy/sdk/shapes:define-input list-backup-jobs-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (by-resource-arn :target-type arn :member-name
                                  "ByResourceArn" :http-query "resourceArn")
                                 (by-state :target-type backup-job-state
                                  :member-name "ByState" :http-query "state")
                                 (by-backup-vault-name :target-type
                                  backup-vault-name :member-name
                                  "ByBackupVaultName" :http-query
                                  "backupVaultName")
                                 (by-created-before :target-type timestamp
                                  :member-name "ByCreatedBefore" :http-query
                                  "createdBefore")
                                 (by-created-after :target-type timestamp
                                  :member-name "ByCreatedAfter" :http-query
                                  "createdAfter")
                                 (by-resource-type :target-type resource-type
                                  :member-name "ByResourceType" :http-query
                                  "resourceType")
                                 (by-account-id :target-type account-id
                                  :member-name "ByAccountId" :http-query
                                  "accountId")
                                 (by-complete-after :target-type timestamp
                                  :member-name "ByCompleteAfter" :http-query
                                  "completeAfter")
                                 (by-complete-before :target-type timestamp
                                  :member-name "ByCompleteBefore" :http-query
                                  "completeBefore")
                                 (by-parent-job-id :target-type string
                                  :member-name "ByParentJobId" :http-query
                                  "parentJobId")
                                 (by-message-category :target-type string
                                  :member-name "ByMessageCategory" :http-query
                                  "messageCategory"))
                                (:shape-name "ListBackupJobsInput"))

(smithy/sdk/shapes:define-output list-backup-jobs-output common-lisp:nil
                                 ((backup-jobs :target-type backup-jobs-list
                                   :member-name "BackupJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListBackupJobsOutput"))

(smithy/sdk/shapes:define-input list-backup-plan-templates-input
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBackupPlanTemplatesInput"))

(smithy/sdk/shapes:define-output list-backup-plan-templates-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (backup-plan-templates-list :target-type
                                   backup-plan-templates-list :member-name
                                   "BackupPlanTemplatesList"))
                                 (:shape-name "ListBackupPlanTemplatesOutput"))

(smithy/sdk/shapes:define-input list-backup-plan-versions-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBackupPlanVersionsInput"))

(smithy/sdk/shapes:define-output list-backup-plan-versions-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (backup-plan-versions-list :target-type
                                   backup-plan-versions-list :member-name
                                   "BackupPlanVersionsList"))
                                 (:shape-name "ListBackupPlanVersionsOutput"))

(smithy/sdk/shapes:define-input list-backup-plans-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (include-deleted :target-type boolean
                                  :member-name "IncludeDeleted" :http-query
                                  "includeDeleted"))
                                (:shape-name "ListBackupPlansInput"))

(smithy/sdk/shapes:define-output list-backup-plans-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (backup-plans-list :target-type
                                   backup-plans-list :member-name
                                   "BackupPlansList"))
                                 (:shape-name "ListBackupPlansOutput"))

(smithy/sdk/shapes:define-input list-backup-selections-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBackupSelectionsInput"))

(smithy/sdk/shapes:define-output list-backup-selections-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (backup-selections-list :target-type
                                   backup-selections-list :member-name
                                   "BackupSelectionsList"))
                                 (:shape-name "ListBackupSelectionsOutput"))

(smithy/sdk/shapes:define-input list-backup-vaults-input common-lisp:nil
                                ((by-vault-type :target-type vault-type
                                  :member-name "ByVaultType" :http-query
                                  "vaultType")
                                 (by-shared :target-type boolean2 :member-name
                                  "ByShared" :http-query "shared")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBackupVaultsInput"))

(smithy/sdk/shapes:define-output list-backup-vaults-output common-lisp:nil
                                 ((backup-vault-list :target-type
                                   backup-vault-list :member-name
                                   "BackupVaultList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListBackupVaultsOutput"))

(smithy/sdk/shapes:define-input list-copy-job-summaries-input common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId" :http-query
                                  "AccountId")
                                 (state :target-type copy-job-status
                                  :member-name "State" :http-query "State")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType" :http-query
                                  "ResourceType")
                                 (message-category :target-type
                                  message-category :member-name
                                  "MessageCategory" :http-query
                                  "MessageCategory")
                                 (aggregation-period :target-type
                                  aggregation-period :member-name
                                  "AggregationPeriod" :http-query
                                  "AggregationPeriod")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListCopyJobSummariesInput"))

(smithy/sdk/shapes:define-output list-copy-job-summaries-output common-lisp:nil
                                 ((copy-job-summaries :target-type
                                   copy-job-summary-list :member-name
                                   "CopyJobSummaries")
                                  (aggregation-period :target-type string
                                   :member-name "AggregationPeriod")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListCopyJobSummariesOutput"))

(smithy/sdk/shapes:define-input list-copy-jobs-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (by-resource-arn :target-type arn :member-name
                                  "ByResourceArn" :http-query "resourceArn")
                                 (by-state :target-type copy-job-state
                                  :member-name "ByState" :http-query "state")
                                 (by-created-before :target-type timestamp
                                  :member-name "ByCreatedBefore" :http-query
                                  "createdBefore")
                                 (by-created-after :target-type timestamp
                                  :member-name "ByCreatedAfter" :http-query
                                  "createdAfter")
                                 (by-resource-type :target-type resource-type
                                  :member-name "ByResourceType" :http-query
                                  "resourceType")
                                 (by-destination-vault-arn :target-type string
                                  :member-name "ByDestinationVaultArn"
                                  :http-query "destinationVaultArn")
                                 (by-account-id :target-type account-id
                                  :member-name "ByAccountId" :http-query
                                  "accountId")
                                 (by-complete-before :target-type timestamp
                                  :member-name "ByCompleteBefore" :http-query
                                  "completeBefore")
                                 (by-complete-after :target-type timestamp
                                  :member-name "ByCompleteAfter" :http-query
                                  "completeAfter")
                                 (by-parent-job-id :target-type string
                                  :member-name "ByParentJobId" :http-query
                                  "parentJobId")
                                 (by-message-category :target-type string
                                  :member-name "ByMessageCategory" :http-query
                                  "messageCategory"))
                                (:shape-name "ListCopyJobsInput"))

(smithy/sdk/shapes:define-output list-copy-jobs-output common-lisp:nil
                                 ((copy-jobs :target-type copy-jobs-list
                                   :member-name "CopyJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListCopyJobsOutput"))

(smithy/sdk/shapes:define-input list-frameworks-input common-lisp:nil
                                ((max-results :target-type max-framework-inputs
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListFrameworksInput"))

(smithy/sdk/shapes:define-output list-frameworks-output common-lisp:nil
                                 ((frameworks :target-type framework-list
                                   :member-name "Frameworks")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListFrameworksOutput"))

(smithy/sdk/shapes:define-input list-indexed-recovery-points-input
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (source-resource-arn :target-type arn
                                  :member-name "SourceResourceArn" :http-query
                                  "sourceResourceArn")
                                 (created-before :target-type timestamp
                                  :member-name "CreatedBefore" :http-query
                                  "createdBefore")
                                 (created-after :target-type timestamp
                                  :member-name "CreatedAfter" :http-query
                                  "createdAfter")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (index-status :target-type index-status
                                  :member-name "IndexStatus" :http-query
                                  "indexStatus"))
                                (:shape-name "ListIndexedRecoveryPointsInput"))

(smithy/sdk/shapes:define-output list-indexed-recovery-points-output
                                 common-lisp:nil
                                 ((indexed-recovery-points :target-type
                                   indexed-recovery-point-list :member-name
                                   "IndexedRecoveryPoints")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListIndexedRecoveryPointsOutput"))

(smithy/sdk/shapes:define-input list-legal-holds-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListLegalHoldsInput"))

(smithy/sdk/shapes:define-output list-legal-holds-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (legal-holds :target-type legal-holds-list
                                   :member-name "LegalHolds"))
                                 (:shape-name "ListLegalHoldsOutput"))

(smithy/sdk/shapes:define-list list-of-tags :member condition)

(smithy/sdk/shapes:define-input list-protected-resources-by-backup-vault-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (backup-vault-account-id :target-type
                                  account-id :member-name
                                  "BackupVaultAccountId" :http-query
                                  "backupVaultAccountId")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListProtectedResourcesByBackupVaultInput"))

(smithy/sdk/shapes:define-output
 list-protected-resources-by-backup-vault-output common-lisp:nil
 ((results :target-type protected-resources-list :member-name "Results")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListProtectedResourcesByBackupVaultOutput"))

(smithy/sdk/shapes:define-input list-protected-resources-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProtectedResourcesInput"))

(smithy/sdk/shapes:define-output list-protected-resources-output
                                 common-lisp:nil
                                 ((results :target-type
                                   protected-resources-list :member-name
                                   "Results")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListProtectedResourcesOutput"))

(smithy/sdk/shapes:define-input list-recovery-points-by-backup-vault-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (backup-vault-account-id :target-type
                                  account-id :member-name
                                  "BackupVaultAccountId" :http-query
                                  "backupVaultAccountId")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (by-resource-arn :target-type arn :member-name
                                  "ByResourceArn" :http-query "resourceArn")
                                 (by-resource-type :target-type resource-type
                                  :member-name "ByResourceType" :http-query
                                  "resourceType")
                                 (by-backup-plan-id :target-type string
                                  :member-name "ByBackupPlanId" :http-query
                                  "backupPlanId")
                                 (by-created-before :target-type timestamp
                                  :member-name "ByCreatedBefore" :http-query
                                  "createdBefore")
                                 (by-created-after :target-type timestamp
                                  :member-name "ByCreatedAfter" :http-query
                                  "createdAfter")
                                 (by-parent-recovery-point-arn :target-type arn
                                  :member-name "ByParentRecoveryPointArn"
                                  :http-query "parentRecoveryPointArn"))
                                (:shape-name
                                 "ListRecoveryPointsByBackupVaultInput"))

(smithy/sdk/shapes:define-output list-recovery-points-by-backup-vault-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (recovery-points :target-type
                                   recovery-point-by-backup-vault-list
                                   :member-name "RecoveryPoints"))
                                 (:shape-name
                                  "ListRecoveryPointsByBackupVaultOutput"))

(smithy/sdk/shapes:define-input list-recovery-points-by-legal-hold-input
                                common-lisp:nil
                                ((legal-hold-id :target-type string :required
                                  common-lisp:t :member-name "LegalHoldId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListRecoveryPointsByLegalHoldInput"))

(smithy/sdk/shapes:define-output list-recovery-points-by-legal-hold-output
                                 common-lisp:nil
                                 ((recovery-points :target-type
                                   recovery-points-list :member-name
                                   "RecoveryPoints")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListRecoveryPointsByLegalHoldOutput"))

(smithy/sdk/shapes:define-input list-recovery-points-by-resource-input
                                common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (managed-by-awsbackup-only :target-type
                                  boolean2 :member-name
                                  "ManagedByAWSBackupOnly" :http-query
                                  "managedByAWSBackupOnly"))
                                (:shape-name
                                 "ListRecoveryPointsByResourceInput"))

(smithy/sdk/shapes:define-output list-recovery-points-by-resource-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (recovery-points :target-type
                                   recovery-point-by-resource-list :member-name
                                   "RecoveryPoints"))
                                 (:shape-name
                                  "ListRecoveryPointsByResourceOutput"))

(smithy/sdk/shapes:define-input list-report-jobs-input common-lisp:nil
                                ((by-report-plan-name :target-type
                                  report-plan-name :member-name
                                  "ByReportPlanName" :http-query
                                  "ReportPlanName")
                                 (by-creation-before :target-type timestamp
                                  :member-name "ByCreationBefore" :http-query
                                  "CreationBefore")
                                 (by-creation-after :target-type timestamp
                                  :member-name "ByCreationAfter" :http-query
                                  "CreationAfter")
                                 (by-status :target-type string :member-name
                                  "ByStatus" :http-query "Status")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListReportJobsInput"))

(smithy/sdk/shapes:define-output list-report-jobs-output common-lisp:nil
                                 ((report-jobs :target-type report-job-list
                                   :member-name "ReportJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListReportJobsOutput"))

(smithy/sdk/shapes:define-input list-report-plans-input common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListReportPlansInput"))

(smithy/sdk/shapes:define-output list-report-plans-output common-lisp:nil
                                 ((report-plans :target-type report-plan-list
                                   :member-name "ReportPlans")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListReportPlansOutput"))

(smithy/sdk/shapes:define-input list-restore-access-backup-vaults-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListRestoreAccessBackupVaultsInput"))

(smithy/sdk/shapes:define-output list-restore-access-backup-vaults-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (restore-access-backup-vaults :target-type
                                   restore-access-backup-vault-list
                                   :member-name "RestoreAccessBackupVaults"))
                                 (:shape-name
                                  "ListRestoreAccessBackupVaultsOutput"))

(smithy/sdk/shapes:define-input list-restore-job-summaries-input
                                common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId" :http-query
                                  "AccountId")
                                 (state :target-type restore-job-state
                                  :member-name "State" :http-query "State")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType" :http-query
                                  "ResourceType")
                                 (aggregation-period :target-type
                                  aggregation-period :member-name
                                  "AggregationPeriod" :http-query
                                  "AggregationPeriod")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListRestoreJobSummariesInput"))

(smithy/sdk/shapes:define-output list-restore-job-summaries-output
                                 common-lisp:nil
                                 ((restore-job-summaries :target-type
                                   restore-job-summary-list :member-name
                                   "RestoreJobSummaries")
                                  (aggregation-period :target-type string
                                   :member-name "AggregationPeriod")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRestoreJobSummariesOutput"))

(smithy/sdk/shapes:define-input list-restore-jobs-by-protected-resource-input
                                common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (by-status :target-type restore-job-status
                                  :member-name "ByStatus" :http-query "status")
                                 (by-recovery-point-creation-date-after
                                  :target-type timestamp :member-name
                                  "ByRecoveryPointCreationDateAfter"
                                  :http-query "recoveryPointCreationDateAfter")
                                 (by-recovery-point-creation-date-before
                                  :target-type timestamp :member-name
                                  "ByRecoveryPointCreationDateBefore"
                                  :http-query
                                  "recoveryPointCreationDateBefore")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListRestoreJobsByProtectedResourceInput"))

(smithy/sdk/shapes:define-output list-restore-jobs-by-protected-resource-output
                                 common-lisp:nil
                                 ((restore-jobs :target-type restore-jobs-list
                                   :member-name "RestoreJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListRestoreJobsByProtectedResourceOutput"))

(smithy/sdk/shapes:define-input list-restore-jobs-input common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (by-account-id :target-type account-id
                                  :member-name "ByAccountId" :http-query
                                  "accountId")
                                 (by-resource-type :target-type resource-type
                                  :member-name "ByResourceType" :http-query
                                  "resourceType")
                                 (by-created-before :target-type timestamp
                                  :member-name "ByCreatedBefore" :http-query
                                  "createdBefore")
                                 (by-created-after :target-type timestamp
                                  :member-name "ByCreatedAfter" :http-query
                                  "createdAfter")
                                 (by-status :target-type restore-job-status
                                  :member-name "ByStatus" :http-query "status")
                                 (by-complete-before :target-type timestamp
                                  :member-name "ByCompleteBefore" :http-query
                                  "completeBefore")
                                 (by-complete-after :target-type timestamp
                                  :member-name "ByCompleteAfter" :http-query
                                  "completeAfter")
                                 (by-restore-testing-plan-arn :target-type arn
                                  :member-name "ByRestoreTestingPlanArn"
                                  :http-query "restoreTestingPlanArn"))
                                (:shape-name "ListRestoreJobsInput"))

(smithy/sdk/shapes:define-output list-restore-jobs-output common-lisp:nil
                                 ((restore-jobs :target-type restore-jobs-list
                                   :member-name "RestoreJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRestoreJobsOutput"))

(smithy/sdk/shapes:define-input list-restore-testing-plans-input
                                common-lisp:nil
                                ((max-results :target-type
                                  list-restore-testing-plans-input-max-results-integer
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListRestoreTestingPlansInput"))

(smithy/sdk/shapes:define-type
 list-restore-testing-plans-input-max-results-integer
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-restore-testing-plans-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (restore-testing-plans :target-type
                                   restore-testing-plans :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlans"))
                                 (:shape-name "ListRestoreTestingPlansOutput"))

(smithy/sdk/shapes:define-input list-restore-testing-selections-input
                                common-lisp:nil
                                ((max-results :target-type
                                  list-restore-testing-selections-input-max-results-integer
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListRestoreTestingSelectionsInput"))

(smithy/sdk/shapes:define-type
 list-restore-testing-selections-input-max-results-integer
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-restore-testing-selections-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (restore-testing-selections :target-type
                                   restore-testing-selections :required
                                   common-lisp:t :member-name
                                   "RestoreTestingSelections"))
                                 (:shape-name
                                  "ListRestoreTestingSelectionsOutput"))

(smithy/sdk/shapes:define-input list-tags-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTagsInput"))

(smithy/sdk/shapes:define-output list-tags-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsOutput"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long2 smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-framework-inputs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map metadata :key metadata-key :value metadata-value)

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error missing-parameter-value-exception
                                common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "MissingParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum mpa-revoke-session-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum mpa-session-status
    common-lisp:nil
  (:pending "PENDING")
  (:approved "APPROVED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protected-resource common-lisp:nil
                                    ((resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (last-backup-time :target-type timestamp
                                      :member-name "LastBackupTime")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (last-backup-vault-arn :target-type arn
                                      :member-name "LastBackupVaultArn")
                                     (last-recovery-point-arn :target-type arn
                                      :member-name "LastRecoveryPointArn"))
                                    (:shape-name "ProtectedResource"))

(smithy/sdk/shapes:define-structure protected-resource-conditions
                                    common-lisp:nil
                                    ((string-equals :target-type key-value-list
                                      :member-name "StringEquals")
                                     (string-not-equals :target-type
                                      key-value-list :member-name
                                      "StringNotEquals"))
                                    (:shape-name "ProtectedResourceConditions"))

(smithy/sdk/shapes:define-list protected-resources-list :member
                               protected-resource)

(smithy/sdk/shapes:define-input put-backup-vault-access-policy-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (policy :target-type iampolicy :member-name
                                  "Policy"))
                                (:shape-name "PutBackupVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-input put-backup-vault-lock-configuration-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (min-retention-days :target-type long
                                  :member-name "MinRetentionDays")
                                 (max-retention-days :target-type long
                                  :member-name "MaxRetentionDays")
                                 (changeable-for-days :target-type long
                                  :member-name "ChangeableForDays"))
                                (:shape-name
                                 "PutBackupVaultLockConfigurationInput"))

(smithy/sdk/shapes:define-input put-backup-vault-notifications-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (snstopic-arn :target-type arn :required
                                  common-lisp:t :member-name "SNSTopicArn")
                                 (backup-vault-events :target-type
                                  backup-vault-events :required common-lisp:t
                                  :member-name "BackupVaultEvents"))
                                (:shape-name
                                 "PutBackupVaultNotificationsInput"))

(smithy/sdk/shapes:define-input put-restore-validation-result-input
                                common-lisp:nil
                                ((restore-job-id :target-type restore-job-id
                                  :required common-lisp:t :member-name
                                  "RestoreJobId" :http-label common-lisp:t)
                                 (validation-status :target-type
                                  restore-validation-status :required
                                  common-lisp:t :member-name
                                  "ValidationStatus")
                                 (validation-status-message :target-type string
                                  :member-name "ValidationStatusMessage"))
                                (:shape-name "PutRestoreValidationResultInput"))

(smithy/sdk/shapes:define-structure recovery-point-by-backup-vault
                                    common-lisp:nil
                                    ((recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (backup-vault-name :target-type
                                      backup-vault-name :member-name
                                      "BackupVaultName")
                                     (backup-vault-arn :target-type arn
                                      :member-name "BackupVaultArn")
                                     (source-backup-vault-arn :target-type arn
                                      :member-name "SourceBackupVaultArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (created-by :target-type
                                      recovery-point-creator :member-name
                                      "CreatedBy")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn")
                                     (status :target-type recovery-point-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (initiation-date :target-type timestamp
                                      :member-name "InitiationDate")
                                     (completion-date :target-type timestamp
                                      :member-name "CompletionDate")
                                     (backup-size-in-bytes :target-type long
                                      :member-name "BackupSizeInBytes")
                                     (calculated-lifecycle :target-type
                                      calculated-lifecycle :member-name
                                      "CalculatedLifecycle")
                                     (lifecycle :target-type lifecycle
                                      :member-name "Lifecycle")
                                     (encryption-key-arn :target-type arn
                                      :member-name "EncryptionKeyArn")
                                     (is-encrypted :target-type boolean2
                                      :member-name "IsEncrypted")
                                     (last-restore-time :target-type timestamp
                                      :member-name "LastRestoreTime")
                                     (parent-recovery-point-arn :target-type
                                      arn :member-name
                                      "ParentRecoveryPointArn")
                                     (composite-member-identifier :target-type
                                      string :member-name
                                      "CompositeMemberIdentifier")
                                     (is-parent :target-type boolean2
                                      :member-name "IsParent")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (vault-type :target-type vault-type
                                      :member-name "VaultType")
                                     (index-status :target-type index-status
                                      :member-name "IndexStatus")
                                     (index-status-message :target-type string
                                      :member-name "IndexStatusMessage"))
                                    (:shape-name "RecoveryPointByBackupVault"))

(smithy/sdk/shapes:define-list recovery-point-by-backup-vault-list :member
                               recovery-point-by-backup-vault)

(smithy/sdk/shapes:define-structure recovery-point-by-resource common-lisp:nil
                                    ((recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (status :target-type recovery-point-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (encryption-key-arn :target-type arn
                                      :member-name "EncryptionKeyArn")
                                     (backup-size-bytes :target-type long
                                      :member-name "BackupSizeBytes")
                                     (backup-vault-name :target-type
                                      backup-vault-name :member-name
                                      "BackupVaultName")
                                     (is-parent :target-type boolean2
                                      :member-name "IsParent")
                                     (parent-recovery-point-arn :target-type
                                      arn :member-name
                                      "ParentRecoveryPointArn")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (vault-type :target-type vault-type
                                      :member-name "VaultType")
                                     (index-status :target-type index-status
                                      :member-name "IndexStatus")
                                     (index-status-message :target-type string
                                      :member-name "IndexStatusMessage"))
                                    (:shape-name "RecoveryPointByResource"))

(smithy/sdk/shapes:define-list recovery-point-by-resource-list :member
                               recovery-point-by-resource)

(smithy/sdk/shapes:define-structure recovery-point-creator common-lisp:nil
                                    ((backup-plan-id :target-type string
                                      :member-name "BackupPlanId")
                                     (backup-plan-arn :target-type arn
                                      :member-name "BackupPlanArn")
                                     (backup-plan-version :target-type string
                                      :member-name "BackupPlanVersion")
                                     (backup-rule-id :target-type string
                                      :member-name "BackupRuleId"))
                                    (:shape-name "RecoveryPointCreator"))

(smithy/sdk/shapes:define-structure recovery-point-member common-lisp:nil
                                    ((recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (backup-vault-name :target-type
                                      backup-vault-name :member-name
                                      "BackupVaultName"))
                                    (:shape-name "RecoveryPointMember"))

(smithy/sdk/shapes:define-structure recovery-point-selection common-lisp:nil
                                    ((vault-names :target-type vault-names
                                      :member-name "VaultNames")
                                     (resource-identifiers :target-type
                                      resource-identifiers :member-name
                                      "ResourceIdentifiers")
                                     (date-range :target-type date-range
                                      :member-name "DateRange"))
                                    (:shape-name "RecoveryPointSelection"))

(smithy/sdk/shapes:define-enum recovery-point-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:partial "PARTIAL")
  (:deleting "DELETING")
  (:expired "EXPIRED")
  (:available "AVAILABLE")
  (:stopped "STOPPED")
  (:creating "CREATING"))

(smithy/sdk/shapes:define-list recovery-points-list :member
                               recovery-point-member)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure report-delivery-channel common-lisp:nil
                                    ((s3bucket-name :target-type string
                                      :required common-lisp:t :member-name
                                      "S3BucketName")
                                     (s3key-prefix :target-type string
                                      :member-name "S3KeyPrefix")
                                     (formats :target-type format-list
                                      :member-name "Formats"))
                                    (:shape-name "ReportDeliveryChannel"))

(smithy/sdk/shapes:define-structure report-destination common-lisp:nil
                                    ((s3bucket-name :target-type string
                                      :member-name "S3BucketName")
                                     (s3keys :target-type string-list
                                      :member-name "S3Keys"))
                                    (:shape-name "ReportDestination"))

(smithy/sdk/shapes:define-structure report-job common-lisp:nil
                                    ((report-job-id :target-type report-job-id
                                      :member-name "ReportJobId")
                                     (report-plan-arn :target-type arn
                                      :member-name "ReportPlanArn")
                                     (report-template :target-type string
                                      :member-name "ReportTemplate")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (completion-time :target-type timestamp
                                      :member-name "CompletionTime")
                                     (status :target-type string :member-name
                                      "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (report-destination :target-type
                                      report-destination :member-name
                                      "ReportDestination"))
                                    (:shape-name "ReportJob"))

(smithy/sdk/shapes:define-type report-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list report-job-list :member report-job)

(smithy/sdk/shapes:define-structure report-plan common-lisp:nil
                                    ((report-plan-arn :target-type arn
                                      :member-name "ReportPlanArn")
                                     (report-plan-name :target-type
                                      report-plan-name :member-name
                                      "ReportPlanName")
                                     (report-plan-description :target-type
                                      report-plan-description :member-name
                                      "ReportPlanDescription")
                                     (report-setting :target-type
                                      report-setting :member-name
                                      "ReportSetting")
                                     (report-delivery-channel :target-type
                                      report-delivery-channel :member-name
                                      "ReportDeliveryChannel")
                                     (deployment-status :target-type string
                                      :member-name "DeploymentStatus")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-attempted-execution-time
                                      :target-type timestamp :member-name
                                      "LastAttemptedExecutionTime")
                                     (last-successful-execution-time
                                      :target-type timestamp :member-name
                                      "LastSuccessfulExecutionTime"))
                                    (:shape-name "ReportPlan"))

(smithy/sdk/shapes:define-type report-plan-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list report-plan-list :member report-plan)

(smithy/sdk/shapes:define-type report-plan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure report-setting common-lisp:nil
                                    ((report-template :target-type string
                                      :required common-lisp:t :member-name
                                      "ReportTemplate")
                                     (framework-arns :target-type string-list
                                      :member-name "FrameworkArns")
                                     (number-of-frameworks :target-type integer
                                      :member-name "NumberOfFrameworks")
                                     (accounts :target-type string-list
                                      :member-name "Accounts")
                                     (organization-units :target-type
                                      string-list :member-name
                                      "OrganizationUnits")
                                     (regions :target-type string-list
                                      :member-name "Regions"))
                                    (:shape-name "ReportSetting"))

(smithy/sdk/shapes:define-type requester-comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arns :member arn)

(smithy/sdk/shapes:define-list resource-identifiers :member string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-type-list :member arn)

(smithy/sdk/shapes:define-map resource-type-management-preference :key
                              resource-type :value is-enabled)

(smithy/sdk/shapes:define-map resource-type-opt-in-preference :key
                              resource-type :value is-enabled)

(smithy/sdk/shapes:define-list resource-types :member resource-type)

(smithy/sdk/shapes:define-list restore-access-backup-vault-list :member
                               restore-access-backup-vault-list-member)

(smithy/sdk/shapes:define-structure restore-access-backup-vault-list-member
                                    common-lisp:nil
                                    ((restore-access-backup-vault-arn
                                      :target-type arn :member-name
                                      "RestoreAccessBackupVaultArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (approval-date :target-type timestamp
                                      :member-name "ApprovalDate")
                                     (vault-state :target-type vault-state
                                      :member-name "VaultState")
                                     (latest-revoke-request :target-type
                                      latest-revoke-request :member-name
                                      "LatestRevokeRequest"))
                                    (:shape-name
                                     "RestoreAccessBackupVaultListMember"))

(smithy/sdk/shapes:define-enum restore-deletion-status
    common-lisp:nil
  (:deleting "DELETING")
  (:failed "FAILED")
  (:successful "SUCCESSFUL"))

(smithy/sdk/shapes:define-structure restore-job-creator common-lisp:nil
                                    ((restore-testing-plan-arn :target-type arn
                                      :member-name "RestoreTestingPlanArn"))
                                    (:shape-name "RestoreJobCreator"))

(smithy/sdk/shapes:define-type restore-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum restore-job-state
    common-lisp:nil
  (:created "CREATED")
  (:pending "PENDING")
  (:running "RUNNING")
  (:aborted "ABORTED")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:aggregate-all "AGGREGATE_ALL")
  (:any "ANY"))

(smithy/sdk/shapes:define-enum restore-job-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:aborted "ABORTED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure restore-job-summary common-lisp:nil
                                    ((region :target-type region :member-name
                                      "Region")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (state :target-type restore-job-state
                                      :member-name "State")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (count :target-type integer :member-name
                                      "Count")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "RestoreJobSummary"))

(smithy/sdk/shapes:define-list restore-job-summary-list :member
                               restore-job-summary)

(smithy/sdk/shapes:define-list restore-jobs-list :member
                               restore-jobs-list-member)

(smithy/sdk/shapes:define-structure restore-jobs-list-member common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (restore-job-id :target-type string
                                      :member-name "RestoreJobId")
                                     (recovery-point-arn :target-type arn
                                      :member-name "RecoveryPointArn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (completion-date :target-type timestamp
                                      :member-name "CompletionDate")
                                     (status :target-type restore-job-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (percent-done :target-type string
                                      :member-name "PercentDone")
                                     (backup-size-in-bytes :target-type long
                                      :member-name "BackupSizeInBytes")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn")
                                     (expected-completion-time-minutes
                                      :target-type long :member-name
                                      "ExpectedCompletionTimeMinutes")
                                     (created-resource-arn :target-type arn
                                      :member-name "CreatedResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (recovery-point-creation-date :target-type
                                      timestamp :member-name
                                      "RecoveryPointCreationDate")
                                     (created-by :target-type
                                      restore-job-creator :member-name
                                      "CreatedBy")
                                     (validation-status :target-type
                                      restore-validation-status :member-name
                                      "ValidationStatus")
                                     (validation-status-message :target-type
                                      string :member-name
                                      "ValidationStatusMessage")
                                     (deletion-status :target-type
                                      restore-deletion-status :member-name
                                      "DeletionStatus")
                                     (deletion-status-message :target-type
                                      string :member-name
                                      "DeletionStatusMessage"))
                                    (:shape-name "RestoreJobsListMember"))

(smithy/sdk/shapes:define-structure restore-testing-plan-for-create
                                    common-lisp:nil
                                    ((recovery-point-selection :target-type
                                      restore-testing-recovery-point-selection
                                      :required common-lisp:t :member-name
                                      "RecoveryPointSelection")
                                     (restore-testing-plan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanName")
                                     (schedule-expression :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (schedule-expression-timezone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ScheduleExpressionTimezone")
                                     (start-window-hours :target-type integer
                                      :member-name "StartWindowHours"))
                                    (:shape-name "RestoreTestingPlanForCreate"))

(smithy/sdk/shapes:define-structure restore-testing-plan-for-get
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (creator-request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CreatorRequestId")
                                     (last-execution-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastExecutionTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdateTime")
                                     (recovery-point-selection :target-type
                                      restore-testing-recovery-point-selection
                                      :required common-lisp:t :member-name
                                      "RecoveryPointSelection")
                                     (restore-testing-plan-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanArn")
                                     (restore-testing-plan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanName")
                                     (schedule-expression :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (schedule-expression-timezone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ScheduleExpressionTimezone")
                                     (start-window-hours :target-type integer
                                      :member-name "StartWindowHours"))
                                    (:shape-name "RestoreTestingPlanForGet"))

(smithy/sdk/shapes:define-structure restore-testing-plan-for-list
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-execution-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastExecutionTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdateTime")
                                     (restore-testing-plan-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanArn")
                                     (restore-testing-plan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanName")
                                     (schedule-expression :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (schedule-expression-timezone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ScheduleExpressionTimezone")
                                     (start-window-hours :target-type integer
                                      :member-name "StartWindowHours"))
                                    (:shape-name "RestoreTestingPlanForList"))

(smithy/sdk/shapes:define-structure restore-testing-plan-for-update
                                    common-lisp:nil
                                    ((recovery-point-selection :target-type
                                      restore-testing-recovery-point-selection
                                      :member-name "RecoveryPointSelection")
                                     (schedule-expression :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ScheduleExpression")
                                     (schedule-expression-timezone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ScheduleExpressionTimezone")
                                     (start-window-hours :target-type integer
                                      :member-name "StartWindowHours"))
                                    (:shape-name "RestoreTestingPlanForUpdate"))

(smithy/sdk/shapes:define-list restore-testing-plans :member
                               restore-testing-plan-for-list)

(smithy/sdk/shapes:define-structure restore-testing-recovery-point-selection
                                    common-lisp:nil
                                    ((algorithm :target-type
                                      restore-testing-recovery-point-selection-algorithm
                                      :member-name "Algorithm")
                                     (exclude-vaults :target-type string-list
                                      :member-name "ExcludeVaults")
                                     (include-vaults :target-type string-list
                                      :member-name "IncludeVaults")
                                     (recovery-point-types :target-type
                                      restore-testing-recovery-point-type-list
                                      :member-name "RecoveryPointTypes")
                                     (selection-window-days :target-type
                                      integer :member-name
                                      "SelectionWindowDays"))
                                    (:shape-name
                                     "RestoreTestingRecoveryPointSelection"))

(smithy/sdk/shapes:define-enum restore-testing-recovery-point-selection-algorithm
    common-lisp:nil
  (:latest-within-window "LATEST_WITHIN_WINDOW")
  (:random-within-window "RANDOM_WITHIN_WINDOW"))

(smithy/sdk/shapes:define-enum restore-testing-recovery-point-type
    common-lisp:nil
  (:continuous "CONTINUOUS")
  (:snapshot "SNAPSHOT"))

(smithy/sdk/shapes:define-list restore-testing-recovery-point-type-list :member
                               restore-testing-recovery-point-type)

(smithy/sdk/shapes:define-structure restore-testing-selection-for-create
                                    common-lisp:nil
                                    ((iam-role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (protected-resource-arns :target-type
                                      string-list :member-name
                                      "ProtectedResourceArns")
                                     (protected-resource-conditions
                                      :target-type
                                      protected-resource-conditions
                                      :member-name
                                      "ProtectedResourceConditions")
                                     (protected-resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ProtectedResourceType")
                                     (restore-metadata-overrides :target-type
                                      sensitive-string-map :member-name
                                      "RestoreMetadataOverrides")
                                     (restore-testing-selection-name
                                      :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingSelectionName")
                                     (validation-window-hours :target-type
                                      integer :member-name
                                      "ValidationWindowHours"))
                                    (:shape-name
                                     "RestoreTestingSelectionForCreate"))

(smithy/sdk/shapes:define-structure restore-testing-selection-for-get
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (creator-request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CreatorRequestId")
                                     (iam-role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (protected-resource-arns :target-type
                                      string-list :member-name
                                      "ProtectedResourceArns")
                                     (protected-resource-conditions
                                      :target-type
                                      protected-resource-conditions
                                      :member-name
                                      "ProtectedResourceConditions")
                                     (protected-resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ProtectedResourceType")
                                     (restore-metadata-overrides :target-type
                                      sensitive-string-map :member-name
                                      "RestoreMetadataOverrides")
                                     (restore-testing-plan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanName")
                                     (restore-testing-selection-name
                                      :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingSelectionName")
                                     (validation-window-hours :target-type
                                      integer :member-name
                                      "ValidationWindowHours"))
                                    (:shape-name
                                     "RestoreTestingSelectionForGet"))

(smithy/sdk/shapes:define-structure restore-testing-selection-for-list
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (iam-role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (protected-resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ProtectedResourceType")
                                     (restore-testing-plan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingPlanName")
                                     (restore-testing-selection-name
                                      :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RestoreTestingSelectionName")
                                     (validation-window-hours :target-type
                                      integer :member-name
                                      "ValidationWindowHours"))
                                    (:shape-name
                                     "RestoreTestingSelectionForList"))

(smithy/sdk/shapes:define-structure restore-testing-selection-for-update
                                    common-lisp:nil
                                    ((iam-role-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "IamRoleArn")
                                     (protected-resource-arns :target-type
                                      string-list :member-name
                                      "ProtectedResourceArns")
                                     (protected-resource-conditions
                                      :target-type
                                      protected-resource-conditions
                                      :member-name
                                      "ProtectedResourceConditions")
                                     (restore-metadata-overrides :target-type
                                      sensitive-string-map :member-name
                                      "RestoreMetadataOverrides")
                                     (validation-window-hours :target-type
                                      integer :member-name
                                      "ValidationWindowHours"))
                                    (:shape-name
                                     "RestoreTestingSelectionForUpdate"))

(smithy/sdk/shapes:define-list restore-testing-selections :member
                               restore-testing-selection-for-list)

(smithy/sdk/shapes:define-enum restore-validation-status
    common-lisp:nil
  (:failed "FAILED")
  (:successful "SUCCESSFUL")
  (:timed-out "TIMED_OUT")
  (:validating "VALIDATING"))

(smithy/sdk/shapes:define-input revoke-restore-access-backup-vault-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (restore-access-backup-vault-arn :target-type
                                  arn :required common-lisp:t :member-name
                                  "RestoreAccessBackupVaultArn" :http-label
                                  common-lisp:t)
                                 (requester-comment :target-type
                                  requester-comment :member-name
                                  "RequesterComment" :http-query
                                  "requesterComment"))
                                (:shape-name
                                 "RevokeRestoreAccessBackupVaultInput"))

(smithy/sdk/shapes:define-map sensitive-string-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (type :target-type string :member-name "Type")
                                 (context :target-type string :member-name
                                  "Context"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input start-backup-job-input common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName")
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (iam-role-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "IamRoleArn")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken")
                                 (start-window-minutes :target-type
                                  window-minutes :member-name
                                  "StartWindowMinutes")
                                 (complete-window-minutes :target-type
                                  window-minutes :member-name
                                  "CompleteWindowMinutes")
                                 (lifecycle :target-type lifecycle :member-name
                                  "Lifecycle")
                                 (recovery-point-tags :target-type tags
                                  :member-name "RecoveryPointTags")
                                 (backup-options :target-type backup-options
                                  :member-name "BackupOptions")
                                 (index :target-type index :member-name
                                  "Index"))
                                (:shape-name "StartBackupJobInput"))

(smithy/sdk/shapes:define-output start-backup-job-output common-lisp:nil
                                 ((backup-job-id :target-type string
                                   :member-name "BackupJobId")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (is-parent :target-type boolean2 :member-name
                                   "IsParent"))
                                 (:shape-name "StartBackupJobOutput"))

(smithy/sdk/shapes:define-input start-copy-job-input common-lisp:nil
                                ((recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "RecoveryPointArn")
                                 (source-backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "SourceBackupVaultName")
                                 (destination-backup-vault-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "DestinationBackupVaultArn")
                                 (iam-role-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "IamRoleArn")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken")
                                 (lifecycle :target-type lifecycle :member-name
                                  "Lifecycle"))
                                (:shape-name "StartCopyJobInput"))

(smithy/sdk/shapes:define-output start-copy-job-output common-lisp:nil
                                 ((copy-job-id :target-type string :member-name
                                   "CopyJobId")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (is-parent :target-type boolean2 :member-name
                                   "IsParent"))
                                 (:shape-name "StartCopyJobOutput"))

(smithy/sdk/shapes:define-input start-report-job-input common-lisp:nil
                                ((report-plan-name :target-type
                                  report-plan-name :required common-lisp:t
                                  :member-name "ReportPlanName" :http-label
                                  common-lisp:t)
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken"))
                                (:shape-name "StartReportJobInput"))

(smithy/sdk/shapes:define-output start-report-job-output common-lisp:nil
                                 ((report-job-id :target-type report-job-id
                                   :member-name "ReportJobId"))
                                 (:shape-name "StartReportJobOutput"))

(smithy/sdk/shapes:define-input start-restore-job-input common-lisp:nil
                                ((recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "RecoveryPointArn")
                                 (metadata :target-type metadata :required
                                  common-lisp:t :member-name "Metadata")
                                 (iam-role-arn :target-type iamrole-arn
                                  :member-name "IamRoleArn")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (copy-source-tags-to-restored-resource
                                  :target-type boolean2 :member-name
                                  "CopySourceTagsToRestoredResource"))
                                (:shape-name "StartRestoreJobInput"))

(smithy/sdk/shapes:define-output start-restore-job-output common-lisp:nil
                                 ((restore-job-id :target-type restore-job-id
                                   :member-name "RestoreJobId"))
                                 (:shape-name "StartRestoreJobOutput"))

(smithy/sdk/shapes:define-input stop-backup-job-input common-lisp:nil
                                ((backup-job-id :target-type string :required
                                  common-lisp:t :member-name "BackupJobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopBackupJobInput"))

(smithy/sdk/shapes:define-enum storage-class
    common-lisp:nil
  (:warm "WARM")
  (:cold "COLD")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-key-list :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagKeyList"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-backup-plan-input common-lisp:nil
                                ((backup-plan-id :target-type string :required
                                  common-lisp:t :member-name "BackupPlanId"
                                  :http-label common-lisp:t)
                                 (backup-plan :target-type backup-plan-input
                                  :required common-lisp:t :member-name
                                  "BackupPlan"))
                                (:shape-name "UpdateBackupPlanInput"))

(smithy/sdk/shapes:define-output update-backup-plan-output common-lisp:nil
                                 ((backup-plan-id :target-type string
                                   :member-name "BackupPlanId")
                                  (backup-plan-arn :target-type arn
                                   :member-name "BackupPlanArn")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (version-id :target-type string :member-name
                                   "VersionId")
                                  (advanced-backup-settings :target-type
                                   advanced-backup-settings :member-name
                                   "AdvancedBackupSettings"))
                                 (:shape-name "UpdateBackupPlanOutput"))

(smithy/sdk/shapes:define-input update-framework-input common-lisp:nil
                                ((framework-name :target-type framework-name
                                  :required common-lisp:t :member-name
                                  "FrameworkName" :http-label common-lisp:t)
                                 (framework-description :target-type
                                  framework-description :member-name
                                  "FrameworkDescription")
                                 (framework-controls :target-type
                                  framework-controls :member-name
                                  "FrameworkControls")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken"))
                                (:shape-name "UpdateFrameworkInput"))

(smithy/sdk/shapes:define-output update-framework-output common-lisp:nil
                                 ((framework-name :target-type framework-name
                                   :member-name "FrameworkName")
                                  (framework-arn :target-type arn :member-name
                                   "FrameworkArn")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "UpdateFrameworkOutput"))

(smithy/sdk/shapes:define-input update-global-settings-input common-lisp:nil
                                ((global-settings :target-type global-settings
                                  :member-name "GlobalSettings"))
                                (:shape-name "UpdateGlobalSettingsInput"))

(smithy/sdk/shapes:define-input update-recovery-point-index-settings-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t)
                                 (iam-role-arn :target-type iamrole-arn
                                  :member-name "IamRoleArn")
                                 (index :target-type index :required
                                  common-lisp:t :member-name "Index"))
                                (:shape-name
                                 "UpdateRecoveryPointIndexSettingsInput"))

(smithy/sdk/shapes:define-output update-recovery-point-index-settings-output
                                 common-lisp:nil
                                 ((backup-vault-name :target-type
                                   backup-vault-name :member-name
                                   "BackupVaultName")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (index-status :target-type index-status
                                   :member-name "IndexStatus")
                                  (index :target-type index :member-name
                                   "Index"))
                                 (:shape-name
                                  "UpdateRecoveryPointIndexSettingsOutput"))

(smithy/sdk/shapes:define-input update-recovery-point-lifecycle-input
                                common-lisp:nil
                                ((backup-vault-name :target-type
                                  backup-vault-name :required common-lisp:t
                                  :member-name "BackupVaultName" :http-label
                                  common-lisp:t)
                                 (recovery-point-arn :target-type arn :required
                                  common-lisp:t :member-name "RecoveryPointArn"
                                  :http-label common-lisp:t)
                                 (lifecycle :target-type lifecycle :member-name
                                  "Lifecycle"))
                                (:shape-name
                                 "UpdateRecoveryPointLifecycleInput"))

(smithy/sdk/shapes:define-output update-recovery-point-lifecycle-output
                                 common-lisp:nil
                                 ((backup-vault-arn :target-type arn
                                   :member-name "BackupVaultArn")
                                  (recovery-point-arn :target-type arn
                                   :member-name "RecoveryPointArn")
                                  (lifecycle :target-type lifecycle
                                   :member-name "Lifecycle")
                                  (calculated-lifecycle :target-type
                                   calculated-lifecycle :member-name
                                   "CalculatedLifecycle"))
                                 (:shape-name
                                  "UpdateRecoveryPointLifecycleOutput"))

(smithy/sdk/shapes:define-input update-region-settings-input common-lisp:nil
                                ((resource-type-opt-in-preference :target-type
                                  resource-type-opt-in-preference :member-name
                                  "ResourceTypeOptInPreference")
                                 (resource-type-management-preference
                                  :target-type
                                  resource-type-management-preference
                                  :member-name
                                  "ResourceTypeManagementPreference"))
                                (:shape-name "UpdateRegionSettingsInput"))

(smithy/sdk/shapes:define-input update-report-plan-input common-lisp:nil
                                ((report-plan-name :target-type
                                  report-plan-name :required common-lisp:t
                                  :member-name "ReportPlanName" :http-label
                                  common-lisp:t)
                                 (report-plan-description :target-type
                                  report-plan-description :member-name
                                  "ReportPlanDescription")
                                 (report-delivery-channel :target-type
                                  report-delivery-channel :member-name
                                  "ReportDeliveryChannel")
                                 (report-setting :target-type report-setting
                                  :member-name "ReportSetting")
                                 (idempotency-token :target-type string
                                  :member-name "IdempotencyToken"))
                                (:shape-name "UpdateReportPlanInput"))

(smithy/sdk/shapes:define-output update-report-plan-output common-lisp:nil
                                 ((report-plan-name :target-type
                                   report-plan-name :member-name
                                   "ReportPlanName")
                                  (report-plan-arn :target-type arn
                                   :member-name "ReportPlanArn")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "UpdateReportPlanOutput"))

(smithy/sdk/shapes:define-input update-restore-testing-plan-input
                                common-lisp:nil
                                ((restore-testing-plan :target-type
                                  restore-testing-plan-for-update :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlan")
                                 (restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateRestoreTestingPlanInput"))

(smithy/sdk/shapes:define-output update-restore-testing-plan-output
                                 common-lisp:nil
                                 ((creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime")
                                  (restore-testing-plan-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanArn")
                                  (restore-testing-plan-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanName")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "UpdateTime"))
                                 (:shape-name "UpdateRestoreTestingPlanOutput"))

(smithy/sdk/shapes:define-input update-restore-testing-selection-input
                                common-lisp:nil
                                ((restore-testing-plan-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingPlanName" :http-label
                                  common-lisp:t)
                                 (restore-testing-selection :target-type
                                  restore-testing-selection-for-update
                                  :required common-lisp:t :member-name
                                  "RestoreTestingSelection")
                                 (restore-testing-selection-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "RestoreTestingSelectionName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "UpdateRestoreTestingSelectionInput"))

(smithy/sdk/shapes:define-output update-restore-testing-selection-output
                                 common-lisp:nil
                                 ((creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime")
                                  (restore-testing-plan-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanArn")
                                  (restore-testing-plan-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingPlanName")
                                  (restore-testing-selection-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RestoreTestingSelectionName")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "UpdateTime"))
                                 (:shape-name
                                  "UpdateRestoreTestingSelectionOutput"))

(smithy/sdk/shapes:define-list vault-names :member string)

(smithy/sdk/shapes:define-enum vault-state
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum vault-type
    common-lisp:nil
  (:backup-vault "BACKUP_VAULT")
  (:logically-air-gapped-backup-vault "LOGICALLY_AIR_GAPPED_BACKUP_VAULT")
  (:restore-access-backup-vault "RESTORE_ACCESS_BACKUP_VAULT"))

(smithy/sdk/shapes:define-type window-minutes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation associate-backup-vault-mpa-approval-team
                                       :shape-name
                                       "AssociateBackupVaultMpaApprovalTeam"
                                       :input
                                       associate-backup-vault-mpa-approval-team-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup-vaults/{BackupVaultName}/mpaApprovalTeam"
                                       :code 204)

(smithy/sdk/operation:define-operation cancel-legal-hold :shape-name
                                       "CancelLegalHold" :input
                                       cancel-legal-hold-input :output
                                       cancel-legal-hold-output :errors
                                       (invalid-parameter-value-exception
                                        invalid-resource-state-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/legal-holds/{LegalHoldId}" :code 201)

(smithy/sdk/operation:define-operation create-backup-plan :shape-name
                                       "CreateBackupPlan" :input
                                       create-backup-plan-input :output
                                       create-backup-plan-output :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/backup/plans" :code
                                       200)

(smithy/sdk/operation:define-operation create-backup-selection :shape-name
                                       "CreateBackupSelection" :input
                                       create-backup-selection-input :output
                                       create-backup-selection-output :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup/plans/{BackupPlanId}/selections"
                                       :code 200)

(smithy/sdk/operation:define-operation create-backup-vault :shape-name
                                       "CreateBackupVault" :input
                                       create-backup-vault-input :output
                                       create-backup-vault-output :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup-vaults/{BackupVaultName}" :code
                                       200)

(smithy/sdk/operation:define-operation create-framework :shape-name
                                       "CreateFramework" :input
                                       create-framework-input :output
                                       create-framework-output :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/audit/frameworks"
                                       :code 200)

(smithy/sdk/operation:define-operation create-legal-hold :shape-name
                                       "CreateLegalHold" :input
                                       create-legal-hold-input :output
                                       create-legal-hold-output :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/legal-holds" :code
                                       200)

(smithy/sdk/operation:define-operation create-logically-air-gapped-backup-vault
                                       :shape-name
                                       "CreateLogicallyAirGappedBackupVault"
                                       :input
                                       create-logically-air-gapped-backup-vault-input
                                       :output
                                       create-logically-air-gapped-backup-vault-output
                                       :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/logically-air-gapped-backup-vaults/{BackupVaultName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-report-plan :shape-name
                                       "CreateReportPlan" :input
                                       create-report-plan-input :output
                                       create-report-plan-output :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/audit/report-plans" :code 200)

(smithy/sdk/operation:define-operation create-restore-access-backup-vault
                                       :shape-name
                                       "CreateRestoreAccessBackupVault" :input
                                       create-restore-access-backup-vault-input
                                       :output
                                       create-restore-access-backup-vault-output
                                       :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-access-backup-vaults" :code
                                       200)

(smithy/sdk/operation:define-operation create-restore-testing-plan :shape-name
                                       "CreateRestoreTestingPlan" :input
                                       create-restore-testing-plan-input
                                       :output
                                       create-restore-testing-plan-output
                                       :errors
                                       (already-exists-exception
                                        conflict-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-testing/plans" :code 201)

(smithy/sdk/operation:define-operation create-restore-testing-selection
                                       :shape-name
                                       "CreateRestoreTestingSelection" :input
                                       create-restore-testing-selection-input
                                       :output
                                       create-restore-testing-selection-output
                                       :errors
                                       (already-exists-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}/selections"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-backup-plan :shape-name
                                       "DeleteBackupPlan" :input
                                       delete-backup-plan-input :output
                                       delete-backup-plan-output :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup/plans/{BackupPlanId}" :code 200)

(smithy/sdk/operation:define-operation delete-backup-selection :shape-name
                                       "DeleteBackupSelection" :input
                                       delete-backup-selection-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup/plans/{BackupPlanId}/selections/{SelectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backup-vault :shape-name
                                       "DeleteBackupVault" :input
                                       delete-backup-vault-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-backup-vault-access-policy
                                       :shape-name
                                       "DeleteBackupVaultAccessPolicy" :input
                                       delete-backup-vault-access-policy-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}/access-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backup-vault-lock-configuration
                                       :shape-name
                                       "DeleteBackupVaultLockConfiguration"
                                       :input
                                       delete-backup-vault-lock-configuration-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}/vault-lock"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backup-vault-notifications
                                       :shape-name
                                       "DeleteBackupVaultNotifications" :input
                                       delete-backup-vault-notifications-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}/notification-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-framework :shape-name
                                       "DeleteFramework" :input
                                       delete-framework-input :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/audit/frameworks/{FrameworkName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-recovery-point :shape-name
                                       "DeleteRecoveryPoint" :input
                                       delete-recovery-point-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        invalid-resource-state-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-report-plan :shape-name
                                       "DeleteReportPlan" :input
                                       delete-report-plan-input :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/audit/report-plans/{ReportPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-restore-testing-plan :shape-name
                                       "DeleteRestoreTestingPlan" :input
                                       delete-restore-testing-plan-input
                                       :output common-lisp:null :errors
                                       (invalid-request-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-restore-testing-selection
                                       :shape-name
                                       "DeleteRestoreTestingSelection" :input
                                       delete-restore-testing-selection-input
                                       :output common-lisp:null :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-backup-job :shape-name
                                       "DescribeBackupJob" :input
                                       describe-backup-job-input :output
                                       describe-backup-job-output :errors
                                       (dependency-failure-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-jobs/{BackupJobId}" :code 200)

(smithy/sdk/operation:define-operation describe-backup-vault :shape-name
                                       "DescribeBackupVault" :input
                                       describe-backup-vault-input :output
                                       describe-backup-vault-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-copy-job :shape-name
                                       "DescribeCopyJob" :input
                                       describe-copy-job-input :output
                                       describe-copy-job-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/copy-jobs/{CopyJobId}" :code 200)

(smithy/sdk/operation:define-operation describe-framework :shape-name
                                       "DescribeFramework" :input
                                       describe-framework-input :output
                                       describe-framework-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/frameworks/{FrameworkName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-global-settings :shape-name
                                       "DescribeGlobalSettings" :input
                                       describe-global-settings-input :output
                                       describe-global-settings-output :errors
                                       (invalid-request-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/global-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-protected-resource :shape-name
                                       "DescribeProtectedResource" :input
                                       describe-protected-resource-input
                                       :output
                                       describe-protected-resource-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/resources/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation describe-recovery-point :shape-name
                                       "DescribeRecoveryPoint" :input
                                       describe-recovery-point-input :output
                                       describe-recovery-point-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-region-settings :shape-name
                                       "DescribeRegionSettings" :input
                                       describe-region-settings-input :output
                                       describe-region-settings-output :errors
                                       (service-unavailable-exception) :method
                                       "GET" :uri "/account-settings" :code 200)

(smithy/sdk/operation:define-operation describe-report-job :shape-name
                                       "DescribeReportJob" :input
                                       describe-report-job-input :output
                                       describe-report-job-output :errors
                                       (missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/report-jobs/{ReportJobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-report-plan :shape-name
                                       "DescribeReportPlan" :input
                                       describe-report-plan-input :output
                                       describe-report-plan-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/report-plans/{ReportPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-restore-job :shape-name
                                       "DescribeRestoreJob" :input
                                       describe-restore-job-input :output
                                       describe-restore-job-output :errors
                                       (dependency-failure-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-jobs/{RestoreJobId}" :code 200)

(smithy/sdk/operation:define-operation
 disassociate-backup-vault-mpa-approval-team :shape-name
 "DisassociateBackupVaultMpaApprovalTeam" :input
 disassociate-backup-vault-mpa-approval-team-input :output common-lisp:null
 :errors
 (invalid-parameter-value-exception invalid-request-exception
  missing-parameter-value-exception resource-not-found-exception
  service-unavailable-exception)
 :method "POST" :uri "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete"
 :code 204)

(smithy/sdk/operation:define-operation disassociate-recovery-point :shape-name
                                       "DisassociateRecoveryPoint" :input
                                       disassociate-recovery-point-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        invalid-resource-state-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-recovery-point-from-parent
                                       :shape-name
                                       "DisassociateRecoveryPointFromParent"
                                       :input
                                       disassociate-recovery-point-from-parent-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation"
                                       :code 204)

(smithy/sdk/operation:define-operation export-backup-plan-template :shape-name
                                       "ExportBackupPlanTemplate" :input
                                       export-backup-plan-template-input
                                       :output
                                       export-backup-plan-template-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/plans/{BackupPlanId}/toTemplate"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backup-plan :shape-name
                                       "GetBackupPlan" :input
                                       get-backup-plan-input :output
                                       get-backup-plan-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/plans/{BackupPlanId}" :code 200)

(smithy/sdk/operation:define-operation get-backup-plan-from-json :shape-name
                                       "GetBackupPlanFromJSON" :input
                                       get-backup-plan-from-jsoninput :output
                                       get-backup-plan-from-jsonoutput :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup/template/json/toPlan" :code 200)

(smithy/sdk/operation:define-operation get-backup-plan-from-template
                                       :shape-name "GetBackupPlanFromTemplate"
                                       :input
                                       get-backup-plan-from-template-input
                                       :output
                                       get-backup-plan-from-template-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/template/plans/{BackupPlanTemplateId}/toPlan"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backup-selection :shape-name
                                       "GetBackupSelection" :input
                                       get-backup-selection-input :output
                                       get-backup-selection-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/plans/{BackupPlanId}/selections/{SelectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backup-vault-access-policy
                                       :shape-name "GetBackupVaultAccessPolicy"
                                       :input
                                       get-backup-vault-access-policy-input
                                       :output
                                       get-backup-vault-access-policy-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/access-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backup-vault-notifications
                                       :shape-name
                                       "GetBackupVaultNotifications" :input
                                       get-backup-vault-notifications-input
                                       :output
                                       get-backup-vault-notifications-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/notification-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-legal-hold :shape-name
                                       "GetLegalHold" :input
                                       get-legal-hold-input :output
                                       get-legal-hold-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/legal-holds/{LegalHoldId}" :code 200)

(smithy/sdk/operation:define-operation get-recovery-point-index-details
                                       :shape-name
                                       "GetRecoveryPointIndexDetails" :input
                                       get-recovery-point-index-details-input
                                       :output
                                       get-recovery-point-index-details-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recovery-point-restore-metadata
                                       :shape-name
                                       "GetRecoveryPointRestoreMetadata" :input
                                       get-recovery-point-restore-metadata-input
                                       :output
                                       get-recovery-point-restore-metadata-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation get-restore-job-metadata :shape-name
                                       "GetRestoreJobMetadata" :input
                                       get-restore-job-metadata-input :output
                                       get-restore-job-metadata-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-jobs/{RestoreJobId}/metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation get-restore-testing-inferred-metadata
                                       :shape-name
                                       "GetRestoreTestingInferredMetadata"
                                       :input
                                       get-restore-testing-inferred-metadata-input
                                       :output
                                       get-restore-testing-inferred-metadata-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-testing/inferred-metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation get-restore-testing-plan :shape-name
                                       "GetRestoreTestingPlan" :input
                                       get-restore-testing-plan-input :output
                                       get-restore-testing-plan-output :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-restore-testing-selection
                                       :shape-name "GetRestoreTestingSelection"
                                       :input
                                       get-restore-testing-selection-input
                                       :output
                                       get-restore-testing-selection-output
                                       :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-supported-resource-types :shape-name
                                       "GetSupportedResourceTypes" :input
                                       common-lisp:null :output
                                       get-supported-resource-types-output
                                       :errors (service-unavailable-exception)
                                       :method "GET" :uri
                                       "/supported-resource-types" :code 200)

(smithy/sdk/operation:define-operation list-backup-job-summaries :shape-name
                                       "ListBackupJobSummaries" :input
                                       list-backup-job-summaries-input :output
                                       list-backup-job-summaries-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/backup-job-summaries" :code 200)

(smithy/sdk/operation:define-operation list-backup-jobs :shape-name
                                       "ListBackupJobs" :input
                                       list-backup-jobs-input :output
                                       list-backup-jobs-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/backup-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-backup-plan-templates :shape-name
                                       "ListBackupPlanTemplates" :input
                                       list-backup-plan-templates-input :output
                                       list-backup-plan-templates-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/template/plans" :code 200)

(smithy/sdk/operation:define-operation list-backup-plan-versions :shape-name
                                       "ListBackupPlanVersions" :input
                                       list-backup-plan-versions-input :output
                                       list-backup-plan-versions-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/plans/{BackupPlanId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-backup-plans :shape-name
                                       "ListBackupPlans" :input
                                       list-backup-plans-input :output
                                       list-backup-plans-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/backup/plans" :code
                                       200)

(smithy/sdk/operation:define-operation list-backup-selections :shape-name
                                       "ListBackupSelections" :input
                                       list-backup-selections-input :output
                                       list-backup-selections-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup/plans/{BackupPlanId}/selections"
                                       :code 200)

(smithy/sdk/operation:define-operation list-backup-vaults :shape-name
                                       "ListBackupVaults" :input
                                       list-backup-vaults-input :output
                                       list-backup-vaults-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/backup-vaults"
                                       :code 200)

(smithy/sdk/operation:define-operation list-copy-job-summaries :shape-name
                                       "ListCopyJobSummaries" :input
                                       list-copy-job-summaries-input :output
                                       list-copy-job-summaries-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/copy-job-summaries" :code 200)

(smithy/sdk/operation:define-operation list-copy-jobs :shape-name
                                       "ListCopyJobs" :input
                                       list-copy-jobs-input :output
                                       list-copy-jobs-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/copy-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-frameworks :shape-name
                                       "ListFrameworks" :input
                                       list-frameworks-input :output
                                       list-frameworks-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/audit/frameworks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-indexed-recovery-points :shape-name
                                       "ListIndexedRecoveryPoints" :input
                                       list-indexed-recovery-points-input
                                       :output
                                       list-indexed-recovery-points-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/indexes/recovery-point" :code 200)

(smithy/sdk/operation:define-operation list-legal-holds :shape-name
                                       "ListLegalHolds" :input
                                       list-legal-holds-input :output
                                       list-legal-holds-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/legal-holds" :code
                                       200)

(smithy/sdk/operation:define-operation list-protected-resources :shape-name
                                       "ListProtectedResources" :input
                                       list-protected-resources-input :output
                                       list-protected-resources-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/resources" :code
                                       200)

(smithy/sdk/operation:define-operation list-protected-resources-by-backup-vault
                                       :shape-name
                                       "ListProtectedResourcesByBackupVault"
                                       :input
                                       list-protected-resources-by-backup-vault-input
                                       :output
                                       list-protected-resources-by-backup-vault-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recovery-points-by-backup-vault
                                       :shape-name
                                       "ListRecoveryPointsByBackupVault" :input
                                       list-recovery-points-by-backup-vault-input
                                       :output
                                       list-recovery-points-by-backup-vault-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recovery-points-by-legal-hold
                                       :shape-name
                                       "ListRecoveryPointsByLegalHold" :input
                                       list-recovery-points-by-legal-hold-input
                                       :output
                                       list-recovery-points-by-legal-hold-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/legal-holds/{LegalHoldId}/recovery-points"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recovery-points-by-resource
                                       :shape-name
                                       "ListRecoveryPointsByResource" :input
                                       list-recovery-points-by-resource-input
                                       :output
                                       list-recovery-points-by-resource-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/resources/{ResourceArn}/recovery-points"
                                       :code 200)

(smithy/sdk/operation:define-operation list-report-jobs :shape-name
                                       "ListReportJobs" :input
                                       list-report-jobs-input :output
                                       list-report-jobs-output :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/audit/report-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-report-plans :shape-name
                                       "ListReportPlans" :input
                                       list-report-plans-input :output
                                       list-report-plans-output :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/audit/report-plans"
                                       :code 200)

(smithy/sdk/operation:define-operation list-restore-access-backup-vaults
                                       :shape-name
                                       "ListRestoreAccessBackupVaults" :input
                                       list-restore-access-backup-vaults-input
                                       :output
                                       list-restore-access-backup-vaults-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults"
                                       :code 200)

(smithy/sdk/operation:define-operation list-restore-job-summaries :shape-name
                                       "ListRestoreJobSummaries" :input
                                       list-restore-job-summaries-input :output
                                       list-restore-job-summaries-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/audit/restore-job-summaries" :code 200)

(smithy/sdk/operation:define-operation list-restore-jobs :shape-name
                                       "ListRestoreJobs" :input
                                       list-restore-jobs-input :output
                                       list-restore-jobs-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/restore-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-restore-jobs-by-protected-resource
                                       :shape-name
                                       "ListRestoreJobsByProtectedResource"
                                       :input
                                       list-restore-jobs-by-protected-resource-input
                                       :output
                                       list-restore-jobs-by-protected-resource-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/resources/{ResourceArn}/restore-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-restore-testing-plans :shape-name
                                       "ListRestoreTestingPlans" :input
                                       list-restore-testing-plans-input :output
                                       list-restore-testing-plans-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-testing/plans" :code 200)

(smithy/sdk/operation:define-operation list-restore-testing-selections
                                       :shape-name
                                       "ListRestoreTestingSelections" :input
                                       list-restore-testing-selections-input
                                       :output
                                       list-restore-testing-selections-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}/selections"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-input :output list-tags-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-backup-vault-access-policy
                                       :shape-name "PutBackupVaultAccessPolicy"
                                       :input
                                       put-backup-vault-access-policy-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup-vaults/{BackupVaultName}/access-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-backup-vault-lock-configuration
                                       :shape-name
                                       "PutBackupVaultLockConfiguration" :input
                                       put-backup-vault-lock-configuration-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup-vaults/{BackupVaultName}/vault-lock"
                                       :code 200)

(smithy/sdk/operation:define-operation put-backup-vault-notifications
                                       :shape-name
                                       "PutBackupVaultNotifications" :input
                                       put-backup-vault-notifications-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/backup-vaults/{BackupVaultName}/notification-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation put-restore-validation-result
                                       :shape-name "PutRestoreValidationResult"
                                       :input
                                       put-restore-validation-result-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-jobs/{RestoreJobId}/validations"
                                       :code 204)

(smithy/sdk/operation:define-operation revoke-restore-access-backup-vault
                                       :shape-name
                                       "RevokeRestoreAccessBackupVault" :input
                                       revoke-restore-access-backup-vault-input
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-backup-job :shape-name
                                       "StartBackupJob" :input
                                       start-backup-job-input :output
                                       start-backup-job-output :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/backup-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation start-copy-job :shape-name
                                       "StartCopyJob" :input
                                       start-copy-job-input :output
                                       start-copy-job-output :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/copy-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation start-report-job :shape-name
                                       "StartReportJob" :input
                                       start-report-job-input :output
                                       start-report-job-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/audit/report-jobs/{ReportPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-restore-job :shape-name
                                       "StartRestoreJob" :input
                                       start-restore-job-input :output
                                       start-restore-job-output :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/restore-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation stop-backup-job :shape-name
                                       "StopBackupJob" :input
                                       stop-backup-job-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup-jobs/{BackupJobId}" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/untag/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-backup-plan :shape-name
                                       "UpdateBackupPlan" :input
                                       update-backup-plan-input :output
                                       update-backup-plan-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup/plans/{BackupPlanId}" :code 200)

(smithy/sdk/operation:define-operation update-framework :shape-name
                                       "UpdateFramework" :input
                                       update-framework-input :output
                                       update-framework-output :errors
                                       (already-exists-exception
                                        conflict-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/audit/frameworks/{FrameworkName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-global-settings :shape-name
                                       "UpdateGlobalSettings" :input
                                       update-global-settings-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/global-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation update-recovery-point-index-settings
                                       :shape-name
                                       "UpdateRecoveryPointIndexSettings"
                                       :input
                                       update-recovery-point-index-settings-input
                                       :output
                                       update-recovery-point-index-settings-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index"
                                       :code 200)

(smithy/sdk/operation:define-operation update-recovery-point-lifecycle
                                       :shape-name
                                       "UpdateRecoveryPointLifecycle" :input
                                       update-recovery-point-lifecycle-input
                                       :output
                                       update-recovery-point-lifecycle-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        invalid-request-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-region-settings :shape-name
                                       "UpdateRegionSettings" :input
                                       update-region-settings-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/account-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation update-report-plan :shape-name
                                       "UpdateReportPlan" :input
                                       update-report-plan-input :output
                                       update-report-plan-output :errors
                                       (conflict-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/audit/report-plans/{ReportPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-restore-testing-plan :shape-name
                                       "UpdateRestoreTestingPlan" :input
                                       update-restore-testing-plan-input
                                       :output
                                       update-restore-testing-plan-output
                                       :errors
                                       (conflict-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-restore-testing-selection
                                       :shape-name
                                       "UpdateRestoreTestingSelection" :input
                                       update-restore-testing-selection-input
                                       :output
                                       update-restore-testing-selection-output
                                       :errors
                                       (conflict-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}"
                                       :code 200)
