(uiop/package:define-package #:pira/dlm (:use)
                             (:export #:action #:action-list #:action-name
                              #:archive-retain-rule #:archive-rule
                              #:availability-zone #:availability-zone-list
                              #:aws-account-id #:cmk-arn #:copy-tags
                              #:copy-tags-nullable #:count #:create-interval
                              #:create-lifecycle-policy
                              #:create-lifecycle-policy-request
                              #:create-lifecycle-policy-response #:create-rule
                              #:cron-expression #:cross-region-copy-action
                              #:cross-region-copy-action-list
                              #:cross-region-copy-deprecate-rule
                              #:cross-region-copy-retain-rule
                              #:cross-region-copy-rule
                              #:cross-region-copy-rules
                              #:cross-region-copy-target
                              #:cross-region-copy-target-list
                              #:default-policies-type-values #:default-policy
                              #:default-policy-type-values
                              #:delete-lifecycle-policy
                              #:delete-lifecycle-policy-request
                              #:delete-lifecycle-policy-response
                              #:deprecate-rule #:description-regex #:encrypted
                              #:encryption-configuration #:error-code
                              #:error-message #:event-parameters #:event-source
                              #:event-source-values #:event-type-values
                              #:exclude-boot-volume #:exclude-boot-volumes
                              #:exclude-data-volume-tag-list
                              #:exclude-tags-list #:exclude-volume-types-list
                              #:exclusions
                              #:execute-operation-on-script-failure
                              #:execution-handler
                              #:execution-handler-service-values
                              #:execution-role-arn #:extend-deletion
                              #:fast-restore-rule #:get-lifecycle-policies
                              #:get-lifecycle-policies-request
                              #:get-lifecycle-policies-response
                              #:get-lifecycle-policy
                              #:get-lifecycle-policy-request
                              #:get-lifecycle-policy-response
                              #:gettable-policy-state-values
                              #:internal-server-exception #:interval
                              #:interval-unit-values
                              #:invalid-request-exception #:lifecycle-policy
                              #:lifecycle-policy-summary
                              #:lifecycle-policy-summary-list
                              #:limit-exceeded-exception
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:location-values #:no-reboot #:parameter
                              #:parameter-list #:parameters #:policy-arn
                              #:policy-description #:policy-details #:policy-id
                              #:policy-id-list #:policy-language-values
                              #:policy-type-values #:resource-location-list
                              #:resource-location-values
                              #:resource-not-found-exception
                              #:resource-type-values
                              #:resource-type-values-list #:retain-interval
                              #:retain-rule #:retention-archive-tier
                              #:retention-interval-unit-values #:schedule
                              #:schedule-list #:schedule-name #:script
                              #:script-execution-timeout
                              #:script-maximum-retry-count #:scripts-list
                              #:settable-policy-state-values #:share-rule
                              #:share-rules #:share-target-account-list
                              #:snapshot-owner-list #:stage-values
                              #:stages-list #:standard-tier-retain-rule-count
                              #:standard-tier-retain-rule-interval
                              #:status-message #:string #:tag #:tag-filter
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags-to-add-filter-list
                              #:tags-to-add-list #:target #:target-region
                              #:target-tag-list #:target-tags-filter-list
                              #:time #:times-list #:timestamp #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-lifecycle-policy
                              #:update-lifecycle-policy-request
                              #:update-lifecycle-policy-response
                              #:variable-tags-list #:volume-type-values
                              #:dlm-20180112))
(common-lisp:in-package #:pira/dlm)

(smithy/sdk/service:define-service dlm-20180112 :shape-name "dlm_20180112"
                                   :version "2018-01-12" :title
                                   "Amazon Data Lifecycle Manager" :traits
                                   '(("aws.api#service" ("sdkId" . "DLM")
                                      ("arnNamespace" . "dlm")
                                      ("cloudFormationName" . "DLM")
                                      ("cloudTrailEventSource"
                                       . "dlm.amazonaws.com")
                                      ("endpointPrefix" . "dlm"))
                                     ("aws.auth#sigv4" ("name" . "dlm"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((name :target-type action-name :required
                                      common-lisp:t :member-name "Name")
                                     (cross-region-copy :target-type
                                      cross-region-copy-action-list :required
                                      common-lisp:t :member-name
                                      "CrossRegionCopy"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-list action-list :member action)

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure archive-retain-rule common-lisp:nil
                                    ((retention-archive-tier :target-type
                                      retention-archive-tier :required
                                      common-lisp:t :member-name
                                      "RetentionArchiveTier"))
                                    (:shape-name "ArchiveRetainRule"))

(smithy/sdk/shapes:define-structure archive-rule common-lisp:nil
                                    ((retain-rule :target-type
                                      archive-retain-rule :required
                                      common-lisp:t :member-name "RetainRule"))
                                    (:shape-name "ArchiveRule"))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zone-list :member availability-zone)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cmk-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-tags smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type copy-tags-nullable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type create-interval smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-lifecycle-policy-request common-lisp:nil
                                ((execution-role-arn :target-type
                                  execution-role-arn :required common-lisp:t
                                  :member-name "ExecutionRoleArn")
                                 (description :target-type policy-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (state :target-type
                                  settable-policy-state-values :required
                                  common-lisp:t :member-name "State")
                                 (policy-details :target-type policy-details
                                  :member-name "PolicyDetails")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (default-policy :target-type
                                  default-policy-type-values :member-name
                                  "DefaultPolicy")
                                 (create-interval :target-type create-interval
                                  :member-name "CreateInterval")
                                 (retain-interval :target-type retain-interval
                                  :member-name "RetainInterval")
                                 (copy-tags :target-type copy-tags-nullable
                                  :member-name "CopyTags")
                                 (extend-deletion :target-type extend-deletion
                                  :member-name "ExtendDeletion")
                                 (cross-region-copy-targets :target-type
                                  cross-region-copy-target-list :member-name
                                  "CrossRegionCopyTargets")
                                 (exclusions :target-type exclusions
                                  :member-name "Exclusions"))
                                (:shape-name "CreateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output create-lifecycle-policy-response
                                 common-lisp:nil
                                 ((policy-id :target-type policy-id
                                   :member-name "PolicyId"))
                                 (:shape-name "CreateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure create-rule common-lisp:nil
                                    ((location :target-type location-values
                                      :member-name "Location")
                                     (interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      interval-unit-values :member-name
                                      "IntervalUnit")
                                     (times :target-type times-list
                                      :member-name "Times")
                                     (cron-expression :target-type
                                      cron-expression :member-name
                                      "CronExpression")
                                     (scripts :target-type scripts-list
                                      :member-name "Scripts"))
                                    (:shape-name "CreateRule"))

(smithy/sdk/shapes:define-type cron-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cross-region-copy-action common-lisp:nil
                                    ((target :target-type target :required
                                      common-lisp:t :member-name "Target")
                                     (encryption-configuration :target-type
                                      encryption-configuration :required
                                      common-lisp:t :member-name
                                      "EncryptionConfiguration")
                                     (retain-rule :target-type
                                      cross-region-copy-retain-rule
                                      :member-name "RetainRule"))
                                    (:shape-name "CrossRegionCopyAction"))

(smithy/sdk/shapes:define-list cross-region-copy-action-list :member
                               cross-region-copy-action)

(smithy/sdk/shapes:define-structure cross-region-copy-deprecate-rule
                                    common-lisp:nil
                                    ((interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit"))
                                    (:shape-name
                                     "CrossRegionCopyDeprecateRule"))

(smithy/sdk/shapes:define-structure cross-region-copy-retain-rule
                                    common-lisp:nil
                                    ((interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit"))
                                    (:shape-name "CrossRegionCopyRetainRule"))

(smithy/sdk/shapes:define-structure cross-region-copy-rule common-lisp:nil
                                    ((target-region :target-type target-region
                                      :member-name "TargetRegion")
                                     (target :target-type target :member-name
                                      "Target")
                                     (encrypted :target-type encrypted
                                      :required common-lisp:t :member-name
                                      "Encrypted")
                                     (cmk-arn :target-type cmk-arn :member-name
                                      "CmkArn")
                                     (copy-tags :target-type copy-tags-nullable
                                      :member-name "CopyTags")
                                     (retain-rule :target-type
                                      cross-region-copy-retain-rule
                                      :member-name "RetainRule")
                                     (deprecate-rule :target-type
                                      cross-region-copy-deprecate-rule
                                      :member-name "DeprecateRule"))
                                    (:shape-name "CrossRegionCopyRule"))

(smithy/sdk/shapes:define-list cross-region-copy-rules :member
                               cross-region-copy-rule)

(smithy/sdk/shapes:define-structure cross-region-copy-target common-lisp:nil
                                    ((target-region :target-type target-region
                                      :member-name "TargetRegion"))
                                    (:shape-name "CrossRegionCopyTarget"))

(smithy/sdk/shapes:define-list cross-region-copy-target-list :member
                               cross-region-copy-target)

(smithy/sdk/shapes:define-enum default-policies-type-values
    common-lisp:nil
  (:volume "VOLUME")
  (:instance "INSTANCE")
  (:all "ALL"))

(smithy/sdk/shapes:define-type default-policy smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum default-policy-type-values
    common-lisp:nil
  (:volume "VOLUME")
  (:instance "INSTANCE"))

(smithy/sdk/shapes:define-input delete-lifecycle-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output delete-lifecycle-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure deprecate-rule common-lisp:nil
                                    ((count :target-type count :member-name
                                      "Count")
                                     (interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit"))
                                    (:shape-name "DeprecateRule"))

(smithy/sdk/shapes:define-type description-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encrypted smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((encrypted :target-type encrypted
                                      :required common-lisp:t :member-name
                                      "Encrypted")
                                     (cmk-arn :target-type cmk-arn :member-name
                                      "CmkArn"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-parameters common-lisp:nil
                                    ((event-type :target-type event-type-values
                                      :required common-lisp:t :member-name
                                      "EventType")
                                     (snapshot-owner :target-type
                                      snapshot-owner-list :required
                                      common-lisp:t :member-name
                                      "SnapshotOwner")
                                     (description-regex :target-type
                                      description-regex :required common-lisp:t
                                      :member-name "DescriptionRegex"))
                                    (:shape-name "EventParameters"))

(smithy/sdk/shapes:define-structure event-source common-lisp:nil
                                    ((type :target-type event-source-values
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (parameters :target-type event-parameters
                                      :member-name "Parameters"))
                                    (:shape-name "EventSource"))

(smithy/sdk/shapes:define-enum event-source-values
    common-lisp:nil
  (:managed-cwe "MANAGED_CWE"))

(smithy/sdk/shapes:define-enum event-type-values
    common-lisp:nil
  (:share-snapshot "shareSnapshot"))

(smithy/sdk/shapes:define-type exclude-boot-volume
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type exclude-boot-volumes
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list exclude-data-volume-tag-list :member tag)

(smithy/sdk/shapes:define-list exclude-tags-list :member tag)

(smithy/sdk/shapes:define-list exclude-volume-types-list :member
                               volume-type-values)

(smithy/sdk/shapes:define-structure exclusions common-lisp:nil
                                    ((exclude-boot-volumes :target-type
                                      exclude-boot-volumes :member-name
                                      "ExcludeBootVolumes")
                                     (exclude-volume-types :target-type
                                      exclude-volume-types-list :member-name
                                      "ExcludeVolumeTypes")
                                     (exclude-tags :target-type
                                      exclude-tags-list :member-name
                                      "ExcludeTags"))
                                    (:shape-name "Exclusions"))

(smithy/sdk/shapes:define-type execute-operation-on-script-failure
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type execution-handler smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-handler-service-values
    common-lisp:nil
  (:aws-systems-manager "AWS_SYSTEMS_MANAGER"))

(smithy/sdk/shapes:define-type execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type extend-deletion smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure fast-restore-rule common-lisp:nil
                                    ((count :target-type count :member-name
                                      "Count")
                                     (interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit")
                                     (availability-zones :target-type
                                      availability-zone-list :required
                                      common-lisp:t :member-name
                                      "AvailabilityZones"))
                                    (:shape-name "FastRestoreRule"))

(smithy/sdk/shapes:define-input get-lifecycle-policies-request common-lisp:nil
                                ((policy-ids :target-type policy-id-list
                                  :member-name "PolicyIds" :http-query
                                  "policyIds")
                                 (state :target-type
                                  gettable-policy-state-values :member-name
                                  "State" :http-query "state")
                                 (resource-types :target-type
                                  resource-type-values-list :member-name
                                  "ResourceTypes" :http-query "resourceTypes")
                                 (target-tags :target-type
                                  target-tags-filter-list :member-name
                                  "TargetTags" :http-query "targetTags")
                                 (tags-to-add :target-type
                                  tags-to-add-filter-list :member-name
                                  "TagsToAdd" :http-query "tagsToAdd")
                                 (default-policy-type :target-type
                                  default-policies-type-values :member-name
                                  "DefaultPolicyType" :http-query
                                  "defaultPolicyType"))
                                (:shape-name "GetLifecyclePoliciesRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-policies-response
                                 common-lisp:nil
                                 ((policies :target-type
                                   lifecycle-policy-summary-list :member-name
                                   "Policies"))
                                 (:shape-name "GetLifecyclePoliciesResponse"))

(smithy/sdk/shapes:define-input get-lifecycle-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-policy-response common-lisp:nil
                                 ((policy :target-type lifecycle-policy
                                   :member-name "Policy"))
                                 (:shape-name "GetLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-enum gettable-policy-state-values
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type interval smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum interval-unit-values
    common-lisp:nil
  (:hours "HOURS"))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code")
                                 (required-parameters :target-type
                                  parameter-list :member-name
                                  "RequiredParameters")
                                 (mutually-exclusive-parameters :target-type
                                  parameter-list :member-name
                                  "MutuallyExclusiveParameters"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure lifecycle-policy common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (description :target-type
                                      policy-description :member-name
                                      "Description")
                                     (state :target-type
                                      gettable-policy-state-values :member-name
                                      "State")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (execution-role-arn :target-type
                                      execution-role-arn :member-name
                                      "ExecutionRoleArn")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified")
                                     (policy-details :target-type
                                      policy-details :member-name
                                      "PolicyDetails")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (policy-arn :target-type policy-arn
                                      :member-name "PolicyArn")
                                     (default-policy :target-type
                                      default-policy :member-name
                                      "DefaultPolicy"))
                                    (:shape-name "LifecyclePolicy"))

(smithy/sdk/shapes:define-structure lifecycle-policy-summary common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (description :target-type
                                      policy-description :member-name
                                      "Description")
                                     (state :target-type
                                      gettable-policy-state-values :member-name
                                      "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (policy-type :target-type
                                      policy-type-values :member-name
                                      "PolicyType")
                                     (default-policy :target-type
                                      default-policy :member-name
                                      "DefaultPolicy"))
                                    (:shape-name "LifecyclePolicySummary"))

(smithy/sdk/shapes:define-list lifecycle-policy-summary-list :member
                               lifecycle-policy-summary)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type policy-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum location-values
    common-lisp:nil
  (:cloud "CLOUD")
  (:outpost-local "OUTPOST_LOCAL")
  (:local-zone "LOCAL_ZONE"))

(smithy/sdk/shapes:define-type no-reboot smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-list :member parameter)

(smithy/sdk/shapes:define-structure parameters common-lisp:nil
                                    ((exclude-boot-volume :target-type
                                      exclude-boot-volume :member-name
                                      "ExcludeBootVolume")
                                     (no-reboot :target-type no-reboot
                                      :member-name "NoReboot")
                                     (exclude-data-volume-tags :target-type
                                      exclude-data-volume-tag-list :member-name
                                      "ExcludeDataVolumeTags"))
                                    (:shape-name "Parameters"))

(smithy/sdk/shapes:define-type policy-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-details common-lisp:nil
                                    ((policy-type :target-type
                                      policy-type-values :member-name
                                      "PolicyType")
                                     (resource-types :target-type
                                      resource-type-values-list :member-name
                                      "ResourceTypes")
                                     (resource-locations :target-type
                                      resource-location-list :member-name
                                      "ResourceLocations")
                                     (target-tags :target-type target-tag-list
                                      :member-name "TargetTags")
                                     (schedules :target-type schedule-list
                                      :member-name "Schedules")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (event-source :target-type event-source
                                      :member-name "EventSource")
                                     (actions :target-type action-list
                                      :member-name "Actions")
                                     (policy-language :target-type
                                      policy-language-values :member-name
                                      "PolicyLanguage")
                                     (resource-type :target-type
                                      resource-type-values :member-name
                                      "ResourceType")
                                     (create-interval :target-type
                                      create-interval :member-name
                                      "CreateInterval")
                                     (retain-interval :target-type
                                      retain-interval :member-name
                                      "RetainInterval")
                                     (copy-tags :target-type copy-tags-nullable
                                      :member-name "CopyTags")
                                     (cross-region-copy-targets :target-type
                                      cross-region-copy-target-list
                                      :member-name "CrossRegionCopyTargets")
                                     (extend-deletion :target-type
                                      extend-deletion :member-name
                                      "ExtendDeletion")
                                     (exclusions :target-type exclusions
                                      :member-name "Exclusions"))
                                    (:shape-name "PolicyDetails"))

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-id-list :member policy-id)

(smithy/sdk/shapes:define-enum policy-language-values
    common-lisp:nil
  (:simplified "SIMPLIFIED")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-enum policy-type-values
    common-lisp:nil
  (:ebs-snapshot-management "EBS_SNAPSHOT_MANAGEMENT")
  (:image-management "IMAGE_MANAGEMENT")
  (:event-based-policy "EVENT_BASED_POLICY"))

(smithy/sdk/shapes:define-list resource-location-list :member
                               resource-location-values)

(smithy/sdk/shapes:define-enum resource-location-values
    common-lisp:nil
  (:cloud "CLOUD")
  (:outpost "OUTPOST")
  (:local-zone "LOCAL_ZONE"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (code :target-type error-code :member-name
                                  "Code")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (resource-ids :target-type policy-id-list
                                  :member-name "ResourceIds"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type-values
    common-lisp:nil
  (:volume "VOLUME")
  (:instance "INSTANCE"))

(smithy/sdk/shapes:define-list resource-type-values-list :member
                               resource-type-values)

(smithy/sdk/shapes:define-type retain-interval smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retain-rule common-lisp:nil
                                    ((count :target-type
                                      standard-tier-retain-rule-count
                                      :member-name "Count")
                                     (interval :target-type
                                      standard-tier-retain-rule-interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit"))
                                    (:shape-name "RetainRule"))

(smithy/sdk/shapes:define-structure retention-archive-tier common-lisp:nil
                                    ((count :target-type count :member-name
                                      "Count")
                                     (interval :target-type interval
                                      :member-name "Interval")
                                     (interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "IntervalUnit"))
                                    (:shape-name "RetentionArchiveTier"))

(smithy/sdk/shapes:define-enum retention-interval-unit-values
    common-lisp:nil
  (:days "DAYS")
  (:weeks "WEEKS")
  (:months "MONTHS")
  (:years "YEARS"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((name :target-type schedule-name
                                      :member-name "Name")
                                     (copy-tags :target-type copy-tags
                                      :member-name "CopyTags")
                                     (tags-to-add :target-type tags-to-add-list
                                      :member-name "TagsToAdd")
                                     (variable-tags :target-type
                                      variable-tags-list :member-name
                                      "VariableTags")
                                     (create-rule :target-type create-rule
                                      :member-name "CreateRule")
                                     (retain-rule :target-type retain-rule
                                      :member-name "RetainRule")
                                     (fast-restore-rule :target-type
                                      fast-restore-rule :member-name
                                      "FastRestoreRule")
                                     (cross-region-copy-rules :target-type
                                      cross-region-copy-rules :member-name
                                      "CrossRegionCopyRules")
                                     (share-rules :target-type share-rules
                                      :member-name "ShareRules")
                                     (deprecate-rule :target-type
                                      deprecate-rule :member-name
                                      "DeprecateRule")
                                     (archive-rule :target-type archive-rule
                                      :member-name "ArchiveRule"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-list schedule-list :member schedule)

(smithy/sdk/shapes:define-type schedule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure script common-lisp:nil
                                    ((stages :target-type stages-list
                                      :member-name "Stages")
                                     (execution-handler-service :target-type
                                      execution-handler-service-values
                                      :member-name "ExecutionHandlerService")
                                     (execution-handler :target-type
                                      execution-handler :required common-lisp:t
                                      :member-name "ExecutionHandler")
                                     (execute-operation-on-script-failure
                                      :target-type
                                      execute-operation-on-script-failure
                                      :member-name
                                      "ExecuteOperationOnScriptFailure")
                                     (execution-timeout :target-type
                                      script-execution-timeout :member-name
                                      "ExecutionTimeout")
                                     (maximum-retry-count :target-type
                                      script-maximum-retry-count :member-name
                                      "MaximumRetryCount"))
                                    (:shape-name "Script"))

(smithy/sdk/shapes:define-type script-execution-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type script-maximum-retry-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list scripts-list :member script)

(smithy/sdk/shapes:define-enum settable-policy-state-values
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure share-rule common-lisp:nil
                                    ((target-accounts :target-type
                                      share-target-account-list :required
                                      common-lisp:t :member-name
                                      "TargetAccounts")
                                     (unshare-interval :target-type interval
                                      :member-name "UnshareInterval")
                                     (unshare-interval-unit :target-type
                                      retention-interval-unit-values
                                      :member-name "UnshareIntervalUnit"))
                                    (:shape-name "ShareRule"))

(smithy/sdk/shapes:define-list share-rules :member share-rule)

(smithy/sdk/shapes:define-list share-target-account-list :member aws-account-id)

(smithy/sdk/shapes:define-list snapshot-owner-list :member aws-account-id)

(smithy/sdk/shapes:define-enum stage-values
    common-lisp:nil
  (:pre "PRE")
  (:post "POST"))

(smithy/sdk/shapes:define-list stages-list :member stage-values)

(smithy/sdk/shapes:define-type standard-tier-retain-rule-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type standard-tier-retain-rule-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type policy-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags-to-add-filter-list :member tag-filter)

(smithy/sdk/shapes:define-list tags-to-add-list :member tag)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-tag-list :member tag)

(smithy/sdk/shapes:define-list target-tags-filter-list :member tag-filter)

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list times-list :member time)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type policy-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-lifecycle-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"
                                  :http-label common-lisp:t)
                                 (execution-role-arn :target-type
                                  execution-role-arn :member-name
                                  "ExecutionRoleArn")
                                 (state :target-type
                                  settable-policy-state-values :member-name
                                  "State")
                                 (description :target-type policy-description
                                  :member-name "Description")
                                 (policy-details :target-type policy-details
                                  :member-name "PolicyDetails")
                                 (create-interval :target-type create-interval
                                  :member-name "CreateInterval")
                                 (retain-interval :target-type retain-interval
                                  :member-name "RetainInterval")
                                 (copy-tags :target-type copy-tags-nullable
                                  :member-name "CopyTags")
                                 (extend-deletion :target-type extend-deletion
                                  :member-name "ExtendDeletion")
                                 (cross-region-copy-targets :target-type
                                  cross-region-copy-target-list :member-name
                                  "CrossRegionCopyTargets")
                                 (exclusions :target-type exclusions
                                  :member-name "Exclusions"))
                                (:shape-name "UpdateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output update-lifecycle-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-list variable-tags-list :member tag)

(smithy/sdk/shapes:define-type volume-type-values
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-lifecycle-policy :shape-name
                                       "CreateLifecyclePolicy" :input
                                       create-lifecycle-policy-request :output
                                       create-lifecycle-policy-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        limit-exceeded-exception)
                                       :method "POST" :uri "/policies" :code
                                       200)

(smithy/sdk/operation:define-operation delete-lifecycle-policy :shape-name
                                       "DeleteLifecyclePolicy" :input
                                       delete-lifecycle-policy-request :output
                                       delete-lifecycle-policy-response :errors
                                       (internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/policies/{PolicyId}" :code 200)

(smithy/sdk/operation:define-operation get-lifecycle-policies :shape-name
                                       "GetLifecyclePolicies" :input
                                       get-lifecycle-policies-request :output
                                       get-lifecycle-policies-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/policies" :code 200)

(smithy/sdk/operation:define-operation get-lifecycle-policy :shape-name
                                       "GetLifecyclePolicy" :input
                                       get-lifecycle-policy-request :output
                                       get-lifecycle-policy-response :errors
                                       (internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/policies/{PolicyId}" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-lifecycle-policy :shape-name
                                       "UpdateLifecyclePolicy" :input
                                       update-lifecycle-policy-request :output
                                       update-lifecycle-policy-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/policies/{PolicyId}" :code 200)
