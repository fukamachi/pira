(uiop/package:define-package #:pira/s3-control (:use)
                             (:export #:awss3control-service-v20180820
                              #:abort-incomplete-multipart-upload
                              #:access-control-translation #:access-grant-arn
                              #:access-grant-id #:access-grants-instance-arn
                              #:access-grants-instance-id
                              #:access-grants-instances-list
                              #:access-grants-list #:access-grants-location-arn
                              #:access-grants-location-configuration
                              #:access-grants-location-id
                              #:access-grants-locations-list #:access-key-id
                              #:access-point #:access-point-bucket-name
                              #:access-point-list #:access-point-name
                              #:account-id #:account-level #:activity-metrics
                              #:advanced-cost-optimization-metrics
                              #:advanced-data-protection-metrics #:alias
                              #:associate-access-grants-identity-center
                              #:async-creation-timestamp #:async-error-details
                              #:async-operation #:async-operation-name
                              #:async-request-parameters #:async-request-status
                              #:async-request-token-arn
                              #:async-response-details
                              #:aws-lambda-transformation
                              #:aws-lambda-transformation-payload #:aws-org-arn
                              #:boolean #:bucket-canned-acl
                              #:bucket-identifier-string #:bucket-level
                              #:bucket-location-constraint #:bucket-name
                              #:bucket-versioning-status #:buckets
                              #:caller-access-grants-list #:cloud-watch-metrics
                              #:config-id #:confirm-remove-self-bucket-access
                              #:confirmation-required #:continuation-token
                              #:create-access-grant
                              #:create-access-grants-instance
                              #:create-access-grants-location
                              #:create-access-point
                              #:create-access-point-for-object-lambda
                              #:create-bucket #:create-bucket-configuration
                              #:create-job #:create-multi-region-access-point
                              #:create-multi-region-access-point-input
                              #:create-storage-lens-group #:creation-date
                              #:creation-timestamp #:credentials
                              #:data-source-id #:data-source-type #:date #:days
                              #:days-after-initiation #:delete-access-grant
                              #:delete-access-grants-instance
                              #:delete-access-grants-instance-resource-policy
                              #:delete-access-grants-location
                              #:delete-access-point
                              #:delete-access-point-for-object-lambda
                              #:delete-access-point-policy
                              #:delete-access-point-policy-for-object-lambda
                              #:delete-access-point-scope #:delete-bucket
                              #:delete-bucket-lifecycle-configuration
                              #:delete-bucket-policy
                              #:delete-bucket-replication
                              #:delete-bucket-tagging #:delete-job-tagging
                              #:delete-marker-replication
                              #:delete-marker-replication-status
                              #:delete-multi-region-access-point
                              #:delete-multi-region-access-point-input
                              #:delete-public-access-block
                              #:delete-storage-lens-configuration
                              #:delete-storage-lens-configuration-tagging
                              #:delete-storage-lens-group #:describe-job
                              #:describe-multi-region-access-point-operation
                              #:destination #:detailed-status-codes-metrics
                              #:dissociate-access-grants-identity-center
                              #:duration-seconds #:encryption-configuration
                              #:endpoints
                              #:established-multi-region-access-point-policy
                              #:exception-message #:exclude
                              #:existing-object-replication
                              #:existing-object-replication-status #:expiration
                              #:expiration-status
                              #:expired-object-delete-marker #:format
                              #:function-arn-string
                              #:generated-manifest-encryption
                              #:generated-manifest-format #:get-access-grant
                              #:get-access-grants-instance
                              #:get-access-grants-instance-for-prefix
                              #:get-access-grants-instance-resource-policy
                              #:get-access-grants-location #:get-access-point
                              #:get-access-point-configuration-for-object-lambda
                              #:get-access-point-for-object-lambda
                              #:get-access-point-policy
                              #:get-access-point-policy-for-object-lambda
                              #:get-access-point-policy-status
                              #:get-access-point-policy-status-for-object-lambda
                              #:get-access-point-scope #:get-bucket
                              #:get-bucket-lifecycle-configuration
                              #:get-bucket-policy #:get-bucket-replication
                              #:get-bucket-tagging #:get-bucket-versioning
                              #:get-data-access #:get-job-tagging
                              #:get-multi-region-access-point
                              #:get-multi-region-access-point-policy
                              #:get-multi-region-access-point-policy-status
                              #:get-multi-region-access-point-routes
                              #:get-public-access-block
                              #:get-storage-lens-configuration
                              #:get-storage-lens-configuration-tagging
                              #:get-storage-lens-group #:grant-full-control
                              #:grant-read #:grant-read-acp #:grant-write
                              #:grant-write-acp #:grantee #:grantee-identifier
                              #:grantee-type #:iamrole-arn #:id
                              #:identity-center-application-arn
                              #:identity-center-arn #:include #:is-enabled
                              #:is-public #:job-arn #:job-creation-time
                              #:job-descriptor #:job-failure #:job-failure-code
                              #:job-failure-list #:job-failure-reason #:job-id
                              #:job-list-descriptor #:job-list-descriptor-list
                              #:job-manifest #:job-manifest-field-list
                              #:job-manifest-field-name #:job-manifest-format
                              #:job-manifest-generator
                              #:job-manifest-generator-filter
                              #:job-manifest-location #:job-manifest-spec
                              #:job-number-of-tasks-failed
                              #:job-number-of-tasks-succeeded #:job-operation
                              #:job-priority #:job-progress-summary
                              #:job-report #:job-report-format
                              #:job-report-scope #:job-status #:job-status-list
                              #:job-status-update-reason #:job-termination-date
                              #:job-time-in-state-seconds #:job-timers
                              #:job-total-number-of-tasks #:key-name-constraint
                              #:kms-key-arn-string #:lambda-invoke-operation
                              #:lifecycle-configuration #:lifecycle-expiration
                              #:lifecycle-rule #:lifecycle-rule-and-operator
                              #:lifecycle-rule-filter #:lifecycle-rules
                              #:list-access-grant-entry #:list-access-grants
                              #:list-access-grants-instance-entry
                              #:list-access-grants-instances
                              #:list-access-grants-locations
                              #:list-access-grants-locations-entry
                              #:list-access-points
                              #:list-access-points-for-directory-buckets
                              #:list-access-points-for-object-lambda
                              #:list-caller-access-grants
                              #:list-caller-access-grants-entry #:list-jobs
                              #:list-multi-region-access-points
                              #:list-regional-buckets
                              #:list-storage-lens-configuration-entry
                              #:list-storage-lens-configurations
                              #:list-storage-lens-group-entry
                              #:list-storage-lens-groups
                              #:list-tags-for-resource #:location #:mfa
                              #:mfadelete #:mfadelete-status
                              #:manifest-prefix-string #:match-any-prefix
                              #:match-any-suffix #:match-any-tag
                              #:match-object-age #:match-object-size
                              #:max-length1024string #:max-results #:metrics
                              #:metrics-status #:min-storage-bytes-percentage
                              #:minutes #:multi-region-access-point-alias
                              #:multi-region-access-point-client-token
                              #:multi-region-access-point-id
                              #:multi-region-access-point-name
                              #:multi-region-access-point-policy-document
                              #:multi-region-access-point-regional-response
                              #:multi-region-access-point-regional-response-list
                              #:multi-region-access-point-report
                              #:multi-region-access-point-report-list
                              #:multi-region-access-point-route
                              #:multi-region-access-point-status
                              #:multi-region-access-points-async-response
                              #:network-origin
                              #:no-such-public-access-block-configuration-message
                              #:non-empty-max-length1024string
                              #:non-empty-max-length1024string-list
                              #:non-empty-max-length2048string
                              #:non-empty-max-length256string
                              #:non-empty-max-length64string
                              #:noncurrent-version-count
                              #:noncurrent-version-expiration
                              #:noncurrent-version-transition
                              #:noncurrent-version-transition-list
                              #:object-age-value #:object-creation-time
                              #:object-lambda-access-point
                              #:object-lambda-access-point-alias
                              #:object-lambda-access-point-alias-status
                              #:object-lambda-access-point-alias-value
                              #:object-lambda-access-point-arn
                              #:object-lambda-access-point-list
                              #:object-lambda-access-point-name
                              #:object-lambda-allowed-feature
                              #:object-lambda-allowed-features-list
                              #:object-lambda-configuration
                              #:object-lambda-content-transformation
                              #:object-lambda-policy
                              #:object-lambda-supporting-access-point-arn
                              #:object-lambda-transformation-configuration
                              #:object-lambda-transformation-configuration-action
                              #:object-lambda-transformation-configuration-actions-list
                              #:object-lambda-transformation-configurations-list
                              #:object-lock-enabled-for-bucket
                              #:object-size-greater-than-bytes
                              #:object-size-less-than-bytes #:object-size-value
                              #:operation-name #:organization
                              #:output-schema-version #:owner-override
                              #:permission #:policy #:policy-document
                              #:policy-status #:prefix #:prefix-level
                              #:prefix-level-storage-metrics #:prefixes-list
                              #:priority #:privilege
                              #:proposed-multi-region-access-point-policy
                              #:public-access-block-configuration
                              #:public-access-block-enabled
                              #:put-access-grants-instance-resource-policy
                              #:put-access-point-configuration-for-object-lambda
                              #:put-access-point-policy
                              #:put-access-point-policy-for-object-lambda
                              #:put-access-point-scope
                              #:put-bucket-lifecycle-configuration
                              #:put-bucket-policy #:put-bucket-replication
                              #:put-bucket-tagging #:put-bucket-versioning
                              #:put-job-tagging
                              #:put-multi-region-access-point-policy
                              #:put-multi-region-access-point-policy-input
                              #:put-public-access-block
                              #:put-storage-lens-configuration
                              #:put-storage-lens-configuration-tagging #:region
                              #:region-creation-list #:region-name
                              #:region-report #:region-report-list
                              #:regional-bucket #:regional-bucket-list
                              #:regions #:replica-kms-key-id
                              #:replica-modifications
                              #:replica-modifications-status
                              #:replication-configuration #:replication-rule
                              #:replication-rule-and-operator
                              #:replication-rule-filter
                              #:replication-rule-status #:replication-rules
                              #:replication-status
                              #:replication-status-filter-list
                              #:replication-storage-class #:replication-time
                              #:replication-time-status
                              #:replication-time-value #:report-prefix-string
                              #:requested-job-status #:role #:route-list
                              #:s3awsregion #:s3access-control-list
                              #:s3access-control-policy #:s3access-point-arn
                              #:s3bucket-arn-string #:s3bucket-destination
                              #:s3canned-access-control-list
                              #:s3checksum-algorithm #:s3content-length
                              #:s3copy-object-operation
                              #:s3delete-object-tagging-operation
                              #:s3expiration-in-days
                              #:s3generated-manifest-descriptor
                              #:s3glacier-job-tier #:s3grant #:s3grant-list
                              #:s3grantee #:s3grantee-type-identifier
                              #:s3initiate-restore-object-operation
                              #:s3job-manifest-generator #:s3key-arn-string
                              #:s3manifest-output-location
                              #:s3metadata-directive #:s3object-lock-legal-hold
                              #:s3object-lock-legal-hold-status
                              #:s3object-lock-mode
                              #:s3object-lock-retention-mode
                              #:s3object-metadata #:s3object-owner
                              #:s3object-version-id #:s3permission #:s3prefix
                              #:s3prefix-type #:s3regional-bucket-arn
                              #:s3regional-or-s3express-bucket-arn-string
                              #:s3replicate-object-operation #:s3resource-arn
                              #:s3retention #:s3ssealgorithm
                              #:s3set-object-acl-operation
                              #:s3set-object-legal-hold-operation
                              #:s3set-object-retention-operation
                              #:s3set-object-tagging-operation
                              #:s3storage-class #:s3tag #:s3tag-set
                              #:s3user-metadata #:ssekms #:ssekmsencryption
                              #:ssekmskey-id #:sses3 #:sses3encryption #:scope
                              #:scope-permission #:scope-permission-list
                              #:secret-access-key #:selection-criteria
                              #:session-token #:setting
                              #:source-selection-criteria
                              #:sse-kms-encrypted-objects
                              #:sse-kms-encrypted-objects-status
                              #:storage-class-list #:storage-lens-arn
                              #:storage-lens-aws-org
                              #:storage-lens-configuration
                              #:storage-lens-configuration-list
                              #:storage-lens-data-export
                              #:storage-lens-data-export-encryption
                              #:storage-lens-group
                              #:storage-lens-group-and-operator
                              #:storage-lens-group-arn
                              #:storage-lens-group-filter
                              #:storage-lens-group-level
                              #:storage-lens-group-level-exclude
                              #:storage-lens-group-level-include
                              #:storage-lens-group-level-selection-criteria
                              #:storage-lens-group-list
                              #:storage-lens-group-name
                              #:storage-lens-group-or-operator
                              #:storage-lens-prefix-level-delimiter
                              #:storage-lens-prefix-level-max-depth
                              #:storage-lens-tag #:storage-lens-tags
                              #:string-for-next-token
                              #:submit-multi-region-access-point-routes
                              #:suffix #:suspended-cause #:suspended-date #:tag
                              #:tag-key-list #:tag-key-string #:tag-list
                              #:tag-resource #:tag-value-string #:tagging
                              #:time-stamp #:traffic-dial-percentage
                              #:transition #:transition-list
                              #:transition-storage-class #:untag-resource
                              #:update-access-grants-location
                              #:update-job-priority #:update-job-status
                              #:update-storage-lens-group #:user-arguments
                              #:versioning-configuration #:vpc-configuration
                              #:vpc-id))
(common-lisp:in-package #:pira/s3-control)

(smithy/sdk/service:define-service awss3control-service-v20180820 :shape-name
                                   "AWSS3ControlServiceV20180820" :version
                                   "2018-08-20" :title "AWS S3 Control"
                                   :operations
                                   '(associate-access-grants-identity-center
                                     create-access-grant
                                     create-access-grants-instance
                                     create-access-grants-location
                                     create-access-point
                                     create-access-point-for-object-lambda
                                     create-bucket create-job
                                     create-multi-region-access-point
                                     create-storage-lens-group
                                     delete-access-grant
                                     delete-access-grants-instance
                                     delete-access-grants-instance-resource-policy
                                     delete-access-grants-location
                                     delete-access-point
                                     delete-access-point-for-object-lambda
                                     delete-access-point-policy
                                     delete-access-point-policy-for-object-lambda
                                     delete-access-point-scope delete-bucket
                                     delete-bucket-lifecycle-configuration
                                     delete-bucket-policy
                                     delete-bucket-replication
                                     delete-bucket-tagging delete-job-tagging
                                     delete-multi-region-access-point
                                     delete-public-access-block
                                     delete-storage-lens-configuration
                                     delete-storage-lens-configuration-tagging
                                     delete-storage-lens-group describe-job
                                     describe-multi-region-access-point-operation
                                     dissociate-access-grants-identity-center
                                     get-access-grant
                                     get-access-grants-instance
                                     get-access-grants-instance-for-prefix
                                     get-access-grants-instance-resource-policy
                                     get-access-grants-location
                                     get-access-point
                                     get-access-point-configuration-for-object-lambda
                                     get-access-point-for-object-lambda
                                     get-access-point-policy
                                     get-access-point-policy-for-object-lambda
                                     get-access-point-policy-status
                                     get-access-point-policy-status-for-object-lambda
                                     get-access-point-scope get-bucket
                                     get-bucket-lifecycle-configuration
                                     get-bucket-policy get-bucket-replication
                                     get-bucket-tagging get-bucket-versioning
                                     get-data-access get-job-tagging
                                     get-multi-region-access-point
                                     get-multi-region-access-point-policy
                                     get-multi-region-access-point-policy-status
                                     get-multi-region-access-point-routes
                                     get-public-access-block
                                     get-storage-lens-configuration
                                     get-storage-lens-configuration-tagging
                                     get-storage-lens-group list-access-grants
                                     list-access-grants-instances
                                     list-access-grants-locations
                                     list-access-points
                                     list-access-points-for-directory-buckets
                                     list-access-points-for-object-lambda
                                     list-caller-access-grants list-jobs
                                     list-multi-region-access-points
                                     list-regional-buckets
                                     list-storage-lens-configurations
                                     list-storage-lens-groups
                                     list-tags-for-resource
                                     put-access-grants-instance-resource-policy
                                     put-access-point-configuration-for-object-lambda
                                     put-access-point-policy
                                     put-access-point-policy-for-object-lambda
                                     put-access-point-scope
                                     put-bucket-lifecycle-configuration
                                     put-bucket-policy put-bucket-replication
                                     put-bucket-tagging put-bucket-versioning
                                     put-job-tagging
                                     put-multi-region-access-point-policy
                                     put-public-access-block
                                     put-storage-lens-configuration
                                     put-storage-lens-configuration-tagging
                                     submit-multi-region-access-point-routes
                                     tag-resource untag-resource
                                     update-access-grants-location
                                     update-job-priority update-job-status
                                     update-storage-lens-group)
                                   :xml-namespace
                                   (:uri
                                    "http://awss3control.amazonaws.com/doc/2018-08-20/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "S3 Control")
                                      ("arnNamespace" . "s3")
                                      ("cloudFormationName" . "S3Control")
                                      ("cloudTrailEventSource"
                                       . "s3control.amazonaws.com")
                                      ("docId" . "s3control-2018-08-20")
                                      ("endpointPrefix" . "s3-control"))
                                     ("aws.auth#sigv4" ("name" . "s3"))
                                     ("aws.protocols#restXml")))

(smithy/sdk/shapes:define-structure abort-incomplete-multipart-upload
                                    common-lisp:nil
                                    ((days-after-initiation :target-type
                                      days-after-initiation :member-name
                                      "DaysAfterInitiation"))
                                    (:shape-name
                                     "AbortIncompleteMultipartUpload"))

(smithy/sdk/shapes:define-structure access-control-translation common-lisp:nil
                                    ((owner :target-type owner-override
                                      :required common-lisp:t :member-name
                                      "Owner"))
                                    (:shape-name "AccessControlTranslation"))

(smithy/sdk/shapes:define-type access-grant-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-grant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-grants-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-grants-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-grants-instances-list :member
                               (list-access-grants-instance-entry :xml-name
                                "AccessGrantsInstance"))

(smithy/sdk/shapes:define-list access-grants-list :member
                               (list-access-grant-entry :xml-name
                                "AccessGrant"))

(smithy/sdk/shapes:define-type access-grants-location-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-grants-location-configuration
                                    common-lisp:nil
                                    ((s3sub-prefix :target-type s3prefix
                                      :member-name "S3SubPrefix"))
                                    (:shape-name
                                     "AccessGrantsLocationConfiguration"))

(smithy/sdk/shapes:define-type access-grants-location-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-grants-locations-list :member
                               (list-access-grants-locations-entry :xml-name
                                "AccessGrantsLocation"))

(smithy/sdk/shapes:define-type access-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-point common-lisp:nil
                                    ((name :target-type access-point-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (network-origin :target-type
                                      network-origin :required common-lisp:t
                                      :member-name "NetworkOrigin")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "VpcConfiguration")
                                     (bucket :target-type
                                      access-point-bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (access-point-arn :target-type
                                      s3access-point-arn :member-name
                                      "AccessPointArn")
                                     (alias :target-type alias :member-name
                                      "Alias")
                                     (bucket-account-id :target-type account-id
                                      :member-name "BucketAccountId")
                                     (data-source-id :target-type
                                      data-source-id :member-name
                                      "DataSourceId")
                                     (data-source-type :target-type
                                      data-source-type :member-name
                                      "DataSourceType"))
                                    (:shape-name "AccessPoint"))

(smithy/sdk/shapes:define-type access-point-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-point-list :member
                               (access-point :xml-name "AccessPoint"))

(smithy/sdk/shapes:define-type access-point-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-level common-lisp:nil
                                    ((activity-metrics :target-type
                                      activity-metrics :member-name
                                      "ActivityMetrics")
                                     (bucket-level :target-type bucket-level
                                      :required common-lisp:t :member-name
                                      "BucketLevel")
                                     (advanced-cost-optimization-metrics
                                      :target-type
                                      advanced-cost-optimization-metrics
                                      :member-name
                                      "AdvancedCostOptimizationMetrics")
                                     (advanced-data-protection-metrics
                                      :target-type
                                      advanced-data-protection-metrics
                                      :member-name
                                      "AdvancedDataProtectionMetrics")
                                     (detailed-status-codes-metrics
                                      :target-type
                                      detailed-status-codes-metrics
                                      :member-name
                                      "DetailedStatusCodesMetrics")
                                     (storage-lens-group-level :target-type
                                      storage-lens-group-level :member-name
                                      "StorageLensGroupLevel"))
                                    (:shape-name "AccountLevel"))

(smithy/sdk/shapes:define-structure activity-metrics common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :member-name "IsEnabled"))
                                    (:shape-name "ActivityMetrics"))

(smithy/sdk/shapes:define-structure advanced-cost-optimization-metrics
                                    common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :member-name "IsEnabled"))
                                    (:shape-name
                                     "AdvancedCostOptimizationMetrics"))

(smithy/sdk/shapes:define-structure advanced-data-protection-metrics
                                    common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :member-name "IsEnabled"))
                                    (:shape-name
                                     "AdvancedDataProtectionMetrics"))

(smithy/sdk/shapes:define-type alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-access-grants-identity-center-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (identity-center-arn :target-type
                                  identity-center-arn :required common-lisp:t
                                  :member-name "IdentityCenterArn"))
                                (:shape-name
                                 "AssociateAccessGrantsIdentityCenterRequest"))

(smithy/sdk/shapes:define-type async-creation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure async-error-details common-lisp:nil
                                    ((code :target-type max-length1024string
                                      :member-name "Code")
                                     (message :target-type max-length1024string
                                      :member-name "Message")
                                     (resource :target-type
                                      max-length1024string :member-name
                                      "Resource")
                                     (request-id :target-type
                                      max-length1024string :member-name
                                      "RequestId"))
                                    (:shape-name "AsyncErrorDetails"))

(smithy/sdk/shapes:define-structure async-operation common-lisp:nil
                                    ((creation-time :target-type
                                      async-creation-timestamp :member-name
                                      "CreationTime")
                                     (operation :target-type
                                      async-operation-name :member-name
                                      "Operation")
                                     (request-token-arn :target-type
                                      async-request-token-arn :member-name
                                      "RequestTokenARN")
                                     (request-parameters :target-type
                                      async-request-parameters :member-name
                                      "RequestParameters")
                                     (request-status :target-type
                                      async-request-status :member-name
                                      "RequestStatus")
                                     (response-details :target-type
                                      async-response-details :member-name
                                      "ResponseDetails"))
                                    (:shape-name "AsyncOperation"))

(smithy/sdk/shapes:define-enum async-operation-name
    common-lisp:nil
  (:create-multi-region-access-point "CreateMultiRegionAccessPoint")
  (:delete-multi-region-access-point "DeleteMultiRegionAccessPoint")
  (:put-multi-region-access-point-policy "PutMultiRegionAccessPointPolicy"))

(smithy/sdk/shapes:define-structure async-request-parameters common-lisp:nil
                                    ((create-multi-region-access-point-request
                                      :target-type
                                      create-multi-region-access-point-input
                                      :member-name
                                      "CreateMultiRegionAccessPointRequest")
                                     (delete-multi-region-access-point-request
                                      :target-type
                                      delete-multi-region-access-point-input
                                      :member-name
                                      "DeleteMultiRegionAccessPointRequest")
                                     (put-multi-region-access-point-policy-request
                                      :target-type
                                      put-multi-region-access-point-policy-input
                                      :member-name
                                      "PutMultiRegionAccessPointPolicyRequest"))
                                    (:shape-name "AsyncRequestParameters"))

(smithy/sdk/shapes:define-type async-request-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type async-request-token-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure async-response-details common-lisp:nil
                                    ((multi-region-access-point-details
                                      :target-type
                                      multi-region-access-points-async-response
                                      :member-name
                                      "MultiRegionAccessPointDetails")
                                     (error-details :target-type
                                      async-error-details :member-name
                                      "ErrorDetails"))
                                    (:shape-name "AsyncResponseDetails"))

(smithy/sdk/shapes:define-structure aws-lambda-transformation common-lisp:nil
                                    ((function-arn :target-type
                                      function-arn-string :required
                                      common-lisp:t :member-name "FunctionArn")
                                     (function-payload :target-type
                                      aws-lambda-transformation-payload
                                      :member-name "FunctionPayload"))
                                    (:shape-name "AwsLambdaTransformation"))

(smithy/sdk/shapes:define-type aws-lambda-transformation-payload
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-org-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error bucket-already-exists common-lisp:nil
                                common-lisp:nil
                                (:shape-name "BucketAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error bucket-already-owned-by-you common-lisp:nil
                                common-lisp:nil
                                (:shape-name "BucketAlreadyOwnedByYou")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum bucket-canned-acl
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:authenticated-read "authenticated-read"))

(smithy/sdk/shapes:define-type bucket-identifier-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bucket-level common-lisp:nil
                                    ((activity-metrics :target-type
                                      activity-metrics :member-name
                                      "ActivityMetrics")
                                     (prefix-level :target-type prefix-level
                                      :member-name "PrefixLevel")
                                     (advanced-cost-optimization-metrics
                                      :target-type
                                      advanced-cost-optimization-metrics
                                      :member-name
                                      "AdvancedCostOptimizationMetrics")
                                     (advanced-data-protection-metrics
                                      :target-type
                                      advanced-data-protection-metrics
                                      :member-name
                                      "AdvancedDataProtectionMetrics")
                                     (detailed-status-codes-metrics
                                      :target-type
                                      detailed-status-codes-metrics
                                      :member-name
                                      "DetailedStatusCodesMetrics"))
                                    (:shape-name "BucketLevel"))

(smithy/sdk/shapes:define-enum bucket-location-constraint
    common-lisp:nil
  (:eu "EU")
  (:eu-west-1 "eu-west-1")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:ap-south-1 "ap-south-1")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:sa-east-1 "sa-east-1")
  (:cn-north-1 "cn-north-1")
  (:eu-central-1 "eu-central-1"))

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bucket-versioning-status
    common-lisp:nil
  (:enabled "Enabled")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-list buckets :member
                               (s3bucket-arn-string :xml-name "Arn"))

(smithy/sdk/shapes:define-list caller-access-grants-list :member
                               (list-caller-access-grants-entry :xml-name
                                "AccessGrant"))

(smithy/sdk/shapes:define-structure cloud-watch-metrics common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :required common-lisp:t :member-name
                                      "IsEnabled"))
                                    (:shape-name "CloudWatchMetrics"))

(smithy/sdk/shapes:define-type config-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type confirm-remove-self-bucket-access
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type confirmation-required
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type continuation-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-access-grant-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grants-location-id :target-type
                                  access-grants-location-id :required
                                  common-lisp:t :member-name
                                  "AccessGrantsLocationId")
                                 (access-grants-location-configuration
                                  :target-type
                                  access-grants-location-configuration
                                  :member-name
                                  "AccessGrantsLocationConfiguration")
                                 (grantee :target-type grantee :required
                                  common-lisp:t :member-name "Grantee")
                                 (permission :target-type permission :required
                                  common-lisp:t :member-name "Permission")
                                 (application-arn :target-type
                                  identity-center-application-arn :member-name
                                  "ApplicationArn")
                                 (s3prefix-type :target-type s3prefix-type
                                  :member-name "S3PrefixType")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAccessGrantRequest"))

(smithy/sdk/shapes:define-output create-access-grant-result common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grant-id :target-type access-grant-id
                                   :member-name "AccessGrantId")
                                  (access-grant-arn :target-type
                                   access-grant-arn :member-name
                                   "AccessGrantArn")
                                  (grantee :target-type grantee :member-name
                                   "Grantee")
                                  (access-grants-location-id :target-type
                                   access-grants-location-id :member-name
                                   "AccessGrantsLocationId")
                                  (access-grants-location-configuration
                                   :target-type
                                   access-grants-location-configuration
                                   :member-name
                                   "AccessGrantsLocationConfiguration")
                                  (permission :target-type permission
                                   :member-name "Permission")
                                  (application-arn :target-type
                                   identity-center-application-arn :member-name
                                   "ApplicationArn")
                                  (grant-scope :target-type s3prefix
                                   :member-name "GrantScope"))
                                 (:shape-name "CreateAccessGrantResult"))

(smithy/sdk/shapes:define-input create-access-grants-instance-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (identity-center-arn :target-type
                                  identity-center-arn :member-name
                                  "IdentityCenterArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateAccessGrantsInstanceRequest"))

(smithy/sdk/shapes:define-output create-access-grants-instance-result
                                 common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grants-instance-id :target-type
                                   access-grants-instance-id :member-name
                                   "AccessGrantsInstanceId")
                                  (access-grants-instance-arn :target-type
                                   access-grants-instance-arn :member-name
                                   "AccessGrantsInstanceArn")
                                  (identity-center-arn :target-type
                                   identity-center-arn :member-name
                                   "IdentityCenterArn")
                                  (identity-center-instance-arn :target-type
                                   identity-center-arn :member-name
                                   "IdentityCenterInstanceArn")
                                  (identity-center-application-arn :target-type
                                   identity-center-application-arn :member-name
                                   "IdentityCenterApplicationArn"))
                                 (:shape-name
                                  "CreateAccessGrantsInstanceResult"))

(smithy/sdk/shapes:define-input create-access-grants-location-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (location-scope :target-type s3prefix
                                  :required common-lisp:t :member-name
                                  "LocationScope")
                                 (iamrole-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "IAMRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateAccessGrantsLocationRequest"))

(smithy/sdk/shapes:define-output create-access-grants-location-result
                                 common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grants-location-id :target-type
                                   access-grants-location-id :member-name
                                   "AccessGrantsLocationId")
                                  (access-grants-location-arn :target-type
                                   access-grants-location-arn :member-name
                                   "AccessGrantsLocationArn")
                                  (location-scope :target-type s3prefix
                                   :member-name "LocationScope")
                                  (iamrole-arn :target-type iamrole-arn
                                   :member-name "IAMRoleArn"))
                                 (:shape-name
                                  "CreateAccessGrantsLocationResult"))

(smithy/sdk/shapes:define-input create-access-point-for-object-lambda-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type
                                  object-lambda-access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (configuration :target-type
                                  object-lambda-configuration :required
                                  common-lisp:t :member-name "Configuration"))
                                (:shape-name
                                 "CreateAccessPointForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output create-access-point-for-object-lambda-result
                                 common-lisp:nil
                                 ((object-lambda-access-point-arn :target-type
                                   object-lambda-access-point-arn :member-name
                                   "ObjectLambdaAccessPointArn")
                                  (alias :target-type
                                   object-lambda-access-point-alias
                                   :member-name "Alias"))
                                 (:shape-name
                                  "CreateAccessPointForObjectLambdaResult"))

(smithy/sdk/shapes:define-input create-access-point-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket")
                                 (vpc-configuration :target-type
                                  vpc-configuration :member-name
                                  "VpcConfiguration")
                                 (public-access-block-configuration
                                  :target-type
                                  public-access-block-configuration
                                  :member-name
                                  "PublicAccessBlockConfiguration")
                                 (bucket-account-id :target-type account-id
                                  :member-name "BucketAccountId")
                                 (scope :target-type scope :member-name
                                  "Scope")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAccessPointRequest"))

(smithy/sdk/shapes:define-output create-access-point-result common-lisp:nil
                                 ((access-point-arn :target-type
                                   s3access-point-arn :member-name
                                   "AccessPointArn")
                                  (alias :target-type alias :member-name
                                   "Alias"))
                                 (:shape-name "CreateAccessPointResult"))

(smithy/sdk/shapes:define-structure create-bucket-configuration common-lisp:nil
                                    ((location-constraint :target-type
                                      bucket-location-constraint :member-name
                                      "LocationConstraint"))
                                    (:shape-name "CreateBucketConfiguration"))

(smithy/sdk/shapes:define-input create-bucket-request common-lisp:nil
                                ((acl :target-type bucket-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (create-bucket-configuration :target-type
                                  create-bucket-configuration :member-name
                                  "CreateBucketConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "CreateBucketConfiguration")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write :target-type grant-write
                                  :member-name "GrantWrite" :http-header
                                  "x-amz-grant-write")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (object-lock-enabled-for-bucket :target-type
                                  object-lock-enabled-for-bucket :member-name
                                  "ObjectLockEnabledForBucket" :http-header
                                  "x-amz-bucket-object-lock-enabled")
                                 (outpost-id :target-type
                                  non-empty-max-length64string :member-name
                                  "OutpostId" :http-header "x-amz-outpost-id"))
                                (:shape-name "CreateBucketRequest"))

(smithy/sdk/shapes:define-output create-bucket-result common-lisp:nil
                                 ((location :target-type location :member-name
                                   "Location" :http-header "Location")
                                  (bucket-arn :target-type
                                   s3regional-bucket-arn :member-name
                                   "BucketArn"))
                                 (:shape-name "CreateBucketResult"))

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (confirmation-required :target-type
                                  confirmation-required :member-name
                                  "ConfirmationRequired")
                                 (operation :target-type job-operation
                                  :required common-lisp:t :member-name
                                  "Operation")
                                 (report :target-type job-report :required
                                  common-lisp:t :member-name "Report")
                                 (client-request-token :target-type
                                  non-empty-max-length64string :required
                                  common-lisp:t :member-name
                                  "ClientRequestToken")
                                 (manifest :target-type job-manifest
                                  :member-name "Manifest")
                                 (description :target-type
                                  non-empty-max-length256string :member-name
                                  "Description")
                                 (priority :target-type job-priority :required
                                  common-lisp:t :member-name "Priority")
                                 (role-arn :target-type iamrole-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type s3tag-set :member-name
                                  "Tags")
                                 (manifest-generator :target-type
                                  job-manifest-generator :member-name
                                  "ManifestGenerator"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-result common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "CreateJobResult"))

(smithy/sdk/shapes:define-structure create-multi-region-access-point-input
                                    common-lisp:nil
                                    ((name :target-type
                                      multi-region-access-point-name :required
                                      common-lisp:t :member-name "Name")
                                     (public-access-block :target-type
                                      public-access-block-configuration
                                      :member-name "PublicAccessBlock")
                                     (regions :target-type region-creation-list
                                      :required common-lisp:t :member-name
                                      "Regions"))
                                    (:shape-name
                                     "CreateMultiRegionAccessPointInput"))

(smithy/sdk/shapes:define-input create-multi-region-access-point-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (client-token :target-type
                                  multi-region-access-point-client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (details :target-type
                                  create-multi-region-access-point-input
                                  :required common-lisp:t :member-name
                                  "Details"))
                                (:shape-name
                                 "CreateMultiRegionAccessPointRequest"))

(smithy/sdk/shapes:define-output create-multi-region-access-point-result
                                 common-lisp:nil
                                 ((request-token-arn :target-type
                                   async-request-token-arn :member-name
                                   "RequestTokenARN"))
                                 (:shape-name
                                  "CreateMultiRegionAccessPointResult"))

(smithy/sdk/shapes:define-input create-storage-lens-group-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (storage-lens-group :target-type
                                  storage-lens-group :required common-lisp:t
                                  :member-name "StorageLensGroup")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateStorageLensGroupRequest"))

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type creation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((access-key-id :target-type access-key-id
                                      :member-name "AccessKeyId")
                                     (secret-access-key :target-type
                                      secret-access-key :member-name
                                      "SecretAccessKey")
                                     (session-token :target-type session-token
                                      :member-name "SessionToken")
                                     (expiration :target-type expiration
                                      :member-name "Expiration"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-type data-source-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type days-after-initiation
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-access-grant-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grant-id :target-type access-grant-id
                                  :required common-lisp:t :member-name
                                  "AccessGrantId" :http-label common-lisp:t))
                                (:shape-name "DeleteAccessGrantRequest"))

(smithy/sdk/shapes:define-input delete-access-grants-instance-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name
                                 "DeleteAccessGrantsInstanceRequest"))

(smithy/sdk/shapes:define-input
 delete-access-grants-instance-resource-policy-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id"))
 (:shape-name "DeleteAccessGrantsInstanceResourcePolicyRequest"))

(smithy/sdk/shapes:define-input delete-access-grants-location-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grants-location-id :target-type
                                  access-grants-location-id :required
                                  common-lisp:t :member-name
                                  "AccessGrantsLocationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteAccessGrantsLocationRequest"))

(smithy/sdk/shapes:define-input delete-access-point-for-object-lambda-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type
                                  object-lambda-access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteAccessPointForObjectLambdaRequest"))

(smithy/sdk/shapes:define-input
 delete-access-point-policy-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t))
 (:shape-name "DeleteAccessPointPolicyForObjectLambdaRequest"))

(smithy/sdk/shapes:define-input delete-access-point-policy-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAccessPointPolicyRequest"))

(smithy/sdk/shapes:define-input delete-access-point-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAccessPointRequest"))

(smithy/sdk/shapes:define-input delete-access-point-scope-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAccessPointScopeRequest"))

(smithy/sdk/shapes:define-input delete-bucket-lifecycle-configuration-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteBucketLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-policy-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBucketPolicyRequest"))

(smithy/sdk/shapes:define-input delete-bucket-replication-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBucketReplicationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBucketRequest"))

(smithy/sdk/shapes:define-input delete-bucket-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBucketTaggingRequest"))

(smithy/sdk/shapes:define-input delete-job-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteJobTaggingRequest"))

(smithy/sdk/shapes:define-output delete-job-tagging-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteJobTaggingResult"))

(smithy/sdk/shapes:define-structure delete-marker-replication common-lisp:nil
                                    ((status :target-type
                                      delete-marker-replication-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "DeleteMarkerReplication"))

(smithy/sdk/shapes:define-enum delete-marker-replication-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure delete-multi-region-access-point-input
                                    common-lisp:nil
                                    ((name :target-type
                                      multi-region-access-point-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name
                                     "DeleteMultiRegionAccessPointInput"))

(smithy/sdk/shapes:define-input delete-multi-region-access-point-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (client-token :target-type
                                  multi-region-access-point-client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (details :target-type
                                  delete-multi-region-access-point-input
                                  :required common-lisp:t :member-name
                                  "Details"))
                                (:shape-name
                                 "DeleteMultiRegionAccessPointRequest"))

(smithy/sdk/shapes:define-output delete-multi-region-access-point-result
                                 common-lisp:nil
                                 ((request-token-arn :target-type
                                   async-request-token-arn :member-name
                                   "RequestTokenARN"))
                                 (:shape-name
                                  "DeleteMultiRegionAccessPointResult"))

(smithy/sdk/shapes:define-input delete-public-access-block-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "DeletePublicAccessBlockRequest"))

(smithy/sdk/shapes:define-input delete-storage-lens-configuration-request
                                common-lisp:nil
                                ((config-id :target-type config-id :required
                                  common-lisp:t :member-name "ConfigId"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name
                                 "DeleteStorageLensConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-storage-lens-configuration-tagging-request common-lisp:nil
 ((config-id :target-type config-id :required common-lisp:t :member-name
   "ConfigId" :http-label common-lisp:t)
  (account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id"))
 (:shape-name "DeleteStorageLensConfigurationTaggingRequest"))

(smithy/sdk/shapes:define-output
 delete-storage-lens-configuration-tagging-result common-lisp:nil
 common-lisp:nil (:shape-name "DeleteStorageLensConfigurationTaggingResult"))

(smithy/sdk/shapes:define-input delete-storage-lens-group-request
                                common-lisp:nil
                                ((name :target-type storage-lens-group-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "DeleteStorageLensGroupRequest"))

(smithy/sdk/shapes:define-input describe-job-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeJobRequest"))

(smithy/sdk/shapes:define-output describe-job-result common-lisp:nil
                                 ((job :target-type job-descriptor :member-name
                                   "Job"))
                                 (:shape-name "DescribeJobResult"))

(smithy/sdk/shapes:define-input
 describe-multi-region-access-point-operation-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (request-token-arn :target-type async-request-token-arn :required
   common-lisp:t :member-name "RequestTokenARN" :http-label common-lisp:t))
 (:shape-name "DescribeMultiRegionAccessPointOperationRequest"))

(smithy/sdk/shapes:define-output
 describe-multi-region-access-point-operation-result common-lisp:nil
 ((async-operation :target-type async-operation :member-name "AsyncOperation"))
 (:shape-name "DescribeMultiRegionAccessPointOperationResult"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((account :target-type account-id
                                      :member-name "Account")
                                     (bucket :target-type
                                      bucket-identifier-string :required
                                      common-lisp:t :member-name "Bucket")
                                     (replication-time :target-type
                                      replication-time :member-name
                                      "ReplicationTime")
                                     (access-control-translation :target-type
                                      access-control-translation :member-name
                                      "AccessControlTranslation")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (metrics :target-type metrics :member-name
                                      "Metrics")
                                     (storage-class :target-type
                                      replication-storage-class :member-name
                                      "StorageClass"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure detailed-status-codes-metrics
                                    common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :member-name "IsEnabled"))
                                    (:shape-name "DetailedStatusCodesMetrics"))

(smithy/sdk/shapes:define-input
 dissociate-access-grants-identity-center-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id"))
 (:shape-name "DissociateAccessGrantsIdentityCenterRequest"))

(smithy/sdk/shapes:define-type duration-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((replica-kms-key-id :target-type
                                      replica-kms-key-id :member-name
                                      "ReplicaKmsKeyID"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-map endpoints :key non-empty-max-length64string
                              :value non-empty-max-length1024string)

(smithy/sdk/shapes:define-structure
 established-multi-region-access-point-policy common-lisp:nil
 ((policy :target-type policy :member-name "Policy"))
 (:shape-name "EstablishedMultiRegionAccessPointPolicy"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure exclude common-lisp:nil
                                    ((buckets :target-type buckets :member-name
                                      "Buckets")
                                     (regions :target-type regions :member-name
                                      "Regions"))
                                    (:shape-name "Exclude"))

(smithy/sdk/shapes:define-structure existing-object-replication common-lisp:nil
                                    ((status :target-type
                                      existing-object-replication-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ExistingObjectReplication"))

(smithy/sdk/shapes:define-enum existing-object-replication-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expiration smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum expiration-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expired-object-delete-marker
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:csv "CSV")
  (:parquet "Parquet"))

(smithy/sdk/shapes:define-type function-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure generated-manifest-encryption
                                    common-lisp:nil
                                    ((sses3 :target-type sses3encryption
                                      :member-name "SSES3" :xml-name "SSE-S3")
                                     (ssekms :target-type ssekmsencryption
                                      :member-name "SSEKMS" :xml-name
                                      "SSE-KMS"))
                                    (:shape-name "GeneratedManifestEncryption"))

(smithy/sdk/shapes:define-enum generated-manifest-format
    common-lisp:nil
  (:s3inventory-report-csv-20211130 "S3InventoryReport_CSV_20211130"))

(smithy/sdk/shapes:define-input get-access-grant-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grant-id :target-type access-grant-id
                                  :required common-lisp:t :member-name
                                  "AccessGrantId" :http-label common-lisp:t))
                                (:shape-name "GetAccessGrantRequest"))

(smithy/sdk/shapes:define-output get-access-grant-result common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grant-id :target-type access-grant-id
                                   :member-name "AccessGrantId")
                                  (access-grant-arn :target-type
                                   access-grant-arn :member-name
                                   "AccessGrantArn")
                                  (grantee :target-type grantee :member-name
                                   "Grantee")
                                  (permission :target-type permission
                                   :member-name "Permission")
                                  (access-grants-location-id :target-type
                                   access-grants-location-id :member-name
                                   "AccessGrantsLocationId")
                                  (access-grants-location-configuration
                                   :target-type
                                   access-grants-location-configuration
                                   :member-name
                                   "AccessGrantsLocationConfiguration")
                                  (grant-scope :target-type s3prefix
                                   :member-name "GrantScope")
                                  (application-arn :target-type
                                   identity-center-application-arn :member-name
                                   "ApplicationArn"))
                                 (:shape-name "GetAccessGrantResult"))

(smithy/sdk/shapes:define-input get-access-grants-instance-for-prefix-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (s3prefix :target-type s3prefix :required
                                  common-lisp:t :member-name "S3Prefix"
                                  :http-query "s3prefix"))
                                (:shape-name
                                 "GetAccessGrantsInstanceForPrefixRequest"))

(smithy/sdk/shapes:define-output get-access-grants-instance-for-prefix-result
                                 common-lisp:nil
                                 ((access-grants-instance-arn :target-type
                                   access-grants-instance-arn :member-name
                                   "AccessGrantsInstanceArn")
                                  (access-grants-instance-id :target-type
                                   access-grants-instance-id :member-name
                                   "AccessGrantsInstanceId"))
                                 (:shape-name
                                  "GetAccessGrantsInstanceForPrefixResult"))

(smithy/sdk/shapes:define-input get-access-grants-instance-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "GetAccessGrantsInstanceRequest"))

(smithy/sdk/shapes:define-input
 get-access-grants-instance-resource-policy-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id"))
 (:shape-name "GetAccessGrantsInstanceResourcePolicyRequest"))

(smithy/sdk/shapes:define-output
 get-access-grants-instance-resource-policy-result common-lisp:nil
 ((policy :target-type policy-document :member-name "Policy")
  (organization :target-type organization :member-name "Organization")
  (created-at :target-type creation-timestamp :member-name "CreatedAt"))
 (:shape-name "GetAccessGrantsInstanceResourcePolicyResult"))

(smithy/sdk/shapes:define-output get-access-grants-instance-result
                                 common-lisp:nil
                                 ((access-grants-instance-arn :target-type
                                   access-grants-instance-arn :member-name
                                   "AccessGrantsInstanceArn")
                                  (access-grants-instance-id :target-type
                                   access-grants-instance-id :member-name
                                   "AccessGrantsInstanceId")
                                  (identity-center-arn :target-type
                                   identity-center-arn :member-name
                                   "IdentityCenterArn")
                                  (identity-center-instance-arn :target-type
                                   identity-center-arn :member-name
                                   "IdentityCenterInstanceArn")
                                  (identity-center-application-arn :target-type
                                   identity-center-application-arn :member-name
                                   "IdentityCenterApplicationArn")
                                  (created-at :target-type creation-timestamp
                                   :member-name "CreatedAt"))
                                 (:shape-name "GetAccessGrantsInstanceResult"))

(smithy/sdk/shapes:define-input get-access-grants-location-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grants-location-id :target-type
                                  access-grants-location-id :required
                                  common-lisp:t :member-name
                                  "AccessGrantsLocationId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAccessGrantsLocationRequest"))

(smithy/sdk/shapes:define-output get-access-grants-location-result
                                 common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grants-location-id :target-type
                                   access-grants-location-id :member-name
                                   "AccessGrantsLocationId")
                                  (access-grants-location-arn :target-type
                                   access-grants-location-arn :member-name
                                   "AccessGrantsLocationArn")
                                  (location-scope :target-type s3prefix
                                   :member-name "LocationScope")
                                  (iamrole-arn :target-type iamrole-arn
                                   :member-name "IAMRoleArn"))
                                 (:shape-name "GetAccessGrantsLocationResult"))

(smithy/sdk/shapes:define-input
 get-access-point-configuration-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t))
 (:shape-name "GetAccessPointConfigurationForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output
 get-access-point-configuration-for-object-lambda-result common-lisp:nil
 ((configuration :target-type object-lambda-configuration :member-name
   "Configuration"))
 (:shape-name "GetAccessPointConfigurationForObjectLambdaResult"))

(smithy/sdk/shapes:define-input get-access-point-for-object-lambda-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type
                                  object-lambda-access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetAccessPointForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output get-access-point-for-object-lambda-result
                                 common-lisp:nil
                                 ((name :target-type
                                   object-lambda-access-point-name :member-name
                                   "Name")
                                  (public-access-block-configuration
                                   :target-type
                                   public-access-block-configuration
                                   :member-name
                                   "PublicAccessBlockConfiguration")
                                  (creation-date :target-type creation-date
                                   :member-name "CreationDate")
                                  (alias :target-type
                                   object-lambda-access-point-alias
                                   :member-name "Alias"))
                                 (:shape-name
                                  "GetAccessPointForObjectLambdaResult"))

(smithy/sdk/shapes:define-input
 get-access-point-policy-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t))
 (:shape-name "GetAccessPointPolicyForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output
 get-access-point-policy-for-object-lambda-result common-lisp:nil
 ((policy :target-type object-lambda-policy :member-name "Policy"))
 (:shape-name "GetAccessPointPolicyForObjectLambdaResult"))

(smithy/sdk/shapes:define-input get-access-point-policy-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAccessPointPolicyRequest"))

(smithy/sdk/shapes:define-output get-access-point-policy-result common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetAccessPointPolicyResult"))

(smithy/sdk/shapes:define-input
 get-access-point-policy-status-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t))
 (:shape-name "GetAccessPointPolicyStatusForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output
 get-access-point-policy-status-for-object-lambda-result common-lisp:nil
 ((policy-status :target-type policy-status :member-name "PolicyStatus"))
 (:shape-name "GetAccessPointPolicyStatusForObjectLambdaResult"))

(smithy/sdk/shapes:define-input get-access-point-policy-status-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetAccessPointPolicyStatusRequest"))

(smithy/sdk/shapes:define-output get-access-point-policy-status-result
                                 common-lisp:nil
                                 ((policy-status :target-type policy-status
                                   :member-name "PolicyStatus"))
                                 (:shape-name
                                  "GetAccessPointPolicyStatusResult"))

(smithy/sdk/shapes:define-input get-access-point-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAccessPointRequest"))

(smithy/sdk/shapes:define-output get-access-point-result common-lisp:nil
                                 ((name :target-type access-point-name
                                   :member-name "Name")
                                  (bucket :target-type access-point-bucket-name
                                   :member-name "Bucket")
                                  (network-origin :target-type network-origin
                                   :member-name "NetworkOrigin")
                                  (vpc-configuration :target-type
                                   vpc-configuration :member-name
                                   "VpcConfiguration")
                                  (public-access-block-configuration
                                   :target-type
                                   public-access-block-configuration
                                   :member-name
                                   "PublicAccessBlockConfiguration")
                                  (creation-date :target-type creation-date
                                   :member-name "CreationDate")
                                  (alias :target-type alias :member-name
                                   "Alias")
                                  (access-point-arn :target-type
                                   s3access-point-arn :member-name
                                   "AccessPointArn")
                                  (endpoints :target-type endpoints
                                   :member-name "Endpoints")
                                  (bucket-account-id :target-type account-id
                                   :member-name "BucketAccountId")
                                  (data-source-id :target-type data-source-id
                                   :member-name "DataSourceId")
                                  (data-source-type :target-type
                                   data-source-type :member-name
                                   "DataSourceType"))
                                 (:shape-name "GetAccessPointResult"))

(smithy/sdk/shapes:define-input get-access-point-scope-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAccessPointScopeRequest"))

(smithy/sdk/shapes:define-output get-access-point-scope-result common-lisp:nil
                                 ((scope :target-type scope :member-name
                                   "Scope"))
                                 (:shape-name "GetAccessPointScopeResult"))

(smithy/sdk/shapes:define-input get-bucket-lifecycle-configuration-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetBucketLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-lifecycle-configuration-result
                                 common-lisp:nil
                                 ((rules :target-type lifecycle-rules
                                   :member-name "Rules"))
                                 (:shape-name
                                  "GetBucketLifecycleConfigurationResult"))

(smithy/sdk/shapes:define-input get-bucket-policy-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketPolicyRequest"))

(smithy/sdk/shapes:define-output get-bucket-policy-result common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetBucketPolicyResult"))

(smithy/sdk/shapes:define-input get-bucket-replication-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketReplicationRequest"))

(smithy/sdk/shapes:define-output get-bucket-replication-result common-lisp:nil
                                 ((replication-configuration :target-type
                                   replication-configuration :member-name
                                   "ReplicationConfiguration"))
                                 (:shape-name "GetBucketReplicationResult"))

(smithy/sdk/shapes:define-input get-bucket-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketRequest"))

(smithy/sdk/shapes:define-output get-bucket-result common-lisp:nil
                                 ((bucket :target-type bucket-name :member-name
                                   "Bucket")
                                  (public-access-block-enabled :target-type
                                   public-access-block-enabled :member-name
                                   "PublicAccessBlockEnabled")
                                  (creation-date :target-type creation-date
                                   :member-name "CreationDate"))
                                 (:shape-name "GetBucketResult"))

(smithy/sdk/shapes:define-input get-bucket-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketTaggingRequest"))

(smithy/sdk/shapes:define-output get-bucket-tagging-result common-lisp:nil
                                 ((tag-set :target-type s3tag-set :required
                                   common-lisp:t :member-name "TagSet"))
                                 (:shape-name "GetBucketTaggingResult"))

(smithy/sdk/shapes:define-input get-bucket-versioning-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketVersioningRequest"))

(smithy/sdk/shapes:define-output get-bucket-versioning-result common-lisp:nil
                                 ((status :target-type bucket-versioning-status
                                   :member-name "Status")
                                  (mfadelete :target-type mfadelete-status
                                   :member-name "MFADelete" :xml-name
                                   "MfaDelete"))
                                 (:shape-name "GetBucketVersioningResult"))

(smithy/sdk/shapes:define-input get-data-access-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (target :target-type s3prefix :required
                                  common-lisp:t :member-name "Target"
                                  :http-query "target")
                                 (permission :target-type permission :required
                                  common-lisp:t :member-name "Permission"
                                  :http-query "permission")
                                 (duration-seconds :target-type
                                  duration-seconds :member-name
                                  "DurationSeconds" :http-query
                                  "durationSeconds")
                                 (privilege :target-type privilege :member-name
                                  "Privilege" :http-query "privilege")
                                 (target-type :target-type s3prefix-type
                                  :member-name "TargetType" :http-query
                                  "targetType"))
                                (:shape-name "GetDataAccessRequest"))

(smithy/sdk/shapes:define-output get-data-access-result common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (matched-grant-target :target-type s3prefix
                                   :member-name "MatchedGrantTarget")
                                  (grantee :target-type grantee :member-name
                                   "Grantee"))
                                 (:shape-name "GetDataAccessResult"))

(smithy/sdk/shapes:define-input get-job-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetJobTaggingRequest"))

(smithy/sdk/shapes:define-output get-job-tagging-result common-lisp:nil
                                 ((tags :target-type s3tag-set :member-name
                                   "Tags"))
                                 (:shape-name "GetJobTaggingResult"))

(smithy/sdk/shapes:define-input get-multi-region-access-point-policy-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type
                                  multi-region-access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetMultiRegionAccessPointPolicyRequest"))

(smithy/sdk/shapes:define-output get-multi-region-access-point-policy-result
                                 common-lisp:nil
                                 ((policy :target-type
                                   multi-region-access-point-policy-document
                                   :member-name "Policy"))
                                 (:shape-name
                                  "GetMultiRegionAccessPointPolicyResult"))

(smithy/sdk/shapes:define-input
 get-multi-region-access-point-policy-status-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type multi-region-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t))
 (:shape-name "GetMultiRegionAccessPointPolicyStatusRequest"))

(smithy/sdk/shapes:define-output
 get-multi-region-access-point-policy-status-result common-lisp:nil
 ((established :target-type policy-status :member-name "Established"))
 (:shape-name "GetMultiRegionAccessPointPolicyStatusResult"))

(smithy/sdk/shapes:define-input get-multi-region-access-point-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type
                                  multi-region-access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetMultiRegionAccessPointRequest"))

(smithy/sdk/shapes:define-output get-multi-region-access-point-result
                                 common-lisp:nil
                                 ((access-point :target-type
                                   multi-region-access-point-report
                                   :member-name "AccessPoint"))
                                 (:shape-name
                                  "GetMultiRegionAccessPointResult"))

(smithy/sdk/shapes:define-input get-multi-region-access-point-routes-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (mrap :target-type
                                  multi-region-access-point-id :required
                                  common-lisp:t :member-name "Mrap" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetMultiRegionAccessPointRoutesRequest"))

(smithy/sdk/shapes:define-output get-multi-region-access-point-routes-result
                                 common-lisp:nil
                                 ((mrap :target-type
                                   multi-region-access-point-id :member-name
                                   "Mrap")
                                  (routes :target-type route-list :member-name
                                   "Routes"))
                                 (:shape-name
                                  "GetMultiRegionAccessPointRoutesResult"))

(smithy/sdk/shapes:define-output get-public-access-block-output common-lisp:nil
                                 ((public-access-block-configuration
                                   :target-type
                                   public-access-block-configuration
                                   :member-name
                                   "PublicAccessBlockConfiguration"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetPublicAccessBlockOutput"))

(smithy/sdk/shapes:define-input get-public-access-block-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "GetPublicAccessBlockRequest"))

(smithy/sdk/shapes:define-input get-storage-lens-configuration-request
                                common-lisp:nil
                                ((config-id :target-type config-id :required
                                  common-lisp:t :member-name "ConfigId"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name
                                 "GetStorageLensConfigurationRequest"))

(smithy/sdk/shapes:define-output get-storage-lens-configuration-result
                                 common-lisp:nil
                                 ((storage-lens-configuration :target-type
                                   storage-lens-configuration :member-name
                                   "StorageLensConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetStorageLensConfigurationResult"))

(smithy/sdk/shapes:define-input get-storage-lens-configuration-tagging-request
                                common-lisp:nil
                                ((config-id :target-type config-id :required
                                  common-lisp:t :member-name "ConfigId"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name
                                 "GetStorageLensConfigurationTaggingRequest"))

(smithy/sdk/shapes:define-output get-storage-lens-configuration-tagging-result
                                 common-lisp:nil
                                 ((tags :target-type storage-lens-tags
                                   :member-name "Tags"))
                                 (:shape-name
                                  "GetStorageLensConfigurationTaggingResult"))

(smithy/sdk/shapes:define-input get-storage-lens-group-request common-lisp:nil
                                ((name :target-type storage-lens-group-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "GetStorageLensGroupRequest"))

(smithy/sdk/shapes:define-output get-storage-lens-group-result common-lisp:nil
                                 ((storage-lens-group :target-type
                                   storage-lens-group :member-name
                                   "StorageLensGroup" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetStorageLensGroupResult"))

(smithy/sdk/shapes:define-type grant-full-control
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-read smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-read-acp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-write smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-write-acp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure grantee common-lisp:nil
                                    ((grantee-type :target-type grantee-type
                                      :member-name "GranteeType")
                                     (grantee-identifier :target-type
                                      grantee-identifier :member-name
                                      "GranteeIdentifier"))
                                    (:shape-name "Grantee"))

(smithy/sdk/shapes:define-type grantee-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum grantee-type
    common-lisp:nil
  (:directory-user "DIRECTORY_USER")
  (:directory-group "DIRECTORY_GROUP")
  (:iam "IAM"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotency-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "IdempotencyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure include common-lisp:nil
                                    ((buckets :target-type buckets :member-name
                                      "Buckets")
                                     (regions :target-type regions :member-name
                                      "Regions"))
                                    (:shape-name "Include"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type is-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-public smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-creation-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure job-descriptor common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (confirmation-required :target-type
                                      confirmation-required :member-name
                                      "ConfirmationRequired")
                                     (description :target-type
                                      non-empty-max-length256string
                                      :member-name "Description")
                                     (job-arn :target-type job-arn :member-name
                                      "JobArn")
                                     (status :target-type job-status
                                      :member-name "Status")
                                     (manifest :target-type job-manifest
                                      :member-name "Manifest")
                                     (operation :target-type job-operation
                                      :member-name "Operation")
                                     (priority :target-type job-priority
                                      :member-name "Priority")
                                     (progress-summary :target-type
                                      job-progress-summary :member-name
                                      "ProgressSummary")
                                     (status-update-reason :target-type
                                      job-status-update-reason :member-name
                                      "StatusUpdateReason")
                                     (failure-reasons :target-type
                                      job-failure-list :member-name
                                      "FailureReasons")
                                     (report :target-type job-report
                                      :member-name "Report")
                                     (creation-time :target-type
                                      job-creation-time :member-name
                                      "CreationTime")
                                     (termination-date :target-type
                                      job-termination-date :member-name
                                      "TerminationDate")
                                     (role-arn :target-type iamrole-arn
                                      :member-name "RoleArn")
                                     (suspended-date :target-type
                                      suspended-date :member-name
                                      "SuspendedDate")
                                     (suspended-cause :target-type
                                      suspended-cause :member-name
                                      "SuspendedCause")
                                     (manifest-generator :target-type
                                      job-manifest-generator :member-name
                                      "ManifestGenerator")
                                     (generated-manifest-descriptor
                                      :target-type
                                      s3generated-manifest-descriptor
                                      :member-name
                                      "GeneratedManifestDescriptor"))
                                    (:shape-name "JobDescriptor"))

(smithy/sdk/shapes:define-structure job-failure common-lisp:nil
                                    ((failure-code :target-type
                                      job-failure-code :member-name
                                      "FailureCode")
                                     (failure-reason :target-type
                                      job-failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "JobFailure"))

(smithy/sdk/shapes:define-type job-failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-failure-list :member job-failure)

(smithy/sdk/shapes:define-type job-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-list-descriptor common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (description :target-type
                                      non-empty-max-length256string
                                      :member-name "Description")
                                     (operation :target-type operation-name
                                      :member-name "Operation")
                                     (priority :target-type job-priority
                                      :member-name "Priority")
                                     (status :target-type job-status
                                      :member-name "Status")
                                     (creation-time :target-type
                                      job-creation-time :member-name
                                      "CreationTime")
                                     (termination-date :target-type
                                      job-termination-date :member-name
                                      "TerminationDate")
                                     (progress-summary :target-type
                                      job-progress-summary :member-name
                                      "ProgressSummary"))
                                    (:shape-name "JobListDescriptor"))

(smithy/sdk/shapes:define-list job-list-descriptor-list :member
                               job-list-descriptor)

(smithy/sdk/shapes:define-structure job-manifest common-lisp:nil
                                    ((spec :target-type job-manifest-spec
                                      :required common-lisp:t :member-name
                                      "Spec")
                                     (location :target-type
                                      job-manifest-location :required
                                      common-lisp:t :member-name "Location"))
                                    (:shape-name "JobManifest"))

(smithy/sdk/shapes:define-list job-manifest-field-list :member
                               job-manifest-field-name)

(smithy/sdk/shapes:define-enum job-manifest-field-name
    common-lisp:nil
  (:ignore "Ignore")
  (:bucket "Bucket")
  (:key "Key")
  (:version-id "VersionId"))

(smithy/sdk/shapes:define-enum job-manifest-format
    common-lisp:nil
  (:s3batch-operations-csv-20180820 "S3BatchOperations_CSV_20180820")
  (:s3inventory-report-csv-20161130 "S3InventoryReport_CSV_20161130"))

(smithy/sdk/shapes:define-union job-manifest-generator common-lisp:nil
                                ((s3job-manifest-generator :target-type
                                  s3job-manifest-generator :member-name
                                  "S3JobManifestGenerator"))
                                (:shape-name "JobManifestGenerator"))

(smithy/sdk/shapes:define-structure job-manifest-generator-filter
                                    common-lisp:nil
                                    ((eligible-for-replication :target-type
                                      boolean :member-name
                                      "EligibleForReplication")
                                     (created-after :target-type
                                      object-creation-time :member-name
                                      "CreatedAfter")
                                     (created-before :target-type
                                      object-creation-time :member-name
                                      "CreatedBefore")
                                     (object-replication-statuses :target-type
                                      replication-status-filter-list
                                      :member-name "ObjectReplicationStatuses")
                                     (key-name-constraint :target-type
                                      key-name-constraint :member-name
                                      "KeyNameConstraint")
                                     (object-size-greater-than-bytes
                                      :target-type
                                      object-size-greater-than-bytes
                                      :member-name
                                      "ObjectSizeGreaterThanBytes")
                                     (object-size-less-than-bytes :target-type
                                      object-size-less-than-bytes :member-name
                                      "ObjectSizeLessThanBytes")
                                     (match-any-storage-class :target-type
                                      storage-class-list :member-name
                                      "MatchAnyStorageClass"))
                                    (:shape-name "JobManifestGeneratorFilter"))

(smithy/sdk/shapes:define-structure job-manifest-location common-lisp:nil
                                    ((object-arn :target-type s3key-arn-string
                                      :required common-lisp:t :member-name
                                      "ObjectArn")
                                     (object-version-id :target-type
                                      s3object-version-id :member-name
                                      "ObjectVersionId")
                                     (etag :target-type
                                      non-empty-max-length1024string :required
                                      common-lisp:t :member-name "ETag"))
                                    (:shape-name "JobManifestLocation"))

(smithy/sdk/shapes:define-structure job-manifest-spec common-lisp:nil
                                    ((format :target-type job-manifest-format
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (fields :target-type
                                      job-manifest-field-list :member-name
                                      "Fields"))
                                    (:shape-name "JobManifestSpec"))

(smithy/sdk/shapes:define-type job-number-of-tasks-failed
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type job-number-of-tasks-succeeded
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure job-operation common-lisp:nil
                                    ((lambda-invoke :target-type
                                      lambda-invoke-operation :member-name
                                      "LambdaInvoke")
                                     (s3put-object-copy :target-type
                                      s3copy-object-operation :member-name
                                      "S3PutObjectCopy")
                                     (s3put-object-acl :target-type
                                      s3set-object-acl-operation :member-name
                                      "S3PutObjectAcl")
                                     (s3put-object-tagging :target-type
                                      s3set-object-tagging-operation
                                      :member-name "S3PutObjectTagging")
                                     (s3delete-object-tagging :target-type
                                      s3delete-object-tagging-operation
                                      :member-name "S3DeleteObjectTagging")
                                     (s3initiate-restore-object :target-type
                                      s3initiate-restore-object-operation
                                      :member-name "S3InitiateRestoreObject")
                                     (s3put-object-legal-hold :target-type
                                      s3set-object-legal-hold-operation
                                      :member-name "S3PutObjectLegalHold")
                                     (s3put-object-retention :target-type
                                      s3set-object-retention-operation
                                      :member-name "S3PutObjectRetention")
                                     (s3replicate-object :target-type
                                      s3replicate-object-operation :member-name
                                      "S3ReplicateObject"))
                                    (:shape-name "JobOperation"))

(smithy/sdk/shapes:define-type job-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure job-progress-summary common-lisp:nil
                                    ((total-number-of-tasks :target-type
                                      job-total-number-of-tasks :member-name
                                      "TotalNumberOfTasks")
                                     (number-of-tasks-succeeded :target-type
                                      job-number-of-tasks-succeeded
                                      :member-name "NumberOfTasksSucceeded")
                                     (number-of-tasks-failed :target-type
                                      job-number-of-tasks-failed :member-name
                                      "NumberOfTasksFailed")
                                     (timers :target-type job-timers
                                      :member-name "Timers"))
                                    (:shape-name "JobProgressSummary"))

(smithy/sdk/shapes:define-structure job-report common-lisp:nil
                                    ((bucket :target-type s3bucket-arn-string
                                      :member-name "Bucket")
                                     (format :target-type job-report-format
                                      :member-name "Format")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (prefix :target-type report-prefix-string
                                      :member-name "Prefix")
                                     (report-scope :target-type
                                      job-report-scope :member-name
                                      "ReportScope"))
                                    (:shape-name "JobReport"))

(smithy/sdk/shapes:define-enum job-report-format
    common-lisp:nil
  (:report-csv-20180820 "Report_CSV_20180820"))

(smithy/sdk/shapes:define-enum job-report-scope
    common-lisp:nil
  (:all-tasks "AllTasks")
  (:failed-tasks-only "FailedTasksOnly"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:active "Active")
  (:cancelled "Cancelled")
  (:cancelling "Cancelling")
  (:complete "Complete")
  (:completing "Completing")
  (:failed "Failed")
  (:failing "Failing")
  (:new "New")
  (:paused "Paused")
  (:pausing "Pausing")
  (:preparing "Preparing")
  (:ready "Ready")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-error job-status-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "JobStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list job-status-list :member job-status)

(smithy/sdk/shapes:define-type job-status-update-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-termination-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type job-time-in-state-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure job-timers common-lisp:nil
                                    ((elapsed-time-in-active-seconds
                                      :target-type job-time-in-state-seconds
                                      :member-name
                                      "ElapsedTimeInActiveSeconds"))
                                    (:shape-name "JobTimers"))

(smithy/sdk/shapes:define-type job-total-number-of-tasks
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure key-name-constraint common-lisp:nil
                                    ((match-any-prefix :target-type
                                      non-empty-max-length1024string-list
                                      :member-name "MatchAnyPrefix")
                                     (match-any-suffix :target-type
                                      non-empty-max-length1024string-list
                                      :member-name "MatchAnySuffix")
                                     (match-any-substring :target-type
                                      non-empty-max-length1024string-list
                                      :member-name "MatchAnySubstring"))
                                    (:shape-name "KeyNameConstraint"))

(smithy/sdk/shapes:define-type kms-key-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-invoke-operation common-lisp:nil
                                    ((function-arn :target-type
                                      function-arn-string :member-name
                                      "FunctionArn")
                                     (invocation-schema-version :target-type
                                      non-empty-max-length64string :member-name
                                      "InvocationSchemaVersion")
                                     (user-arguments :target-type
                                      user-arguments :member-name
                                      "UserArguments"))
                                    (:shape-name "LambdaInvokeOperation"))

(smithy/sdk/shapes:define-structure lifecycle-configuration common-lisp:nil
                                    ((rules :target-type lifecycle-rules
                                      :member-name "Rules"))
                                    (:shape-name "LifecycleConfiguration"))

(smithy/sdk/shapes:define-structure lifecycle-expiration common-lisp:nil
                                    ((date :target-type date :member-name
                                      "Date")
                                     (days :target-type days :member-name
                                      "Days")
                                     (expired-object-delete-marker :target-type
                                      expired-object-delete-marker :member-name
                                      "ExpiredObjectDeleteMarker"))
                                    (:shape-name "LifecycleExpiration"))

(smithy/sdk/shapes:define-structure lifecycle-rule common-lisp:nil
                                    ((expiration :target-type
                                      lifecycle-expiration :member-name
                                      "Expiration")
                                     (id :target-type id :member-name "ID")
                                     (filter :target-type lifecycle-rule-filter
                                      :member-name "Filter")
                                     (status :target-type expiration-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (transitions :target-type transition-list
                                      :member-name "Transitions")
                                     (noncurrent-version-transitions
                                      :target-type
                                      noncurrent-version-transition-list
                                      :member-name
                                      "NoncurrentVersionTransitions")
                                     (noncurrent-version-expiration
                                      :target-type
                                      noncurrent-version-expiration
                                      :member-name
                                      "NoncurrentVersionExpiration")
                                     (abort-incomplete-multipart-upload
                                      :target-type
                                      abort-incomplete-multipart-upload
                                      :member-name
                                      "AbortIncompleteMultipartUpload"))
                                    (:shape-name "LifecycleRule"))

(smithy/sdk/shapes:define-structure lifecycle-rule-and-operator common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type s3tag-set :member-name
                                      "Tags")
                                     (object-size-greater-than :target-type
                                      object-size-greater-than-bytes
                                      :member-name "ObjectSizeGreaterThan")
                                     (object-size-less-than :target-type
                                      object-size-less-than-bytes :member-name
                                      "ObjectSizeLessThan"))
                                    (:shape-name "LifecycleRuleAndOperator"))

(smithy/sdk/shapes:define-structure lifecycle-rule-filter common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tag :target-type s3tag :member-name
                                      "Tag")
                                     (and :target-type
                                      lifecycle-rule-and-operator :member-name
                                      "And")
                                     (object-size-greater-than :target-type
                                      object-size-greater-than-bytes
                                      :member-name "ObjectSizeGreaterThan")
                                     (object-size-less-than :target-type
                                      object-size-less-than-bytes :member-name
                                      "ObjectSizeLessThan"))
                                    (:shape-name "LifecycleRuleFilter"))

(smithy/sdk/shapes:define-list lifecycle-rules :member
                               (lifecycle-rule :xml-name "Rule"))

(smithy/sdk/shapes:define-structure list-access-grant-entry common-lisp:nil
                                    ((created-at :target-type
                                      creation-timestamp :member-name
                                      "CreatedAt")
                                     (access-grant-id :target-type
                                      access-grant-id :member-name
                                      "AccessGrantId")
                                     (access-grant-arn :target-type
                                      access-grant-arn :member-name
                                      "AccessGrantArn")
                                     (grantee :target-type grantee :member-name
                                      "Grantee")
                                     (permission :target-type permission
                                      :member-name "Permission")
                                     (access-grants-location-id :target-type
                                      access-grants-location-id :member-name
                                      "AccessGrantsLocationId")
                                     (access-grants-location-configuration
                                      :target-type
                                      access-grants-location-configuration
                                      :member-name
                                      "AccessGrantsLocationConfiguration")
                                     (grant-scope :target-type s3prefix
                                      :member-name "GrantScope")
                                     (application-arn :target-type
                                      identity-center-application-arn
                                      :member-name "ApplicationArn"))
                                    (:shape-name "ListAccessGrantEntry"))

(smithy/sdk/shapes:define-structure list-access-grants-instance-entry
                                    common-lisp:nil
                                    ((access-grants-instance-id :target-type
                                      access-grants-instance-id :member-name
                                      "AccessGrantsInstanceId")
                                     (access-grants-instance-arn :target-type
                                      access-grants-instance-arn :member-name
                                      "AccessGrantsInstanceArn")
                                     (created-at :target-type
                                      creation-timestamp :member-name
                                      "CreatedAt")
                                     (identity-center-arn :target-type
                                      identity-center-arn :member-name
                                      "IdentityCenterArn")
                                     (identity-center-instance-arn :target-type
                                      identity-center-arn :member-name
                                      "IdentityCenterInstanceArn")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn
                                      :member-name
                                      "IdentityCenterApplicationArn"))
                                    (:shape-name
                                     "ListAccessGrantsInstanceEntry"))

(smithy/sdk/shapes:define-input list-access-grants-instances-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAccessGrantsInstancesRequest"))

(smithy/sdk/shapes:define-output list-access-grants-instances-result
                                 common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (access-grants-instances-list :target-type
                                   access-grants-instances-list :member-name
                                   "AccessGrantsInstancesList"))
                                 (:shape-name
                                  "ListAccessGrantsInstancesResult"))

(smithy/sdk/shapes:define-structure list-access-grants-locations-entry
                                    common-lisp:nil
                                    ((created-at :target-type
                                      creation-timestamp :member-name
                                      "CreatedAt")
                                     (access-grants-location-id :target-type
                                      access-grants-location-id :member-name
                                      "AccessGrantsLocationId")
                                     (access-grants-location-arn :target-type
                                      access-grants-location-arn :member-name
                                      "AccessGrantsLocationArn")
                                     (location-scope :target-type s3prefix
                                      :member-name "LocationScope")
                                     (iamrole-arn :target-type iamrole-arn
                                      :member-name "IAMRoleArn"))
                                    (:shape-name
                                     "ListAccessGrantsLocationsEntry"))

(smithy/sdk/shapes:define-input list-access-grants-locations-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (location-scope :target-type s3prefix
                                  :member-name "LocationScope" :http-query
                                  "locationscope"))
                                (:shape-name
                                 "ListAccessGrantsLocationsRequest"))

(smithy/sdk/shapes:define-output list-access-grants-locations-result
                                 common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (access-grants-locations-list :target-type
                                   access-grants-locations-list :member-name
                                   "AccessGrantsLocationsList"))
                                 (:shape-name
                                  "ListAccessGrantsLocationsResult"))

(smithy/sdk/shapes:define-input list-access-grants-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (grantee-type :target-type grantee-type
                                  :member-name "GranteeType" :http-query
                                  "granteetype")
                                 (grantee-identifier :target-type
                                  grantee-identifier :member-name
                                  "GranteeIdentifier" :http-query
                                  "granteeidentifier")
                                 (permission :target-type permission
                                  :member-name "Permission" :http-query
                                  "permission")
                                 (grant-scope :target-type s3prefix
                                  :member-name "GrantScope" :http-query
                                  "grantscope")
                                 (application-arn :target-type
                                  identity-center-application-arn :member-name
                                  "ApplicationArn" :http-query
                                  "application_arn"))
                                (:shape-name "ListAccessGrantsRequest"))

(smithy/sdk/shapes:define-output list-access-grants-result common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (access-grants-list :target-type
                                   access-grants-list :member-name
                                   "AccessGrantsList"))
                                 (:shape-name "ListAccessGrantsResult"))

(smithy/sdk/shapes:define-input
 list-access-points-for-directory-buckets-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (directory-bucket :target-type bucket-name :member-name "DirectoryBucket"
   :http-query "directoryBucket")
  (next-token :target-type non-empty-max-length1024string :member-name
   "NextToken" :http-query "nextToken")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "maxResults"))
 (:shape-name "ListAccessPointsForDirectoryBucketsRequest"))

(smithy/sdk/shapes:define-output
 list-access-points-for-directory-buckets-result common-lisp:nil
 ((access-point-list :target-type access-point-list :member-name
   "AccessPointList")
  (next-token :target-type non-empty-max-length1024string :member-name
   "NextToken"))
 (:shape-name "ListAccessPointsForDirectoryBucketsResult"))

(smithy/sdk/shapes:define-input list-access-points-for-object-lambda-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type
                                  non-empty-max-length1024string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAccessPointsForObjectLambdaRequest"))

(smithy/sdk/shapes:define-output list-access-points-for-object-lambda-result
                                 common-lisp:nil
                                 ((object-lambda-access-point-list :target-type
                                   object-lambda-access-point-list :member-name
                                   "ObjectLambdaAccessPointList")
                                  (next-token :target-type
                                   non-empty-max-length1024string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListAccessPointsForObjectLambdaResult"))

(smithy/sdk/shapes:define-input list-access-points-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :member-name
                                  "Bucket" :http-query "bucket")
                                 (next-token :target-type
                                  non-empty-max-length1024string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (data-source-id :target-type data-source-id
                                  :member-name "DataSourceId" :http-query
                                  "dataSourceId")
                                 (data-source-type :target-type
                                  data-source-type :member-name
                                  "DataSourceType" :http-query
                                  "dataSourceType"))
                                (:shape-name "ListAccessPointsRequest"))

(smithy/sdk/shapes:define-output list-access-points-result common-lisp:nil
                                 ((access-point-list :target-type
                                   access-point-list :member-name
                                   "AccessPointList")
                                  (next-token :target-type
                                   non-empty-max-length1024string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAccessPointsResult"))

(smithy/sdk/shapes:define-structure list-caller-access-grants-entry
                                    common-lisp:nil
                                    ((permission :target-type permission
                                      :member-name "Permission")
                                     (grant-scope :target-type s3prefix
                                      :member-name "GrantScope")
                                     (application-arn :target-type
                                      identity-center-application-arn
                                      :member-name "ApplicationArn"))
                                    (:shape-name "ListCallerAccessGrantsEntry"))

(smithy/sdk/shapes:define-input list-caller-access-grants-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (grant-scope :target-type s3prefix
                                  :member-name "GrantScope" :http-query
                                  "grantscope")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (allowed-by-application :target-type boolean
                                  :member-name "AllowedByApplication"
                                  :http-query "allowedByApplication"))
                                (:shape-name "ListCallerAccessGrantsRequest"))

(smithy/sdk/shapes:define-output list-caller-access-grants-result
                                 common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (caller-access-grants-list :target-type
                                   caller-access-grants-list :member-name
                                   "CallerAccessGrantsList"))
                                 (:shape-name "ListCallerAccessGrantsResult"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-statuses :target-type job-status-list
                                  :member-name "JobStatuses" :http-query
                                  "jobStatuses")
                                 (next-token :target-type string-for-next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-result common-lisp:nil
                                 ((next-token :target-type
                                   string-for-next-token :member-name
                                   "NextToken")
                                  (jobs :target-type job-list-descriptor-list
                                   :member-name "Jobs"))
                                 (:shape-name "ListJobsResult"))

(smithy/sdk/shapes:define-input list-multi-region-access-points-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type
                                  non-empty-max-length1024string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListMultiRegionAccessPointsRequest"))

(smithy/sdk/shapes:define-output list-multi-region-access-points-result
                                 common-lisp:nil
                                 ((access-points :target-type
                                   multi-region-access-point-report-list
                                   :member-name "AccessPoints")
                                  (next-token :target-type
                                   non-empty-max-length1024string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListMultiRegionAccessPointsResult"))

(smithy/sdk/shapes:define-input list-regional-buckets-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type
                                  non-empty-max-length1024string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (outpost-id :target-type
                                  non-empty-max-length64string :member-name
                                  "OutpostId" :http-header "x-amz-outpost-id"))
                                (:shape-name "ListRegionalBucketsRequest"))

(smithy/sdk/shapes:define-output list-regional-buckets-result common-lisp:nil
                                 ((regional-bucket-list :target-type
                                   regional-bucket-list :member-name
                                   "RegionalBucketList")
                                  (next-token :target-type
                                   non-empty-max-length1024string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRegionalBucketsResult"))

(smithy/sdk/shapes:define-structure list-storage-lens-configuration-entry
                                    common-lisp:nil
                                    ((id :target-type config-id :required
                                      common-lisp:t :member-name "Id")
                                     (storage-lens-arn :target-type
                                      storage-lens-arn :required common-lisp:t
                                      :member-name "StorageLensArn")
                                     (home-region :target-type s3awsregion
                                      :required common-lisp:t :member-name
                                      "HomeRegion")
                                     (is-enabled :target-type is-enabled
                                      :member-name "IsEnabled"))
                                    (:shape-name
                                     "ListStorageLensConfigurationEntry"))

(smithy/sdk/shapes:define-input list-storage-lens-configurations-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListStorageLensConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-storage-lens-configurations-result
                                 common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (storage-lens-configuration-list :target-type
                                   storage-lens-configuration-list :member-name
                                   "StorageLensConfigurationList" :xml-name
                                   "StorageLensConfiguration" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name
                                  "ListStorageLensConfigurationsResult")
                                 (:xml-name
                                  "ListStorageLensConfigurationResult"))

(smithy/sdk/shapes:define-structure list-storage-lens-group-entry
                                    common-lisp:nil
                                    ((name :target-type storage-lens-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (storage-lens-group-arn :target-type
                                      storage-lens-group-arn :required
                                      common-lisp:t :member-name
                                      "StorageLensGroupArn")
                                     (home-region :target-type s3awsregion
                                      :required common-lisp:t :member-name
                                      "HomeRegion"))
                                    (:shape-name "ListStorageLensGroupEntry"))

(smithy/sdk/shapes:define-input list-storage-lens-groups-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (next-token :target-type continuation-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListStorageLensGroupsRequest"))

(smithy/sdk/shapes:define-output list-storage-lens-groups-result
                                 common-lisp:nil
                                 ((next-token :target-type continuation-token
                                   :member-name "NextToken")
                                  (storage-lens-group-list :target-type
                                   storage-lens-group-list :member-name
                                   "StorageLensGroupList" :xml-name
                                   "StorageLensGroup" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name "ListStorageLensGroupsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (resource-arn :target-type s3resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mfa smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mfadelete
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-enum mfadelete-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type manifest-prefix-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list match-any-prefix :member
                               (prefix :xml-name "Prefix"))

(smithy/sdk/shapes:define-list match-any-suffix :member
                               (suffix :xml-name "Suffix"))

(smithy/sdk/shapes:define-list match-any-tag :member (s3tag :xml-name "Tag"))

(smithy/sdk/shapes:define-structure match-object-age common-lisp:nil
                                    ((days-greater-than :target-type
                                      object-age-value :member-name
                                      "DaysGreaterThan")
                                     (days-less-than :target-type
                                      object-age-value :member-name
                                      "DaysLessThan"))
                                    (:shape-name "MatchObjectAge"))

(smithy/sdk/shapes:define-structure match-object-size common-lisp:nil
                                    ((bytes-greater-than :target-type
                                      object-size-value :member-name
                                      "BytesGreaterThan")
                                     (bytes-less-than :target-type
                                      object-size-value :member-name
                                      "BytesLessThan"))
                                    (:shape-name "MatchObjectSize"))

(smithy/sdk/shapes:define-type max-length1024string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metrics common-lisp:nil
                                    ((status :target-type metrics-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (event-threshold :target-type
                                      replication-time-value :member-name
                                      "EventThreshold"))
                                    (:shape-name "Metrics"))

(smithy/sdk/shapes:define-enum metrics-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type min-storage-bytes-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type minutes smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type multi-region-access-point-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multi-region-access-point-client-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multi-region-access-point-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multi-region-access-point-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multi-region-access-point-policy-document
                                    common-lisp:nil
                                    ((established :target-type
                                      established-multi-region-access-point-policy
                                      :member-name "Established")
                                     (proposed :target-type
                                      proposed-multi-region-access-point-policy
                                      :member-name "Proposed"))
                                    (:shape-name
                                     "MultiRegionAccessPointPolicyDocument"))

(smithy/sdk/shapes:define-structure multi-region-access-point-regional-response
                                    common-lisp:nil
                                    ((name :target-type region-name
                                      :member-name "Name")
                                     (request-status :target-type
                                      async-request-status :member-name
                                      "RequestStatus"))
                                    (:shape-name
                                     "MultiRegionAccessPointRegionalResponse"))

(smithy/sdk/shapes:define-list multi-region-access-point-regional-response-list
                               :member
                               (multi-region-access-point-regional-response
                                :xml-name "Region"))

(smithy/sdk/shapes:define-structure multi-region-access-point-report
                                    common-lisp:nil
                                    ((name :target-type
                                      multi-region-access-point-name
                                      :member-name "Name")
                                     (alias :target-type
                                      multi-region-access-point-alias
                                      :member-name "Alias")
                                     (created-at :target-type
                                      creation-timestamp :member-name
                                      "CreatedAt")
                                     (public-access-block :target-type
                                      public-access-block-configuration
                                      :member-name "PublicAccessBlock")
                                     (status :target-type
                                      multi-region-access-point-status
                                      :member-name "Status")
                                     (regions :target-type region-report-list
                                      :member-name "Regions"))
                                    (:shape-name
                                     "MultiRegionAccessPointReport"))

(smithy/sdk/shapes:define-list multi-region-access-point-report-list :member
                               (multi-region-access-point-report :xml-name
                                "AccessPoint"))

(smithy/sdk/shapes:define-structure multi-region-access-point-route
                                    common-lisp:nil
                                    ((bucket :target-type bucket-name
                                      :member-name "Bucket")
                                     (region :target-type region-name
                                      :member-name "Region")
                                     (traffic-dial-percentage :target-type
                                      traffic-dial-percentage :required
                                      common-lisp:t :member-name
                                      "TrafficDialPercentage"))
                                    (:shape-name "MultiRegionAccessPointRoute"))

(smithy/sdk/shapes:define-enum multi-region-access-point-status
    common-lisp:nil
  (:ready "READY")
  (:inconsistent-across-regions "INCONSISTENT_ACROSS_REGIONS")
  (:creating "CREATING")
  (:partially-created "PARTIALLY_CREATED")
  (:partially-deleted "PARTIALLY_DELETED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure multi-region-access-points-async-response
                                    common-lisp:nil
                                    ((regions :target-type
                                      multi-region-access-point-regional-response-list
                                      :member-name "Regions"))
                                    (:shape-name
                                     "MultiRegionAccessPointsAsyncResponse"))

(smithy/sdk/shapes:define-enum network-origin
    common-lisp:nil
  (:internet "Internet")
  (:vpc "VPC"))

(smithy/sdk/shapes:define-error no-such-public-access-block-configuration
                                common-lisp:nil
                                ((message :target-type
                                  no-such-public-access-block-configuration-message
                                  :member-name "Message"))
                                (:shape-name
                                 "NoSuchPublicAccessBlockConfiguration")
                                (:error-code 404))

(smithy/sdk/shapes:define-type
 no-such-public-access-block-configuration-message
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-max-length1024string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-max-length1024string-list :member
                               non-empty-max-length1024string)

(smithy/sdk/shapes:define-type non-empty-max-length2048string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-max-length256string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-max-length64string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type noncurrent-version-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure noncurrent-version-expiration
                                    common-lisp:nil
                                    ((noncurrent-days :target-type days
                                      :member-name "NoncurrentDays")
                                     (newer-noncurrent-versions :target-type
                                      noncurrent-version-count :member-name
                                      "NewerNoncurrentVersions"))
                                    (:shape-name "NoncurrentVersionExpiration"))

(smithy/sdk/shapes:define-structure noncurrent-version-transition
                                    common-lisp:nil
                                    ((noncurrent-days :target-type days
                                      :member-name "NoncurrentDays")
                                     (storage-class :target-type
                                      transition-storage-class :member-name
                                      "StorageClass"))
                                    (:shape-name "NoncurrentVersionTransition"))

(smithy/sdk/shapes:define-list noncurrent-version-transition-list :member
                               (noncurrent-version-transition :xml-name
                                "NoncurrentVersionTransition"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type object-age-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type object-creation-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure object-lambda-access-point common-lisp:nil
                                    ((name :target-type
                                      object-lambda-access-point-name :required
                                      common-lisp:t :member-name "Name")
                                     (object-lambda-access-point-arn
                                      :target-type
                                      object-lambda-access-point-arn
                                      :member-name
                                      "ObjectLambdaAccessPointArn")
                                     (alias :target-type
                                      object-lambda-access-point-alias
                                      :member-name "Alias"))
                                    (:shape-name "ObjectLambdaAccessPoint"))

(smithy/sdk/shapes:define-structure object-lambda-access-point-alias
                                    common-lisp:nil
                                    ((value :target-type
                                      object-lambda-access-point-alias-value
                                      :member-name "Value")
                                     (status :target-type
                                      object-lambda-access-point-alias-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "ObjectLambdaAccessPointAlias"))

(smithy/sdk/shapes:define-enum object-lambda-access-point-alias-status
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:ready "READY"))

(smithy/sdk/shapes:define-type object-lambda-access-point-alias-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-lambda-access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-lambda-access-point-list :member
                               (object-lambda-access-point :xml-name
                                "ObjectLambdaAccessPoint"))

(smithy/sdk/shapes:define-type object-lambda-access-point-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum object-lambda-allowed-feature
    common-lisp:nil
  (:get-object-range "GetObject-Range")
  (:get-object-part-number "GetObject-PartNumber")
  (:head-object-range "HeadObject-Range")
  (:head-object-part-number "HeadObject-PartNumber"))

(smithy/sdk/shapes:define-list object-lambda-allowed-features-list :member
                               (object-lambda-allowed-feature :xml-name
                                "AllowedFeature"))

(smithy/sdk/shapes:define-structure object-lambda-configuration common-lisp:nil
                                    ((supporting-access-point :target-type
                                      object-lambda-supporting-access-point-arn
                                      :required common-lisp:t :member-name
                                      "SupportingAccessPoint")
                                     (cloud-watch-metrics-enabled :target-type
                                      boolean :member-name
                                      "CloudWatchMetricsEnabled")
                                     (allowed-features :target-type
                                      object-lambda-allowed-features-list
                                      :member-name "AllowedFeatures")
                                     (transformation-configurations
                                      :target-type
                                      object-lambda-transformation-configurations-list
                                      :required common-lisp:t :member-name
                                      "TransformationConfigurations"))
                                    (:shape-name "ObjectLambdaConfiguration"))

(smithy/sdk/shapes:define-union object-lambda-content-transformation
                                common-lisp:nil
                                ((aws-lambda :target-type
                                  aws-lambda-transformation :member-name
                                  "AwsLambda"))
                                (:shape-name
                                 "ObjectLambdaContentTransformation"))

(smithy/sdk/shapes:define-type object-lambda-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-lambda-supporting-access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure object-lambda-transformation-configuration
                                    common-lisp:nil
                                    ((actions :target-type
                                      object-lambda-transformation-configuration-actions-list
                                      :required common-lisp:t :member-name
                                      "Actions")
                                     (content-transformation :target-type
                                      object-lambda-content-transformation
                                      :required common-lisp:t :member-name
                                      "ContentTransformation"))
                                    (:shape-name
                                     "ObjectLambdaTransformationConfiguration"))

(smithy/sdk/shapes:define-enum object-lambda-transformation-configuration-action
    common-lisp:nil
  (:get-object "GetObject")
  (:head-object "HeadObject")
  (:list-objects "ListObjects")
  (:list-objects-v2 "ListObjectsV2"))

(smithy/sdk/shapes:define-list
 object-lambda-transformation-configuration-actions-list :member
 (object-lambda-transformation-configuration-action :xml-name "Action"))

(smithy/sdk/shapes:define-list object-lambda-transformation-configurations-list
                               :member
                               (object-lambda-transformation-configuration
                                :xml-name "TransformationConfiguration"))

(smithy/sdk/shapes:define-type object-lock-enabled-for-bucket
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type object-size-greater-than-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type object-size-less-than-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type object-size-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum operation-name
    common-lisp:nil
  (:lambda-invoke "LambdaInvoke")
  (:s3put-object-copy "S3PutObjectCopy")
  (:s3put-object-acl "S3PutObjectAcl")
  (:s3put-object-tagging "S3PutObjectTagging")
  (:s3delete-object-tagging "S3DeleteObjectTagging")
  (:s3initiate-restore-object "S3InitiateRestoreObject")
  (:s3put-object-legal-hold "S3PutObjectLegalHold")
  (:s3put-object-retention "S3PutObjectRetention")
  (:s3replicate-object "S3ReplicateObject"))

(smithy/sdk/shapes:define-type organization smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-schema-version
    common-lisp:nil
  (:v-1 "V_1"))

(smithy/sdk/shapes:define-enum owner-override
    common-lisp:nil
  (:destination "Destination"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:read "READ")
  (:write "WRITE")
  (:readwrite "READWRITE"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-status common-lisp:nil
                                    ((is-public :target-type is-public
                                      :member-name "IsPublic" :xml-name
                                      "IsPublic"))
                                    (:shape-name "PolicyStatus"))

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prefix-level common-lisp:nil
                                    ((storage-metrics :target-type
                                      prefix-level-storage-metrics :required
                                      common-lisp:t :member-name
                                      "StorageMetrics"))
                                    (:shape-name "PrefixLevel"))

(smithy/sdk/shapes:define-structure prefix-level-storage-metrics
                                    common-lisp:nil
                                    ((is-enabled :target-type is-enabled
                                      :member-name "IsEnabled")
                                     (selection-criteria :target-type
                                      selection-criteria :member-name
                                      "SelectionCriteria"))
                                    (:shape-name "PrefixLevelStorageMetrics"))

(smithy/sdk/shapes:define-list prefixes-list :member
                               (prefix :xml-name "Prefix"))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum privilege
    common-lisp:nil
  (:minimal "Minimal")
  (:default "Default"))

(smithy/sdk/shapes:define-structure proposed-multi-region-access-point-policy
                                    common-lisp:nil
                                    ((policy :target-type policy :member-name
                                      "Policy"))
                                    (:shape-name
                                     "ProposedMultiRegionAccessPointPolicy"))

(smithy/sdk/shapes:define-structure public-access-block-configuration
                                    common-lisp:nil
                                    ((block-public-acls :target-type setting
                                      :member-name "BlockPublicAcls" :xml-name
                                      "BlockPublicAcls")
                                     (ignore-public-acls :target-type setting
                                      :member-name "IgnorePublicAcls" :xml-name
                                      "IgnorePublicAcls")
                                     (block-public-policy :target-type setting
                                      :member-name "BlockPublicPolicy"
                                      :xml-name "BlockPublicPolicy")
                                     (restrict-public-buckets :target-type
                                      setting :member-name
                                      "RestrictPublicBuckets" :xml-name
                                      "RestrictPublicBuckets"))
                                    (:shape-name
                                     "PublicAccessBlockConfiguration"))

(smithy/sdk/shapes:define-type public-access-block-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input
 put-access-grants-instance-resource-policy-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (policy :target-type policy-document :required common-lisp:t :member-name
   "Policy")
  (organization :target-type organization :member-name "Organization"))
 (:shape-name "PutAccessGrantsInstanceResourcePolicyRequest"))

(smithy/sdk/shapes:define-output
 put-access-grants-instance-resource-policy-result common-lisp:nil
 ((policy :target-type policy-document :member-name "Policy")
  (organization :target-type organization :member-name "Organization")
  (created-at :target-type creation-timestamp :member-name "CreatedAt"))
 (:shape-name "PutAccessGrantsInstanceResourcePolicyResult"))

(smithy/sdk/shapes:define-input
 put-access-point-configuration-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t)
  (configuration :target-type object-lambda-configuration :required
   common-lisp:t :member-name "Configuration"))
 (:shape-name "PutAccessPointConfigurationForObjectLambdaRequest"))

(smithy/sdk/shapes:define-input
 put-access-point-policy-for-object-lambda-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId" :host-label common-lisp:t :http-header "x-amz-account-id")
  (name :target-type object-lambda-access-point-name :required common-lisp:t
   :member-name "Name" :http-label common-lisp:t)
  (policy :target-type object-lambda-policy :required common-lisp:t
   :member-name "Policy"))
 (:shape-name "PutAccessPointPolicyForObjectLambdaRequest"))

(smithy/sdk/shapes:define-input put-access-point-policy-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutAccessPointPolicyRequest"))

(smithy/sdk/shapes:define-input put-access-point-scope-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (name :target-type access-point-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope"))
                                (:shape-name "PutAccessPointScopeRequest"))

(smithy/sdk/shapes:define-input put-bucket-lifecycle-configuration-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (lifecycle-configuration :target-type
                                  lifecycle-configuration :member-name
                                  "LifecycleConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "LifecycleConfiguration"))
                                (:shape-name
                                 "PutBucketLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-policy-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (confirm-remove-self-bucket-access
                                  :target-type
                                  confirm-remove-self-bucket-access
                                  :member-name "ConfirmRemoveSelfBucketAccess"
                                  :http-header
                                  "x-amz-confirm-remove-self-bucket-access")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutBucketPolicyRequest"))

(smithy/sdk/shapes:define-input put-bucket-replication-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (replication-configuration :target-type
                                  replication-configuration :required
                                  common-lisp:t :member-name
                                  "ReplicationConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "ReplicationConfiguration"))
                                (:shape-name "PutBucketReplicationRequest"))

(smithy/sdk/shapes:define-input put-bucket-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (tagging :target-type tagging :required
                                  common-lisp:t :member-name "Tagging"
                                  :http-payload common-lisp:t :xml-name
                                  "Tagging"))
                                (:shape-name "PutBucketTaggingRequest"))

(smithy/sdk/shapes:define-input put-bucket-versioning-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (mfa :target-type mfa :member-name "MFA"
                                  :http-header "x-amz-mfa")
                                 (versioning-configuration :target-type
                                  versioning-configuration :required
                                  common-lisp:t :member-name
                                  "VersioningConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "VersioningConfiguration"))
                                (:shape-name "PutBucketVersioningRequest"))

(smithy/sdk/shapes:define-input put-job-tagging-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t)
                                 (tags :target-type s3tag-set :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "PutJobTaggingRequest"))

(smithy/sdk/shapes:define-output put-job-tagging-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutJobTaggingResult"))

(smithy/sdk/shapes:define-structure put-multi-region-access-point-policy-input
                                    common-lisp:nil
                                    ((name :target-type
                                      multi-region-access-point-name :required
                                      common-lisp:t :member-name "Name")
                                     (policy :target-type policy :required
                                      common-lisp:t :member-name "Policy"))
                                    (:shape-name
                                     "PutMultiRegionAccessPointPolicyInput"))

(smithy/sdk/shapes:define-input put-multi-region-access-point-policy-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (client-token :target-type
                                  multi-region-access-point-client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (details :target-type
                                  put-multi-region-access-point-policy-input
                                  :required common-lisp:t :member-name
                                  "Details"))
                                (:shape-name
                                 "PutMultiRegionAccessPointPolicyRequest"))

(smithy/sdk/shapes:define-output put-multi-region-access-point-policy-result
                                 common-lisp:nil
                                 ((request-token-arn :target-type
                                   async-request-token-arn :member-name
                                   "RequestTokenARN"))
                                 (:shape-name
                                  "PutMultiRegionAccessPointPolicyResult"))

(smithy/sdk/shapes:define-input put-public-access-block-request common-lisp:nil
                                ((public-access-block-configuration
                                  :target-type
                                  public-access-block-configuration :required
                                  common-lisp:t :member-name
                                  "PublicAccessBlockConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "PublicAccessBlockConfiguration")
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id"))
                                (:shape-name "PutPublicAccessBlockRequest"))

(smithy/sdk/shapes:define-input put-storage-lens-configuration-request
                                common-lisp:nil
                                ((config-id :target-type config-id :required
                                  common-lisp:t :member-name "ConfigId"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (storage-lens-configuration :target-type
                                  storage-lens-configuration :required
                                  common-lisp:t :member-name
                                  "StorageLensConfiguration")
                                 (tags :target-type storage-lens-tags
                                  :member-name "Tags"))
                                (:shape-name
                                 "PutStorageLensConfigurationRequest"))

(smithy/sdk/shapes:define-input put-storage-lens-configuration-tagging-request
                                common-lisp:nil
                                ((config-id :target-type config-id :required
                                  common-lisp:t :member-name "ConfigId"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (tags :target-type storage-lens-tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name
                                 "PutStorageLensConfigurationTaggingRequest"))

(smithy/sdk/shapes:define-output put-storage-lens-configuration-tagging-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutStorageLensConfigurationTaggingResult"))

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (bucket-account-id :target-type account-id
                                      :member-name "BucketAccountId"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-list region-creation-list :member
                               (region :xml-name "Region"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region-report common-lisp:nil
                                    ((bucket :target-type bucket-name
                                      :member-name "Bucket")
                                     (region :target-type region-name
                                      :member-name "Region")
                                     (bucket-account-id :target-type account-id
                                      :member-name "BucketAccountId"))
                                    (:shape-name "RegionReport"))

(smithy/sdk/shapes:define-list region-report-list :member
                               (region-report :xml-name "Region"))

(smithy/sdk/shapes:define-structure regional-bucket common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (bucket-arn :target-type
                                      s3regional-bucket-arn :member-name
                                      "BucketArn")
                                     (public-access-block-enabled :target-type
                                      public-access-block-enabled :required
                                      common-lisp:t :member-name
                                      "PublicAccessBlockEnabled")
                                     (creation-date :target-type creation-date
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (outpost-id :target-type
                                      non-empty-max-length64string :member-name
                                      "OutpostId"))
                                    (:shape-name "RegionalBucket"))

(smithy/sdk/shapes:define-list regional-bucket-list :member
                               (regional-bucket :xml-name "RegionalBucket"))

(smithy/sdk/shapes:define-list regions :member (s3awsregion :xml-name "Region"))

(smithy/sdk/shapes:define-type replica-kms-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replica-modifications common-lisp:nil
                                    ((status :target-type
                                      replica-modifications-status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "ReplicaModifications"))

(smithy/sdk/shapes:define-enum replica-modifications-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure replication-configuration common-lisp:nil
                                    ((role :target-type role :required
                                      common-lisp:t :member-name "Role")
                                     (rules :target-type replication-rules
                                      :required common-lisp:t :member-name
                                      "Rules"))
                                    (:shape-name "ReplicationConfiguration"))

(smithy/sdk/shapes:define-structure replication-rule common-lisp:nil
                                    ((id :target-type id :member-name "ID")
                                     (priority :target-type priority
                                      :member-name "Priority")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (filter :target-type
                                      replication-rule-filter :member-name
                                      "Filter")
                                     (status :target-type
                                      replication-rule-status :required
                                      common-lisp:t :member-name "Status")
                                     (source-selection-criteria :target-type
                                      source-selection-criteria :member-name
                                      "SourceSelectionCriteria")
                                     (existing-object-replication :target-type
                                      existing-object-replication :member-name
                                      "ExistingObjectReplication")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (delete-marker-replication :target-type
                                      delete-marker-replication :member-name
                                      "DeleteMarkerReplication")
                                     (bucket :target-type
                                      bucket-identifier-string :required
                                      common-lisp:t :member-name "Bucket"))
                                    (:shape-name "ReplicationRule"))

(smithy/sdk/shapes:define-structure replication-rule-and-operator
                                    common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type s3tag-set :member-name
                                      "Tags"))
                                    (:shape-name "ReplicationRuleAndOperator"))

(smithy/sdk/shapes:define-structure replication-rule-filter common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tag :target-type s3tag :member-name
                                      "Tag")
                                     (and :target-type
                                      replication-rule-and-operator
                                      :member-name "And"))
                                    (:shape-name "ReplicationRuleFilter"))

(smithy/sdk/shapes:define-enum replication-rule-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list replication-rules :member
                               (replication-rule :xml-name "Rule"))

(smithy/sdk/shapes:define-enum replication-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:replica "REPLICA")
  (:none "NONE"))

(smithy/sdk/shapes:define-list replication-status-filter-list :member
                               replication-status)

(smithy/sdk/shapes:define-enum replication-storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:glacier "GLACIER")
  (:deep-archive "DEEP_ARCHIVE")
  (:outposts "OUTPOSTS")
  (:glacier-ir "GLACIER_IR"))

(smithy/sdk/shapes:define-structure replication-time common-lisp:nil
                                    ((status :target-type
                                      replication-time-status :required
                                      common-lisp:t :member-name "Status")
                                     (time :target-type replication-time-value
                                      :required common-lisp:t :member-name
                                      "Time"))
                                    (:shape-name "ReplicationTime"))

(smithy/sdk/shapes:define-enum replication-time-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure replication-time-value common-lisp:nil
                                    ((minutes :target-type minutes :member-name
                                      "Minutes"))
                                    (:shape-name "ReplicationTimeValue"))

(smithy/sdk/shapes:define-type report-prefix-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum requested-job-status
    common-lisp:nil
  (:cancelled "Cancelled")
  (:ready "Ready"))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-list :member
                               (multi-region-access-point-route :xml-name
                                "Route"))

(smithy/sdk/shapes:define-type s3awsregion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3access-control-list common-lisp:nil
                                    ((owner :target-type s3object-owner
                                      :required common-lisp:t :member-name
                                      "Owner")
                                     (grants :target-type s3grant-list
                                      :member-name "Grants"))
                                    (:shape-name "S3AccessControlList"))

(smithy/sdk/shapes:define-structure s3access-control-policy common-lisp:nil
                                    ((access-control-list :target-type
                                      s3access-control-list :member-name
                                      "AccessControlList")
                                     (canned-access-control-list :target-type
                                      s3canned-access-control-list :member-name
                                      "CannedAccessControlList"))
                                    (:shape-name "S3AccessControlPolicy"))

(smithy/sdk/shapes:define-type s3access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-destination common-lisp:nil
                                    ((format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (output-schema-version :target-type
                                      output-schema-version :required
                                      common-lisp:t :member-name
                                      "OutputSchemaVersion")
                                     (account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId")
                                     (arn :target-type s3bucket-arn-string
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (encryption :target-type
                                      storage-lens-data-export-encryption
                                      :member-name "Encryption"))
                                    (:shape-name "S3BucketDestination"))

(smithy/sdk/shapes:define-enum s3canned-access-control-list
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:aws-exec-read "aws-exec-read")
  (:authenticated-read "authenticated-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control"))

(smithy/sdk/shapes:define-enum s3checksum-algorithm
    common-lisp:nil
  (:crc32 "CRC32")
  (:crc32c "CRC32C")
  (:sha1 "SHA1")
  (:sha256 "SHA256")
  (:crc64nvme "CRC64NVME"))

(smithy/sdk/shapes:define-type s3content-length smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure s3copy-object-operation common-lisp:nil
                                    ((target-resource :target-type
                                      s3regional-or-s3express-bucket-arn-string
                                      :member-name "TargetResource")
                                     (canned-access-control-list :target-type
                                      s3canned-access-control-list :member-name
                                      "CannedAccessControlList")
                                     (access-control-grants :target-type
                                      s3grant-list :member-name
                                      "AccessControlGrants")
                                     (metadata-directive :target-type
                                      s3metadata-directive :member-name
                                      "MetadataDirective")
                                     (modified-since-constraint :target-type
                                      time-stamp :member-name
                                      "ModifiedSinceConstraint")
                                     (new-object-metadata :target-type
                                      s3object-metadata :member-name
                                      "NewObjectMetadata")
                                     (new-object-tagging :target-type s3tag-set
                                      :member-name "NewObjectTagging")
                                     (redirect-location :target-type
                                      non-empty-max-length2048string
                                      :member-name "RedirectLocation")
                                     (requester-pays :target-type boolean
                                      :member-name "RequesterPays")
                                     (storage-class :target-type
                                      s3storage-class :member-name
                                      "StorageClass")
                                     (un-modified-since-constraint :target-type
                                      time-stamp :member-name
                                      "UnModifiedSinceConstraint")
                                     (sseaws-kms-key-id :target-type
                                      kms-key-arn-string :member-name
                                      "SSEAwsKmsKeyId")
                                     (target-key-prefix :target-type
                                      non-empty-max-length1024string
                                      :member-name "TargetKeyPrefix")
                                     (object-lock-legal-hold-status
                                      :target-type
                                      s3object-lock-legal-hold-status
                                      :member-name "ObjectLockLegalHoldStatus")
                                     (object-lock-mode :target-type
                                      s3object-lock-mode :member-name
                                      "ObjectLockMode")
                                     (object-lock-retain-until-date
                                      :target-type time-stamp :member-name
                                      "ObjectLockRetainUntilDate")
                                     (bucket-key-enabled :target-type boolean
                                      :member-name "BucketKeyEnabled")
                                     (checksum-algorithm :target-type
                                      s3checksum-algorithm :member-name
                                      "ChecksumAlgorithm"))
                                    (:shape-name "S3CopyObjectOperation"))

(smithy/sdk/shapes:define-structure s3delete-object-tagging-operation
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "S3DeleteObjectTaggingOperation"))

(smithy/sdk/shapes:define-type s3expiration-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure s3generated-manifest-descriptor
                                    common-lisp:nil
                                    ((format :target-type
                                      generated-manifest-format :member-name
                                      "Format")
                                     (location :target-type
                                      job-manifest-location :member-name
                                      "Location"))
                                    (:shape-name
                                     "S3GeneratedManifestDescriptor"))

(smithy/sdk/shapes:define-enum s3glacier-job-tier
    common-lisp:nil
  (:bulk "BULK")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure s3grant common-lisp:nil
                                    ((grantee :target-type s3grantee
                                      :member-name "Grantee")
                                     (permission :target-type s3permission
                                      :member-name "Permission"))
                                    (:shape-name "S3Grant"))

(smithy/sdk/shapes:define-list s3grant-list :member s3grant)

(smithy/sdk/shapes:define-structure s3grantee common-lisp:nil
                                    ((type-identifier :target-type
                                      s3grantee-type-identifier :member-name
                                      "TypeIdentifier")
                                     (identifier :target-type
                                      non-empty-max-length1024string
                                      :member-name "Identifier")
                                     (display-name :target-type
                                      non-empty-max-length1024string
                                      :member-name "DisplayName"))
                                    (:shape-name "S3Grantee"))

(smithy/sdk/shapes:define-enum s3grantee-type-identifier
    common-lisp:nil
  (:canonical "id")
  (:email-address "emailAddress")
  (:group "uri"))

(smithy/sdk/shapes:define-structure s3initiate-restore-object-operation
                                    common-lisp:nil
                                    ((expiration-in-days :target-type
                                      s3expiration-in-days :member-name
                                      "ExpirationInDays")
                                     (glacier-job-tier :target-type
                                      s3glacier-job-tier :member-name
                                      "GlacierJobTier"))
                                    (:shape-name
                                     "S3InitiateRestoreObjectOperation"))

(smithy/sdk/shapes:define-structure s3job-manifest-generator common-lisp:nil
                                    ((expected-bucket-owner :target-type
                                      account-id :member-name
                                      "ExpectedBucketOwner")
                                     (source-bucket :target-type
                                      s3bucket-arn-string :required
                                      common-lisp:t :member-name
                                      "SourceBucket")
                                     (manifest-output-location :target-type
                                      s3manifest-output-location :member-name
                                      "ManifestOutputLocation")
                                     (filter :target-type
                                      job-manifest-generator-filter
                                      :member-name "Filter")
                                     (enable-manifest-output :target-type
                                      boolean :required common-lisp:t
                                      :member-name "EnableManifestOutput"))
                                    (:shape-name "S3JobManifestGenerator"))

(smithy/sdk/shapes:define-type s3key-arn-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3manifest-output-location common-lisp:nil
                                    ((expected-manifest-bucket-owner
                                      :target-type account-id :member-name
                                      "ExpectedManifestBucketOwner")
                                     (bucket :target-type s3bucket-arn-string
                                      :required common-lisp:t :member-name
                                      "Bucket")
                                     (manifest-prefix :target-type
                                      manifest-prefix-string :member-name
                                      "ManifestPrefix")
                                     (manifest-encryption :target-type
                                      generated-manifest-encryption
                                      :member-name "ManifestEncryption")
                                     (manifest-format :target-type
                                      generated-manifest-format :required
                                      common-lisp:t :member-name
                                      "ManifestFormat"))
                                    (:shape-name "S3ManifestOutputLocation"))

(smithy/sdk/shapes:define-enum s3metadata-directive
    common-lisp:nil
  (:copy "COPY")
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-structure s3object-lock-legal-hold common-lisp:nil
                                    ((status :target-type
                                      s3object-lock-legal-hold-status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "S3ObjectLockLegalHold"))

(smithy/sdk/shapes:define-enum s3object-lock-legal-hold-status
    common-lisp:nil
  (:off "OFF")
  (:on "ON"))

(smithy/sdk/shapes:define-enum s3object-lock-mode
    common-lisp:nil
  (:compliance "COMPLIANCE")
  (:governance "GOVERNANCE"))

(smithy/sdk/shapes:define-enum s3object-lock-retention-mode
    common-lisp:nil
  (:compliance "COMPLIANCE")
  (:governance "GOVERNANCE"))

(smithy/sdk/shapes:define-structure s3object-metadata common-lisp:nil
                                    ((cache-control :target-type
                                      non-empty-max-length1024string
                                      :member-name "CacheControl")
                                     (content-disposition :target-type
                                      non-empty-max-length1024string
                                      :member-name "ContentDisposition")
                                     (content-encoding :target-type
                                      non-empty-max-length1024string
                                      :member-name "ContentEncoding")
                                     (content-language :target-type
                                      non-empty-max-length1024string
                                      :member-name "ContentLanguage")
                                     (user-metadata :target-type
                                      s3user-metadata :member-name
                                      "UserMetadata")
                                     (content-length :target-type
                                      s3content-length :member-name
                                      "ContentLength")
                                     (content-md5 :target-type
                                      non-empty-max-length1024string
                                      :member-name "ContentMD5")
                                     (content-type :target-type
                                      non-empty-max-length1024string
                                      :member-name "ContentType")
                                     (http-expires-date :target-type time-stamp
                                      :member-name "HttpExpiresDate")
                                     (requester-charged :target-type boolean
                                      :member-name "RequesterCharged")
                                     (ssealgorithm :target-type s3ssealgorithm
                                      :member-name "SSEAlgorithm"))
                                    (:shape-name "S3ObjectMetadata"))

(smithy/sdk/shapes:define-structure s3object-owner common-lisp:nil
                                    ((id :target-type
                                      non-empty-max-length1024string
                                      :member-name "ID")
                                     (display-name :target-type
                                      non-empty-max-length1024string
                                      :member-name "DisplayName"))
                                    (:shape-name "S3ObjectOwner"))

(smithy/sdk/shapes:define-type s3object-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3permission
    common-lisp:nil
  (:full-control "FULL_CONTROL")
  (:read "READ")
  (:write "WRITE")
  (:read-acp "READ_ACP")
  (:write-acp "WRITE_ACP"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3prefix-type
    common-lisp:nil
  (:object "Object"))

(smithy/sdk/shapes:define-type s3regional-bucket-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3regional-or-s3express-bucket-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3replicate-object-operation
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "S3ReplicateObjectOperation"))

(smithy/sdk/shapes:define-type s3resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3retention common-lisp:nil
                                    ((retain-until-date :target-type time-stamp
                                      :member-name "RetainUntilDate")
                                     (mode :target-type
                                      s3object-lock-retention-mode :member-name
                                      "Mode"))
                                    (:shape-name "S3Retention"))

(smithy/sdk/shapes:define-enum s3ssealgorithm
    common-lisp:nil
  (:aes256 "AES256")
  (:kms "KMS"))

(smithy/sdk/shapes:define-structure s3set-object-acl-operation common-lisp:nil
                                    ((access-control-policy :target-type
                                      s3access-control-policy :member-name
                                      "AccessControlPolicy"))
                                    (:shape-name "S3SetObjectAclOperation"))

(smithy/sdk/shapes:define-structure s3set-object-legal-hold-operation
                                    common-lisp:nil
                                    ((legal-hold :target-type
                                      s3object-lock-legal-hold :required
                                      common-lisp:t :member-name "LegalHold"))
                                    (:shape-name
                                     "S3SetObjectLegalHoldOperation"))

(smithy/sdk/shapes:define-structure s3set-object-retention-operation
                                    common-lisp:nil
                                    ((bypass-governance-retention :target-type
                                      boolean :member-name
                                      "BypassGovernanceRetention")
                                     (retention :target-type s3retention
                                      :required common-lisp:t :member-name
                                      "Retention"))
                                    (:shape-name
                                     "S3SetObjectRetentionOperation"))

(smithy/sdk/shapes:define-structure s3set-object-tagging-operation
                                    common-lisp:nil
                                    ((tag-set :target-type s3tag-set
                                      :member-name "TagSet"))
                                    (:shape-name "S3SetObjectTaggingOperation"))

(smithy/sdk/shapes:define-enum s3storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:glacier "GLACIER")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE")
  (:glacier-ir "GLACIER_IR"))

(smithy/sdk/shapes:define-structure s3tag common-lisp:nil
                                    ((key :target-type tag-key-string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-string
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "S3Tag"))

(smithy/sdk/shapes:define-list s3tag-set :member s3tag)

(smithy/sdk/shapes:define-map s3user-metadata :key
                              non-empty-max-length1024string :value
                              max-length1024string)

(smithy/sdk/shapes:define-structure ssekms common-lisp:nil
                                    ((key-id :target-type ssekmskey-id
                                      :required common-lisp:t :member-name
                                      "KeyId"))
                                    (:shape-name "SSEKMS")
                                    (:xml-name "SSE-KMS"))

(smithy/sdk/shapes:define-structure ssekmsencryption common-lisp:nil
                                    ((key-id :target-type kms-key-arn-string
                                      :required common-lisp:t :member-name
                                      "KeyId"))
                                    (:shape-name "SSEKMSEncryption")
                                    (:xml-name "SSE-KMS"))

(smithy/sdk/shapes:define-type ssekmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sses3 common-lisp:nil common-lisp:nil
                                    (:shape-name "SSES3") (:xml-name "SSE-S3"))

(smithy/sdk/shapes:define-structure sses3encryption common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "SSES3Encryption")
                                    (:xml-name "SSE-S3"))

(smithy/sdk/shapes:define-structure scope common-lisp:nil
                                    ((prefixes :target-type prefixes-list
                                      :member-name "Prefixes" :xml-name
                                      "Prefixes")
                                     (permissions :target-type
                                      scope-permission-list :member-name
                                      "Permissions" :xml-name "Permissions"))
                                    (:shape-name "Scope"))

(smithy/sdk/shapes:define-enum scope-permission
    common-lisp:nil
  (:get-object "GetObject")
  (:get-object-attributes "GetObjectAttributes")
  (:list-multipart-upload-parts "ListMultipartUploadParts")
  (:list-bucket "ListBucket")
  (:list-bucket-multipart-uploads "ListBucketMultipartUploads")
  (:put-object "PutObject")
  (:delete-object "DeleteObject")
  (:abort-multipart-upload "AbortMultipartUpload"))

(smithy/sdk/shapes:define-list scope-permission-list :member
                               (scope-permission :xml-name "Permission"))

(smithy/sdk/shapes:define-type secret-access-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure selection-criteria common-lisp:nil
                                    ((delimiter :target-type
                                      storage-lens-prefix-level-delimiter
                                      :member-name "Delimiter")
                                     (max-depth :target-type
                                      storage-lens-prefix-level-max-depth
                                      :member-name "MaxDepth")
                                     (min-storage-bytes-percentage :target-type
                                      min-storage-bytes-percentage :member-name
                                      "MinStorageBytesPercentage"))
                                    (:shape-name "SelectionCriteria"))

(smithy/sdk/shapes:define-type session-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type setting smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure source-selection-criteria common-lisp:nil
                                    ((sse-kms-encrypted-objects :target-type
                                      sse-kms-encrypted-objects :member-name
                                      "SseKmsEncryptedObjects")
                                     (replica-modifications :target-type
                                      replica-modifications :member-name
                                      "ReplicaModifications"))
                                    (:shape-name "SourceSelectionCriteria"))

(smithy/sdk/shapes:define-structure sse-kms-encrypted-objects common-lisp:nil
                                    ((status :target-type
                                      sse-kms-encrypted-objects-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "SseKmsEncryptedObjects"))

(smithy/sdk/shapes:define-enum sse-kms-encrypted-objects-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list storage-class-list :member s3storage-class)

(smithy/sdk/shapes:define-type storage-lens-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-lens-aws-org common-lisp:nil
                                    ((arn :target-type aws-org-arn :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "StorageLensAwsOrg"))

(smithy/sdk/shapes:define-structure storage-lens-configuration common-lisp:nil
                                    ((id :target-type config-id :required
                                      common-lisp:t :member-name "Id")
                                     (account-level :target-type account-level
                                      :required common-lisp:t :member-name
                                      "AccountLevel")
                                     (include :target-type include :member-name
                                      "Include")
                                     (exclude :target-type exclude :member-name
                                      "Exclude")
                                     (data-export :target-type
                                      storage-lens-data-export :member-name
                                      "DataExport")
                                     (is-enabled :target-type is-enabled
                                      :required common-lisp:t :member-name
                                      "IsEnabled")
                                     (aws-org :target-type storage-lens-aws-org
                                      :member-name "AwsOrg")
                                     (storage-lens-arn :target-type
                                      storage-lens-arn :member-name
                                      "StorageLensArn"))
                                    (:shape-name "StorageLensConfiguration"))

(smithy/sdk/shapes:define-list storage-lens-configuration-list :member
                               (list-storage-lens-configuration-entry :xml-name
                                "StorageLensConfiguration"))

(smithy/sdk/shapes:define-structure storage-lens-data-export common-lisp:nil
                                    ((s3bucket-destination :target-type
                                      s3bucket-destination :member-name
                                      "S3BucketDestination")
                                     (cloud-watch-metrics :target-type
                                      cloud-watch-metrics :member-name
                                      "CloudWatchMetrics"))
                                    (:shape-name "StorageLensDataExport"))

(smithy/sdk/shapes:define-structure storage-lens-data-export-encryption
                                    common-lisp:nil
                                    ((sses3 :target-type sses3 :member-name
                                      "SSES3" :xml-name "SSE-S3")
                                     (ssekms :target-type ssekms :member-name
                                      "SSEKMS" :xml-name "SSE-KMS"))
                                    (:shape-name
                                     "StorageLensDataExportEncryption"))

(smithy/sdk/shapes:define-structure storage-lens-group common-lisp:nil
                                    ((name :target-type storage-lens-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (filter :target-type
                                      storage-lens-group-filter :required
                                      common-lisp:t :member-name "Filter")
                                     (storage-lens-group-arn :target-type
                                      storage-lens-group-arn :member-name
                                      "StorageLensGroupArn"))
                                    (:shape-name "StorageLensGroup"))

(smithy/sdk/shapes:define-structure storage-lens-group-and-operator
                                    common-lisp:nil
                                    ((match-any-prefix :target-type
                                      match-any-prefix :member-name
                                      "MatchAnyPrefix")
                                     (match-any-suffix :target-type
                                      match-any-suffix :member-name
                                      "MatchAnySuffix")
                                     (match-any-tag :target-type match-any-tag
                                      :member-name "MatchAnyTag")
                                     (match-object-age :target-type
                                      match-object-age :member-name
                                      "MatchObjectAge")
                                     (match-object-size :target-type
                                      match-object-size :member-name
                                      "MatchObjectSize"))
                                    (:shape-name "StorageLensGroupAndOperator"))

(smithy/sdk/shapes:define-type storage-lens-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-lens-group-filter common-lisp:nil
                                    ((match-any-prefix :target-type
                                      match-any-prefix :member-name
                                      "MatchAnyPrefix")
                                     (match-any-suffix :target-type
                                      match-any-suffix :member-name
                                      "MatchAnySuffix")
                                     (match-any-tag :target-type match-any-tag
                                      :member-name "MatchAnyTag")
                                     (match-object-age :target-type
                                      match-object-age :member-name
                                      "MatchObjectAge")
                                     (match-object-size :target-type
                                      match-object-size :member-name
                                      "MatchObjectSize")
                                     (and :target-type
                                      storage-lens-group-and-operator
                                      :member-name "And")
                                     (or :target-type
                                      storage-lens-group-or-operator
                                      :member-name "Or"))
                                    (:shape-name "StorageLensGroupFilter"))

(smithy/sdk/shapes:define-structure storage-lens-group-level common-lisp:nil
                                    ((selection-criteria :target-type
                                      storage-lens-group-level-selection-criteria
                                      :member-name "SelectionCriteria"))
                                    (:shape-name "StorageLensGroupLevel"))

(smithy/sdk/shapes:define-list storage-lens-group-level-exclude :member
                               (storage-lens-group-arn :xml-name "Arn"))

(smithy/sdk/shapes:define-list storage-lens-group-level-include :member
                               (storage-lens-group-arn :xml-name "Arn"))

(smithy/sdk/shapes:define-structure storage-lens-group-level-selection-criteria
                                    common-lisp:nil
                                    ((include :target-type
                                      storage-lens-group-level-include
                                      :member-name "Include")
                                     (exclude :target-type
                                      storage-lens-group-level-exclude
                                      :member-name "Exclude"))
                                    (:shape-name
                                     "StorageLensGroupLevelSelectionCriteria"))

(smithy/sdk/shapes:define-list storage-lens-group-list :member
                               (list-storage-lens-group-entry :xml-name
                                "StorageLensGroup"))

(smithy/sdk/shapes:define-type storage-lens-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-lens-group-or-operator
                                    common-lisp:nil
                                    ((match-any-prefix :target-type
                                      match-any-prefix :member-name
                                      "MatchAnyPrefix")
                                     (match-any-suffix :target-type
                                      match-any-suffix :member-name
                                      "MatchAnySuffix")
                                     (match-any-tag :target-type match-any-tag
                                      :member-name "MatchAnyTag")
                                     (match-object-age :target-type
                                      match-object-age :member-name
                                      "MatchObjectAge")
                                     (match-object-size :target-type
                                      match-object-size :member-name
                                      "MatchObjectSize"))
                                    (:shape-name "StorageLensGroupOrOperator"))

(smithy/sdk/shapes:define-type storage-lens-prefix-level-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type storage-lens-prefix-level-max-depth
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure storage-lens-tag common-lisp:nil
                                    ((key :target-type tag-key-string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-string
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "StorageLensTag"))

(smithy/sdk/shapes:define-list storage-lens-tags :member
                               (storage-lens-tag :xml-name "Tag"))

(smithy/sdk/shapes:define-type string-for-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input submit-multi-region-access-point-routes-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (mrap :target-type
                                  multi-region-access-point-id :required
                                  common-lisp:t :member-name "Mrap" :http-label
                                  common-lisp:t)
                                 (route-updates :target-type route-list
                                  :required common-lisp:t :member-name
                                  "RouteUpdates"))
                                (:shape-name
                                 "SubmitMultiRegionAccessPointRoutesRequest"))

(smithy/sdk/shapes:define-output submit-multi-region-access-point-routes-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SubmitMultiRegionAccessPointRoutesResult"))

(smithy/sdk/shapes:define-type suffix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type suspended-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type suspended-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key-string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-string
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-key-list :member tag-key-string)

(smithy/sdk/shapes:define-type tag-key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (resource-arn :target-type s3resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tagging common-lisp:nil
                                    ((tag-set :target-type s3tag-set :required
                                      common-lisp:t :member-name "TagSet"))
                                    (:shape-name "Tagging"))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type traffic-dial-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure transition common-lisp:nil
                                    ((date :target-type date :member-name
                                      "Date")
                                     (days :target-type days :member-name
                                      "Days")
                                     (storage-class :target-type
                                      transition-storage-class :member-name
                                      "StorageClass"))
                                    (:shape-name "Transition"))

(smithy/sdk/shapes:define-list transition-list :member
                               (transition :xml-name "Transition"))

(smithy/sdk/shapes:define-enum transition-storage-class
    common-lisp:nil
  (:glacier "GLACIER")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (resource-arn :target-type s3resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-access-grants-location-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (access-grants-location-id :target-type
                                  access-grants-location-id :required
                                  common-lisp:t :member-name
                                  "AccessGrantsLocationId" :http-label
                                  common-lisp:t)
                                 (iamrole-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "IAMRoleArn"))
                                (:shape-name
                                 "UpdateAccessGrantsLocationRequest"))

(smithy/sdk/shapes:define-output update-access-grants-location-result
                                 common-lisp:nil
                                 ((created-at :target-type creation-timestamp
                                   :member-name "CreatedAt")
                                  (access-grants-location-id :target-type
                                   access-grants-location-id :member-name
                                   "AccessGrantsLocationId")
                                  (access-grants-location-arn :target-type
                                   access-grants-location-arn :member-name
                                   "AccessGrantsLocationArn")
                                  (location-scope :target-type s3prefix
                                   :member-name "LocationScope")
                                  (iamrole-arn :target-type iamrole-arn
                                   :member-name "IAMRoleArn"))
                                 (:shape-name
                                  "UpdateAccessGrantsLocationResult"))

(smithy/sdk/shapes:define-input update-job-priority-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t)
                                 (priority :target-type job-priority :required
                                  common-lisp:t :member-name "Priority"
                                  :http-query "priority"))
                                (:shape-name "UpdateJobPriorityRequest"))

(smithy/sdk/shapes:define-output update-job-priority-result common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "JobId")
                                  (priority :target-type job-priority :required
                                   common-lisp:t :member-name "Priority"))
                                 (:shape-name "UpdateJobPriorityResult"))

(smithy/sdk/shapes:define-input update-job-status-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t)
                                 (requested-job-status :target-type
                                  requested-job-status :required common-lisp:t
                                  :member-name "RequestedJobStatus" :http-query
                                  "requestedJobStatus")
                                 (status-update-reason :target-type
                                  job-status-update-reason :member-name
                                  "StatusUpdateReason" :http-query
                                  "statusUpdateReason"))
                                (:shape-name "UpdateJobStatusRequest"))

(smithy/sdk/shapes:define-output update-job-status-result common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (status :target-type job-status :member-name
                                   "Status")
                                  (status-update-reason :target-type
                                   job-status-update-reason :member-name
                                   "StatusUpdateReason"))
                                 (:shape-name "UpdateJobStatusResult"))

(smithy/sdk/shapes:define-input update-storage-lens-group-request
                                common-lisp:nil
                                ((name :target-type storage-lens-group-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t)
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"
                                  :host-label common-lisp:t :http-header
                                  "x-amz-account-id")
                                 (storage-lens-group :target-type
                                  storage-lens-group :required common-lisp:t
                                  :member-name "StorageLensGroup"))
                                (:shape-name "UpdateStorageLensGroupRequest"))

(smithy/sdk/shapes:define-map user-arguments :key non-empty-max-length64string
                              :value max-length1024string)

(smithy/sdk/shapes:define-structure versioning-configuration common-lisp:nil
                                    ((mfadelete :target-type mfadelete
                                      :member-name "MFADelete" :xml-name
                                      "MfaDelete")
                                     (status :target-type
                                      bucket-versioning-status :member-name
                                      "Status"))
                                    (:shape-name "VersioningConfiguration"))

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-access-grants-identity-center
                                       :shape-name
                                       "AssociateAccessGrantsIdentityCenter"
                                       :input
                                       associate-access-grants-identity-center-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v20180820/accessgrantsinstance/identitycenter"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-access-grant :shape-name
                                       "CreateAccessGrant" :input
                                       create-access-grant-request :output
                                       create-access-grant-result :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v20180820/accessgrantsinstance/grant"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-access-grants-instance
                                       :shape-name "CreateAccessGrantsInstance"
                                       :input
                                       create-access-grants-instance-request
                                       :output
                                       create-access-grants-instance-result
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/v20180820/accessgrantsinstance"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-access-grants-location
                                       :shape-name "CreateAccessGrantsLocation"
                                       :input
                                       create-access-grants-location-request
                                       :output
                                       create-access-grants-location-result
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v20180820/accessgrantsinstance/location"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-access-point :shape-name
                                       "CreateAccessPoint" :input
                                       create-access-point-request :output
                                       create-access-point-result :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v20180820/accesspoint/{Name}" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation create-access-point-for-object-lambda
                                       :shape-name
                                       "CreateAccessPointForObjectLambda"
                                       :input
                                       create-access-point-for-object-lambda-request
                                       :output
                                       create-access-point-for-object-lambda-result
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v20180820/accesspointforobjectlambda/{Name}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-bucket :shape-name "CreateBucket"
                                       :input create-bucket-request :output
                                       create-bucket-result :errors
                                       (bucket-already-exists
                                        bucket-already-owned-by-you)
                                       :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}" :code 200
                                       :checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-result :errors
                                       (bad-request-exception
                                        idempotency-exception
                                        internal-service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v20180820/jobs"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-multi-region-access-point
                                       :shape-name
                                       "CreateMultiRegionAccessPoint" :input
                                       create-multi-region-access-point-request
                                       :output
                                       create-multi-region-access-point-result
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v20180820/async-requests/mrap/create"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation create-storage-lens-group :shape-name
                                       "CreateStorageLensGroup" :input
                                       create-storage-lens-group-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v20180820/storagelensgroup" :code 204
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-grant :shape-name
                                       "DeleteAccessGrant" :input
                                       delete-access-grant-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v20180820/accessgrantsinstance/grant/{AccessGrantId}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-grants-instance
                                       :shape-name "DeleteAccessGrantsInstance"
                                       :input
                                       delete-access-grants-instance-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accessgrantsinstance" :code
                                       200 :checksum-required common-lisp:t
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation
 delete-access-grants-instance-resource-policy :shape-name
 "DeleteAccessGrantsInstanceResourcePolicy" :input
 delete-access-grants-instance-resource-policy-request :output common-lisp:null
 :errors common-lisp:nil :method "DELETE" :uri
 "/v20180820/accessgrantsinstance/resourcepolicy" :code 200 :checksum-required
 common-lisp:t :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-grants-location
                                       :shape-name "DeleteAccessGrantsLocation"
                                       :input
                                       delete-access-grants-location-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-point :shape-name
                                       "DeleteAccessPoint" :input
                                       delete-access-point-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v20180820/accesspoint/{Name}" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-point-for-object-lambda
                                       :shape-name
                                       "DeleteAccessPointForObjectLambda"
                                       :input
                                       delete-access-point-for-object-lambda-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accesspointforobjectlambda/{Name}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-point-policy :shape-name
                                       "DeleteAccessPointPolicy" :input
                                       delete-access-point-policy-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accesspoint/{Name}/policy"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 delete-access-point-policy-for-object-lambda :shape-name
 "DeleteAccessPointPolicyForObjectLambda" :input
 delete-access-point-policy-for-object-lambda-request :output common-lisp:null
 :errors common-lisp:nil :method "DELETE" :uri
 "/v20180820/accesspointforobjectlambda/{Name}/policy" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-access-point-scope :shape-name
                                       "DeleteAccessPointScope" :input
                                       delete-access-point-scope-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accesspoint/{Name}/scope"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-bucket :shape-name "DeleteBucket"
                                       :input delete-bucket-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v20180820/bucket/{Bucket}" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-bucket-lifecycle-configuration
                                       :shape-name
                                       "DeleteBucketLifecycleConfiguration"
                                       :input
                                       delete-bucket-lifecycle-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/bucket/{Bucket}/lifecycleconfiguration"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-bucket-policy :shape-name
                                       "DeleteBucketPolicy" :input
                                       delete-bucket-policy-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v20180820/bucket/{Bucket}/policy"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-bucket-replication :shape-name
                                       "DeleteBucketReplication" :input
                                       delete-bucket-replication-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/bucket/{Bucket}/replication"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-bucket-tagging :shape-name
                                       "DeleteBucketTagging" :input
                                       delete-bucket-tagging-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v20180820/bucket/{Bucket}/tagging"
                                       :code 204 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-job-tagging :shape-name
                                       "DeleteJobTagging" :input
                                       delete-job-tagging-request :output
                                       delete-job-tagging-result :errors
                                       (internal-service-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20180820/jobs/{JobId}/tagging" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-multi-region-access-point
                                       :shape-name
                                       "DeleteMultiRegionAccessPoint" :input
                                       delete-multi-region-access-point-request
                                       :output
                                       delete-multi-region-access-point-result
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v20180820/async-requests/mrap/delete"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-public-access-block :shape-name
                                       "DeletePublicAccessBlock" :input
                                       delete-public-access-block-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/configuration/publicAccessBlock"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation delete-storage-lens-configuration
                                       :shape-name
                                       "DeleteStorageLensConfiguration" :input
                                       delete-storage-lens-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/storagelens/{ConfigId}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 delete-storage-lens-configuration-tagging :shape-name
 "DeleteStorageLensConfigurationTagging" :input
 delete-storage-lens-configuration-tagging-request :output
 delete-storage-lens-configuration-tagging-result :errors common-lisp:nil
 :method "DELETE" :uri "/v20180820/storagelens/{ConfigId}/tagging" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation delete-storage-lens-group :shape-name
                                       "DeleteStorageLensGroup" :input
                                       delete-storage-lens-group-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/storagelensgroup/{Name}"
                                       :code 204 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation describe-job :shape-name "DescribeJob"
                                       :input describe-job-request :output
                                       describe-job-result :errors
                                       (bad-request-exception
                                        internal-service-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20180820/jobs/{JobId}" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation
 describe-multi-region-access-point-operation :shape-name
 "DescribeMultiRegionAccessPointOperation" :input
 describe-multi-region-access-point-operation-request :output
 describe-multi-region-access-point-operation-result :errors common-lisp:nil
 :method "GET" :uri "/v20180820/async-requests/mrap/{RequestTokenARN+}" :code
 200 :checksum-required common-lisp:t :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation dissociate-access-grants-identity-center
                                       :shape-name
                                       "DissociateAccessGrantsIdentityCenter"
                                       :input
                                       dissociate-access-grants-identity-center-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/accessgrantsinstance/identitycenter"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-grant :shape-name
                                       "GetAccessGrant" :input
                                       get-access-grant-request :output
                                       get-access-grant-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accessgrantsinstance/grant/{AccessGrantId}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-grants-instance :shape-name
                                       "GetAccessGrantsInstance" :input
                                       get-access-grants-instance-request
                                       :output
                                       get-access-grants-instance-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/accessgrantsinstance"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-grants-instance-for-prefix
                                       :shape-name
                                       "GetAccessGrantsInstanceForPrefix"
                                       :input
                                       get-access-grants-instance-for-prefix-request
                                       :output
                                       get-access-grants-instance-for-prefix-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accessgrantsinstance/prefix"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 get-access-grants-instance-resource-policy :shape-name
 "GetAccessGrantsInstanceResourcePolicy" :input
 get-access-grants-instance-resource-policy-request :output
 get-access-grants-instance-resource-policy-result :errors common-lisp:nil
 :method "GET" :uri "/v20180820/accessgrantsinstance/resourcepolicy" :code 200
 :checksum-required common-lisp:t :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-grants-location :shape-name
                                       "GetAccessGrantsLocation" :input
                                       get-access-grants-location-request
                                       :output
                                       get-access-grants-location-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-point :shape-name
                                       "GetAccessPoint" :input
                                       get-access-point-request :output
                                       get-access-point-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accesspoint/{Name}" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation
 get-access-point-configuration-for-object-lambda :shape-name
 "GetAccessPointConfigurationForObjectLambda" :input
 get-access-point-configuration-for-object-lambda-request :output
 get-access-point-configuration-for-object-lambda-result :errors
 common-lisp:nil :method "GET" :uri
 "/v20180820/accesspointforobjectlambda/{Name}/configuration" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-point-for-object-lambda
                                       :shape-name
                                       "GetAccessPointForObjectLambda" :input
                                       get-access-point-for-object-lambda-request
                                       :output
                                       get-access-point-for-object-lambda-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accesspointforobjectlambda/{Name}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-point-policy :shape-name
                                       "GetAccessPointPolicy" :input
                                       get-access-point-policy-request :output
                                       get-access-point-policy-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accesspoint/{Name}/policy"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 get-access-point-policy-for-object-lambda :shape-name
 "GetAccessPointPolicyForObjectLambda" :input
 get-access-point-policy-for-object-lambda-request :output
 get-access-point-policy-for-object-lambda-result :errors common-lisp:nil
 :method "GET" :uri "/v20180820/accesspointforobjectlambda/{Name}/policy" :code
 200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-point-policy-status
                                       :shape-name "GetAccessPointPolicyStatus"
                                       :input
                                       get-access-point-policy-status-request
                                       :output
                                       get-access-point-policy-status-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accesspoint/{Name}/policyStatus"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 get-access-point-policy-status-for-object-lambda :shape-name
 "GetAccessPointPolicyStatusForObjectLambda" :input
 get-access-point-policy-status-for-object-lambda-request :output
 get-access-point-policy-status-for-object-lambda-result :errors
 common-lisp:nil :method "GET" :uri
 "/v20180820/accesspointforobjectlambda/{Name}/policyStatus" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-access-point-scope :shape-name
                                       "GetAccessPointScope" :input
                                       get-access-point-scope-request :output
                                       get-access-point-scope-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accesspoint/{Name}/scope"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket :shape-name "GetBucket"
                                       :input get-bucket-request :output
                                       get-bucket-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket/{Bucket}" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-bucket-lifecycle-configuration
                                       :shape-name
                                       "GetBucketLifecycleConfiguration" :input
                                       get-bucket-lifecycle-configuration-request
                                       :output
                                       get-bucket-lifecycle-configuration-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/bucket/{Bucket}/lifecycleconfiguration"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-bucket-policy :shape-name
                                       "GetBucketPolicy" :input
                                       get-bucket-policy-request :output
                                       get-bucket-policy-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket/{Bucket}/policy"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-bucket-replication :shape-name
                                       "GetBucketReplication" :input
                                       get-bucket-replication-request :output
                                       get-bucket-replication-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket/{Bucket}/replication"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-bucket-tagging :shape-name
                                       "GetBucketTagging" :input
                                       get-bucket-tagging-request :output
                                       get-bucket-tagging-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket/{Bucket}/tagging"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-bucket-versioning :shape-name
                                       "GetBucketVersioning" :input
                                       get-bucket-versioning-request :output
                                       get-bucket-versioning-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket/{Bucket}/versioning"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-data-access :shape-name
                                       "GetDataAccess" :input
                                       get-data-access-request :output
                                       get-data-access-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accessgrantsinstance/dataaccess"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-job-tagging :shape-name
                                       "GetJobTagging" :input
                                       get-job-tagging-request :output
                                       get-job-tagging-result :errors
                                       (internal-service-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20180820/jobs/{JobId}/tagging" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-multi-region-access-point
                                       :shape-name "GetMultiRegionAccessPoint"
                                       :input
                                       get-multi-region-access-point-request
                                       :output
                                       get-multi-region-access-point-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/mrap/instances/{Name+}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-multi-region-access-point-policy
                                       :shape-name
                                       "GetMultiRegionAccessPointPolicy" :input
                                       get-multi-region-access-point-policy-request
                                       :output
                                       get-multi-region-access-point-policy-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/mrap/instances/{Name+}/policy"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 get-multi-region-access-point-policy-status :shape-name
 "GetMultiRegionAccessPointPolicyStatus" :input
 get-multi-region-access-point-policy-status-request :output
 get-multi-region-access-point-policy-status-result :errors common-lisp:nil
 :method "GET" :uri "/v20180820/mrap/instances/{Name+}/policystatus" :code 200
 :checksum-required common-lisp:t :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation get-multi-region-access-point-routes
                                       :shape-name
                                       "GetMultiRegionAccessPointRoutes" :input
                                       get-multi-region-access-point-routes-request
                                       :output
                                       get-multi-region-access-point-routes-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/mrap/instances/{Mrap+}/routes"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-public-access-block :shape-name
                                       "GetPublicAccessBlock" :input
                                       get-public-access-block-request :output
                                       get-public-access-block-output :errors
                                       (no-such-public-access-block-configuration)
                                       :method "GET" :uri
                                       "/v20180820/configuration/publicAccessBlock"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-storage-lens-configuration
                                       :shape-name
                                       "GetStorageLensConfiguration" :input
                                       get-storage-lens-configuration-request
                                       :output
                                       get-storage-lens-configuration-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/storagelens/{ConfigId}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-storage-lens-configuration-tagging
                                       :shape-name
                                       "GetStorageLensConfigurationTagging"
                                       :input
                                       get-storage-lens-configuration-tagging-request
                                       :output
                                       get-storage-lens-configuration-tagging-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/storagelens/{ConfigId}/tagging"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation get-storage-lens-group :shape-name
                                       "GetStorageLensGroup" :input
                                       get-storage-lens-group-request :output
                                       get-storage-lens-group-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/storagelensgroup/{Name}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-access-grants :shape-name
                                       "ListAccessGrants" :input
                                       list-access-grants-request :output
                                       list-access-grants-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accessgrantsinstance/grants"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-access-grants-instances :shape-name
                                       "ListAccessGrantsInstances" :input
                                       list-access-grants-instances-request
                                       :output
                                       list-access-grants-instances-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/accessgrantsinstances"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-access-grants-locations :shape-name
                                       "ListAccessGrantsLocations" :input
                                       list-access-grants-locations-request
                                       :output
                                       list-access-grants-locations-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accessgrantsinstance/locations"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-access-points :shape-name
                                       "ListAccessPoints" :input
                                       list-access-points-request :output
                                       list-access-points-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/accesspoint" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation list-access-points-for-directory-buckets
                                       :shape-name
                                       "ListAccessPointsForDirectoryBuckets"
                                       :input
                                       list-access-points-for-directory-buckets-request
                                       :output
                                       list-access-points-for-directory-buckets-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accesspointfordirectory"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-points-for-object-lambda
                                       :shape-name
                                       "ListAccessPointsForObjectLambda" :input
                                       list-access-points-for-object-lambda-request
                                       :output
                                       list-access-points-for-object-lambda-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accesspointforobjectlambda"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-caller-access-grants :shape-name
                                       "ListCallerAccessGrants" :input
                                       list-caller-access-grants-request
                                       :output list-caller-access-grants-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v20180820/accessgrantsinstance/caller/grants"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-result :errors
                                       (internal-service-exception
                                        invalid-next-token-exception
                                        invalid-request-exception)
                                       :method "GET" :uri "/v20180820/jobs"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation list-multi-region-access-points
                                       :shape-name
                                       "ListMultiRegionAccessPoints" :input
                                       list-multi-region-access-points-request
                                       :output
                                       list-multi-region-access-points-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/mrap/instances" :code
                                       200 :checksum-required common-lisp:t
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation list-regional-buckets :shape-name
                                       "ListRegionalBuckets" :input
                                       list-regional-buckets-request :output
                                       list-regional-buckets-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/bucket" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation list-storage-lens-configurations
                                       :shape-name
                                       "ListStorageLensConfigurations" :input
                                       list-storage-lens-configurations-request
                                       :output
                                       list-storage-lens-configurations-result
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/v20180820/storagelens" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation list-storage-lens-groups :shape-name
                                       "ListStorageLensGroups" :input
                                       list-storage-lens-groups-request :output
                                       list-storage-lens-groups-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/storagelensgroup" :code 200
                                       :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v20180820/tags/{ResourceArn+}" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation
 put-access-grants-instance-resource-policy :shape-name
 "PutAccessGrantsInstanceResourcePolicy" :input
 put-access-grants-instance-resource-policy-request :output
 put-access-grants-instance-resource-policy-result :errors common-lisp:nil
 :method "PUT" :uri "/v20180820/accessgrantsinstance/resourcepolicy" :code 200
 :checksum-required common-lisp:t :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation
 put-access-point-configuration-for-object-lambda :shape-name
 "PutAccessPointConfigurationForObjectLambda" :input
 put-access-point-configuration-for-object-lambda-request :output
 common-lisp:null :errors common-lisp:nil :method "PUT" :uri
 "/v20180820/accesspointforobjectlambda/{Name}/configuration" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation put-access-point-policy :shape-name
                                       "PutAccessPointPolicy" :input
                                       put-access-point-policy-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/accesspoint/{Name}/policy"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation
 put-access-point-policy-for-object-lambda :shape-name
 "PutAccessPointPolicyForObjectLambda" :input
 put-access-point-policy-for-object-lambda-request :output common-lisp:null
 :errors common-lisp:nil :method "PUT" :uri
 "/v20180820/accesspointforobjectlambda/{Name}/policy" :code 200
 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation put-access-point-scope :shape-name
                                       "PutAccessPointScope" :input
                                       put-access-point-scope-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/accesspoint/{Name}/scope"
                                       :code 200)

(smithy/sdk/operation:define-operation put-bucket-lifecycle-configuration
                                       :shape-name
                                       "PutBucketLifecycleConfiguration" :input
                                       put-bucket-lifecycle-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}/lifecycleconfiguration"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-bucket-policy :shape-name
                                       "PutBucketPolicy" :input
                                       put-bucket-policy-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}/policy"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-bucket-replication :shape-name
                                       "PutBucketReplication" :input
                                       put-bucket-replication-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}/replication"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-bucket-tagging :shape-name
                                       "PutBucketTagging" :input
                                       put-bucket-tagging-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}/tagging"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-bucket-versioning :shape-name
                                       "PutBucketVersioning" :input
                                       put-bucket-versioning-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/bucket/{Bucket}/versioning"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-job-tagging :shape-name
                                       "PutJobTagging" :input
                                       put-job-tagging-request :output
                                       put-job-tagging-result :errors
                                       (internal-service-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        too-many-tags-exception)
                                       :method "PUT" :uri
                                       "/v20180820/jobs/{JobId}/tagging" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation put-multi-region-access-point-policy
                                       :shape-name
                                       "PutMultiRegionAccessPointPolicy" :input
                                       put-multi-region-access-point-policy-request
                                       :output
                                       put-multi-region-access-point-policy-result
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v20180820/async-requests/mrap/put-policy"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-public-access-block :shape-name
                                       "PutPublicAccessBlock" :input
                                       put-public-access-block-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/v20180820/configuration/publicAccessBlock"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-storage-lens-configuration
                                       :shape-name
                                       "PutStorageLensConfiguration" :input
                                       put-storage-lens-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v20180820/storagelens/{ConfigId}"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation put-storage-lens-configuration-tagging
                                       :shape-name
                                       "PutStorageLensConfigurationTagging"
                                       :input
                                       put-storage-lens-configuration-tagging-request
                                       :output
                                       put-storage-lens-configuration-tagging-result
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v20180820/storagelens/{ConfigId}/tagging"
                                       :code 200 :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation submit-multi-region-access-point-routes
                                       :shape-name
                                       "SubmitMultiRegionAccessPointRoutes"
                                       :input
                                       submit-multi-region-access-point-routes-request
                                       :output
                                       submit-multi-region-access-point-routes-result
                                       :errors common-lisp:nil :method "PATCH"
                                       :uri
                                       "/v20180820/mrap/instances/{Mrap+}/routes"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v20180820/tags/{ResourceArn+}" :code
                                       204 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v20180820/tags/{ResourceArn+}" :code
                                       204 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation update-access-grants-location
                                       :shape-name "UpdateAccessGrantsLocation"
                                       :input
                                       update-access-grants-location-request
                                       :output
                                       update-access-grants-location-result
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}"
                                       :code 200 :checksum-required
                                       common-lisp:t :endpoint-host-prefix
                                       "{AccountId}.")

(smithy/sdk/operation:define-operation update-job-priority :shape-name
                                       "UpdateJobPriority" :input
                                       update-job-priority-request :output
                                       update-job-priority-result :errors
                                       (bad-request-exception
                                        internal-service-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v20180820/jobs/{JobId}/priority" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation update-job-status :shape-name
                                       "UpdateJobStatus" :input
                                       update-job-status-request :output
                                       update-job-status-result :errors
                                       (bad-request-exception
                                        internal-service-exception
                                        job-status-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v20180820/jobs/{JobId}/status" :code
                                       200 :endpoint-host-prefix "{AccountId}.")

(smithy/sdk/operation:define-operation update-storage-lens-group :shape-name
                                       "UpdateStorageLensGroup" :input
                                       update-storage-lens-group-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v20180820/storagelensgroup/{Name}"
                                       :code 204 :endpoint-host-prefix
                                       "{AccountId}.")
