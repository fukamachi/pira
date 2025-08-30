(uiop/package:define-package #:pira/memorydb (:use)
                             (:export #:acl #:aclalready-exists-fault
                              #:aclcluster-name-list #:acllist #:aclname
                              #:aclname-list #:aclnot-found-fault
                              #:aclpending-changes #:aclquota-exceeded-fault
                              #:acls-update-status
                              #:apicall-rate-for-customer-exceeded-fault
                              #:azstatus #:access-string #:amazon-memory-db
                              #:authentication #:authentication-mode
                              #:authentication-type #:availability-zone
                              #:aws-query-error-message #:batch-update-cluster
                              #:boolean #:boolean-optional #:cluster
                              #:cluster-already-exists-fault
                              #:cluster-configuration #:cluster-list
                              #:cluster-name-list #:cluster-not-found-fault
                              #:cluster-pending-updates
                              #:cluster-quota-for-customer-exceeded-fault
                              #:copy-snapshot #:create-acl #:create-cluster
                              #:create-multi-region-cluster
                              #:create-parameter-group #:create-snapshot
                              #:create-subnet-group #:create-user
                              #:data-tiering-status #:default-user-required
                              #:delete-acl #:delete-cluster
                              #:delete-multi-region-cluster
                              #:delete-parameter-group #:delete-snapshot
                              #:delete-subnet-group #:delete-user
                              #:describe-acls #:describe-clusters
                              #:describe-engine-versions #:describe-events
                              #:describe-multi-region-clusters
                              #:describe-parameter-groups #:describe-parameters
                              #:describe-reserved-nodes
                              #:describe-reserved-nodes-offerings
                              #:describe-service-updates #:describe-snapshots
                              #:describe-subnet-groups #:describe-users
                              #:double #:duplicate-user-name-fault #:endpoint
                              #:engine-version-info #:engine-version-info-list
                              #:event #:event-list #:exception-message
                              #:failover-shard #:filter #:filter-list
                              #:filter-name #:filter-value #:filter-value-list
                              #:input-authentication-type
                              #:insufficient-cluster-capacity-fault #:integer
                              #:integer-optional #:invalid-aclstate-fault
                              #:invalid-arnfault #:invalid-cluster-state-fault
                              #:invalid-credentials-exception
                              #:invalid-kmskey-fault
                              #:invalid-multi-region-cluster-state-fault
                              #:invalid-node-state-fault
                              #:invalid-parameter-combination-exception
                              #:invalid-parameter-group-state-fault
                              #:invalid-parameter-value-exception
                              #:invalid-snapshot-state-fault #:invalid-subnet
                              #:invalid-user-state-fault
                              #:invalid-vpcnetwork-state-fault #:ip-discovery
                              #:key-list #:kms-key-id
                              #:list-allowed-multi-region-cluster-updates
                              #:list-allowed-node-type-updates #:list-tags
                              #:multi-region-cluster
                              #:multi-region-cluster-already-exists-fault
                              #:multi-region-cluster-list
                              #:multi-region-cluster-not-found-fault
                              #:multi-region-parameter-group-not-found-fault
                              #:network-type #:network-type-list
                              #:no-operation-fault #:node #:node-list
                              #:node-quota-for-cluster-exceeded-fault
                              #:node-quota-for-customer-exceeded-fault
                              #:node-type-list #:parameter #:parameter-group
                              #:parameter-group-already-exists-fault
                              #:parameter-group-list
                              #:parameter-group-not-found-fault
                              #:parameter-group-quota-exceeded-fault
                              #:parameter-name-list #:parameter-name-value
                              #:parameter-name-value-list #:parameters-list
                              #:password-list-input
                              #:pending-modified-service-update
                              #:pending-modified-service-update-list
                              #:purchase-reserved-nodes-offering
                              #:recurring-charge #:recurring-charge-list
                              #:regional-cluster #:regional-cluster-list
                              #:replica-configuration-request #:reserved-node
                              #:reserved-node-already-exists-fault
                              #:reserved-node-list
                              #:reserved-node-not-found-fault
                              #:reserved-node-quota-exceeded-fault
                              #:reserved-nodes-offering
                              #:reserved-nodes-offering-list
                              #:reserved-nodes-offering-not-found-fault
                              #:reset-parameter-group #:resharding-status
                              #:security-group-ids-list
                              #:security-group-membership
                              #:security-group-membership-list
                              #:service-linked-role-not-found-fault
                              #:service-update #:service-update-list
                              #:service-update-not-found-fault
                              #:service-update-request #:service-update-status
                              #:service-update-status-list
                              #:service-update-type #:shard
                              #:shard-configuration
                              #:shard-configuration-request #:shard-detail
                              #:shard-details #:shard-list
                              #:shard-not-found-fault
                              #:shards-per-cluster-quota-exceeded-fault
                              #:slot-migration #:snapshot
                              #:snapshot-already-exists-fault
                              #:snapshot-arns-list #:snapshot-list
                              #:snapshot-not-found-fault
                              #:snapshot-quota-exceeded-fault #:source-type
                              #:string #:subnet #:subnet-group
                              #:subnet-group-already-exists-fault
                              #:subnet-group-in-use-fault #:subnet-group-list
                              #:subnet-group-not-found-fault
                              #:subnet-group-quota-exceeded-fault
                              #:subnet-identifier-list #:subnet-in-use
                              #:subnet-list #:subnet-not-allowed-fault
                              #:subnet-quota-exceeded-fault #:tstamp #:tag
                              #:tag-list #:tag-not-found-fault
                              #:tag-quota-per-resource-exceeded #:tag-resource
                              #:target-bucket
                              #:test-failover-not-available-fault
                              #:unprocessed-cluster #:unprocessed-cluster-list
                              #:untag-resource #:update-acl #:update-cluster
                              #:update-multi-region-cluster
                              #:update-parameter-group #:update-strategy
                              #:update-subnet-group #:update-user #:user
                              #:user-already-exists-fault #:user-list
                              #:user-name #:user-name-list
                              #:user-name-list-input #:user-not-found-fault
                              #:user-quota-exceeded-fault #:memorydb-error))
(common-lisp:in-package #:pira/memorydb)

(common-lisp:define-condition memorydb-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-memory-db :shape-name
                                   "AmazonMemoryDB" :version "2021-01-01"
                                   :title "Amazon MemoryDB" :operations
                                   '(batch-update-cluster copy-snapshot
                                     create-acl create-cluster
                                     create-multi-region-cluster
                                     create-parameter-group create-snapshot
                                     create-subnet-group create-user delete-acl
                                     delete-cluster delete-multi-region-cluster
                                     delete-parameter-group delete-snapshot
                                     delete-subnet-group delete-user
                                     describe-acls describe-clusters
                                     describe-engine-versions describe-events
                                     describe-multi-region-clusters
                                     describe-parameter-groups
                                     describe-parameters
                                     describe-reserved-nodes
                                     describe-reserved-nodes-offerings
                                     describe-service-updates
                                     describe-snapshots describe-subnet-groups
                                     describe-users failover-shard
                                     list-allowed-multi-region-cluster-updates
                                     list-allowed-node-type-updates list-tags
                                     purchase-reserved-nodes-offering
                                     reset-parameter-group tag-resource
                                     untag-resource update-acl update-cluster
                                     update-multi-region-cluster
                                     update-parameter-group update-subnet-group
                                     update-user)
                                   :xml-namespace
                                   '(:uri
                                     "http://memorydb.amazonaws.com/doc/2021-01-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "MemoryDB")
                                      ("arnNamespace" . "memorydb")
                                      ("cloudFormationName" . "MemoryDB")
                                      ("cloudTrailEventSource"
                                       . "memorydb.amazonaws.com")
                                      ("endpointPrefix" . "memory-db"))
                                     ("aws.auth#sigv4" ("name" . "memorydb"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure acl common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (user-names :target-type user-name-list
                                      :member-name "UserNames")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (pending-changes :target-type
                                      aclpending-changes :member-name
                                      "PendingChanges")
                                     (clusters :target-type
                                      aclcluster-name-list :member-name
                                      "Clusters")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "ACL"))

(smithy/sdk/shapes:define-error aclalready-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ACLAlreadyExistsFault")
                                (:error-name "ACLAlreadyExists")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list aclcluster-name-list :member string)

(smithy/sdk/shapes:define-list acllist :member acl)

(smithy/sdk/shapes:define-type aclname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aclname-list :member aclname)

(smithy/sdk/shapes:define-error aclnot-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ACLNotFoundFault")
                                (:error-name "ACLNotFound") (:error-code 404)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure aclpending-changes common-lisp:nil
                                    ((user-names-to-remove :target-type
                                      user-name-list :member-name
                                      "UserNamesToRemove")
                                     (user-names-to-add :target-type
                                      user-name-list :member-name
                                      "UserNamesToAdd"))
                                    (:shape-name "ACLPendingChanges"))

(smithy/sdk/shapes:define-error aclquota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ACLQuotaExceededFault")
                                (:error-name "ACLQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure acls-update-status common-lisp:nil
                                    ((aclto-apply :target-type aclname
                                      :member-name "ACLToApply"))
                                    (:shape-name "ACLsUpdateStatus"))

(smithy/sdk/shapes:define-error apicall-rate-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "APICallRateForCustomerExceededFault")
                                (:error-name "APICallRateForCustomerExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-enum azstatus
    common-lisp:nil
  (:single-az "singleaz")
  (:multi-az "multiaz"))

(smithy/sdk/shapes:define-type access-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authentication common-lisp:nil
                                    ((type :target-type authentication-type
                                      :member-name "Type")
                                     (password-count :target-type
                                      integer-optional :member-name
                                      "PasswordCount"))
                                    (:shape-name "Authentication"))

(smithy/sdk/shapes:define-structure authentication-mode common-lisp:nil
                                    ((type :target-type
                                      input-authentication-type :member-name
                                      "Type")
                                     (passwords :target-type
                                      password-list-input :member-name
                                      "Passwords"))
                                    (:shape-name "AuthenticationMode"))

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:password "password")
  (:no-password "no-password")
  (:iam "iam"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-type aws-query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-update-cluster-request common-lisp:nil
                                ((cluster-names :target-type cluster-name-list
                                  :required common-lisp:t :member-name
                                  "ClusterNames")
                                 (service-update :target-type
                                  service-update-request :member-name
                                  "ServiceUpdate"))
                                (:shape-name "BatchUpdateClusterRequest"))

(smithy/sdk/shapes:define-output batch-update-cluster-response common-lisp:nil
                                 ((processed-clusters :target-type cluster-list
                                   :member-name "ProcessedClusters")
                                  (unprocessed-clusters :target-type
                                   unprocessed-cluster-list :member-name
                                   "UnprocessedClusters"))
                                 (:shape-name "BatchUpdateClusterResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (status :target-type string :member-name
                                      "Status")
                                     (pending-updates :target-type
                                      cluster-pending-updates :member-name
                                      "PendingUpdates")
                                     (multi-region-cluster-name :target-type
                                      string :member-name
                                      "MultiRegionClusterName")
                                     (number-of-shards :target-type
                                      integer-optional :member-name
                                      "NumberOfShards")
                                     (shards :target-type shard-list
                                      :member-name "Shards")
                                     (availability-mode :target-type azstatus
                                      :member-name "AvailabilityMode")
                                     (cluster-endpoint :target-type endpoint
                                      :member-name "ClusterEndpoint")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (engine-patch-version :target-type string
                                      :member-name "EnginePatchVersion")
                                     (parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (parameter-group-status :target-type
                                      string :member-name
                                      "ParameterGroupStatus")
                                     (security-groups :target-type
                                      security-group-membership-list
                                      :member-name "SecurityGroups")
                                     (subnet-group-name :target-type string
                                      :member-name "SubnetGroupName")
                                     (tlsenabled :target-type boolean-optional
                                      :member-name "TLSEnabled")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (sns-topic-arn :target-type string
                                      :member-name "SnsTopicArn")
                                     (sns-topic-status :target-type string
                                      :member-name "SnsTopicStatus")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (maintenance-window :target-type string
                                      :member-name "MaintenanceWindow")
                                     (snapshot-window :target-type string
                                      :member-name "SnapshotWindow")
                                     (aclname :target-type aclname :member-name
                                      "ACLName")
                                     (auto-minor-version-upgrade :target-type
                                      boolean-optional :member-name
                                      "AutoMinorVersionUpgrade")
                                     (data-tiering :target-type
                                      data-tiering-status :member-name
                                      "DataTiering")
                                     (network-type :target-type network-type
                                      :member-name "NetworkType")
                                     (ip-discovery :target-type ip-discovery
                                      :member-name "IpDiscovery"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-error cluster-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterAlreadyExistsFault")
                                (:error-name "ClusterAlreadyExists")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure cluster-configuration common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (maintenance-window :target-type string
                                      :member-name "MaintenanceWindow")
                                     (topic-arn :target-type string
                                      :member-name "TopicArn")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (subnet-group-name :target-type string
                                      :member-name "SubnetGroupName")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (snapshot-window :target-type string
                                      :member-name "SnapshotWindow")
                                     (num-shards :target-type integer-optional
                                      :member-name "NumShards")
                                     (shards :target-type shard-details
                                      :member-name "Shards")
                                     (multi-region-parameter-group-name
                                      :target-type string :member-name
                                      "MultiRegionParameterGroupName")
                                     (multi-region-cluster-name :target-type
                                      string :member-name
                                      "MultiRegionClusterName"))
                                    (:shape-name "ClusterConfiguration"))

(smithy/sdk/shapes:define-list cluster-list :member
                               (cluster :xml-name "Cluster"))

(smithy/sdk/shapes:define-list cluster-name-list :member string)

(smithy/sdk/shapes:define-error cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterNotFoundFault")
                                (:error-name "ClusterNotFound")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure cluster-pending-updates common-lisp:nil
                                    ((resharding :target-type resharding-status
                                      :member-name "Resharding")
                                     (acls :target-type acls-update-status
                                      :member-name "ACLs")
                                     (service-updates :target-type
                                      pending-modified-service-update-list
                                      :member-name "ServiceUpdates"))
                                    (:shape-name "ClusterPendingUpdates"))

(smithy/sdk/shapes:define-error cluster-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterQuotaForCustomerExceededFault")
                                (:error-name "ClusterQuotaForCustomerExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-input copy-snapshot-request common-lisp:nil
                                ((source-snapshot-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceSnapshotName")
                                 (target-snapshot-name :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetSnapshotName")
                                 (target-bucket :target-type target-bucket
                                  :member-name "TargetBucket")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopySnapshotRequest"))

(smithy/sdk/shapes:define-output copy-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CopySnapshotResponse"))

(smithy/sdk/shapes:define-input create-aclrequest common-lisp:nil
                                ((aclname :target-type string :required
                                  common-lisp:t :member-name "ACLName")
                                 (user-names :target-type user-name-list-input
                                  :member-name "UserNames")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateACLRequest"))

(smithy/sdk/shapes:define-output create-aclresponse common-lisp:nil
                                 ((acl :target-type acl :member-name "ACL"))
                                 (:shape-name "CreateACLResponse"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (node-type :target-type string :required
                                  common-lisp:t :member-name "NodeType")
                                 (multi-region-cluster-name :target-type string
                                  :member-name "MultiRegionClusterName")
                                 (parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (num-shards :target-type integer-optional
                                  :member-name "NumShards")
                                 (num-replicas-per-shard :target-type
                                  integer-optional :member-name
                                  "NumReplicasPerShard")
                                 (subnet-group-name :target-type string
                                  :member-name "SubnetGroupName")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (maintenance-window :target-type string
                                  :member-name "MaintenanceWindow")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (tlsenabled :target-type boolean-optional
                                  :member-name "TLSEnabled")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (snapshot-arns :target-type snapshot-arns-list
                                  :member-name "SnapshotArns")
                                 (snapshot-name :target-type string
                                  :member-name "SnapshotName")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (aclname :target-type aclname :required
                                  common-lisp:t :member-name "ACLName")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (data-tiering :target-type boolean-optional
                                  :member-name "DataTiering")
                                 (network-type :target-type network-type
                                  :member-name "NetworkType")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-multi-region-cluster-request
                                common-lisp:nil
                                ((multi-region-cluster-name-suffix :target-type
                                  string :required common-lisp:t :member-name
                                  "MultiRegionClusterNameSuffix")
                                 (description :target-type string :member-name
                                  "Description")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (node-type :target-type string :required
                                  common-lisp:t :member-name "NodeType")
                                 (multi-region-parameter-group-name
                                  :target-type string :member-name
                                  "MultiRegionParameterGroupName")
                                 (num-shards :target-type integer-optional
                                  :member-name "NumShards")
                                 (tlsenabled :target-type boolean-optional
                                  :member-name "TLSEnabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMultiRegionClusterRequest"))

(smithy/sdk/shapes:define-output create-multi-region-cluster-response
                                 common-lisp:nil
                                 ((multi-region-cluster :target-type
                                   multi-region-cluster :member-name
                                   "MultiRegionCluster"))
                                 (:shape-name
                                  "CreateMultiRegionClusterResponse"))

(smithy/sdk/shapes:define-input create-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (family :target-type string :required
                                  common-lisp:t :member-name "Family")
                                 (description :target-type string :member-name
                                  "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateParameterGroupRequest"))

(smithy/sdk/shapes:define-output create-parameter-group-response
                                 common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "CreateParameterGroupResponse"))

(smithy/sdk/shapes:define-input create-snapshot-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (snapshot-name :target-type string :required
                                  common-lisp:t :member-name "SnapshotName")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSnapshotRequest"))

(smithy/sdk/shapes:define-output create-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CreateSnapshotResponse"))

(smithy/sdk/shapes:define-input create-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSubnetGroupRequest"))

(smithy/sdk/shapes:define-output create-subnet-group-response common-lisp:nil
                                 ((subnet-group :target-type subnet-group
                                   :member-name "SubnetGroup"))
                                 (:shape-name "CreateSubnetGroupResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName")
                                 (authentication-mode :target-type
                                  authentication-mode :required common-lisp:t
                                  :member-name "AuthenticationMode")
                                 (access-string :target-type access-string
                                  :required common-lisp:t :member-name
                                  "AccessString")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-enum data-tiering-status
    common-lisp:nil
  (:true "true")
  (:false "false"))

(smithy/sdk/shapes:define-error default-user-required common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DefaultUserRequired")
                                (:error-name "DefaultUserRequired")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-input delete-aclrequest common-lisp:nil
                                ((aclname :target-type string :required
                                  common-lisp:t :member-name "ACLName"))
                                (:shape-name "DeleteACLRequest"))

(smithy/sdk/shapes:define-output delete-aclresponse common-lisp:nil
                                 ((acl :target-type acl :member-name "ACL"))
                                 (:shape-name "DeleteACLResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (multi-region-cluster-name :target-type string
                                  :member-name "MultiRegionClusterName")
                                 (final-snapshot-name :target-type string
                                  :member-name "FinalSnapshotName"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-multi-region-cluster-request
                                common-lisp:nil
                                ((multi-region-cluster-name :target-type string
                                  :required common-lisp:t :member-name
                                  "MultiRegionClusterName"))
                                (:shape-name "DeleteMultiRegionClusterRequest"))

(smithy/sdk/shapes:define-output delete-multi-region-cluster-response
                                 common-lisp:nil
                                 ((multi-region-cluster :target-type
                                   multi-region-cluster :member-name
                                   "MultiRegionCluster"))
                                 (:shape-name
                                  "DeleteMultiRegionClusterResponse"))

(smithy/sdk/shapes:define-input delete-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName"))
                                (:shape-name "DeleteParameterGroupRequest"))

(smithy/sdk/shapes:define-output delete-parameter-group-response
                                 common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "DeleteParameterGroupResponse"))

(smithy/sdk/shapes:define-input delete-snapshot-request common-lisp:nil
                                ((snapshot-name :target-type string :required
                                  common-lisp:t :member-name "SnapshotName"))
                                (:shape-name "DeleteSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "DeleteSnapshotResponse"))

(smithy/sdk/shapes:define-input delete-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName"))
                                (:shape-name "DeleteSubnetGroupRequest"))

(smithy/sdk/shapes:define-output delete-subnet-group-response common-lisp:nil
                                 ((subnet-group :target-type subnet-group
                                   :member-name "SubnetGroup"))
                                 (:shape-name "DeleteSubnetGroupResponse"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-input describe-acls-request common-lisp:nil
                                ((aclname :target-type string :member-name
                                  "ACLName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeACLsRequest"))

(smithy/sdk/shapes:define-output describe-acls-response common-lisp:nil
                                 ((acls :target-type acllist :member-name
                                   "ACLs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeACLsResponse"))

(smithy/sdk/shapes:define-input describe-clusters-request common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "ClusterName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (show-shard-details :target-type
                                  boolean-optional :member-name
                                  "ShowShardDetails"))
                                (:shape-name "DescribeClustersRequest"))

(smithy/sdk/shapes:define-output describe-clusters-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (clusters :target-type cluster-list
                                   :member-name "Clusters"))
                                 (:shape-name "DescribeClustersResponse"))

(smithy/sdk/shapes:define-input describe-engine-versions-request
                                common-lisp:nil
                                ((engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (parameter-group-family :target-type string
                                  :member-name "ParameterGroupFamily")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (default-only :target-type boolean
                                  :member-name "DefaultOnly"))
                                (:shape-name "DescribeEngineVersionsRequest"))

(smithy/sdk/shapes:define-output describe-engine-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (engine-versions :target-type
                                   engine-version-info-list :member-name
                                   "EngineVersions"))
                                 (:shape-name "DescribeEngineVersionsResponse"))

(smithy/sdk/shapes:define-input describe-events-request common-lisp:nil
                                ((source-name :target-type string :member-name
                                  "SourceName")
                                 (source-type :target-type source-type
                                  :member-name "SourceType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (duration :target-type integer-optional
                                  :member-name "Duration")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeEventsRequest"))

(smithy/sdk/shapes:define-output describe-events-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "DescribeEventsResponse"))

(smithy/sdk/shapes:define-input describe-multi-region-clusters-request
                                common-lisp:nil
                                ((multi-region-cluster-name :target-type string
                                  :member-name "MultiRegionClusterName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (show-cluster-details :target-type
                                  boolean-optional :member-name
                                  "ShowClusterDetails"))
                                (:shape-name
                                 "DescribeMultiRegionClustersRequest"))

(smithy/sdk/shapes:define-output describe-multi-region-clusters-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (multi-region-clusters :target-type
                                   multi-region-cluster-list :member-name
                                   "MultiRegionClusters"))
                                 (:shape-name
                                  "DescribeMultiRegionClustersResponse"))

(smithy/sdk/shapes:define-input describe-parameter-groups-request
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeParameterGroupsRequest"))

(smithy/sdk/shapes:define-output describe-parameter-groups-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (parameter-groups :target-type
                                   parameter-group-list :member-name
                                   "ParameterGroups"))
                                 (:shape-name
                                  "DescribeParameterGroupsResponse"))

(smithy/sdk/shapes:define-input describe-parameters-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeParametersRequest"))

(smithy/sdk/shapes:define-output describe-parameters-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (parameters :target-type parameters-list
                                   :member-name "Parameters"))
                                 (:shape-name "DescribeParametersResponse"))

(smithy/sdk/shapes:define-input describe-reserved-nodes-offerings-request
                                common-lisp:nil
                                ((reserved-nodes-offering-id :target-type
                                  string :member-name
                                  "ReservedNodesOfferingId")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeReservedNodesOfferingsRequest"))

(smithy/sdk/shapes:define-output describe-reserved-nodes-offerings-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (reserved-nodes-offerings :target-type
                                   reserved-nodes-offering-list :member-name
                                   "ReservedNodesOfferings"))
                                 (:shape-name
                                  "DescribeReservedNodesOfferingsResponse"))

(smithy/sdk/shapes:define-input describe-reserved-nodes-request common-lisp:nil
                                ((reservation-id :target-type string
                                  :member-name "ReservationId")
                                 (reserved-nodes-offering-id :target-type
                                  string :member-name
                                  "ReservedNodesOfferingId")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeReservedNodesRequest"))

(smithy/sdk/shapes:define-output describe-reserved-nodes-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (reserved-nodes :target-type
                                   reserved-node-list :member-name
                                   "ReservedNodes"))
                                 (:shape-name "DescribeReservedNodesResponse"))

(smithy/sdk/shapes:define-input describe-service-updates-request
                                common-lisp:nil
                                ((service-update-name :target-type string
                                  :member-name "ServiceUpdateName")
                                 (cluster-names :target-type cluster-name-list
                                  :member-name "ClusterNames")
                                 (status :target-type
                                  service-update-status-list :member-name
                                  "Status")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeServiceUpdatesRequest"))

(smithy/sdk/shapes:define-output describe-service-updates-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (service-updates :target-type
                                   service-update-list :member-name
                                   "ServiceUpdates"))
                                 (:shape-name "DescribeServiceUpdatesResponse"))

(smithy/sdk/shapes:define-input describe-snapshots-request common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "ClusterName")
                                 (snapshot-name :target-type string
                                  :member-name "SnapshotName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (show-detail :target-type boolean-optional
                                  :member-name "ShowDetail"))
                                (:shape-name "DescribeSnapshotsRequest"))

(smithy/sdk/shapes:define-output describe-snapshots-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (snapshots :target-type snapshot-list
                                   :member-name "Snapshots"))
                                 (:shape-name "DescribeSnapshotsResponse"))

(smithy/sdk/shapes:define-input describe-subnet-groups-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :member-name "SubnetGroupName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeSubnetGroupsRequest"))

(smithy/sdk/shapes:define-output describe-subnet-groups-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (subnet-groups :target-type subnet-group-list
                                   :member-name "SubnetGroups"))
                                 (:shape-name "DescribeSubnetGroupsResponse"))

(smithy/sdk/shapes:define-input describe-users-request common-lisp:nil
                                ((user-name :target-type user-name :member-name
                                  "UserName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeUsersRequest"))

(smithy/sdk/shapes:define-output describe-users-response common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "Users")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeUsersResponse"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error duplicate-user-name-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DuplicateUserNameFault")
                                (:error-name "DuplicateUserName")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure engine-version-info common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (engine-patch-version :target-type string
                                      :member-name "EnginePatchVersion")
                                     (parameter-group-family :target-type
                                      string :member-name
                                      "ParameterGroupFamily"))
                                    (:shape-name "EngineVersionInfo"))

(smithy/sdk/shapes:define-list engine-version-info-list :member
                               engine-version-info)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-name :target-type string
                                      :member-name "SourceName")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (date :target-type tstamp :member-name
                                      "Date"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-list :member (event :xml-name "Event"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input failover-shard-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (shard-name :target-type string :required
                                  common-lisp:t :member-name "ShardName"))
                                (:shape-name "FailoverShardRequest"))

(smithy/sdk/shapes:define-output failover-shard-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "FailoverShardResponse"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-value-list :member filter-value)

(smithy/sdk/shapes:define-enum input-authentication-type
    common-lisp:nil
  (:password "password")
  (:iam "iam"))

(smithy/sdk/shapes:define-error insufficient-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientClusterCapacityFault")
                                (:error-name "InsufficientClusterCapacity")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-aclstate-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidACLStateFault")
                                (:error-name "InvalidACLState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-arnfault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidARNFault")
                                (:error-name "InvalidARN") (:error-code 400)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-cluster-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidClusterStateFault")
                                (:error-name "InvalidClusterState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-credentials-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidCredentialsException")
                                (:error-name "InvalidCredentialsException")
                                (:error-code 408) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-kmskey-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidKMSKeyFault")
                                (:error-name "InvalidKMSKeyFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-multi-region-cluster-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidMultiRegionClusterStateFault")
                                (:error-name "InvalidMultiRegionClusterState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-node-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidNodeStateFault")
                                (:error-name "InvalidNodeState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-name "InvalidParameterCombination")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-parameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterGroupStateFault")
                                (:error-name "InvalidParameterGroupState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-name "InvalidParameterValue")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-snapshot-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSnapshotStateFault")
                                (:error-name "InvalidSnapshotState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet")
                                (:error-name "InvalidSubnet") (:error-code 400)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-user-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidUserStateFault")
                                (:error-name "InvalidUserState")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-name "InvalidVPCNetworkStateFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-enum ip-discovery
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 list-allowed-multi-region-cluster-updates-request common-lisp:nil
 ((multi-region-cluster-name :target-type string :required common-lisp:t
   :member-name "MultiRegionClusterName"))
 (:shape-name "ListAllowedMultiRegionClusterUpdatesRequest"))

(smithy/sdk/shapes:define-output
 list-allowed-multi-region-cluster-updates-response common-lisp:nil
 ((scale-up-node-types :target-type node-type-list :member-name
   "ScaleUpNodeTypes")
  (scale-down-node-types :target-type node-type-list :member-name
   "ScaleDownNodeTypes"))
 (:shape-name "ListAllowedMultiRegionClusterUpdatesResponse"))

(smithy/sdk/shapes:define-input list-allowed-node-type-updates-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName"))
                                (:shape-name
                                 "ListAllowedNodeTypeUpdatesRequest"))

(smithy/sdk/shapes:define-output list-allowed-node-type-updates-response
                                 common-lisp:nil
                                 ((scale-up-node-types :target-type
                                   node-type-list :member-name
                                   "ScaleUpNodeTypes")
                                  (scale-down-node-types :target-type
                                   node-type-list :member-name
                                   "ScaleDownNodeTypes"))
                                 (:shape-name
                                  "ListAllowedNodeTypeUpdatesResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-structure multi-region-cluster common-lisp:nil
                                    ((multi-region-cluster-name :target-type
                                      string :member-name
                                      "MultiRegionClusterName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (status :target-type string :member-name
                                      "Status")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (number-of-shards :target-type
                                      integer-optional :member-name
                                      "NumberOfShards")
                                     (clusters :target-type
                                      regional-cluster-list :member-name
                                      "Clusters")
                                     (multi-region-parameter-group-name
                                      :target-type string :member-name
                                      "MultiRegionParameterGroupName")
                                     (tlsenabled :target-type boolean-optional
                                      :member-name "TLSEnabled")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "MultiRegionCluster"))

(smithy/sdk/shapes:define-error multi-region-cluster-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "MultiRegionClusterAlreadyExistsFault")
                                (:error-name
                                 "MultiRegionClusterAlreadyExistsFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list multi-region-cluster-list :member
                               multi-region-cluster)

(smithy/sdk/shapes:define-error multi-region-cluster-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "MultiRegionClusterNotFoundFault")
                                (:error-name "MultiRegionClusterNotFound")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error multi-region-parameter-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "MultiRegionParameterGroupNotFoundFault")
                                (:error-name
                                 "MultiRegionParameterGroupNotFoundFault")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-enum network-type
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6")
  (:dual-stack "dual_stack"))

(smithy/sdk/shapes:define-list network-type-list :member network-type)

(smithy/sdk/shapes:define-error no-operation-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "NoOperationFault")
                                (:error-name "NoOperationFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure node common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint"))
                                    (:shape-name "Node"))

(smithy/sdk/shapes:define-list node-list :member (node :xml-name "Node"))

(smithy/sdk/shapes:define-error node-quota-for-cluster-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForClusterExceededFault")
                                (:error-name "NodeQuotaForClusterExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error node-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForCustomerExceededFault")
                                (:error-name "NodeQuotaForCustomerExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list node-type-list :member string)

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type string :member-name
                                      "Value")
                                     (description :target-type string
                                      :member-name "Description")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-structure parameter-group common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (family :target-type string :member-name
                                      "Family")
                                     (description :target-type string
                                      :member-name "Description")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "ParameterGroup"))

(smithy/sdk/shapes:define-error parameter-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ParameterGroupAlreadyExistsFault")
                                (:error-name "ParameterGroupAlreadyExists")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list parameter-group-list :member
                               (parameter-group :xml-name "ParameterGroup"))

(smithy/sdk/shapes:define-error parameter-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ParameterGroupNotFoundFault")
                                (:error-name "ParameterGroupNotFound")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error parameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ParameterGroupQuotaExceededFault")
                                (:error-name "ParameterGroupQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list parameter-name-list :member string)

(smithy/sdk/shapes:define-structure parameter-name-value common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue"))
                                    (:shape-name "ParameterNameValue"))

(smithy/sdk/shapes:define-list parameter-name-value-list :member
                               (parameter-name-value :xml-name
                                "ParameterNameValue"))

(smithy/sdk/shapes:define-list parameters-list :member
                               (parameter :xml-name "Parameter"))

(smithy/sdk/shapes:define-list password-list-input :member string)

(smithy/sdk/shapes:define-structure pending-modified-service-update
                                    common-lisp:nil
                                    ((service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (status :target-type service-update-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "PendingModifiedServiceUpdate"))

(smithy/sdk/shapes:define-list pending-modified-service-update-list :member
                               (pending-modified-service-update :xml-name
                                "PendingModifiedServiceUpdate"))

(smithy/sdk/shapes:define-input purchase-reserved-nodes-offering-request
                                common-lisp:nil
                                ((reserved-nodes-offering-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ReservedNodesOfferingId")
                                 (reservation-id :target-type string
                                  :member-name "ReservationId")
                                 (node-count :target-type integer-optional
                                  :member-name "NodeCount")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "PurchaseReservedNodesOfferingRequest"))

(smithy/sdk/shapes:define-output purchase-reserved-nodes-offering-response
                                 common-lisp:nil
                                 ((reserved-node :target-type reserved-node
                                   :member-name "ReservedNode"))
                                 (:shape-name
                                  "PurchaseReservedNodesOfferingResponse"))

(smithy/sdk/shapes:define-structure recurring-charge common-lisp:nil
                                    ((recurring-charge-amount :target-type
                                      double :member-name
                                      "RecurringChargeAmount")
                                     (recurring-charge-frequency :target-type
                                      string :member-name
                                      "RecurringChargeFrequency"))
                                    (:shape-name "RecurringCharge"))

(smithy/sdk/shapes:define-list recurring-charge-list :member
                               (recurring-charge :xml-name "RecurringCharge"))

(smithy/sdk/shapes:define-structure regional-cluster common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName")
                                     (region :target-type string :member-name
                                      "Region")
                                     (status :target-type string :member-name
                                      "Status")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "RegionalCluster"))

(smithy/sdk/shapes:define-list regional-cluster-list :member
                               (regional-cluster :xml-name "RegionalCluster"))

(smithy/sdk/shapes:define-structure replica-configuration-request
                                    common-lisp:nil
                                    ((replica-count :target-type integer
                                      :member-name "ReplicaCount"))
                                    (:shape-name "ReplicaConfigurationRequest"))

(smithy/sdk/shapes:define-structure reserved-node common-lisp:nil
                                    ((reservation-id :target-type string
                                      :member-name "ReservationId")
                                     (reserved-nodes-offering-id :target-type
                                      string :member-name
                                      "ReservedNodesOfferingId")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (node-count :target-type integer
                                      :member-name "NodeCount")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (state :target-type string :member-name
                                      "State")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "ReservedNode"))

(smithy/sdk/shapes:define-error reserved-node-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeAlreadyExistsFault")
                                (:error-name "ReservedNodeAlreadyExists")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list reserved-node-list :member
                               (reserved-node :xml-name "ReservedNode"))

(smithy/sdk/shapes:define-error reserved-node-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeNotFoundFault")
                                (:error-name "ReservedNodeNotFound")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error reserved-node-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeQuotaExceededFault")
                                (:error-name "ReservedNodeQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure reserved-nodes-offering common-lisp:nil
                                    ((reserved-nodes-offering-id :target-type
                                      string :member-name
                                      "ReservedNodesOfferingId")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name "ReservedNodesOffering"))

(smithy/sdk/shapes:define-list reserved-nodes-offering-list :member
                               (reserved-nodes-offering :xml-name
                                "ReservedNodesOffering"))

(smithy/sdk/shapes:define-error reserved-nodes-offering-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedNodesOfferingNotFoundFault")
                                (:error-name "ReservedNodesOfferingNotFound")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-input reset-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (all-parameters :target-type boolean
                                  :member-name "AllParameters")
                                 (parameter-names :target-type
                                  parameter-name-list :member-name
                                  "ParameterNames"))
                                (:shape-name "ResetParameterGroupRequest"))

(smithy/sdk/shapes:define-output reset-parameter-group-response common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "ResetParameterGroupResponse"))

(smithy/sdk/shapes:define-structure resharding-status common-lisp:nil
                                    ((slot-migration :target-type
                                      slot-migration :member-name
                                      "SlotMigration"))
                                    (:shape-name "ReshardingStatus"))

(smithy/sdk/shapes:define-list security-group-ids-list :member
                               (string :xml-name "SecurityGroupId"))

(smithy/sdk/shapes:define-structure security-group-membership common-lisp:nil
                                    ((security-group-id :target-type string
                                      :member-name "SecurityGroupId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "SecurityGroupMembership"))

(smithy/sdk/shapes:define-list security-group-membership-list :member
                               security-group-membership)

(smithy/sdk/shapes:define-error service-linked-role-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceLinkedRoleNotFoundFault")
                                (:error-name "ServiceLinkedRoleNotFoundFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure service-update common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName")
                                     (service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (release-date :target-type tstamp
                                      :member-name "ReleaseDate")
                                     (description :target-type string
                                      :member-name "Description")
                                     (status :target-type service-update-status
                                      :member-name "Status")
                                     (type :target-type service-update-type
                                      :member-name "Type")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (nodes-updated :target-type string
                                      :member-name "NodesUpdated")
                                     (auto-update-start-date :target-type
                                      tstamp :member-name
                                      "AutoUpdateStartDate"))
                                    (:shape-name "ServiceUpdate"))

(smithy/sdk/shapes:define-list service-update-list :member
                               (service-update :xml-name "ServiceUpdate"))

(smithy/sdk/shapes:define-error service-update-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceUpdateNotFoundFault")
                                (:error-name "ServiceUpdateNotFoundFault")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure service-update-request common-lisp:nil
                                    ((service-update-name-to-apply :target-type
                                      string :member-name
                                      "ServiceUpdateNameToApply"))
                                    (:shape-name "ServiceUpdateRequest"))

(smithy/sdk/shapes:define-enum service-update-status
    common-lisp:nil
  (:not-applied "available")
  (:in-progress "in-progress")
  (:complete "complete")
  (:scheduled "scheduled"))

(smithy/sdk/shapes:define-list service-update-status-list :member
                               service-update-status)

(smithy/sdk/shapes:define-enum service-update-type
    common-lisp:nil
  (:security-update "security-update"))

(smithy/sdk/shapes:define-structure shard common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (slots :target-type string :member-name
                                      "Slots")
                                     (nodes :target-type node-list :member-name
                                      "Nodes")
                                     (number-of-nodes :target-type
                                      integer-optional :member-name
                                      "NumberOfNodes"))
                                    (:shape-name "Shard"))

(smithy/sdk/shapes:define-structure shard-configuration common-lisp:nil
                                    ((slots :target-type string :member-name
                                      "Slots")
                                     (replica-count :target-type
                                      integer-optional :member-name
                                      "ReplicaCount"))
                                    (:shape-name "ShardConfiguration"))

(smithy/sdk/shapes:define-structure shard-configuration-request common-lisp:nil
                                    ((shard-count :target-type integer
                                      :member-name "ShardCount"))
                                    (:shape-name "ShardConfigurationRequest"))

(smithy/sdk/shapes:define-structure shard-detail common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (configuration :target-type
                                      shard-configuration :member-name
                                      "Configuration")
                                     (size :target-type string :member-name
                                      "Size")
                                     (snapshot-creation-time :target-type
                                      tstamp :member-name
                                      "SnapshotCreationTime"))
                                    (:shape-name "ShardDetail"))

(smithy/sdk/shapes:define-list shard-details :member shard-detail)

(smithy/sdk/shapes:define-list shard-list :member (shard :xml-name "Shard"))

(smithy/sdk/shapes:define-error shard-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ShardNotFoundFault")
                                (:error-name "ShardNotFoundFault")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error shards-per-cluster-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ShardsPerClusterQuotaExceededFault")
                                (:error-name "ShardsPerClusterQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure slot-migration common-lisp:nil
                                    ((progress-percentage :target-type double
                                      :member-name "ProgressPercentage"))
                                    (:shape-name "SlotMigration"))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (source :target-type string :member-name
                                      "Source")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (cluster-configuration :target-type
                                      cluster-configuration :member-name
                                      "ClusterConfiguration")
                                     (data-tiering :target-type
                                      data-tiering-status :member-name
                                      "DataTiering"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-error snapshot-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotAlreadyExistsFault")
                                (:error-name "SnapshotAlreadyExistsFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list snapshot-arns-list :member
                               (string :xml-name "SnapshotArn"))

(smithy/sdk/shapes:define-list snapshot-list :member snapshot)

(smithy/sdk/shapes:define-error snapshot-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotNotFoundFault")
                                (:error-name "SnapshotNotFoundFault")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error snapshot-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotQuotaExceededFault")
                                (:error-name "SnapshotQuotaExceededFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:node "node")
  (:parameter-group "parameter-group")
  (:subnet-group "subnet-group")
  (:cluster "cluster")
  (:user "user")
  (:acl "acl"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((identifier :target-type string
                                      :member-name "Identifier")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "AvailabilityZone")
                                     (supported-network-types :target-type
                                      network-type-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-structure subnet-group common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (supported-network-types :target-type
                                      network-type-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "SubnetGroup"))

(smithy/sdk/shapes:define-error subnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupAlreadyExistsFault")
                                (:error-name "SubnetGroupAlreadyExists")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error subnet-group-in-use-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupInUseFault")
                                (:error-name "SubnetGroupInUse")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list subnet-group-list :member subnet-group)

(smithy/sdk/shapes:define-error subnet-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupNotFoundFault")
                                (:error-name "SubnetGroupNotFoundFault")
                                (:error-code 404) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error subnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetGroupQuotaExceededFault")
                                (:error-name "SubnetGroupQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-error subnet-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetInUse")
                                (:error-name "SubnetInUse") (:error-code 400)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-not-allowed-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetNotAllowedFault")
                                (:error-name "SubnetNotAllowedFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-error subnet-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetQuotaExceededFault")
                                (:error-name "SubnetQuotaExceededFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-error tag-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagNotFoundFault")
                                (:error-name "TagNotFound") (:error-code 404)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-error tag-quota-per-resource-exceeded common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagQuotaPerResourceExceeded")
                                (:error-name "TagQuotaPerResourceExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type target-bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error test-failover-not-available-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TestFailoverNotAvailableFault")
                                (:error-name "TestFailoverNotAvailableFault")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-structure unprocessed-cluster common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName")
                                     (error-type :target-type string
                                      :member-name "ErrorType")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UnprocessedCluster"))

(smithy/sdk/shapes:define-list unprocessed-cluster-list :member
                               (unprocessed-cluster :xml-name
                                "UnprocessedCluster"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-aclrequest common-lisp:nil
                                ((aclname :target-type string :required
                                  common-lisp:t :member-name "ACLName")
                                 (user-names-to-add :target-type
                                  user-name-list-input :member-name
                                  "UserNamesToAdd")
                                 (user-names-to-remove :target-type
                                  user-name-list-input :member-name
                                  "UserNamesToRemove"))
                                (:shape-name "UpdateACLRequest"))

(smithy/sdk/shapes:define-output update-aclresponse common-lisp:nil
                                 ((acl :target-type acl :member-name "ACL"))
                                 (:shape-name "UpdateACLResponse"))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "ClusterName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (maintenance-window :target-type string
                                  :member-name "MaintenanceWindow")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (sns-topic-status :target-type string
                                  :member-name "SnsTopicStatus")
                                 (parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (replica-configuration :target-type
                                  replica-configuration-request :member-name
                                  "ReplicaConfiguration")
                                 (shard-configuration :target-type
                                  shard-configuration-request :member-name
                                  "ShardConfiguration")
                                 (aclname :target-type aclname :member-name
                                  "ACLName")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "UpdateClusterResponse"))

(smithy/sdk/shapes:define-input update-multi-region-cluster-request
                                common-lisp:nil
                                ((multi-region-cluster-name :target-type string
                                  :required common-lisp:t :member-name
                                  "MultiRegionClusterName")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (description :target-type string :member-name
                                  "Description")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (shard-configuration :target-type
                                  shard-configuration-request :member-name
                                  "ShardConfiguration")
                                 (multi-region-parameter-group-name
                                  :target-type string :member-name
                                  "MultiRegionParameterGroupName")
                                 (update-strategy :target-type update-strategy
                                  :member-name "UpdateStrategy"))
                                (:shape-name "UpdateMultiRegionClusterRequest"))

(smithy/sdk/shapes:define-output update-multi-region-cluster-response
                                 common-lisp:nil
                                 ((multi-region-cluster :target-type
                                   multi-region-cluster :member-name
                                   "MultiRegionCluster"))
                                 (:shape-name
                                  "UpdateMultiRegionClusterResponse"))

(smithy/sdk/shapes:define-input update-parameter-group-request common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (parameter-name-values :target-type
                                  parameter-name-value-list :required
                                  common-lisp:t :member-name
                                  "ParameterNameValues"))
                                (:shape-name "UpdateParameterGroupRequest"))

(smithy/sdk/shapes:define-output update-parameter-group-response
                                 common-lisp:nil
                                 ((parameter-group :target-type parameter-group
                                   :member-name "ParameterGroup"))
                                 (:shape-name "UpdateParameterGroupResponse"))

(smithy/sdk/shapes:define-enum update-strategy
    common-lisp:nil
  (:coordinated "coordinated")
  (:uncoordinated "uncoordinated"))

(smithy/sdk/shapes:define-input update-subnet-group-request common-lisp:nil
                                ((subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :member-name
                                  "SubnetIds"))
                                (:shape-name "UpdateSubnetGroupRequest"))

(smithy/sdk/shapes:define-output update-subnet-group-response common-lisp:nil
                                 ((subnet-group :target-type subnet-group
                                   :member-name "SubnetGroup"))
                                 (:shape-name "UpdateSubnetGroupResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName")
                                 (authentication-mode :target-type
                                  authentication-mode :member-name
                                  "AuthenticationMode")
                                 (access-string :target-type access-string
                                  :member-name "AccessString"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (access-string :target-type string
                                      :member-name "AccessString")
                                     (aclnames :target-type aclname-list
                                      :member-name "ACLNames")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (authentication :target-type
                                      authentication :member-name
                                      "Authentication")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-error user-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserAlreadyExistsFault")
                                (:error-name "UserAlreadyExists")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-name-list :member user-name)

(smithy/sdk/shapes:define-list user-name-list-input :member user-name)

(smithy/sdk/shapes:define-error user-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserNotFoundFault")
                                (:error-name "UserNotFound") (:error-code 404)
                                (:base-class memorydb-error))

(smithy/sdk/shapes:define-error user-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserQuotaExceededFault")
                                (:error-name "UserQuotaExceeded")
                                (:error-code 400) (:base-class memorydb-error))

(smithy/sdk/operation:define-operation batch-update-cluster :shape-name
                                       "BatchUpdateCluster" :input
                                       batch-update-cluster-request :output
                                       batch-update-cluster-response :errors
                                       (invalid-parameter-value-exception
                                        service-update-not-found-fault))

(smithy/sdk/operation:define-operation copy-snapshot :shape-name "CopySnapshot"
                                       :input copy-snapshot-request :output
                                       copy-snapshot-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-snapshot-state-fault
                                        service-linked-role-not-found-fault
                                        snapshot-already-exists-fault
                                        snapshot-not-found-fault
                                        snapshot-quota-exceeded-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-acl :shape-name "CreateACL"
                                       :input create-aclrequest :output
                                       create-aclresponse :errors
                                       (aclalready-exists-fault
                                        aclquota-exceeded-fault
                                        default-user-required
                                        duplicate-user-name-fault
                                        invalid-parameter-value-exception
                                        tag-quota-per-resource-exceeded
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (aclnot-found-fault
                                        cluster-already-exists-fault
                                        cluster-quota-for-customer-exceeded-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-aclstate-fault
                                        invalid-credentials-exception
                                        invalid-multi-region-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-vpcnetwork-state-fault
                                        multi-region-cluster-not-found-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        shards-per-cluster-quota-exceeded-fault
                                        subnet-group-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-multi-region-cluster :shape-name
                                       "CreateMultiRegionCluster" :input
                                       create-multi-region-cluster-request
                                       :output
                                       create-multi-region-cluster-response
                                       :errors
                                       (cluster-quota-for-customer-exceeded-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        multi-region-cluster-already-exists-fault
                                        multi-region-parameter-group-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-parameter-group :shape-name
                                       "CreateParameterGroup" :input
                                       create-parameter-group-request :output
                                       create-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-already-exists-fault
                                        parameter-group-quota-exceeded-fault
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-request :output
                                       create-snapshot-response :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        snapshot-already-exists-fault
                                        snapshot-quota-exceeded-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-subnet-group :shape-name
                                       "CreateSubnetGroup" :input
                                       create-subnet-group-request :output
                                       create-subnet-group-response :errors
                                       (invalid-subnet
                                        service-linked-role-not-found-fault
                                        subnet-group-already-exists-fault
                                        subnet-group-quota-exceeded-fault
                                        subnet-not-allowed-fault
                                        subnet-quota-exceeded-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (duplicate-user-name-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        tag-quota-per-resource-exceeded
                                        user-already-exists-fault
                                        user-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-acl :shape-name "DeleteACL"
                                       :input delete-aclrequest :output
                                       delete-aclresponse :errors
                                       (aclnot-found-fault
                                        invalid-aclstate-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        snapshot-already-exists-fault))

(smithy/sdk/operation:define-operation delete-multi-region-cluster :shape-name
                                       "DeleteMultiRegionCluster" :input
                                       delete-multi-region-cluster-request
                                       :output
                                       delete-multi-region-cluster-response
                                       :errors
                                       (invalid-multi-region-cluster-state-fault
                                        invalid-parameter-value-exception
                                        multi-region-cluster-not-found-fault))

(smithy/sdk/operation:define-operation delete-parameter-group :shape-name
                                       "DeleteParameterGroup" :input
                                       delete-parameter-group-request :output
                                       delete-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-snapshot :shape-name
                                       "DeleteSnapshot" :input
                                       delete-snapshot-request :output
                                       delete-snapshot-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-snapshot-state-fault
                                        service-linked-role-not-found-fault
                                        snapshot-not-found-fault))

(smithy/sdk/operation:define-operation delete-subnet-group :shape-name
                                       "DeleteSubnetGroup" :input
                                       delete-subnet-group-request :output
                                       delete-subnet-group-response :errors
                                       (service-linked-role-not-found-fault
                                        subnet-group-in-use-fault
                                        subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (invalid-parameter-value-exception
                                        invalid-user-state-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation describe-acls :shape-name "DescribeACLs"
                                       :input describe-acls-request :output
                                       describe-acls-response :errors
                                       (aclnot-found-fault
                                        invalid-parameter-combination-exception))

(smithy/sdk/operation:define-operation describe-clusters :shape-name
                                       "DescribeClusters" :input
                                       describe-clusters-request :output
                                       describe-clusters-response :errors
                                       (cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-engine-versions :shape-name
                                       "DescribeEngineVersions" :input
                                       describe-engine-versions-request :output
                                       describe-engine-versions-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-request :output
                                       describe-events-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-multi-region-clusters
                                       :shape-name
                                       "DescribeMultiRegionClusters" :input
                                       describe-multi-region-clusters-request
                                       :output
                                       describe-multi-region-clusters-response
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        multi-region-cluster-not-found-fault))

(smithy/sdk/operation:define-operation describe-parameter-groups :shape-name
                                       "DescribeParameterGroups" :input
                                       describe-parameter-groups-request
                                       :output
                                       describe-parameter-groups-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-parameters :shape-name
                                       "DescribeParameters" :input
                                       describe-parameters-request :output
                                       describe-parameters-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-reserved-nodes :shape-name
                                       "DescribeReservedNodes" :input
                                       describe-reserved-nodes-request :output
                                       describe-reserved-nodes-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-node-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-reserved-nodes-offerings
                                       :shape-name
                                       "DescribeReservedNodesOfferings" :input
                                       describe-reserved-nodes-offerings-request
                                       :output
                                       describe-reserved-nodes-offerings-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-nodes-offering-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation describe-service-updates :shape-name
                                       "DescribeServiceUpdates" :input
                                       describe-service-updates-request :output
                                       describe-service-updates-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-snapshots :shape-name
                                       "DescribeSnapshots" :input
                                       describe-snapshots-request :output
                                       describe-snapshots-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        snapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-subnet-groups :shape-name
                                       "DescribeSubnetGroups" :input
                                       describe-subnet-groups-request :output
                                       describe-subnet-groups-response :errors
                                       (service-linked-role-not-found-fault
                                        subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-users :shape-name
                                       "DescribeUsers" :input
                                       describe-users-request :output
                                       describe-users-response :errors
                                       (invalid-parameter-combination-exception
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation failover-shard :shape-name
                                       "FailoverShard" :input
                                       failover-shard-request :output
                                       failover-shard-response :errors
                                       (apicall-rate-for-customer-exceeded-fault
                                        cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-kmskey-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        shard-not-found-fault
                                        test-failover-not-available-fault))

(smithy/sdk/operation:define-operation
 list-allowed-multi-region-cluster-updates :shape-name
 "ListAllowedMultiRegionClusterUpdates" :input
 list-allowed-multi-region-cluster-updates-request :output
 list-allowed-multi-region-cluster-updates-response :errors
 (invalid-parameter-combination-exception invalid-parameter-value-exception
  multi-region-cluster-not-found-fault))

(smithy/sdk/operation:define-operation list-allowed-node-type-updates
                                       :shape-name "ListAllowedNodeTypeUpdates"
                                       :input
                                       list-allowed-node-type-updates-request
                                       :output
                                       list-allowed-node-type-updates-response
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (aclnot-found-fault
                                        cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        multi-region-cluster-not-found-fault
                                        multi-region-parameter-group-not-found-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        snapshot-not-found-fault
                                        subnet-group-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation purchase-reserved-nodes-offering
                                       :shape-name
                                       "PurchaseReservedNodesOffering" :input
                                       purchase-reserved-nodes-offering-request
                                       :output
                                       purchase-reserved-nodes-offering-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-node-already-exists-fault
                                        reserved-node-quota-exceeded-fault
                                        reserved-nodes-offering-not-found-fault
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation reset-parameter-group :shape-name
                                       "ResetParameterGroup" :input
                                       reset-parameter-group-request :output
                                       reset-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (aclnot-found-fault
                                        cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        invalid-parameter-value-exception
                                        multi-region-cluster-not-found-fault
                                        multi-region-parameter-group-not-found-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        snapshot-not-found-fault
                                        subnet-group-not-found-fault
                                        tag-quota-per-resource-exceeded
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (aclnot-found-fault
                                        cluster-not-found-fault
                                        invalid-arnfault
                                        invalid-cluster-state-fault
                                        invalid-parameter-value-exception
                                        multi-region-cluster-not-found-fault
                                        multi-region-parameter-group-not-found-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        snapshot-not-found-fault
                                        subnet-group-not-found-fault
                                        tag-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation update-acl :shape-name "UpdateACL"
                                       :input update-aclrequest :output
                                       update-aclresponse :errors
                                       (aclnot-found-fault
                                        default-user-required
                                        duplicate-user-name-fault
                                        invalid-aclstate-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-response :errors
                                       (aclnot-found-fault
                                        cluster-not-found-fault
                                        cluster-quota-for-customer-exceeded-fault
                                        invalid-aclstate-fault
                                        invalid-cluster-state-fault
                                        invalid-kmskey-fault
                                        invalid-node-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        no-operation-fault
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault
                                        shards-per-cluster-quota-exceeded-fault))

(smithy/sdk/operation:define-operation update-multi-region-cluster :shape-name
                                       "UpdateMultiRegionCluster" :input
                                       update-multi-region-cluster-request
                                       :output
                                       update-multi-region-cluster-response
                                       :errors
                                       (invalid-multi-region-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        multi-region-cluster-not-found-fault
                                        multi-region-parameter-group-not-found-fault))

(smithy/sdk/operation:define-operation update-parameter-group :shape-name
                                       "UpdateParameterGroup" :input
                                       update-parameter-group-request :output
                                       update-parameter-group-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-group-state-fault
                                        invalid-parameter-value-exception
                                        parameter-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation update-subnet-group :shape-name
                                       "UpdateSubnetGroup" :input
                                       update-subnet-group-request :output
                                       update-subnet-group-response :errors
                                       (invalid-subnet
                                        service-linked-role-not-found-fault
                                        subnet-group-not-found-fault
                                        subnet-in-use subnet-not-allowed-fault
                                        subnet-quota-exceeded-fault))

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-user-state-fault
                                        user-not-found-fault))
