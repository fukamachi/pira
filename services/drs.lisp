(uiop/package:define-package #:pira/drs (:use)
                             (:export #:arn #:account #:account-id
                              #:account-ids #:account-resource #:accounts
                              #:agent-version #:associate-source-network-stack
                              #:aws-availability-zone #:aws-region
                              #:bounded-string #:cpu #:cfn-stack-name
                              #:conversion-map #:conversion-properties #:cpus
                              #:create-extended-source-server
                              #:create-extended-source-server-request
                              #:create-extended-source-server-response
                              #:create-launch-configuration-template
                              #:create-launch-configuration-template-request
                              #:create-launch-configuration-template-response
                              #:create-replication-configuration-template
                              #:create-replication-configuration-template-request
                              #:create-source-network #:data-replication-error
                              #:data-replication-error-string
                              #:data-replication-info
                              #:data-replication-info-replicated-disk
                              #:data-replication-info-replicated-disks
                              #:data-replication-initiation
                              #:data-replication-initiation-step
                              #:data-replication-initiation-step-name
                              #:data-replication-initiation-step-status
                              #:data-replication-initiation-steps
                              #:data-replication-state #:delete-job
                              #:delete-job-request #:delete-job-response
                              #:delete-launch-action
                              #:delete-launch-configuration-template
                              #:delete-launch-configuration-template-request
                              #:delete-launch-configuration-template-response
                              #:delete-recovery-instance
                              #:delete-recovery-instance-request
                              #:delete-replication-configuration-template
                              #:delete-replication-configuration-template-request
                              #:delete-replication-configuration-template-response
                              #:delete-source-network #:delete-source-server
                              #:delete-source-server-request
                              #:delete-source-server-response
                              #:describe-job-log-items
                              #:describe-job-log-items-request
                              #:describe-job-log-items-response #:describe-jobs
                              #:describe-jobs-request
                              #:describe-jobs-request-filters
                              #:describe-jobs-request-filters-job-ids
                              #:describe-jobs-response
                              #:describe-launch-configuration-templates
                              #:describe-launch-configuration-templates-request
                              #:describe-launch-configuration-templates-response
                              #:describe-recovery-instances
                              #:describe-recovery-instances-items
                              #:describe-recovery-instances-request
                              #:describe-recovery-instances-request-filters
                              #:describe-recovery-instances-response
                              #:describe-recovery-snapshots
                              #:describe-recovery-snapshots-request
                              #:describe-recovery-snapshots-request-filters
                              #:describe-recovery-snapshots-response
                              #:describe-replication-configuration-templates
                              #:describe-replication-configuration-templates-request
                              #:describe-replication-configuration-templates-response
                              #:describe-source-networks
                              #:describe-source-networks-request-filters
                              #:describe-source-networks-request-filters-ids
                              #:describe-source-servers
                              #:describe-source-servers-request
                              #:describe-source-servers-request-filters
                              #:describe-source-servers-request-filters-ids
                              #:describe-source-servers-response
                              #:disconnect-recovery-instance
                              #:disconnect-recovery-instance-request
                              #:disconnect-source-server
                              #:disconnect-source-server-request #:disk #:disks
                              #:ec2instance-id #:ec2instance-state
                              #:ec2instance-type #:ebs-snapshot
                              #:ebs-snapshots-list #:ebs-volume-id
                              #:elastic-disaster-recovery-service
                              #:event-resource-data
                              #:export-source-network-cfn-template
                              #:extension-status #:failback-launch-type
                              #:failback-replication-error #:failback-state
                              #:failure-reason
                              #:get-failback-replication-configuration
                              #:get-failback-replication-configuration-request
                              #:get-failback-replication-configuration-response
                              #:get-launch-configuration
                              #:get-launch-configuration-request
                              #:get-replication-configuration
                              #:get-replication-configuration-request
                              #:ips-list #:iso8601datetime-string
                              #:iso8601duration-string #:identification-hints
                              #:initialize-service #:initialize-service-request
                              #:initialize-service-response #:initiated-by
                              #:job #:job-id #:job-log #:job-log-event
                              #:job-log-event-data #:job-logs #:job-resource
                              #:job-status #:job-type #:jobs-list
                              #:large-bounded-string #:last-launch-result
                              #:last-launch-type #:launch-action
                              #:launch-action-category
                              #:launch-action-description #:launch-action-id
                              #:launch-action-ids #:launch-action-name
                              #:launch-action-order #:launch-action-parameter
                              #:launch-action-parameter-name
                              #:launch-action-parameter-type
                              #:launch-action-parameter-value
                              #:launch-action-parameters
                              #:launch-action-resource-id #:launch-action-run
                              #:launch-action-run-id #:launch-action-run-status
                              #:launch-action-runs #:launch-action-type
                              #:launch-action-version #:launch-actions
                              #:launch-actions-request-filters
                              #:launch-actions-status #:launch-configuration
                              #:launch-configuration-template
                              #:launch-configuration-template-id
                              #:launch-configuration-template-ids
                              #:launch-configuration-template-resource
                              #:launch-configuration-templates
                              #:launch-disposition
                              #:launch-into-instance-properties #:launch-status
                              #:licensing #:life-cycle #:life-cycle-last-launch
                              #:life-cycle-last-launch-initiated
                              #:list-extensible-source-servers
                              #:list-extensible-source-servers-request
                              #:list-extensible-source-servers-response
                              #:list-launch-actions #:list-staging-accounts
                              #:list-staging-accounts-request
                              #:list-staging-accounts-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-results-replicating-source-servers
                              #:max-results-type #:network-interface
                              #:network-interfaces #:os #:origin-environment
                              #:outpost-arn #:pitpolicy #:pitpolicy-rule
                              #:pitpolicy-rule-units #:pagination-token
                              #:participating-resource
                              #:participating-resource-id
                              #:participating-resources #:participating-server
                              #:participating-servers #:positive-integer
                              #:product-code #:product-code-id
                              #:product-code-mode #:product-codes
                              #:put-launch-action #:recovery-instance
                              #:recovery-instance-data-replication-error
                              #:recovery-instance-data-replication-info
                              #:recovery-instance-data-replication-info-replicated-disk
                              #:recovery-instance-data-replication-info-replicated-disks
                              #:recovery-instance-data-replication-initiation
                              #:recovery-instance-data-replication-initiation-step
                              #:recovery-instance-data-replication-initiation-step-name
                              #:recovery-instance-data-replication-initiation-step-status
                              #:recovery-instance-data-replication-initiation-steps
                              #:recovery-instance-data-replication-state
                              #:recovery-instance-disk
                              #:recovery-instance-disks
                              #:recovery-instance-failback
                              #:recovery-instance-id #:recovery-instance-ids
                              #:recovery-instance-properties
                              #:recovery-instance-resource
                              #:recovery-instances-for-termination-request
                              #:recovery-life-cycle #:recovery-result
                              #:recovery-snapshot #:recovery-snapshot-id
                              #:recovery-snapshots-list
                              #:recovery-snapshots-order
                              #:replication-configuration
                              #:replication-configuration-data-plane-routing
                              #:replication-configuration-default-large-staging-disk-type
                              #:replication-configuration-ebs-encryption
                              #:replication-configuration-replicated-disk
                              #:replication-configuration-replicated-disk-staging-disk-type
                              #:replication-configuration-replicated-disks
                              #:replication-configuration-template
                              #:replication-configuration-template-id
                              #:replication-configuration-template-ids
                              #:replication-configuration-template-resource
                              #:replication-configuration-templates
                              #:replication-direction
                              #:replication-servers-security-groups-ids
                              #:replication-status #:retry-data-replication
                              #:retry-data-replication-request
                              #:reverse-replication
                              #:reverse-replication-request
                              #:reverse-replication-response
                              #:security-group-id #:sensitive-bounded-string
                              #:small-bounded-string #:source-cloud-properties
                              #:source-network #:source-network-data
                              #:source-network-id #:source-network-resource
                              #:source-networks-list #:source-properties
                              #:source-server #:source-server-arn
                              #:source-server-id #:source-server-ids
                              #:source-server-resource #:source-servers-list
                              #:ssm-document-name #:staging-area
                              #:staging-source-server
                              #:staging-source-servers-list
                              #:start-failback-launch
                              #:start-failback-launch-request
                              #:start-failback-launch-response
                              #:start-failback-request-recovery-instance-ids
                              #:start-recovery #:start-recovery-request
                              #:start-recovery-request-source-server
                              #:start-recovery-request-source-servers
                              #:start-recovery-response #:start-replication
                              #:start-replication-request
                              #:start-replication-response
                              #:start-source-network-recovery
                              #:start-source-network-recovery-request-network-entries
                              #:start-source-network-recovery-request-network-entry
                              #:start-source-network-replication
                              #:stop-failback #:stop-failback-request
                              #:stop-replication #:stop-replication-request
                              #:stop-replication-response
                              #:stop-source-network-replication
                              #:strictly-positive-integer #:subnet-id #:tag-key
                              #:tag-keys #:tag-resource #:tag-resource-request
                              #:tag-value #:tags-map
                              #:target-instance-type-right-sizing-method
                              #:terminate-recovery-instances
                              #:terminate-recovery-instances-request
                              #:terminate-recovery-instances-response
                              #:untag-resource #:untag-resource-request
                              #:update-failback-replication-configuration
                              #:update-failback-replication-configuration-request
                              #:update-launch-configuration
                              #:update-launch-configuration-request
                              #:update-launch-configuration-template
                              #:update-launch-configuration-template-request
                              #:update-launch-configuration-template-response
                              #:update-replication-configuration
                              #:update-replication-configuration-request
                              #:update-replication-configuration-template
                              #:update-replication-configuration-template-request
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:volume-status
                              #:volume-to-conversion-map
                              #:volume-to-product-codes #:volume-to-size-map
                              #:vpc-id))
(common-lisp:in-package #:pira/drs)

(smithy/sdk/service:define-service elastic-disaster-recovery-service
                                   :shape-name "ElasticDisasterRecoveryService"
                                   :version "2020-02-26" :title
                                   "Elastic Disaster Recovery Service"
                                   :operations
                                   '(create-extended-source-server
                                     delete-launch-action initialize-service
                                     list-extensible-source-servers
                                     list-launch-actions list-staging-accounts
                                     list-tags-for-resource put-launch-action
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "drs")
                                      ("arnNamespace" . "drs")
                                      ("awsProductName" . "drs")
                                      ("cloudTrailEventSource"
                                       . "drs.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "drs"))
                                     ("aws.iam#defineConditionKeys"
                                      ("drs:EC2InstanceARN" ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the EC2 instance the request originated from")))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

common-lisp:nil

(smithy/sdk/shapes:define-list accounts :member account)

(smithy/sdk/shapes:define-type agent-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-source-network-stack-request
                                common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :required common-lisp:t
                                  :member-name "sourceNetworkID")
                                 (cfn-stack-name :target-type cfn-stack-name
                                  :required common-lisp:t :member-name
                                  "cfnStackName"))
                                (:shape-name
                                 "AssociateSourceNetworkStackRequest"))

(smithy/sdk/shapes:define-output associate-source-network-stack-response
                                 common-lisp:nil
                                 ((job :target-type job :member-name "job"))
                                 (:shape-name
                                  "AssociateSourceNetworkStackResponse"))

(smithy/sdk/shapes:define-type aws-availability-zone
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bounded-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cpu common-lisp:nil
                                    ((cores :target-type positive-integer
                                      :member-name "cores")
                                     (model-name :target-type bounded-string
                                      :member-name "modelName"))
                                    (:shape-name "CPU"))

(smithy/sdk/shapes:define-type cfn-stack-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-map conversion-map :key ebs-snapshot :value
                              ebs-snapshot)

(smithy/sdk/shapes:define-structure conversion-properties common-lisp:nil
                                    ((volume-to-conversion-map :target-type
                                      volume-to-conversion-map :member-name
                                      "volumeToConversionMap")
                                     (root-volume-name :target-type
                                      large-bounded-string :member-name
                                      "rootVolumeName")
                                     (force-uefi :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "forceUefi")
                                     (data-timestamp :target-type
                                      large-bounded-string :member-name
                                      "dataTimestamp")
                                     (volume-to-volume-size :target-type
                                      volume-to-size-map :member-name
                                      "volumeToVolumeSize")
                                     (volume-to-product-codes :target-type
                                      volume-to-product-codes :member-name
                                      "volumeToProductCodes"))
                                    (:shape-name "ConversionProperties"))

(smithy/sdk/shapes:define-list cpus :member cpu)

(smithy/sdk/shapes:define-structure create-extended-source-server-request
                                    common-lisp:nil
                                    ((source-server-arn :target-type
                                      source-server-arn :required common-lisp:t
                                      :member-name "sourceServerArn")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateExtendedSourceServerRequest"))

(smithy/sdk/shapes:define-structure create-extended-source-server-response
                                    common-lisp:nil
                                    ((source-server :target-type source-server
                                      :member-name "sourceServer"))
                                    (:shape-name
                                     "CreateExtendedSourceServerResponse"))

(smithy/sdk/shapes:define-structure
 create-launch-configuration-template-request common-lisp:nil
 ((tags :target-type tags-map :member-name "tags")
  (launch-disposition :target-type launch-disposition :member-name
   "launchDisposition")
  (target-instance-type-right-sizing-method :target-type
   target-instance-type-right-sizing-method :member-name
   "targetInstanceTypeRightSizingMethod")
  (copy-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyPrivateIp")
  (copy-tags :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyTags")
  (licensing :target-type licensing :member-name "licensing")
  (export-bucket-arn :target-type arn :member-name "exportBucketArn")
  (post-launch-enabled :target-type smithy/sdk/smithy-types:boolean
   :member-name "postLaunchEnabled")
  (launch-into-source-instance :target-type smithy/sdk/smithy-types:boolean
   :member-name "launchIntoSourceInstance"))
 (:shape-name "CreateLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 create-launch-configuration-template-response common-lisp:nil
 ((launch-configuration-template :target-type launch-configuration-template
   :member-name "launchConfigurationTemplate"))
 (:shape-name "CreateLaunchConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-structure
 create-replication-configuration-template-request common-lisp:nil
 ((staging-area-subnet-id :target-type subnet-id :required common-lisp:t
   :member-name "stagingAreaSubnetId")
  (associate-default-security-group :target-type
   smithy/sdk/smithy-types:boolean :required common-lisp:t :member-name
   "associateDefaultSecurityGroup")
  (replication-servers-security-groups-ids :target-type
   replication-servers-security-groups-ids :required common-lisp:t :member-name
   "replicationServersSecurityGroupsIDs")
  (replication-server-instance-type :target-type ec2instance-type :required
   common-lisp:t :member-name "replicationServerInstanceType")
  (use-dedicated-replication-server :target-type
   smithy/sdk/smithy-types:boolean :required common-lisp:t :member-name
   "useDedicatedReplicationServer")
  (default-large-staging-disk-type :target-type
   replication-configuration-default-large-staging-disk-type :required
   common-lisp:t :member-name "defaultLargeStagingDiskType")
  (ebs-encryption :target-type replication-configuration-ebs-encryption
   :required common-lisp:t :member-name "ebsEncryption")
  (ebs-encryption-key-arn :target-type arn :member-name "ebsEncryptionKeyArn")
  (bandwidth-throttling :target-type positive-integer :required common-lisp:t
   :member-name "bandwidthThrottling")
  (data-plane-routing :target-type replication-configuration-data-plane-routing
   :required common-lisp:t :member-name "dataPlaneRouting")
  (create-public-ip :target-type smithy/sdk/smithy-types:boolean :required
   common-lisp:t :member-name "createPublicIP")
  (staging-area-tags :target-type tags-map :required common-lisp:t :member-name
   "stagingAreaTags")
  (pit-policy :target-type pitpolicy :required common-lisp:t :member-name
   "pitPolicy")
  (tags :target-type tags-map :member-name "tags")
  (auto-replicate-new-disks :target-type smithy/sdk/smithy-types:boolean
   :member-name "autoReplicateNewDisks"))
 (:shape-name "CreateReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-input create-source-network-request common-lisp:nil
                                ((vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcID")
                                 (origin-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "originAccountID")
                                 (origin-region :target-type aws-region
                                  :required common-lisp:t :member-name
                                  "originRegion")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateSourceNetworkRequest"))

(smithy/sdk/shapes:define-output create-source-network-response common-lisp:nil
                                 ((source-network-id :target-type
                                   source-network-id :member-name
                                   "sourceNetworkID"))
                                 (:shape-name "CreateSourceNetworkResponse"))

(smithy/sdk/shapes:define-structure data-replication-error common-lisp:nil
                                    ((error :target-type
                                      data-replication-error-string
                                      :member-name "error")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError"))
                                    (:shape-name "DataReplicationError"))

(smithy/sdk/shapes:define-type data-replication-error-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-replication-info common-lisp:nil
                                    ((lag-duration :target-type
                                      iso8601duration-string :member-name
                                      "lagDuration")
                                     (eta-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "etaDateTime")
                                     (replicated-disks :target-type
                                      data-replication-info-replicated-disks
                                      :member-name "replicatedDisks")
                                     (data-replication-state :target-type
                                      data-replication-state :member-name
                                      "dataReplicationState")
                                     (data-replication-initiation :target-type
                                      data-replication-initiation :member-name
                                      "dataReplicationInitiation")
                                     (data-replication-error :target-type
                                      data-replication-error :member-name
                                      "dataReplicationError")
                                     (staging-availability-zone :target-type
                                      aws-availability-zone :member-name
                                      "stagingAvailabilityZone")
                                     (staging-outpost-arn :target-type
                                      outpost-arn :member-name
                                      "stagingOutpostArn"))
                                    (:shape-name "DataReplicationInfo"))

(smithy/sdk/shapes:define-structure data-replication-info-replicated-disk
                                    common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (total-storage-bytes :target-type
                                      positive-integer :member-name
                                      "totalStorageBytes")
                                     (replicated-storage-bytes :target-type
                                      positive-integer :member-name
                                      "replicatedStorageBytes")
                                     (rescanned-storage-bytes :target-type
                                      positive-integer :member-name
                                      "rescannedStorageBytes")
                                     (backlogged-storage-bytes :target-type
                                      positive-integer :member-name
                                      "backloggedStorageBytes")
                                     (volume-status :target-type volume-status
                                      :member-name "volumeStatus"))
                                    (:shape-name
                                     "DataReplicationInfoReplicatedDisk"))

(smithy/sdk/shapes:define-list data-replication-info-replicated-disks :member
                               data-replication-info-replicated-disk)

(smithy/sdk/shapes:define-structure data-replication-initiation common-lisp:nil
                                    ((start-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "startDateTime")
                                     (next-attempt-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "nextAttemptDateTime")
                                     (steps :target-type
                                      data-replication-initiation-steps
                                      :member-name "steps"))
                                    (:shape-name "DataReplicationInitiation"))

(smithy/sdk/shapes:define-structure data-replication-initiation-step
                                    common-lisp:nil
                                    ((name :target-type
                                      data-replication-initiation-step-name
                                      :member-name "name")
                                     (status :target-type
                                      data-replication-initiation-step-status
                                      :member-name "status"))
                                    (:shape-name
                                     "DataReplicationInitiationStep"))

(smithy/sdk/shapes:define-type data-replication-initiation-step-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-replication-initiation-step-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-replication-initiation-steps :member
                               data-replication-initiation-step)

(smithy/sdk/shapes:define-type data-replication-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-job-request common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID"))
                                    (:shape-name "DeleteJobRequest"))

(smithy/sdk/shapes:define-structure delete-job-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteJobResponse"))

(smithy/sdk/shapes:define-input delete-launch-action-request common-lisp:nil
                                ((resource-id :target-type
                                  launch-action-resource-id :required
                                  common-lisp:t :member-name "resourceId")
                                 (action-id :target-type launch-action-id
                                  :required common-lisp:t :member-name
                                  "actionId"))
                                (:shape-name "DeleteLaunchActionRequest"))

(smithy/sdk/shapes:define-output delete-launch-action-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLaunchActionResponse"))

(smithy/sdk/shapes:define-structure
 delete-launch-configuration-template-request common-lisp:nil
 ((launch-configuration-template-id :target-type
   launch-configuration-template-id :required common-lisp:t :member-name
   "launchConfigurationTemplateID"))
 (:shape-name "DeleteLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 delete-launch-configuration-template-response common-lisp:nil common-lisp:nil
 (:shape-name "DeleteLaunchConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-structure delete-recovery-instance-request
                                    common-lisp:nil
                                    ((recovery-instance-id :target-type
                                      recovery-instance-id :required
                                      common-lisp:t :member-name
                                      "recoveryInstanceID"))
                                    (:shape-name
                                     "DeleteRecoveryInstanceRequest"))

(smithy/sdk/shapes:define-structure
 delete-replication-configuration-template-request common-lisp:nil
 ((replication-configuration-template-id :target-type
   replication-configuration-template-id :required common-lisp:t :member-name
   "replicationConfigurationTemplateID"))
 (:shape-name "DeleteReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 delete-replication-configuration-template-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteReplicationConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-input delete-source-network-request common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :required common-lisp:t
                                  :member-name "sourceNetworkID"))
                                (:shape-name "DeleteSourceNetworkRequest"))

(smithy/sdk/shapes:define-output delete-source-network-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSourceNetworkResponse"))

(smithy/sdk/shapes:define-structure delete-source-server-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name "DeleteSourceServerRequest"))

(smithy/sdk/shapes:define-structure delete-source-server-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteSourceServerResponse"))

(smithy/sdk/shapes:define-structure describe-job-log-items-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID")
                                     (max-results :target-type
                                      strictly-positive-integer :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobLogItemsRequest"))

(smithy/sdk/shapes:define-structure describe-job-log-items-response
                                    common-lisp:nil
                                    ((items :target-type job-logs :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobLogItemsResponse"))

(smithy/sdk/shapes:define-structure describe-jobs-request common-lisp:nil
                                    ((filters :target-type
                                      describe-jobs-request-filters
                                      :member-name "filters")
                                     (max-results :target-type
                                      strictly-positive-integer :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobsRequest"))

(smithy/sdk/shapes:define-structure describe-jobs-request-filters
                                    common-lisp:nil
                                    ((job-ids :target-type
                                      describe-jobs-request-filters-job-ids
                                      :member-name "jobIDs")
                                     (from-date :target-type
                                      iso8601datetime-string :member-name
                                      "fromDate")
                                     (to-date :target-type
                                      iso8601datetime-string :member-name
                                      "toDate"))
                                    (:shape-name "DescribeJobsRequestFilters"))

(smithy/sdk/shapes:define-list describe-jobs-request-filters-job-ids :member
                               job-id)

(smithy/sdk/shapes:define-structure describe-jobs-response common-lisp:nil
                                    ((items :target-type jobs-list :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobsResponse"))

(smithy/sdk/shapes:define-structure
 describe-launch-configuration-templates-request common-lisp:nil
 ((launch-configuration-template-ids :target-type
   launch-configuration-template-ids :member-name
   "launchConfigurationTemplateIDs")
  (max-results :target-type max-results-type :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeLaunchConfigurationTemplatesRequest"))

(smithy/sdk/shapes:define-structure
 describe-launch-configuration-templates-response common-lisp:nil
 ((items :target-type launch-configuration-templates :member-name "items")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeLaunchConfigurationTemplatesResponse"))

(smithy/sdk/shapes:define-list describe-recovery-instances-items :member
                               recovery-instance)

(smithy/sdk/shapes:define-structure describe-recovery-instances-request
                                    common-lisp:nil
                                    ((filters :target-type
                                      describe-recovery-instances-request-filters
                                      :member-name "filters")
                                     (max-results :target-type
                                      strictly-positive-integer :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeRecoveryInstancesRequest"))

(smithy/sdk/shapes:define-structure describe-recovery-instances-request-filters
                                    common-lisp:nil
                                    ((recovery-instance-ids :target-type
                                      recovery-instance-ids :member-name
                                      "recoveryInstanceIDs")
                                     (source-server-ids :target-type
                                      source-server-ids :member-name
                                      "sourceServerIDs"))
                                    (:shape-name
                                     "DescribeRecoveryInstancesRequestFilters"))

(smithy/sdk/shapes:define-structure describe-recovery-instances-response
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (items :target-type
                                      describe-recovery-instances-items
                                      :member-name "items"))
                                    (:shape-name
                                     "DescribeRecoveryInstancesResponse"))

(smithy/sdk/shapes:define-structure describe-recovery-snapshots-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (filters :target-type
                                      describe-recovery-snapshots-request-filters
                                      :member-name "filters")
                                     (order :target-type
                                      recovery-snapshots-order :member-name
                                      "order")
                                     (max-results :target-type
                                      strictly-positive-integer :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeRecoverySnapshotsRequest"))

(smithy/sdk/shapes:define-structure describe-recovery-snapshots-request-filters
                                    common-lisp:nil
                                    ((from-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "fromDateTime")
                                     (to-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "toDateTime"))
                                    (:shape-name
                                     "DescribeRecoverySnapshotsRequestFilters"))

(smithy/sdk/shapes:define-structure describe-recovery-snapshots-response
                                    common-lisp:nil
                                    ((items :target-type
                                      recovery-snapshots-list :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeRecoverySnapshotsResponse"))

(smithy/sdk/shapes:define-structure
 describe-replication-configuration-templates-request common-lisp:nil
 ((replication-configuration-template-ids :target-type
   replication-configuration-template-ids :member-name
   "replicationConfigurationTemplateIDs")
  (max-results :target-type strictly-positive-integer :member-name
   "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeReplicationConfigurationTemplatesRequest"))

(smithy/sdk/shapes:define-structure
 describe-replication-configuration-templates-response common-lisp:nil
 ((items :target-type replication-configuration-templates :member-name "items")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeReplicationConfigurationTemplatesResponse"))

(smithy/sdk/shapes:define-input describe-source-networks-request
                                common-lisp:nil
                                ((filters :target-type
                                  describe-source-networks-request-filters
                                  :member-name "filters")
                                 (max-results :target-type
                                  strictly-positive-integer :member-name
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeSourceNetworksRequest"))

(smithy/sdk/shapes:define-structure describe-source-networks-request-filters
                                    common-lisp:nil
                                    ((source-network-ids :target-type
                                      describe-source-networks-request-filters-ids
                                      :member-name "sourceNetworkIDs")
                                     (origin-account-id :target-type account-id
                                      :member-name "originAccountID")
                                     (origin-region :target-type aws-region
                                      :member-name "originRegion"))
                                    (:shape-name
                                     "DescribeSourceNetworksRequestFilters"))

(smithy/sdk/shapes:define-list describe-source-networks-request-filters-ids
                               :member source-network-id)

(smithy/sdk/shapes:define-output describe-source-networks-response
                                 common-lisp:nil
                                 ((items :target-type source-networks-list
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeSourceNetworksResponse"))

(smithy/sdk/shapes:define-structure describe-source-servers-request
                                    common-lisp:nil
                                    ((filters :target-type
                                      describe-source-servers-request-filters
                                      :member-name "filters")
                                     (max-results :target-type
                                      strictly-positive-integer :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeSourceServersRequest"))

(smithy/sdk/shapes:define-structure describe-source-servers-request-filters
                                    common-lisp:nil
                                    ((source-server-ids :target-type
                                      describe-source-servers-request-filters-ids
                                      :member-name "sourceServerIDs")
                                     (hardware-id :target-type bounded-string
                                      :member-name "hardwareId")
                                     (staging-account-ids :target-type
                                      account-ids :member-name
                                      "stagingAccountIDs"))
                                    (:shape-name
                                     "DescribeSourceServersRequestFilters"))

(smithy/sdk/shapes:define-list describe-source-servers-request-filters-ids
                               :member source-server-id)

(smithy/sdk/shapes:define-structure describe-source-servers-response
                                    common-lisp:nil
                                    ((items :target-type source-servers-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeSourceServersResponse"))

(smithy/sdk/shapes:define-structure disconnect-recovery-instance-request
                                    common-lisp:nil
                                    ((recovery-instance-id :target-type
                                      recovery-instance-id :required
                                      common-lisp:t :member-name
                                      "recoveryInstanceID"))
                                    (:shape-name
                                     "DisconnectRecoveryInstanceRequest"))

(smithy/sdk/shapes:define-structure disconnect-source-server-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name
                                     "DisconnectSourceServerRequest"))

(smithy/sdk/shapes:define-structure disk common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (bytes :target-type positive-integer
                                      :member-name "bytes"))
                                    (:shape-name "Disk"))

(smithy/sdk/shapes:define-list disks :member disk)

(smithy/sdk/shapes:define-type ec2instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2instance-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-snapshot smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ebs-snapshots-list :member ebs-snapshot)

(smithy/sdk/shapes:define-type ebs-volume-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union event-resource-data common-lisp:nil
                                ((source-network-data :target-type
                                  source-network-data :member-name
                                  "sourceNetworkData"))
                                (:shape-name "EventResourceData"))

(smithy/sdk/shapes:define-input export-source-network-cfn-template-request
                                common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :required common-lisp:t
                                  :member-name "sourceNetworkID"))
                                (:shape-name
                                 "ExportSourceNetworkCfnTemplateRequest"))

(smithy/sdk/shapes:define-output export-source-network-cfn-template-response
                                 common-lisp:nil
                                 ((s3destination-url :target-type
                                   large-bounded-string :member-name
                                   "s3DestinationUrl"))
                                 (:shape-name
                                  "ExportSourceNetworkCfnTemplateResponse"))

(smithy/sdk/shapes:define-type extension-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failback-launch-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failback-replication-error
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failback-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 get-failback-replication-configuration-request common-lisp:nil
 ((recovery-instance-id :target-type recovery-instance-id :required
   common-lisp:t :member-name "recoveryInstanceID"))
 (:shape-name "GetFailbackReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 get-failback-replication-configuration-response common-lisp:nil
 ((recovery-instance-id :target-type recovery-instance-id :required
   common-lisp:t :member-name "recoveryInstanceID")
  (name :target-type bounded-string :member-name "name")
  (bandwidth-throttling :target-type positive-integer :member-name
   "bandwidthThrottling")
  (use-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "usePrivateIP"))
 (:shape-name "GetFailbackReplicationConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-launch-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name
                                     "GetLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-replication-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name
                                     "GetReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-list ips-list :member bounded-string)

(smithy/sdk/shapes:define-type iso8601datetime-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iso8601duration-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identification-hints common-lisp:nil
                                    ((fqdn :target-type bounded-string
                                      :member-name "fqdn")
                                     (hostname :target-type bounded-string
                                      :member-name "hostname")
                                     (vm-ware-uuid :target-type bounded-string
                                      :member-name "vmWareUuid")
                                     (aws-instance-id :target-type
                                      ec2instance-id :member-name
                                      "awsInstanceID"))
                                    (:shape-name "IdentificationHints"))

(smithy/sdk/shapes:define-structure initialize-service-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InitializeServiceRequest"))

(smithy/sdk/shapes:define-structure initialize-service-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InitializeServiceResponse"))

(smithy/sdk/shapes:define-type initiated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :required common-lisp:t :member-name
                                  "message")
                                 (retry-after-seconds :target-type
                                  positive-integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID")
                                     (arn :target-type arn :member-name "arn")
                                     (type :target-type job-type :member-name
                                      "type")
                                     (initiated-by :target-type initiated-by
                                      :member-name "initiatedBy")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (end-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "endDateTime")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (participating-servers :target-type
                                      participating-servers :member-name
                                      "participatingServers")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (participating-resources :target-type
                                      participating-resources :member-name
                                      "participatingResources"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-log common-lisp:nil
                                    ((log-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "logDateTime")
                                     (event :target-type job-log-event
                                      :member-name "event")
                                     (event-data :target-type
                                      job-log-event-data :member-name
                                      "eventData"))
                                    (:shape-name "JobLog"))

(smithy/sdk/shapes:define-type job-log-event smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-log-event-data common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (conversion-server-id :target-type
                                      ec2instance-id :member-name
                                      "conversionServerID")
                                     (target-instance-id :target-type
                                      ec2instance-id :member-name
                                      "targetInstanceID")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError")
                                     (conversion-properties :target-type
                                      conversion-properties :member-name
                                      "conversionProperties")
                                     (event-resource-data :target-type
                                      event-resource-data :member-name
                                      "eventResourceData"))
                                    (:shape-name "JobLogEventData"))

(smithy/sdk/shapes:define-list job-logs :member job-log)

common-lisp:nil

(smithy/sdk/shapes:define-type job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list jobs-list :member job)

(smithy/sdk/shapes:define-type large-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-launch-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-launch-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-action common-lisp:nil
                                    ((action-id :target-type launch-action-id
                                      :member-name "actionId")
                                     (action-code :target-type
                                      ssm-document-name :member-name
                                      "actionCode")
                                     (type :target-type launch-action-type
                                      :member-name "type")
                                     (name :target-type launch-action-name
                                      :member-name "name")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (order :target-type launch-action-order
                                      :member-name "order")
                                     (action-version :target-type
                                      launch-action-version :member-name
                                      "actionVersion")
                                     (optional :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "optional")
                                     (parameters :target-type
                                      launch-action-parameters :member-name
                                      "parameters")
                                     (description :target-type
                                      launch-action-description :member-name
                                      "description")
                                     (category :target-type
                                      launch-action-category :member-name
                                      "category"))
                                    (:shape-name "LaunchAction"))

(smithy/sdk/shapes:define-type launch-action-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launch-action-ids :member launch-action-id)

(smithy/sdk/shapes:define-type launch-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-order
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure launch-action-parameter common-lisp:nil
                                    ((value :target-type
                                      launch-action-parameter-value
                                      :member-name "value")
                                     (type :target-type
                                      launch-action-parameter-type :member-name
                                      "type"))
                                    (:shape-name "LaunchActionParameter"))

(smithy/sdk/shapes:define-type launch-action-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-parameter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map launch-action-parameters :key
                              launch-action-parameter-name :value
                              launch-action-parameter)

(smithy/sdk/shapes:define-type launch-action-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-action-run common-lisp:nil
                                    ((action :target-type launch-action
                                      :member-name "action")
                                     (run-id :target-type launch-action-run-id
                                      :member-name "runId")
                                     (status :target-type
                                      launch-action-run-status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "LaunchActionRun"))

(smithy/sdk/shapes:define-type launch-action-run-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-run-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launch-action-runs :member launch-action-run)

(smithy/sdk/shapes:define-type launch-action-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-action-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launch-actions :member launch-action)

(smithy/sdk/shapes:define-structure launch-actions-request-filters
                                    common-lisp:nil
                                    ((action-ids :target-type launch-action-ids
                                      :member-name "actionIds"))
                                    (:shape-name "LaunchActionsRequestFilters"))

(smithy/sdk/shapes:define-structure launch-actions-status common-lisp:nil
                                    ((ssm-agent-discovery-datetime :target-type
                                      iso8601datetime-string :member-name
                                      "ssmAgentDiscoveryDatetime")
                                     (runs :target-type launch-action-runs
                                      :member-name "runs"))
                                    (:shape-name "LaunchActionsStatus"))

(smithy/sdk/shapes:define-structure launch-configuration common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (ec2launch-template-id :target-type
                                      bounded-string :member-name
                                      "ec2LaunchTemplateID")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (post-launch-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "postLaunchEnabled")
                                     (launch-into-instance-properties
                                      :target-type
                                      launch-into-instance-properties
                                      :member-name
                                      "launchIntoInstanceProperties"))
                                    (:shape-name "LaunchConfiguration"))

(smithy/sdk/shapes:define-structure launch-configuration-template
                                    common-lisp:nil
                                    ((launch-configuration-template-id
                                      :target-type
                                      launch-configuration-template-id
                                      :member-name
                                      "launchConfigurationTemplateID")
                                     (arn :target-type arn :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (export-bucket-arn :target-type arn
                                      :member-name "exportBucketArn")
                                     (post-launch-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "postLaunchEnabled")
                                     (launch-into-source-instance :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "launchIntoSourceInstance"))
                                    (:shape-name "LaunchConfigurationTemplate"))

(smithy/sdk/shapes:define-type launch-configuration-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launch-configuration-template-ids :member
                               launch-configuration-template-id)

common-lisp:nil

(smithy/sdk/shapes:define-list launch-configuration-templates :member
                               launch-configuration-template)

(smithy/sdk/shapes:define-type launch-disposition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-into-instance-properties
                                    common-lisp:nil
                                    ((launch-into-ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "launchIntoEC2InstanceID"))
                                    (:shape-name
                                     "LaunchIntoInstanceProperties"))

(smithy/sdk/shapes:define-type launch-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure licensing common-lisp:nil
                                    ((os-byol :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "osByol"))
                                    (:shape-name "Licensing"))

(smithy/sdk/shapes:define-structure life-cycle common-lisp:nil
                                    ((added-to-service-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "addedToServiceDateTime")
                                     (first-byte-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "firstByteDateTime")
                                     (elapsed-replication-duration :target-type
                                      iso8601duration-string :member-name
                                      "elapsedReplicationDuration")
                                     (last-seen-by-service-date-time
                                      :target-type iso8601datetime-string
                                      :member-name "lastSeenByServiceDateTime")
                                     (last-launch :target-type
                                      life-cycle-last-launch :member-name
                                      "lastLaunch"))
                                    (:shape-name "LifeCycle"))

(smithy/sdk/shapes:define-structure life-cycle-last-launch common-lisp:nil
                                    ((initiated :target-type
                                      life-cycle-last-launch-initiated
                                      :member-name "initiated")
                                     (status :target-type launch-status
                                      :member-name "status"))
                                    (:shape-name "LifeCycleLastLaunch"))

(smithy/sdk/shapes:define-structure life-cycle-last-launch-initiated
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime")
                                     (job-id :target-type job-id :member-name
                                      "jobID")
                                     (type :target-type last-launch-type
                                      :member-name "type"))
                                    (:shape-name
                                     "LifeCycleLastLaunchInitiated"))

(smithy/sdk/shapes:define-structure list-extensible-source-servers-request
                                    common-lisp:nil
                                    ((staging-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "stagingAccountID")
                                     (max-results :target-type
                                      max-results-replicating-source-servers
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListExtensibleSourceServersRequest"))

(smithy/sdk/shapes:define-structure list-extensible-source-servers-response
                                    common-lisp:nil
                                    ((items :target-type
                                      staging-source-servers-list :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListExtensibleSourceServersResponse"))

(smithy/sdk/shapes:define-input list-launch-actions-request common-lisp:nil
                                ((resource-id :target-type
                                  launch-action-resource-id :required
                                  common-lisp:t :member-name "resourceId")
                                 (filters :target-type
                                  launch-actions-request-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results-type
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListLaunchActionsRequest"))

(smithy/sdk/shapes:define-output list-launch-actions-response common-lisp:nil
                                 ((items :target-type launch-actions
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLaunchActionsResponse"))

(smithy/sdk/shapes:define-input list-staging-accounts-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListStagingAccountsRequest"))

(smithy/sdk/shapes:define-structure list-staging-accounts-response
                                    common-lisp:nil
                                    ((accounts :target-type accounts
                                      :member-name "accounts")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListStagingAccountsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results-replicating-source-servers
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((mac-address :target-type bounded-string
                                      :member-name "macAddress")
                                     (ips :target-type ips-list :member-name
                                      "ips")
                                     (is-primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPrimary"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-structure os common-lisp:nil
                                    ((full-string :target-type bounded-string
                                      :member-name "fullString"))
                                    (:shape-name "OS"))

(smithy/sdk/shapes:define-type origin-environment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pitpolicy :member pitpolicy-rule)

(smithy/sdk/shapes:define-structure pitpolicy-rule common-lisp:nil
                                    ((rule-id :target-type positive-integer
                                      :member-name "ruleID")
                                     (units :target-type pitpolicy-rule-units
                                      :required common-lisp:t :member-name
                                      "units")
                                     (interval :target-type
                                      strictly-positive-integer :required
                                      common-lisp:t :member-name "interval")
                                     (retention-duration :target-type
                                      strictly-positive-integer :required
                                      common-lisp:t :member-name
                                      "retentionDuration")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled"))
                                    (:shape-name "PITPolicyRule"))

(smithy/sdk/shapes:define-type pitpolicy-rule-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participating-resource common-lisp:nil
                                    ((participating-resource-id :target-type
                                      participating-resource-id :member-name
                                      "participatingResourceID")
                                     (launch-status :target-type launch-status
                                      :member-name "launchStatus"))
                                    (:shape-name "ParticipatingResource"))

(smithy/sdk/shapes:define-union participating-resource-id common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :member-name
                                  "sourceNetworkID"))
                                (:shape-name "ParticipatingResourceID"))

(smithy/sdk/shapes:define-list participating-resources :member
                               participating-resource)

(smithy/sdk/shapes:define-structure participating-server common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (recovery-instance-id :target-type
                                      recovery-instance-id :member-name
                                      "recoveryInstanceID")
                                     (launch-status :target-type launch-status
                                      :member-name "launchStatus")
                                     (launch-actions-status :target-type
                                      launch-actions-status :member-name
                                      "launchActionsStatus"))
                                    (:shape-name "ParticipatingServer"))

(smithy/sdk/shapes:define-list participating-servers :member
                               participating-server)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure product-code common-lisp:nil
                                    ((product-code-id :target-type
                                      product-code-id :member-name
                                      "productCodeId")
                                     (product-code-mode :target-type
                                      product-code-mode :member-name
                                      "productCodeMode"))
                                    (:shape-name "ProductCode"))

(smithy/sdk/shapes:define-type product-code-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-code-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list product-codes :member product-code)

(smithy/sdk/shapes:define-input put-launch-action-request common-lisp:nil
                                ((resource-id :target-type
                                  launch-action-resource-id :required
                                  common-lisp:t :member-name "resourceId")
                                 (action-code :target-type ssm-document-name
                                  :required common-lisp:t :member-name
                                  "actionCode")
                                 (order :target-type launch-action-order
                                  :required common-lisp:t :member-name "order")
                                 (action-id :target-type launch-action-id
                                  :required common-lisp:t :member-name
                                  "actionId")
                                 (optional :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "optional")
                                 (active :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "active")
                                 (name :target-type launch-action-name
                                  :required common-lisp:t :member-name "name")
                                 (action-version :target-type
                                  launch-action-version :required common-lisp:t
                                  :member-name "actionVersion")
                                 (category :target-type launch-action-category
                                  :required common-lisp:t :member-name
                                  "category")
                                 (parameters :target-type
                                  launch-action-parameters :member-name
                                  "parameters")
                                 (description :target-type
                                  launch-action-description :required
                                  common-lisp:t :member-name "description"))
                                (:shape-name "PutLaunchActionRequest"))

(smithy/sdk/shapes:define-output put-launch-action-response common-lisp:nil
                                 ((resource-id :target-type
                                   launch-action-resource-id :member-name
                                   "resourceId")
                                  (action-id :target-type launch-action-id
                                   :member-name "actionId")
                                  (action-code :target-type ssm-document-name
                                   :member-name "actionCode")
                                  (type :target-type launch-action-type
                                   :member-name "type")
                                  (name :target-type launch-action-name
                                   :member-name "name")
                                  (active :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "active")
                                  (order :target-type launch-action-order
                                   :member-name "order")
                                  (action-version :target-type
                                   launch-action-version :member-name
                                   "actionVersion")
                                  (optional :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "optional")
                                  (parameters :target-type
                                   launch-action-parameters :member-name
                                   "parameters")
                                  (description :target-type
                                   launch-action-description :member-name
                                   "description")
                                  (category :target-type launch-action-category
                                   :member-name "category"))
                                 (:shape-name "PutLaunchActionResponse"))

(smithy/sdk/shapes:define-structure recovery-instance common-lisp:nil
                                    ((ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "ec2InstanceID")
                                     (ec2instance-state :target-type
                                      ec2instance-state :member-name
                                      "ec2InstanceState")
                                     (job-id :target-type job-id :member-name
                                      "jobID")
                                     (recovery-instance-id :target-type
                                      recovery-instance-id :member-name
                                      "recoveryInstanceID")
                                     (source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (arn :target-type arn :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (failback :target-type
                                      recovery-instance-failback :member-name
                                      "failback")
                                     (data-replication-info :target-type
                                      recovery-instance-data-replication-info
                                      :member-name "dataReplicationInfo")
                                     (recovery-instance-properties :target-type
                                      recovery-instance-properties :member-name
                                      "recoveryInstanceProperties")
                                     (point-in-time-snapshot-date-time
                                      :target-type iso8601datetime-string
                                      :member-name
                                      "pointInTimeSnapshotDateTime")
                                     (is-drill :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isDrill")
                                     (origin-environment :target-type
                                      origin-environment :member-name
                                      "originEnvironment")
                                     (origin-availability-zone :target-type
                                      aws-availability-zone :member-name
                                      "originAvailabilityZone")
                                     (agent-version :target-type agent-version
                                      :member-name "agentVersion")
                                     (source-outpost-arn :target-type
                                      outpost-arn :member-name
                                      "sourceOutpostArn"))
                                    (:shape-name "RecoveryInstance"))

(smithy/sdk/shapes:define-structure recovery-instance-data-replication-error
                                    common-lisp:nil
                                    ((error :target-type
                                      failback-replication-error :member-name
                                      "error")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError"))
                                    (:shape-name
                                     "RecoveryInstanceDataReplicationError"))

(smithy/sdk/shapes:define-structure recovery-instance-data-replication-info
                                    common-lisp:nil
                                    ((lag-duration :target-type
                                      iso8601datetime-string :member-name
                                      "lagDuration")
                                     (eta-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "etaDateTime")
                                     (replicated-disks :target-type
                                      recovery-instance-data-replication-info-replicated-disks
                                      :member-name "replicatedDisks")
                                     (data-replication-state :target-type
                                      recovery-instance-data-replication-state
                                      :member-name "dataReplicationState")
                                     (data-replication-initiation :target-type
                                      recovery-instance-data-replication-initiation
                                      :member-name "dataReplicationInitiation")
                                     (data-replication-error :target-type
                                      recovery-instance-data-replication-error
                                      :member-name "dataReplicationError")
                                     (staging-availability-zone :target-type
                                      aws-availability-zone :member-name
                                      "stagingAvailabilityZone")
                                     (staging-outpost-arn :target-type
                                      outpost-arn :member-name
                                      "stagingOutpostArn"))
                                    (:shape-name
                                     "RecoveryInstanceDataReplicationInfo"))

(smithy/sdk/shapes:define-structure
 recovery-instance-data-replication-info-replicated-disk common-lisp:nil
 ((device-name :target-type bounded-string :member-name "deviceName")
  (total-storage-bytes :target-type positive-integer :member-name
   "totalStorageBytes")
  (replicated-storage-bytes :target-type positive-integer :member-name
   "replicatedStorageBytes")
  (rescanned-storage-bytes :target-type positive-integer :member-name
   "rescannedStorageBytes")
  (backlogged-storage-bytes :target-type positive-integer :member-name
   "backloggedStorageBytes"))
 (:shape-name "RecoveryInstanceDataReplicationInfoReplicatedDisk"))

(smithy/sdk/shapes:define-list
 recovery-instance-data-replication-info-replicated-disks :member
 recovery-instance-data-replication-info-replicated-disk)

(smithy/sdk/shapes:define-structure
 recovery-instance-data-replication-initiation common-lisp:nil
 ((start-date-time :target-type iso8601datetime-string :member-name
   "startDateTime")
  (steps :target-type recovery-instance-data-replication-initiation-steps
   :member-name "steps"))
 (:shape-name "RecoveryInstanceDataReplicationInitiation"))

(smithy/sdk/shapes:define-structure
 recovery-instance-data-replication-initiation-step common-lisp:nil
 ((name :target-type recovery-instance-data-replication-initiation-step-name
   :member-name "name")
  (status :target-type
   recovery-instance-data-replication-initiation-step-status :member-name
   "status"))
 (:shape-name "RecoveryInstanceDataReplicationInitiationStep"))

(smithy/sdk/shapes:define-type
 recovery-instance-data-replication-initiation-step-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 recovery-instance-data-replication-initiation-step-status
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 recovery-instance-data-replication-initiation-steps :member
 recovery-instance-data-replication-initiation-step)

(smithy/sdk/shapes:define-type recovery-instance-data-replication-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recovery-instance-disk common-lisp:nil
                                    ((internal-device-name :target-type
                                      bounded-string :member-name
                                      "internalDeviceName")
                                     (bytes :target-type positive-integer
                                      :member-name "bytes")
                                     (ebs-volume-id :target-type ebs-volume-id
                                      :member-name "ebsVolumeID"))
                                    (:shape-name "RecoveryInstanceDisk"))

(smithy/sdk/shapes:define-list recovery-instance-disks :member
                               recovery-instance-disk)

(smithy/sdk/shapes:define-structure recovery-instance-failback common-lisp:nil
                                    ((failback-client-id :target-type
                                      bounded-string :member-name
                                      "failbackClientID")
                                     (failback-job-id :target-type job-id
                                      :member-name "failbackJobID")
                                     (failback-initiation-time :target-type
                                      iso8601datetime-string :member-name
                                      "failbackInitiationTime")
                                     (state :target-type failback-state
                                      :member-name "state")
                                     (agent-last-seen-by-service-date-time
                                      :target-type iso8601datetime-string
                                      :member-name
                                      "agentLastSeenByServiceDateTime")
                                     (failback-client-last-seen-by-service-date-time
                                      :target-type iso8601datetime-string
                                      :member-name
                                      "failbackClientLastSeenByServiceDateTime")
                                     (failback-to-original-server :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "failbackToOriginalServer")
                                     (first-byte-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "firstByteDateTime")
                                     (elapsed-replication-duration :target-type
                                      iso8601datetime-string :member-name
                                      "elapsedReplicationDuration")
                                     (failback-launch-type :target-type
                                      failback-launch-type :member-name
                                      "failbackLaunchType"))
                                    (:shape-name "RecoveryInstanceFailback"))

(smithy/sdk/shapes:define-type recovery-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recovery-instance-ids :member
                               recovery-instance-id)

(smithy/sdk/shapes:define-structure recovery-instance-properties
                                    common-lisp:nil
                                    ((last-updated-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastUpdatedDateTime")
                                     (identification-hints :target-type
                                      identification-hints :member-name
                                      "identificationHints")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces")
                                     (disks :target-type
                                      recovery-instance-disks :member-name
                                      "disks")
                                     (cpus :target-type cpus :member-name
                                      "cpus")
                                     (ram-bytes :target-type positive-integer
                                      :member-name "ramBytes")
                                     (os :target-type os :member-name "os"))
                                    (:shape-name "RecoveryInstanceProperties"))

common-lisp:nil

(smithy/sdk/shapes:define-list recovery-instances-for-termination-request
                               :member recovery-instance-id)

(smithy/sdk/shapes:define-structure recovery-life-cycle common-lisp:nil
                                    ((api-call-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "apiCallDateTime"
                                      :timestamp-format "date-time")
                                     (job-id :target-type job-id :member-name
                                      "jobID")
                                     (last-recovery-result :target-type
                                      recovery-result :member-name
                                      "lastRecoveryResult"))
                                    (:shape-name "RecoveryLifeCycle"))

(smithy/sdk/shapes:define-type recovery-result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recovery-snapshot common-lisp:nil
                                    ((snapshot-id :target-type
                                      recovery-snapshot-id :required
                                      common-lisp:t :member-name "snapshotID")
                                     (source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (expected-timestamp :target-type
                                      iso8601datetime-string :required
                                      common-lisp:t :member-name
                                      "expectedTimestamp")
                                     (timestamp :target-type
                                      iso8601datetime-string :member-name
                                      "timestamp")
                                     (ebs-snapshots :target-type
                                      ebs-snapshots-list :member-name
                                      "ebsSnapshots"))
                                    (:shape-name "RecoverySnapshot"))

(smithy/sdk/shapes:define-type recovery-snapshot-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recovery-snapshots-list :member
                               recovery-snapshot)

(smithy/sdk/shapes:define-type recovery-snapshots-order
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-configuration common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (replicated-disks :target-type
                                      replication-configuration-replicated-disks
                                      :member-name "replicatedDisks")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      positive-integer :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (pit-policy :target-type pitpolicy
                                      :member-name "pitPolicy")
                                     (auto-replicate-new-disks :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoReplicateNewDisks"))
                                    (:shape-name "ReplicationConfiguration"))

(smithy/sdk/shapes:define-type replication-configuration-data-plane-routing
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 replication-configuration-default-large-staging-disk-type
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replication-configuration-ebs-encryption
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-configuration-replicated-disk
                                    common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (is-boot-disk :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isBootDisk")
                                     (staging-disk-type :target-type
                                      replication-configuration-replicated-disk-staging-disk-type
                                      :member-name "stagingDiskType")
                                     (iops :target-type positive-integer
                                      :member-name "iops")
                                     (throughput :target-type positive-integer
                                      :member-name "throughput")
                                     (optimized-staging-disk-type :target-type
                                      replication-configuration-replicated-disk-staging-disk-type
                                      :member-name "optimizedStagingDiskType"))
                                    (:shape-name
                                     "ReplicationConfigurationReplicatedDisk"))

(smithy/sdk/shapes:define-type
 replication-configuration-replicated-disk-staging-disk-type
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-configuration-replicated-disks
                               :member
                               replication-configuration-replicated-disk)

(smithy/sdk/shapes:define-structure replication-configuration-template
                                    common-lisp:nil
                                    ((replication-configuration-template-id
                                      :target-type
                                      replication-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "replicationConfigurationTemplateID")
                                     (arn :target-type arn :member-name "arn")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      positive-integer :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (pit-policy :target-type pitpolicy
                                      :member-name "pitPolicy")
                                     (auto-replicate-new-disks :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoReplicateNewDisks"))
                                    (:shape-name
                                     "ReplicationConfigurationTemplate"))

(smithy/sdk/shapes:define-type replication-configuration-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-configuration-template-ids :member
                               replication-configuration-template-id)

common-lisp:nil

(smithy/sdk/shapes:define-list replication-configuration-templates :member
                               replication-configuration-template)

(smithy/sdk/shapes:define-type replication-direction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-servers-security-groups-ids :member
                               security-group-id)

(smithy/sdk/shapes:define-type replication-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure retry-data-replication-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name "RetryDataReplicationRequest"))

(smithy/sdk/shapes:define-structure reverse-replication-request common-lisp:nil
                                    ((recovery-instance-id :target-type
                                      recovery-instance-id :required
                                      common-lisp:t :member-name
                                      "recoveryInstanceID"))
                                    (:shape-name "ReverseReplicationRequest"))

(smithy/sdk/shapes:define-structure reverse-replication-response
                                    common-lisp:nil
                                    ((reversed-direction-source-server-arn
                                      :target-type source-server-arn
                                      :member-name
                                      "reversedDirectionSourceServerArn"))
                                    (:shape-name "ReverseReplicationResponse"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  large-bounded-string :member-name
                                  "serviceCode")
                                 (quota-code :target-type large-bounded-string
                                  :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type small-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-cloud-properties common-lisp:nil
                                    ((origin-account-id :target-type account-id
                                      :member-name "originAccountID")
                                     (origin-region :target-type aws-region
                                      :member-name "originRegion")
                                     (origin-availability-zone :target-type
                                      aws-availability-zone :member-name
                                      "originAvailabilityZone")
                                     (source-outpost-arn :target-type
                                      outpost-arn :member-name
                                      "sourceOutpostArn"))
                                    (:shape-name "SourceCloudProperties"))

(smithy/sdk/shapes:define-structure source-network common-lisp:nil
                                    ((source-network-id :target-type
                                      source-network-id :member-name
                                      "sourceNetworkID")
                                     (source-vpc-id :target-type vpc-id
                                      :member-name "sourceVpcID")
                                     (arn :target-type arn :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (replication-status :target-type
                                      replication-status :member-name
                                      "replicationStatus")
                                     (replication-status-details :target-type
                                      sensitive-bounded-string :member-name
                                      "replicationStatusDetails")
                                     (cfn-stack-name :target-type
                                      cfn-stack-name :member-name
                                      "cfnStackName")
                                     (source-region :target-type aws-region
                                      :member-name "sourceRegion")
                                     (source-account-id :target-type account-id
                                      :member-name "sourceAccountID")
                                     (last-recovery :target-type
                                      recovery-life-cycle :member-name
                                      "lastRecovery")
                                     (launched-vpc-id :target-type vpc-id
                                      :member-name "launchedVpcID"))
                                    (:shape-name "SourceNetwork"))

(smithy/sdk/shapes:define-structure source-network-data common-lisp:nil
                                    ((source-network-id :target-type
                                      source-network-id :member-name
                                      "sourceNetworkID")
                                     (source-vpc :target-type vpc-id
                                      :member-name "sourceVpc")
                                     (target-vpc :target-type vpc-id
                                      :member-name "targetVpc")
                                     (stack-name :target-type
                                      large-bounded-string :member-name
                                      "stackName"))
                                    (:shape-name "SourceNetworkData"))

(smithy/sdk/shapes:define-type source-network-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list source-networks-list :member source-network)

(smithy/sdk/shapes:define-structure source-properties common-lisp:nil
                                    ((last-updated-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastUpdatedDateTime")
                                     (recommended-instance-type :target-type
                                      ec2instance-type :member-name
                                      "recommendedInstanceType")
                                     (identification-hints :target-type
                                      identification-hints :member-name
                                      "identificationHints")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces")
                                     (disks :target-type disks :member-name
                                      "disks")
                                     (cpus :target-type cpus :member-name
                                      "cpus")
                                     (ram-bytes :target-type positive-integer
                                      :member-name "ramBytes")
                                     (os :target-type os :member-name "os")
                                     (supports-nitro-instances :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "supportsNitroInstances"))
                                    (:shape-name "SourceProperties"))

(smithy/sdk/shapes:define-structure source-server common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (arn :target-type arn :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (recovery-instance-id :target-type
                                      recovery-instance-id :member-name
                                      "recoveryInstanceId")
                                     (last-launch-result :target-type
                                      last-launch-result :member-name
                                      "lastLaunchResult")
                                     (data-replication-info :target-type
                                      data-replication-info :member-name
                                      "dataReplicationInfo")
                                     (life-cycle :target-type life-cycle
                                      :member-name "lifeCycle")
                                     (source-properties :target-type
                                      source-properties :member-name
                                      "sourceProperties")
                                     (staging-area :target-type staging-area
                                      :member-name "stagingArea")
                                     (source-cloud-properties :target-type
                                      source-cloud-properties :member-name
                                      "sourceCloudProperties")
                                     (replication-direction :target-type
                                      replication-direction :member-name
                                      "replicationDirection")
                                     (reversed-direction-source-server-arn
                                      :target-type source-server-arn
                                      :member-name
                                      "reversedDirectionSourceServerArn")
                                     (source-network-id :target-type
                                      source-network-id :member-name
                                      "sourceNetworkID")
                                     (agent-version :target-type agent-version
                                      :member-name "agentVersion"))
                                    (:shape-name "SourceServer"))

(smithy/sdk/shapes:define-type source-server-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-server-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-server-ids :member source-server-id)

common-lisp:nil

(smithy/sdk/shapes:define-list source-servers-list :member source-server)

(smithy/sdk/shapes:define-type ssm-document-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure staging-area common-lisp:nil
                                    ((status :target-type extension-status
                                      :member-name "status")
                                     (staging-account-id :target-type
                                      account-id :member-name
                                      "stagingAccountID")
                                     (staging-source-server-arn :target-type
                                      arn :member-name
                                      "stagingSourceServerArn")
                                     (error-message :target-type
                                      large-bounded-string :member-name
                                      "errorMessage"))
                                    (:shape-name "StagingArea"))

(smithy/sdk/shapes:define-structure staging-source-server common-lisp:nil
                                    ((hostname :target-type bounded-string
                                      :member-name "hostname")
                                     (arn :target-type source-server-arn
                                      :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "StagingSourceServer"))

(smithy/sdk/shapes:define-list staging-source-servers-list :member
                               staging-source-server)

(smithy/sdk/shapes:define-structure start-failback-launch-request
                                    common-lisp:nil
                                    ((recovery-instance-ids :target-type
                                      start-failback-request-recovery-instance-ids
                                      :required common-lisp:t :member-name
                                      "recoveryInstanceIDs")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "StartFailbackLaunchRequest"))

(smithy/sdk/shapes:define-structure start-failback-launch-response
                                    common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name "StartFailbackLaunchResponse"))

(smithy/sdk/shapes:define-list start-failback-request-recovery-instance-ids
                               :member recovery-instance-id)

(smithy/sdk/shapes:define-structure start-recovery-request common-lisp:nil
                                    ((source-servers :target-type
                                      start-recovery-request-source-servers
                                      :required common-lisp:t :member-name
                                      "sourceServers")
                                     (is-drill :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isDrill")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "StartRecoveryRequest"))

(smithy/sdk/shapes:define-structure start-recovery-request-source-server
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (recovery-snapshot-id :target-type
                                      recovery-snapshot-id :member-name
                                      "recoverySnapshotID"))
                                    (:shape-name
                                     "StartRecoveryRequestSourceServer"))

(smithy/sdk/shapes:define-list start-recovery-request-source-servers :member
                               start-recovery-request-source-server)

(smithy/sdk/shapes:define-structure start-recovery-response common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name "StartRecoveryResponse"))

(smithy/sdk/shapes:define-structure start-replication-request common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name "StartReplicationRequest"))

(smithy/sdk/shapes:define-structure start-replication-response common-lisp:nil
                                    ((source-server :target-type source-server
                                      :member-name "sourceServer"))
                                    (:shape-name "StartReplicationResponse"))

(smithy/sdk/shapes:define-input start-source-network-recovery-request
                                common-lisp:nil
                                ((source-networks :target-type
                                  start-source-network-recovery-request-network-entries
                                  :required common-lisp:t :member-name
                                  "sourceNetworks")
                                 (deploy-as-new :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "deployAsNew")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name
                                 "StartSourceNetworkRecoveryRequest"))

(smithy/sdk/shapes:define-list
 start-source-network-recovery-request-network-entries :member
 start-source-network-recovery-request-network-entry)

(smithy/sdk/shapes:define-structure
 start-source-network-recovery-request-network-entry common-lisp:nil
 ((source-network-id :target-type source-network-id :required common-lisp:t
   :member-name "sourceNetworkID")
  (cfn-stack-name :target-type cfn-stack-name :member-name "cfnStackName"))
 (:shape-name "StartSourceNetworkRecoveryRequestNetworkEntry"))

(smithy/sdk/shapes:define-output start-source-network-recovery-response
                                 common-lisp:nil
                                 ((job :target-type job :member-name "job"))
                                 (:shape-name
                                  "StartSourceNetworkRecoveryResponse"))

(smithy/sdk/shapes:define-input start-source-network-replication-request
                                common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :required common-lisp:t
                                  :member-name "sourceNetworkID"))
                                (:shape-name
                                 "StartSourceNetworkReplicationRequest"))

(smithy/sdk/shapes:define-output start-source-network-replication-response
                                 common-lisp:nil
                                 ((source-network :target-type source-network
                                   :member-name "sourceNetwork"))
                                 (:shape-name
                                  "StartSourceNetworkReplicationResponse"))

(smithy/sdk/shapes:define-structure stop-failback-request common-lisp:nil
                                    ((recovery-instance-id :target-type
                                      recovery-instance-id :required
                                      common-lisp:t :member-name
                                      "recoveryInstanceID"))
                                    (:shape-name "StopFailbackRequest"))

(smithy/sdk/shapes:define-structure stop-replication-request common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID"))
                                    (:shape-name "StopReplicationRequest"))

(smithy/sdk/shapes:define-structure stop-replication-response common-lisp:nil
                                    ((source-server :target-type source-server
                                      :member-name "sourceServer"))
                                    (:shape-name "StopReplicationResponse"))

(smithy/sdk/shapes:define-input stop-source-network-replication-request
                                common-lisp:nil
                                ((source-network-id :target-type
                                  source-network-id :required common-lisp:t
                                  :member-name "sourceNetworkID"))
                                (:shape-name
                                 "StopSourceNetworkReplicationRequest"))

(smithy/sdk/shapes:define-output stop-source-network-replication-response
                                 common-lisp:nil
                                 ((source-network :target-type source-network
                                   :member-name "sourceNetwork"))
                                 (:shape-name
                                  "StopSourceNetworkReplicationResponse"))

(smithy/sdk/shapes:define-type strictly-positive-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type target-instance-type-right-sizing-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure terminate-recovery-instances-request
                                    common-lisp:nil
                                    ((recovery-instance-ids :target-type
                                      recovery-instances-for-termination-request
                                      :required common-lisp:t :member-name
                                      "recoveryInstanceIDs"))
                                    (:shape-name
                                     "TerminateRecoveryInstancesRequest"))

(smithy/sdk/shapes:define-structure terminate-recovery-instances-response
                                    common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name
                                     "TerminateRecoveryInstancesResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :required common-lisp:t :member-name
                                  "message")
                                 (service-code :target-type
                                  large-bounded-string :member-name
                                  "serviceCode")
                                 (quota-code :target-type large-bounded-string
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  large-bounded-string :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error uninitialized-account-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code"))
                                (:shape-name "UninitializedAccountException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure
 update-failback-replication-configuration-request common-lisp:nil
 ((recovery-instance-id :target-type recovery-instance-id :required
   common-lisp:t :member-name "recoveryInstanceID")
  (name :target-type bounded-string :member-name "name")
  (bandwidth-throttling :target-type positive-integer :member-name
   "bandwidthThrottling")
  (use-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "usePrivateIP"))
 (:shape-name "UpdateFailbackReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-launch-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (post-launch-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "postLaunchEnabled")
                                     (launch-into-instance-properties
                                      :target-type
                                      launch-into-instance-properties
                                      :member-name
                                      "launchIntoInstanceProperties"))
                                    (:shape-name
                                     "UpdateLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 update-launch-configuration-template-request common-lisp:nil
 ((launch-configuration-template-id :target-type
   launch-configuration-template-id :required common-lisp:t :member-name
   "launchConfigurationTemplateID")
  (launch-disposition :target-type launch-disposition :member-name
   "launchDisposition")
  (target-instance-type-right-sizing-method :target-type
   target-instance-type-right-sizing-method :member-name
   "targetInstanceTypeRightSizingMethod")
  (copy-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyPrivateIp")
  (copy-tags :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyTags")
  (licensing :target-type licensing :member-name "licensing")
  (export-bucket-arn :target-type arn :member-name "exportBucketArn")
  (post-launch-enabled :target-type smithy/sdk/smithy-types:boolean
   :member-name "postLaunchEnabled")
  (launch-into-source-instance :target-type smithy/sdk/smithy-types:boolean
   :member-name "launchIntoSourceInstance"))
 (:shape-name "UpdateLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 update-launch-configuration-template-response common-lisp:nil
 ((launch-configuration-template :target-type launch-configuration-template
   :member-name "launchConfigurationTemplate"))
 (:shape-name "UpdateLaunchConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-structure update-replication-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (replicated-disks :target-type
                                      replication-configuration-replicated-disks
                                      :member-name "replicatedDisks")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      positive-integer :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (pit-policy :target-type pitpolicy
                                      :member-name "pitPolicy")
                                     (auto-replicate-new-disks :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoReplicateNewDisks"))
                                    (:shape-name
                                     "UpdateReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 update-replication-configuration-template-request common-lisp:nil
 ((replication-configuration-template-id :target-type
   replication-configuration-template-id :required common-lisp:t :member-name
   "replicationConfigurationTemplateID")
  (arn :target-type arn :member-name "arn")
  (staging-area-subnet-id :target-type subnet-id :member-name
   "stagingAreaSubnetId")
  (associate-default-security-group :target-type
   smithy/sdk/smithy-types:boolean :member-name
   "associateDefaultSecurityGroup")
  (replication-servers-security-groups-ids :target-type
   replication-servers-security-groups-ids :member-name
   "replicationServersSecurityGroupsIDs")
  (replication-server-instance-type :target-type ec2instance-type :member-name
   "replicationServerInstanceType")
  (use-dedicated-replication-server :target-type
   smithy/sdk/smithy-types:boolean :member-name
   "useDedicatedReplicationServer")
  (default-large-staging-disk-type :target-type
   replication-configuration-default-large-staging-disk-type :member-name
   "defaultLargeStagingDiskType")
  (ebs-encryption :target-type replication-configuration-ebs-encryption
   :member-name "ebsEncryption")
  (ebs-encryption-key-arn :target-type arn :member-name "ebsEncryptionKeyArn")
  (bandwidth-throttling :target-type positive-integer :member-name
   "bandwidthThrottling")
  (data-plane-routing :target-type replication-configuration-data-plane-routing
   :member-name "dataPlaneRouting")
  (create-public-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "createPublicIP")
  (staging-area-tags :target-type tags-map :member-name "stagingAreaTags")
  (pit-policy :target-type pitpolicy :member-name "pitPolicy")
  (auto-replicate-new-disks :target-type smithy/sdk/smithy-types:boolean
   :member-name "autoReplicateNewDisks"))
 (:shape-name "UpdateReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type large-bounded-string
                                      :member-name "name")
                                     (message :target-type large-bounded-string
                                      :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map volume-to-conversion-map :key
                              large-bounded-string :value conversion-map)

(smithy/sdk/shapes:define-map volume-to-product-codes :key large-bounded-string
                              :value product-codes)

(smithy/sdk/shapes:define-map volume-to-size-map :key large-bounded-string
                              :value positive-integer)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-source-network-stack
                                       :shape-name
                                       "AssociateSourceNetworkStack" :input
                                       associate-source-network-stack-request
                                       :output
                                       associate-source-network-stack-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/AssociateSourceNetworkStack" :code 202)

(smithy/sdk/operation:define-operation create-extended-source-server
                                       :shape-name "CreateExtendedSourceServer"
                                       :input
                                       create-extended-source-server-request
                                       :output
                                       create-extended-source-server-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateExtendedSourceServer" :code 201)

(smithy/sdk/operation:define-operation create-launch-configuration-template
                                       :shape-name
                                       "CreateLaunchConfigurationTemplate"
                                       :input
                                       create-launch-configuration-template-request
                                       :output
                                       create-launch-configuration-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateLaunchConfigurationTemplate"
                                       :code 201)

(smithy/sdk/operation:define-operation
 create-replication-configuration-template :shape-name
 "CreateReplicationConfigurationTemplate" :input
 create-replication-configuration-template-request :output
 replication-configuration-template :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception
  uninitialized-account-exception validation-exception)
 :method "POST" :uri "/CreateReplicationConfigurationTemplate" :code 201)

(smithy/sdk/operation:define-operation create-source-network :shape-name
                                       "CreateSourceNetwork" :input
                                       create-source-network-request :output
                                       create-source-network-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateSourceNetwork" :code 201)

(smithy/sdk/operation:define-operation delete-job :shape-name "DeleteJob"
                                       :input delete-job-request :output
                                       delete-job-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/DeleteJob" :code
                                       204)

(smithy/sdk/operation:define-operation delete-launch-action :shape-name
                                       "DeleteLaunchAction" :input
                                       delete-launch-action-request :output
                                       delete-launch-action-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteLaunchAction" :code 204)

(smithy/sdk/operation:define-operation delete-launch-configuration-template
                                       :shape-name
                                       "DeleteLaunchConfigurationTemplate"
                                       :input
                                       delete-launch-configuration-template-request
                                       :output
                                       delete-launch-configuration-template-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteLaunchConfigurationTemplate"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-recovery-instance :shape-name
                                       "DeleteRecoveryInstance" :input
                                       delete-recovery-instance-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteRecoveryInstance" :code 200)

(smithy/sdk/operation:define-operation
 delete-replication-configuration-template :shape-name
 "DeleteReplicationConfigurationTemplate" :input
 delete-replication-configuration-template-request :output
 delete-replication-configuration-template-response :errors
 (conflict-exception internal-server-exception resource-not-found-exception
  throttling-exception uninitialized-account-exception)
 :method "POST" :uri "/DeleteReplicationConfigurationTemplate" :code 204)

(smithy/sdk/operation:define-operation delete-source-network :shape-name
                                       "DeleteSourceNetwork" :input
                                       delete-source-network-request :output
                                       delete-source-network-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteSourceNetwork" :code 204)

(smithy/sdk/operation:define-operation delete-source-server :shape-name
                                       "DeleteSourceServer" :input
                                       delete-source-server-request :output
                                       delete-source-server-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteSourceServer" :code 204)

(smithy/sdk/operation:define-operation describe-job-log-items :shape-name
                                       "DescribeJobLogItems" :input
                                       describe-job-log-items-request :output
                                       describe-job-log-items-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeJobLogItems" :code 200)

(smithy/sdk/operation:define-operation describe-jobs :shape-name "DescribeJobs"
                                       :input describe-jobs-request :output
                                       describe-jobs-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/DescribeJobs"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-launch-configuration-templates
                                       :shape-name
                                       "DescribeLaunchConfigurationTemplates"
                                       :input
                                       describe-launch-configuration-templates-request
                                       :output
                                       describe-launch-configuration-templates-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeLaunchConfigurationTemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-recovery-instances :shape-name
                                       "DescribeRecoveryInstances" :input
                                       describe-recovery-instances-request
                                       :output
                                       describe-recovery-instances-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DescribeRecoveryInstances" :code 200)

(smithy/sdk/operation:define-operation describe-recovery-snapshots :shape-name
                                       "DescribeRecoverySnapshots" :input
                                       describe-recovery-snapshots-request
                                       :output
                                       describe-recovery-snapshots-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeRecoverySnapshots" :code 200)

(smithy/sdk/operation:define-operation
 describe-replication-configuration-templates :shape-name
 "DescribeReplicationConfigurationTemplates" :input
 describe-replication-configuration-templates-request :output
 describe-replication-configuration-templates-response :errors
 (internal-server-exception resource-not-found-exception throttling-exception
  uninitialized-account-exception validation-exception)
 :method "POST" :uri "/DescribeReplicationConfigurationTemplates" :code 200)

(smithy/sdk/operation:define-operation describe-source-networks :shape-name
                                       "DescribeSourceNetworks" :input
                                       describe-source-networks-request :output
                                       describe-source-networks-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSourceNetworks" :code 200)

(smithy/sdk/operation:define-operation describe-source-servers :shape-name
                                       "DescribeSourceServers" :input
                                       describe-source-servers-request :output
                                       describe-source-servers-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSourceServers" :code 200)

(smithy/sdk/operation:define-operation disconnect-recovery-instance :shape-name
                                       "DisconnectRecoveryInstance" :input
                                       disconnect-recovery-instance-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DisconnectRecoveryInstance" :code 200)

(smithy/sdk/operation:define-operation disconnect-source-server :shape-name
                                       "DisconnectSourceServer" :input
                                       disconnect-source-server-request :output
                                       source-server :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DisconnectSourceServer" :code 200)

(smithy/sdk/operation:define-operation export-source-network-cfn-template
                                       :shape-name
                                       "ExportSourceNetworkCfnTemplate" :input
                                       export-source-network-cfn-template-request
                                       :output
                                       export-source-network-cfn-template-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ExportSourceNetworkCfnTemplate" :code
                                       200)

(smithy/sdk/operation:define-operation get-failback-replication-configuration
                                       :shape-name
                                       "GetFailbackReplicationConfiguration"
                                       :input
                                       get-failback-replication-configuration-request
                                       :output
                                       get-failback-replication-configuration-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/GetFailbackReplicationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-launch-configuration :shape-name
                                       "GetLaunchConfiguration" :input
                                       get-launch-configuration-request :output
                                       launch-configuration :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/GetLaunchConfiguration" :code 200)

(smithy/sdk/operation:define-operation get-replication-configuration
                                       :shape-name
                                       "GetReplicationConfiguration" :input
                                       get-replication-configuration-request
                                       :output replication-configuration
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/GetReplicationConfiguration" :code 200)

(smithy/sdk/operation:define-operation initialize-service :shape-name
                                       "InitializeService" :input
                                       initialize-service-request :output
                                       initialize-service-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/InitializeService"
                                       :code 204)

(smithy/sdk/operation:define-operation list-extensible-source-servers
                                       :shape-name
                                       "ListExtensibleSourceServers" :input
                                       list-extensible-source-servers-request
                                       :output
                                       list-extensible-source-servers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListExtensibleSourceServers" :code 200)

(smithy/sdk/operation:define-operation list-launch-actions :shape-name
                                       "ListLaunchActions" :input
                                       list-launch-actions-request :output
                                       list-launch-actions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/ListLaunchActions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-staging-accounts :shape-name
                                       "ListStagingAccounts" :input
                                       list-staging-accounts-request :output
                                       list-staging-accounts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ListStagingAccounts" :code 200)

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

(smithy/sdk/operation:define-operation put-launch-action :shape-name
                                       "PutLaunchAction" :input
                                       put-launch-action-request :output
                                       put-launch-action-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutLaunchAction"
                                       :code 200)

(smithy/sdk/operation:define-operation retry-data-replication :shape-name
                                       "RetryDataReplication" :input
                                       retry-data-replication-request :output
                                       source-server :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/RetryDataReplication" :code 200)

(smithy/sdk/operation:define-operation reverse-replication :shape-name
                                       "ReverseReplication" :input
                                       reverse-replication-request :output
                                       reverse-replication-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ReverseReplication" :code 200)

(smithy/sdk/operation:define-operation start-failback-launch :shape-name
                                       "StartFailbackLaunch" :input
                                       start-failback-launch-request :output
                                       start-failback-launch-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartFailbackLaunch" :code 200)

(smithy/sdk/operation:define-operation start-recovery :shape-name
                                       "StartRecovery" :input
                                       start-recovery-request :output
                                       start-recovery-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/StartRecovery"
                                       :code 202)

(smithy/sdk/operation:define-operation start-replication :shape-name
                                       "StartReplication" :input
                                       start-replication-request :output
                                       start-replication-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/StartReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation start-source-network-recovery
                                       :shape-name "StartSourceNetworkRecovery"
                                       :input
                                       start-source-network-recovery-request
                                       :output
                                       start-source-network-recovery-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartSourceNetworkRecovery" :code 202)

(smithy/sdk/operation:define-operation start-source-network-replication
                                       :shape-name
                                       "StartSourceNetworkReplication" :input
                                       start-source-network-replication-request
                                       :output
                                       start-source-network-replication-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/StartSourceNetworkReplication" :code
                                       200)

(smithy/sdk/operation:define-operation stop-failback :shape-name "StopFailback"
                                       :input stop-failback-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/StopFailback"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-replication :shape-name
                                       "StopReplication" :input
                                       stop-replication-request :output
                                       stop-replication-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/StopReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-source-network-replication
                                       :shape-name
                                       "StopSourceNetworkReplication" :input
                                       stop-source-network-replication-request
                                       :output
                                       stop-source-network-replication-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StopSourceNetworkReplication" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation terminate-recovery-instances :shape-name
                                       "TerminateRecoveryInstances" :input
                                       terminate-recovery-instances-request
                                       :output
                                       terminate-recovery-instances-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/TerminateRecoveryInstances" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation
 update-failback-replication-configuration :shape-name
 "UpdateFailbackReplicationConfiguration" :input
 update-failback-replication-configuration-request :output common-lisp:null
 :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception
  uninitialized-account-exception)
 :method "POST" :uri "/UpdateFailbackReplicationConfiguration" :code 200)

(smithy/sdk/operation:define-operation update-launch-configuration :shape-name
                                       "UpdateLaunchConfiguration" :input
                                       update-launch-configuration-request
                                       :output launch-configuration :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateLaunchConfiguration" :code 200)

(smithy/sdk/operation:define-operation update-launch-configuration-template
                                       :shape-name
                                       "UpdateLaunchConfigurationTemplate"
                                       :input
                                       update-launch-configuration-template-request
                                       :output
                                       update-launch-configuration-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateLaunchConfigurationTemplate"
                                       :code 200)

(smithy/sdk/operation:define-operation update-replication-configuration
                                       :shape-name
                                       "UpdateReplicationConfiguration" :input
                                       update-replication-configuration-request
                                       :output replication-configuration
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateReplicationConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation
 update-replication-configuration-template :shape-name
 "UpdateReplicationConfigurationTemplate" :input
 update-replication-configuration-template-request :output
 replication-configuration-template :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception
  uninitialized-account-exception validation-exception)
 :method "POST" :uri "/UpdateReplicationConfigurationTemplate" :code 200)
