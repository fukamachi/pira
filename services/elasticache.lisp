(uiop/package:define-package #:pira/elasticache (:use)
                             (:export #:azmode #:access-string
                              #:add-tags-to-resource #:allowed-node-group-id
                              #:amazon-elasti-cache-v9
                              #:auth-token-update-status
                              #:auth-token-update-strategy-type
                              #:authentication #:authentication-mode
                              #:authentication-type
                              #:authorize-cache-security-group-ingress
                              #:automatic-failover-status #:availability-zone
                              #:availability-zones-list
                              #:aws-query-error-message
                              #:batch-apply-update-action
                              #:batch-stop-update-action #:boolean
                              #:boolean-optional #:cache-cluster
                              #:cache-cluster-id-list #:cache-cluster-list
                              #:cache-engine-version
                              #:cache-engine-version-list #:cache-node
                              #:cache-node-ids-list #:cache-node-list
                              #:cache-node-type-specific-parameter
                              #:cache-node-type-specific-parameters-list
                              #:cache-node-type-specific-value
                              #:cache-node-type-specific-value-list
                              #:cache-node-update-status
                              #:cache-node-update-status-list
                              #:cache-parameter-group
                              #:cache-parameter-group-details
                              #:cache-parameter-group-list
                              #:cache-parameter-group-name-message
                              #:cache-parameter-group-status
                              #:cache-security-group
                              #:cache-security-group-membership
                              #:cache-security-group-membership-list
                              #:cache-security-group-name-list
                              #:cache-security-groups #:cache-subnet-group
                              #:cache-subnet-groups #:cache-usage-limits
                              #:change-type
                              #:cloud-watch-logs-destination-details
                              #:cluster-id-list #:cluster-mode
                              #:complete-migration #:configure-shard
                              #:copy-serverless-cache-snapshot #:copy-snapshot
                              #:create-cache-cluster
                              #:create-cache-parameter-group
                              #:create-cache-security-group
                              #:create-cache-subnet-group
                              #:create-global-replication-group
                              #:create-replication-group
                              #:create-serverless-cache
                              #:create-serverless-cache-snapshot
                              #:create-snapshot #:create-user
                              #:create-user-group #:customer-node-endpoint
                              #:customer-node-endpoint-list #:data-storage
                              #:data-storage-unit #:data-tiering-status
                              #:decrease-node-groups-in-global-replication-group
                              #:decrease-replica-count #:delete-cache-cluster
                              #:delete-cache-parameter-group
                              #:delete-cache-security-group
                              #:delete-cache-subnet-group
                              #:delete-global-replication-group
                              #:delete-replication-group
                              #:delete-serverless-cache
                              #:delete-serverless-cache-snapshot
                              #:delete-snapshot #:delete-user
                              #:delete-user-group #:describe-cache-clusters
                              #:describe-cache-engine-versions
                              #:describe-cache-parameter-groups
                              #:describe-cache-parameters
                              #:describe-cache-security-groups
                              #:describe-cache-subnet-groups
                              #:describe-engine-default-parameters
                              #:describe-events
                              #:describe-global-replication-groups
                              #:describe-replication-groups
                              #:describe-reserved-cache-nodes
                              #:describe-reserved-cache-nodes-offerings
                              #:describe-serverless-cache-snapshots
                              #:describe-serverless-caches
                              #:describe-service-updates #:describe-snapshots
                              #:describe-update-actions #:describe-user-groups
                              #:describe-users #:destination-details
                              #:destination-type
                              #:disassociate-global-replication-group #:double
                              #:ec2security-group #:ec2security-group-list
                              #:ecpuper-second #:endpoint #:engine-defaults
                              #:engine-type #:event #:event-list
                              #:exception-message
                              #:export-serverless-cache-snapshot
                              #:failover-global-replication-group #:filter
                              #:filter-list #:filter-name #:filter-value
                              #:filter-value-list #:global-node-group
                              #:global-node-group-id-list
                              #:global-node-group-list
                              #:global-replication-group
                              #:global-replication-group-info
                              #:global-replication-group-list
                              #:global-replication-group-member
                              #:global-replication-group-member-list
                              #:increase-node-groups-in-global-replication-group
                              #:increase-replica-count
                              #:input-authentication-type #:integer
                              #:integer-optional #:ip-discovery #:key-list
                              #:kinesis-firehose-destination-details
                              #:list-allowed-node-type-modifications
                              #:list-tags-for-resource
                              #:log-delivery-configuration
                              #:log-delivery-configuration-list
                              #:log-delivery-configuration-request
                              #:log-delivery-configuration-request-list
                              #:log-delivery-configuration-status #:log-format
                              #:log-type #:modify-cache-cluster
                              #:modify-cache-parameter-group
                              #:modify-cache-subnet-group
                              #:modify-global-replication-group
                              #:modify-replication-group
                              #:modify-replication-group-shard-configuration
                              #:modify-serverless-cache #:modify-user
                              #:modify-user-group #:multi-azstatus
                              #:network-type #:network-type-list #:node-group
                              #:node-group-configuration
                              #:node-group-configuration-list #:node-group-list
                              #:node-group-member #:node-group-member-list
                              #:node-group-member-update-status
                              #:node-group-member-update-status-list
                              #:node-group-update-status
                              #:node-group-update-status-list
                              #:node-groups-to-remove-list
                              #:node-groups-to-retain-list #:node-snapshot
                              #:node-snapshot-list #:node-type-list
                              #:node-update-initiated-by #:node-update-status
                              #:notification-configuration #:outpost-arns-list
                              #:outpost-mode #:parameter #:parameter-name-value
                              #:parameter-name-value-list #:parameters-list
                              #:password-list-input
                              #:pending-automatic-failover-status
                              #:pending-log-delivery-configuration
                              #:pending-log-delivery-configuration-list
                              #:pending-modified-values
                              #:preferred-availability-zone-list
                              #:preferred-outpost-arn-list
                              #:processed-update-action
                              #:processed-update-action-list
                              #:purchase-reserved-cache-nodes-offering
                              #:rebalance-slots-in-global-replication-group
                              #:reboot-cache-cluster #:recurring-charge
                              #:recurring-charge-list #:regional-configuration
                              #:regional-configuration-list
                              #:remove-replicas-list
                              #:remove-tags-from-resource
                              #:replica-configuration-list #:replication-group
                              #:replication-group-id-list
                              #:replication-group-list
                              #:replication-group-outpost-arn-list
                              #:replication-group-pending-modified-values
                              #:reserved-cache-node #:reserved-cache-node-list
                              #:reserved-cache-nodes-offering
                              #:reserved-cache-nodes-offering-list
                              #:reset-cache-parameter-group
                              #:resharding-configuration
                              #:resharding-configuration-list
                              #:resharding-status
                              #:revoke-cache-security-group-ingress
                              #:scale-config #:security-group-ids-list
                              #:security-group-membership
                              #:security-group-membership-list
                              #:serverless-cache
                              #:serverless-cache-configuration
                              #:serverless-cache-list
                              #:serverless-cache-snapshot
                              #:serverless-cache-snapshot-list #:service-update
                              #:service-update-list #:service-update-severity
                              #:service-update-status
                              #:service-update-status-list
                              #:service-update-type #:sla-met #:slot-migration
                              #:snapshot #:snapshot-arns-list #:snapshot-list
                              #:source-type #:start-migration #:string #:subnet
                              #:subnet-identifier-list #:subnet-ids-list
                              #:subnet-list #:subnet-outpost #:tstamp #:tag
                              #:tag-list #:tag-list-message #:test-failover
                              #:test-migration #:time-range-filter
                              #:transit-encryption-mode
                              #:ugreplication-group-id-list
                              #:ugserverless-cache-id-list
                              #:unprocessed-update-action
                              #:unprocessed-update-action-list #:update-action
                              #:update-action-list
                              #:update-action-results-message
                              #:update-action-status
                              #:update-action-status-list #:user #:user-group
                              #:user-group-id #:user-group-id-list
                              #:user-group-id-list-input #:user-group-list
                              #:user-group-pending-changes
                              #:user-groups-update-status #:user-id
                              #:user-id-list #:user-id-list-input #:user-list
                              #:user-name))
(common-lisp:in-package #:pira/elasticache)

(smithy/sdk/service:define-service amazon-elasti-cache-v9 :shape-name
                                   "AmazonElastiCacheV9" :version "2015-02-02"
                                   :title "Amazon ElastiCache" :xml-namespace
                                   '(:uri
                                     "http://elasticache.amazonaws.com/doc/2015-02-02/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ElastiCache")
                                      ("arnNamespace" . "elasticache")
                                      ("cloudFormationName" . "ElastiCache")
                                      ("cloudTrailEventSource"
                                       . "elasticache.amazonaws.com")
                                      ("endpointPrefix" . "elasticache"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticache"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-error apicall-rate-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "APICallRateForCustomerExceededFault")
                                (:error-name "APICallRateForCustomerExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum azmode
    common-lisp:nil
  (:single-az "single-az")
  (:cross-az "cross-az"))

(smithy/sdk/shapes:define-type access-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-tags-to-resource-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceMessage"))

(smithy/sdk/shapes:define-type allowed-node-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output allowed-node-type-modifications-message
                                 common-lisp:nil
                                 ((scale-up-modifications :target-type
                                   node-type-list :member-name
                                   "ScaleUpModifications")
                                  (scale-down-modifications :target-type
                                   node-type-list :member-name
                                   "ScaleDownModifications"))
                                 (:shape-name
                                  "AllowedNodeTypeModificationsMessage"))

(smithy/sdk/shapes:define-enum auth-token-update-status
    common-lisp:nil
  (:setting "SETTING")
  (:rotating "ROTATING"))

(smithy/sdk/shapes:define-enum auth-token-update-strategy-type
    common-lisp:nil
  (:set "SET")
  (:rotate "ROTATE")
  (:delete "DELETE"))

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

(smithy/sdk/shapes:define-error authorization-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationAlreadyExistsFault")
                                (:error-name "AuthorizationAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error authorization-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationNotFoundFault")
                                (:error-name "AuthorizationNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-input authorize-cache-security-group-ingress-message
                                common-lisp:nil
                                ((cache-security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSecurityGroupName")
                                 (ec2security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "EC2SecurityGroupName")
                                 (ec2security-group-owner-id :target-type
                                  string :required common-lisp:t :member-name
                                  "EC2SecurityGroupOwnerId"))
                                (:shape-name
                                 "AuthorizeCacheSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output authorize-cache-security-group-ingress-result
                                 common-lisp:nil
                                 ((cache-security-group :target-type
                                   cache-security-group :member-name
                                   "CacheSecurityGroup"))
                                 (:shape-name
                                  "AuthorizeCacheSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-enum automatic-failover-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:enabling "enabling")
  (:disabling "disabling"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zones-list :member
                               (string :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-type aws-query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-apply-update-action-message
                                common-lisp:nil
                                ((replication-group-ids :target-type
                                  replication-group-id-list :member-name
                                  "ReplicationGroupIds")
                                 (cache-cluster-ids :target-type
                                  cache-cluster-id-list :member-name
                                  "CacheClusterIds")
                                 (service-update-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceUpdateName"))
                                (:shape-name "BatchApplyUpdateActionMessage"))

(smithy/sdk/shapes:define-input batch-stop-update-action-message
                                common-lisp:nil
                                ((replication-group-ids :target-type
                                  replication-group-id-list :member-name
                                  "ReplicationGroupIds")
                                 (cache-cluster-ids :target-type
                                  cache-cluster-id-list :member-name
                                  "CacheClusterIds")
                                 (service-update-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceUpdateName"))
                                (:shape-name "BatchStopUpdateActionMessage"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cache-cluster common-lisp:nil
                                    ((cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (configuration-endpoint :target-type
                                      endpoint :member-name
                                      "ConfigurationEndpoint")
                                     (client-download-landing-page :target-type
                                      string :member-name
                                      "ClientDownloadLandingPage")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (cache-cluster-status :target-type string
                                      :member-name "CacheClusterStatus")
                                     (num-cache-nodes :target-type
                                      integer-optional :member-name
                                      "NumCacheNodes")
                                     (preferred-availability-zone :target-type
                                      string :member-name
                                      "PreferredAvailabilityZone")
                                     (preferred-outpost-arn :target-type string
                                      :member-name "PreferredOutpostArn")
                                     (cache-cluster-create-time :target-type
                                      tstamp :member-name
                                      "CacheClusterCreateTime")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (pending-modified-values :target-type
                                      pending-modified-values :member-name
                                      "PendingModifiedValues")
                                     (notification-configuration :target-type
                                      notification-configuration :member-name
                                      "NotificationConfiguration")
                                     (cache-security-groups :target-type
                                      cache-security-group-membership-list
                                      :member-name "CacheSecurityGroups")
                                     (cache-parameter-group :target-type
                                      cache-parameter-group-status :member-name
                                      "CacheParameterGroup")
                                     (cache-subnet-group-name :target-type
                                      string :member-name
                                      "CacheSubnetGroupName")
                                     (cache-nodes :target-type cache-node-list
                                      :member-name "CacheNodes")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (security-groups :target-type
                                      security-group-membership-list
                                      :member-name "SecurityGroups")
                                     (replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (snapshot-window :target-type string
                                      :member-name "SnapshotWindow")
                                     (auth-token-enabled :target-type
                                      boolean-optional :member-name
                                      "AuthTokenEnabled")
                                     (auth-token-last-modified-date
                                      :target-type tstamp :member-name
                                      "AuthTokenLastModifiedDate")
                                     (transit-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "TransitEncryptionEnabled")
                                     (at-rest-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "AtRestEncryptionEnabled")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (replication-group-log-delivery-enabled
                                      :target-type boolean :member-name
                                      "ReplicationGroupLogDeliveryEnabled")
                                     (log-delivery-configurations :target-type
                                      log-delivery-configuration-list
                                      :member-name "LogDeliveryConfigurations")
                                     (network-type :target-type network-type
                                      :member-name "NetworkType")
                                     (ip-discovery :target-type ip-discovery
                                      :member-name "IpDiscovery")
                                     (transit-encryption-mode :target-type
                                      transit-encryption-mode :member-name
                                      "TransitEncryptionMode"))
                                    (:shape-name "CacheCluster"))

(smithy/sdk/shapes:define-error cache-cluster-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheClusterAlreadyExistsFault")
                                (:error-name "CacheClusterAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cache-cluster-id-list :member string)

(smithy/sdk/shapes:define-list cache-cluster-list :member
                               (cache-cluster :xml-name "CacheCluster"))

(smithy/sdk/shapes:define-output cache-cluster-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cache-clusters :target-type
                                   cache-cluster-list :member-name
                                   "CacheClusters"))
                                 (:shape-name "CacheClusterMessage"))

(smithy/sdk/shapes:define-error cache-cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheClusterNotFoundFault")
                                (:error-name "CacheClusterNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure cache-engine-version common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (cache-parameter-group-family :target-type
                                      string :member-name
                                      "CacheParameterGroupFamily")
                                     (cache-engine-description :target-type
                                      string :member-name
                                      "CacheEngineDescription")
                                     (cache-engine-version-description
                                      :target-type string :member-name
                                      "CacheEngineVersionDescription"))
                                    (:shape-name "CacheEngineVersion"))

(smithy/sdk/shapes:define-list cache-engine-version-list :member
                               (cache-engine-version :xml-name
                                "CacheEngineVersion"))

(smithy/sdk/shapes:define-output cache-engine-version-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cache-engine-versions :target-type
                                   cache-engine-version-list :member-name
                                   "CacheEngineVersions"))
                                 (:shape-name "CacheEngineVersionMessage"))

(smithy/sdk/shapes:define-structure cache-node common-lisp:nil
                                    ((cache-node-id :target-type string
                                      :member-name "CacheNodeId")
                                     (cache-node-status :target-type string
                                      :member-name "CacheNodeStatus")
                                     (cache-node-create-time :target-type
                                      tstamp :member-name
                                      "CacheNodeCreateTime")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (parameter-group-status :target-type
                                      string :member-name
                                      "ParameterGroupStatus")
                                     (source-cache-node-id :target-type string
                                      :member-name "SourceCacheNodeId")
                                     (customer-availability-zone :target-type
                                      string :member-name
                                      "CustomerAvailabilityZone")
                                     (customer-outpost-arn :target-type string
                                      :member-name "CustomerOutpostArn"))
                                    (:shape-name "CacheNode"))

(smithy/sdk/shapes:define-list cache-node-ids-list :member
                               (string :xml-name "CacheNodeId"))

(smithy/sdk/shapes:define-list cache-node-list :member
                               (cache-node :xml-name "CacheNode"))

(smithy/sdk/shapes:define-structure cache-node-type-specific-parameter
                                    common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (source :target-type string :member-name
                                      "Source")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (cache-node-type-specific-values
                                      :target-type
                                      cache-node-type-specific-value-list
                                      :member-name
                                      "CacheNodeTypeSpecificValues")
                                     (change-type :target-type change-type
                                      :member-name "ChangeType"))
                                    (:shape-name
                                     "CacheNodeTypeSpecificParameter"))

(smithy/sdk/shapes:define-list cache-node-type-specific-parameters-list :member
                               (cache-node-type-specific-parameter :xml-name
                                "CacheNodeTypeSpecificParameter"))

(smithy/sdk/shapes:define-structure cache-node-type-specific-value
                                    common-lisp:nil
                                    ((cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "CacheNodeTypeSpecificValue"))

(smithy/sdk/shapes:define-list cache-node-type-specific-value-list :member
                               (cache-node-type-specific-value :xml-name
                                "CacheNodeTypeSpecificValue"))

(smithy/sdk/shapes:define-structure cache-node-update-status common-lisp:nil
                                    ((cache-node-id :target-type string
                                      :member-name "CacheNodeId")
                                     (node-update-status :target-type
                                      node-update-status :member-name
                                      "NodeUpdateStatus")
                                     (node-deletion-date :target-type tstamp
                                      :member-name "NodeDeletionDate")
                                     (node-update-start-date :target-type
                                      tstamp :member-name
                                      "NodeUpdateStartDate")
                                     (node-update-end-date :target-type tstamp
                                      :member-name "NodeUpdateEndDate")
                                     (node-update-initiated-by :target-type
                                      node-update-initiated-by :member-name
                                      "NodeUpdateInitiatedBy")
                                     (node-update-initiated-date :target-type
                                      tstamp :member-name
                                      "NodeUpdateInitiatedDate")
                                     (node-update-status-modified-date
                                      :target-type tstamp :member-name
                                      "NodeUpdateStatusModifiedDate"))
                                    (:shape-name "CacheNodeUpdateStatus"))

(smithy/sdk/shapes:define-list cache-node-update-status-list :member
                               (cache-node-update-status :xml-name
                                "CacheNodeUpdateStatus"))

(smithy/sdk/shapes:define-structure cache-parameter-group common-lisp:nil
                                    ((cache-parameter-group-name :target-type
                                      string :member-name
                                      "CacheParameterGroupName")
                                     (cache-parameter-group-family :target-type
                                      string :member-name
                                      "CacheParameterGroupFamily")
                                     (description :target-type string
                                      :member-name "Description")
                                     (is-global :target-type boolean
                                      :member-name "IsGlobal")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "CacheParameterGroup"))

(smithy/sdk/shapes:define-error cache-parameter-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheParameterGroupAlreadyExistsFault")
                                (:error-name
                                 "CacheParameterGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cache-parameter-group-details
                                    common-lisp:nil
                                    ((marker :target-type string :member-name
                                      "Marker")
                                     (parameters :target-type parameters-list
                                      :member-name "Parameters")
                                     (cache-node-type-specific-parameters
                                      :target-type
                                      cache-node-type-specific-parameters-list
                                      :member-name
                                      "CacheNodeTypeSpecificParameters"))
                                    (:shape-name "CacheParameterGroupDetails"))

(smithy/sdk/shapes:define-list cache-parameter-group-list :member
                               (cache-parameter-group :xml-name
                                "CacheParameterGroup"))

(smithy/sdk/shapes:define-structure cache-parameter-group-name-message
                                    common-lisp:nil
                                    ((cache-parameter-group-name :target-type
                                      string :member-name
                                      "CacheParameterGroupName"))
                                    (:shape-name
                                     "CacheParameterGroupNameMessage"))

(smithy/sdk/shapes:define-error cache-parameter-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheParameterGroupNotFoundFault")
                                (:error-name "CacheParameterGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cache-parameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheParameterGroupQuotaExceededFault")
                                (:error-name
                                 "CacheParameterGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cache-parameter-group-status
                                    common-lisp:nil
                                    ((cache-parameter-group-name :target-type
                                      string :member-name
                                      "CacheParameterGroupName")
                                     (parameter-apply-status :target-type
                                      string :member-name
                                      "ParameterApplyStatus")
                                     (cache-node-ids-to-reboot :target-type
                                      cache-node-ids-list :member-name
                                      "CacheNodeIdsToReboot"))
                                    (:shape-name "CacheParameterGroupStatus"))

(smithy/sdk/shapes:define-output cache-parameter-groups-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cache-parameter-groups :target-type
                                   cache-parameter-group-list :member-name
                                   "CacheParameterGroups"))
                                 (:shape-name "CacheParameterGroupsMessage"))

(smithy/sdk/shapes:define-structure cache-security-group common-lisp:nil
                                    ((owner-id :target-type string :member-name
                                      "OwnerId")
                                     (cache-security-group-name :target-type
                                      string :member-name
                                      "CacheSecurityGroupName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (ec2security-groups :target-type
                                      ec2security-group-list :member-name
                                      "EC2SecurityGroups")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "CacheSecurityGroup"))

(smithy/sdk/shapes:define-error cache-security-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheSecurityGroupAlreadyExistsFault")
                                (:error-name "CacheSecurityGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cache-security-group-membership
                                    common-lisp:nil
                                    ((cache-security-group-name :target-type
                                      string :member-name
                                      "CacheSecurityGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name
                                     "CacheSecurityGroupMembership"))

(smithy/sdk/shapes:define-list cache-security-group-membership-list :member
                               (cache-security-group-membership :xml-name
                                "CacheSecurityGroup"))

(smithy/sdk/shapes:define-output cache-security-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cache-security-groups :target-type
                                   cache-security-groups :member-name
                                   "CacheSecurityGroups"))
                                 (:shape-name "CacheSecurityGroupMessage"))

(smithy/sdk/shapes:define-list cache-security-group-name-list :member
                               (string :xml-name "CacheSecurityGroupName"))

(smithy/sdk/shapes:define-error cache-security-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheSecurityGroupNotFoundFault")
                                (:error-name "CacheSecurityGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cache-security-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheSecurityGroupQuotaExceededFault")
                                (:error-name
                                 "QuotaExceeded.CacheSecurityGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cache-security-groups :member
                               (cache-security-group :xml-name
                                "CacheSecurityGroup"))

(smithy/sdk/shapes:define-structure cache-subnet-group common-lisp:nil
                                    ((cache-subnet-group-name :target-type
                                      string :member-name
                                      "CacheSubnetGroupName")
                                     (cache-subnet-group-description
                                      :target-type string :member-name
                                      "CacheSubnetGroupDescription")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (supported-network-types :target-type
                                      network-type-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "CacheSubnetGroup"))

(smithy/sdk/shapes:define-error cache-subnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheSubnetGroupAlreadyExistsFault")
                                (:error-name "CacheSubnetGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cache-subnet-group-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheSubnetGroupInUse")
                                (:error-name "CacheSubnetGroupInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-output cache-subnet-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cache-subnet-groups :target-type
                                   cache-subnet-groups :member-name
                                   "CacheSubnetGroups"))
                                 (:shape-name "CacheSubnetGroupMessage"))

(smithy/sdk/shapes:define-error cache-subnet-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheSubnetGroupNotFoundFault")
                                (:error-name "CacheSubnetGroupNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cache-subnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CacheSubnetGroupQuotaExceededFault")
                                (:error-name "CacheSubnetGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cache-subnet-groups :member
                               (cache-subnet-group :xml-name
                                "CacheSubnetGroup"))

(smithy/sdk/shapes:define-error cache-subnet-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CacheSubnetQuotaExceededFault")
                                (:error-name "CacheSubnetQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cache-usage-limits common-lisp:nil
                                    ((data-storage :target-type data-storage
                                      :member-name "DataStorage")
                                     (ecpuper-second :target-type
                                      ecpuper-second :member-name
                                      "ECPUPerSecond"))
                                    (:shape-name "CacheUsageLimits"))

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:immediate "immediate")
  (:requires-reboot "requires-reboot"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination-details
                                    common-lisp:nil
                                    ((log-group :target-type string
                                      :member-name "LogGroup"))
                                    (:shape-name
                                     "CloudWatchLogsDestinationDetails"))

(smithy/sdk/shapes:define-list cluster-id-list :member
                               (string :xml-name "ClusterId"))

(smithy/sdk/shapes:define-enum cluster-mode
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:compatible "compatible"))

(smithy/sdk/shapes:define-error cluster-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterQuotaForCustomerExceededFault")
                                (:error-name "ClusterQuotaForCustomerExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input complete-migration-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "CompleteMigrationMessage"))

(smithy/sdk/shapes:define-output complete-migration-response common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "CompleteMigrationResponse"))

(smithy/sdk/shapes:define-structure configure-shard common-lisp:nil
                                    ((node-group-id :target-type
                                      allowed-node-group-id :required
                                      common-lisp:t :member-name "NodeGroupId")
                                     (new-replica-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "NewReplicaCount")
                                     (preferred-availability-zones :target-type
                                      preferred-availability-zone-list
                                      :member-name
                                      "PreferredAvailabilityZones")
                                     (preferred-outpost-arns :target-type
                                      preferred-outpost-arn-list :member-name
                                      "PreferredOutpostArns"))
                                    (:shape-name "ConfigureShard"))

(smithy/sdk/shapes:define-input copy-serverless-cache-snapshot-request
                                common-lisp:nil
                                ((source-serverless-cache-snapshot-name
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "SourceServerlessCacheSnapshotName")
                                 (target-serverless-cache-snapshot-name
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetServerlessCacheSnapshotName")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CopyServerlessCacheSnapshotRequest"))

(smithy/sdk/shapes:define-output copy-serverless-cache-snapshot-response
                                 common-lisp:nil
                                 ((serverless-cache-snapshot :target-type
                                   serverless-cache-snapshot :member-name
                                   "ServerlessCacheSnapshot"))
                                 (:shape-name
                                  "CopyServerlessCacheSnapshotResponse"))

(smithy/sdk/shapes:define-input copy-snapshot-message common-lisp:nil
                                ((source-snapshot-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceSnapshotName")
                                 (target-snapshot-name :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetSnapshotName")
                                 (target-bucket :target-type string
                                  :member-name "TargetBucket")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopySnapshotMessage"))

(smithy/sdk/shapes:define-output copy-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CopySnapshotResult"))

(smithy/sdk/shapes:define-input create-cache-cluster-message common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheClusterId")
                                 (replication-group-id :target-type string
                                  :member-name "ReplicationGroupId")
                                 (azmode :target-type azmode :member-name
                                  "AZMode")
                                 (preferred-availability-zone :target-type
                                  string :member-name
                                  "PreferredAvailabilityZone")
                                 (preferred-availability-zones :target-type
                                  preferred-availability-zone-list :member-name
                                  "PreferredAvailabilityZones")
                                 (num-cache-nodes :target-type integer-optional
                                  :member-name "NumCacheNodes")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (cache-subnet-group-name :target-type string
                                  :member-name "CacheSubnetGroupName")
                                 (cache-security-group-names :target-type
                                  cache-security-group-name-list :member-name
                                  "CacheSecurityGroupNames")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (snapshot-arns :target-type snapshot-arns-list
                                  :member-name "SnapshotArns")
                                 (snapshot-name :target-type string
                                  :member-name "SnapshotName")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (auth-token :target-type string :member-name
                                  "AuthToken")
                                 (outpost-mode :target-type outpost-mode
                                  :member-name "OutpostMode")
                                 (preferred-outpost-arn :target-type string
                                  :member-name "PreferredOutpostArn")
                                 (preferred-outpost-arns :target-type
                                  preferred-outpost-arn-list :member-name
                                  "PreferredOutpostArns")
                                 (log-delivery-configurations :target-type
                                  log-delivery-configuration-request-list
                                  :member-name "LogDeliveryConfigurations")
                                 (transit-encryption-enabled :target-type
                                  boolean-optional :member-name
                                  "TransitEncryptionEnabled")
                                 (network-type :target-type network-type
                                  :member-name "NetworkType")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery"))
                                (:shape-name "CreateCacheClusterMessage"))

(smithy/sdk/shapes:define-output create-cache-cluster-result common-lisp:nil
                                 ((cache-cluster :target-type cache-cluster
                                   :member-name "CacheCluster"))
                                 (:shape-name "CreateCacheClusterResult"))

(smithy/sdk/shapes:define-input create-cache-parameter-group-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupName")
                                 (cache-parameter-group-family :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupFamily")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateCacheParameterGroupMessage"))

(smithy/sdk/shapes:define-output create-cache-parameter-group-result
                                 common-lisp:nil
                                 ((cache-parameter-group :target-type
                                   cache-parameter-group :member-name
                                   "CacheParameterGroup"))
                                 (:shape-name
                                  "CreateCacheParameterGroupResult"))

(smithy/sdk/shapes:define-input create-cache-security-group-message
                                common-lisp:nil
                                ((cache-security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSecurityGroupName")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateCacheSecurityGroupMessage"))

(smithy/sdk/shapes:define-output create-cache-security-group-result
                                 common-lisp:nil
                                 ((cache-security-group :target-type
                                   cache-security-group :member-name
                                   "CacheSecurityGroup"))
                                 (:shape-name "CreateCacheSecurityGroupResult"))

(smithy/sdk/shapes:define-input create-cache-subnet-group-message
                                common-lisp:nil
                                ((cache-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSubnetGroupName")
                                 (cache-subnet-group-description :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateCacheSubnetGroupMessage"))

(smithy/sdk/shapes:define-output create-cache-subnet-group-result
                                 common-lisp:nil
                                 ((cache-subnet-group :target-type
                                   cache-subnet-group :member-name
                                   "CacheSubnetGroup"))
                                 (:shape-name "CreateCacheSubnetGroupResult"))

(smithy/sdk/shapes:define-input create-global-replication-group-message
                                common-lisp:nil
                                ((global-replication-group-id-suffix
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "GlobalReplicationGroupIdSuffix")
                                 (global-replication-group-description
                                  :target-type string :member-name
                                  "GlobalReplicationGroupDescription")
                                 (primary-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "PrimaryReplicationGroupId"))
                                (:shape-name
                                 "CreateGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output create-global-replication-group-result
                                 common-lisp:nil
                                 ((global-replication-group :target-type
                                   global-replication-group :member-name
                                   "GlobalReplicationGroup"))
                                 (:shape-name
                                  "CreateGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input create-replication-group-message
                                common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (replication-group-description :target-type
                                  string :required common-lisp:t :member-name
                                  "ReplicationGroupDescription")
                                 (global-replication-group-id :target-type
                                  string :member-name
                                  "GlobalReplicationGroupId")
                                 (primary-cluster-id :target-type string
                                  :member-name "PrimaryClusterId")
                                 (automatic-failover-enabled :target-type
                                  boolean-optional :member-name
                                  "AutomaticFailoverEnabled")
                                 (multi-azenabled :target-type boolean-optional
                                  :member-name "MultiAZEnabled")
                                 (num-cache-clusters :target-type
                                  integer-optional :member-name
                                  "NumCacheClusters")
                                 (preferred-cache-cluster-azs :target-type
                                  availability-zones-list :member-name
                                  "PreferredCacheClusterAZs")
                                 (num-node-groups :target-type integer-optional
                                  :member-name "NumNodeGroups")
                                 (replicas-per-node-group :target-type
                                  integer-optional :member-name
                                  "ReplicasPerNodeGroup")
                                 (node-group-configuration :target-type
                                  node-group-configuration-list :member-name
                                  "NodeGroupConfiguration")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (cache-subnet-group-name :target-type string
                                  :member-name "CacheSubnetGroupName")
                                 (cache-security-group-names :target-type
                                  cache-security-group-name-list :member-name
                                  "CacheSecurityGroupNames")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (snapshot-arns :target-type snapshot-arns-list
                                  :member-name "SnapshotArns")
                                 (snapshot-name :target-type string
                                  :member-name "SnapshotName")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (auth-token :target-type string :member-name
                                  "AuthToken")
                                 (transit-encryption-enabled :target-type
                                  boolean-optional :member-name
                                  "TransitEncryptionEnabled")
                                 (at-rest-encryption-enabled :target-type
                                  boolean-optional :member-name
                                  "AtRestEncryptionEnabled")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (user-group-ids :target-type
                                  user-group-id-list-input :member-name
                                  "UserGroupIds")
                                 (log-delivery-configurations :target-type
                                  log-delivery-configuration-request-list
                                  :member-name "LogDeliveryConfigurations")
                                 (data-tiering-enabled :target-type
                                  boolean-optional :member-name
                                  "DataTieringEnabled")
                                 (network-type :target-type network-type
                                  :member-name "NetworkType")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery")
                                 (transit-encryption-mode :target-type
                                  transit-encryption-mode :member-name
                                  "TransitEncryptionMode")
                                 (cluster-mode :target-type cluster-mode
                                  :member-name "ClusterMode")
                                 (serverless-cache-snapshot-name :target-type
                                  string :member-name
                                  "ServerlessCacheSnapshotName"))
                                (:shape-name "CreateReplicationGroupMessage"))

(smithy/sdk/shapes:define-output create-replication-group-result
                                 common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "CreateReplicationGroupResult"))

(smithy/sdk/shapes:define-input create-serverless-cache-request common-lisp:nil
                                ((serverless-cache-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServerlessCacheName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (major-engine-version :target-type string
                                  :member-name "MajorEngineVersion")
                                 (cache-usage-limits :target-type
                                  cache-usage-limits :member-name
                                  "CacheUsageLimits")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (snapshot-arns-to-restore :target-type
                                  snapshot-arns-list :member-name
                                  "SnapshotArnsToRestore")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (user-group-id :target-type string
                                  :member-name "UserGroupId")
                                 (subnet-ids :target-type subnet-ids-list
                                  :member-name "SubnetIds")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (daily-snapshot-time :target-type string
                                  :member-name "DailySnapshotTime"))
                                (:shape-name "CreateServerlessCacheRequest"))

(smithy/sdk/shapes:define-output create-serverless-cache-response
                                 common-lisp:nil
                                 ((serverless-cache :target-type
                                   serverless-cache :member-name
                                   "ServerlessCache"))
                                 (:shape-name "CreateServerlessCacheResponse"))

(smithy/sdk/shapes:define-input create-serverless-cache-snapshot-request
                                common-lisp:nil
                                ((serverless-cache-snapshot-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ServerlessCacheSnapshotName")
                                 (serverless-cache-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServerlessCacheName")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateServerlessCacheSnapshotRequest"))

(smithy/sdk/shapes:define-output create-serverless-cache-snapshot-response
                                 common-lisp:nil
                                 ((serverless-cache-snapshot :target-type
                                   serverless-cache-snapshot :member-name
                                   "ServerlessCacheSnapshot"))
                                 (:shape-name
                                  "CreateServerlessCacheSnapshotResponse"))

(smithy/sdk/shapes:define-input create-snapshot-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :member-name "ReplicationGroupId")
                                 (cache-cluster-id :target-type string
                                  :member-name "CacheClusterId")
                                 (snapshot-name :target-type string :required
                                  common-lisp:t :member-name "SnapshotName")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSnapshotMessage"))

(smithy/sdk/shapes:define-output create-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CreateSnapshotResult"))

(smithy/sdk/shapes:define-input create-user-group-message common-lisp:nil
                                ((user-group-id :target-type string :required
                                  common-lisp:t :member-name "UserGroupId")
                                 (engine :target-type engine-type :required
                                  common-lisp:t :member-name "Engine")
                                 (user-ids :target-type user-id-list-input
                                  :member-name "UserIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateUserGroupMessage"))

(smithy/sdk/shapes:define-input create-user-message common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName")
                                 (engine :target-type engine-type :required
                                  common-lisp:t :member-name "Engine")
                                 (passwords :target-type password-list-input
                                  :member-name "Passwords")
                                 (access-string :target-type access-string
                                  :required common-lisp:t :member-name
                                  "AccessString")
                                 (no-password-required :target-type
                                  boolean-optional :member-name
                                  "NoPasswordRequired")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (authentication-mode :target-type
                                  authentication-mode :member-name
                                  "AuthenticationMode"))
                                (:shape-name "CreateUserMessage"))

(smithy/sdk/shapes:define-structure customer-node-endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer-optional
                                      :member-name "Port"))
                                    (:shape-name "CustomerNodeEndpoint"))

(smithy/sdk/shapes:define-list customer-node-endpoint-list :member
                               customer-node-endpoint)

(smithy/sdk/shapes:define-structure data-storage common-lisp:nil
                                    ((maximum :target-type integer-optional
                                      :member-name "Maximum")
                                     (minimum :target-type integer-optional
                                      :member-name "Minimum")
                                     (unit :target-type data-storage-unit
                                      :required common-lisp:t :member-name
                                      "Unit"))
                                    (:shape-name "DataStorage"))

(smithy/sdk/shapes:define-enum data-storage-unit
    common-lisp:nil
  (:gb "GB"))

(smithy/sdk/shapes:define-enum data-tiering-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-input
 decrease-node-groups-in-global-replication-group-message common-lisp:nil
 ((global-replication-group-id :target-type string :required common-lisp:t
   :member-name "GlobalReplicationGroupId")
  (node-group-count :target-type integer :required common-lisp:t :member-name
   "NodeGroupCount")
  (global-node-groups-to-remove :target-type global-node-group-id-list
   :member-name "GlobalNodeGroupsToRemove")
  (global-node-groups-to-retain :target-type global-node-group-id-list
   :member-name "GlobalNodeGroupsToRetain")
  (apply-immediately :target-type boolean :required common-lisp:t :member-name
   "ApplyImmediately"))
 (:shape-name "DecreaseNodeGroupsInGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output
 decrease-node-groups-in-global-replication-group-result common-lisp:nil
 ((global-replication-group :target-type global-replication-group :member-name
   "GlobalReplicationGroup"))
 (:shape-name "DecreaseNodeGroupsInGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input decrease-replica-count-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (new-replica-count :target-type
                                  integer-optional :member-name
                                  "NewReplicaCount")
                                 (replica-configuration :target-type
                                  replica-configuration-list :member-name
                                  "ReplicaConfiguration")
                                 (replicas-to-remove :target-type
                                  remove-replicas-list :member-name
                                  "ReplicasToRemove")
                                 (apply-immediately :target-type boolean
                                  :required common-lisp:t :member-name
                                  "ApplyImmediately"))
                                (:shape-name "DecreaseReplicaCountMessage"))

(smithy/sdk/shapes:define-output decrease-replica-count-result common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "DecreaseReplicaCountResult"))

(smithy/sdk/shapes:define-error default-user-associated-to-user-group-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DefaultUserAssociatedToUserGroupFault")
                                (:error-name
                                 "DefaultUserAssociatedToUserGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-error default-user-required common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DefaultUserRequired")
                                (:error-name "DefaultUserRequired")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-cache-cluster-message common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheClusterId")
                                 (final-snapshot-identifier :target-type string
                                  :member-name "FinalSnapshotIdentifier"))
                                (:shape-name "DeleteCacheClusterMessage"))

(smithy/sdk/shapes:define-output delete-cache-cluster-result common-lisp:nil
                                 ((cache-cluster :target-type cache-cluster
                                   :member-name "CacheCluster"))
                                 (:shape-name "DeleteCacheClusterResult"))

(smithy/sdk/shapes:define-input delete-cache-parameter-group-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupName"))
                                (:shape-name
                                 "DeleteCacheParameterGroupMessage"))

(smithy/sdk/shapes:define-input delete-cache-security-group-message
                                common-lisp:nil
                                ((cache-security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSecurityGroupName"))
                                (:shape-name "DeleteCacheSecurityGroupMessage"))

(smithy/sdk/shapes:define-input delete-cache-subnet-group-message
                                common-lisp:nil
                                ((cache-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSubnetGroupName"))
                                (:shape-name "DeleteCacheSubnetGroupMessage"))

(smithy/sdk/shapes:define-input delete-global-replication-group-message
                                common-lisp:nil
                                ((global-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "GlobalReplicationGroupId")
                                 (retain-primary-replication-group :target-type
                                  boolean :required common-lisp:t :member-name
                                  "RetainPrimaryReplicationGroup"))
                                (:shape-name
                                 "DeleteGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output delete-global-replication-group-result
                                 common-lisp:nil
                                 ((global-replication-group :target-type
                                   global-replication-group :member-name
                                   "GlobalReplicationGroup"))
                                 (:shape-name
                                  "DeleteGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input delete-replication-group-message
                                common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (retain-primary-cluster :target-type
                                  boolean-optional :member-name
                                  "RetainPrimaryCluster")
                                 (final-snapshot-identifier :target-type string
                                  :member-name "FinalSnapshotIdentifier"))
                                (:shape-name "DeleteReplicationGroupMessage"))

(smithy/sdk/shapes:define-output delete-replication-group-result
                                 common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "DeleteReplicationGroupResult"))

(smithy/sdk/shapes:define-input delete-serverless-cache-request common-lisp:nil
                                ((serverless-cache-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServerlessCacheName")
                                 (final-snapshot-name :target-type string
                                  :member-name "FinalSnapshotName"))
                                (:shape-name "DeleteServerlessCacheRequest"))

(smithy/sdk/shapes:define-output delete-serverless-cache-response
                                 common-lisp:nil
                                 ((serverless-cache :target-type
                                   serverless-cache :member-name
                                   "ServerlessCache"))
                                 (:shape-name "DeleteServerlessCacheResponse"))

(smithy/sdk/shapes:define-input delete-serverless-cache-snapshot-request
                                common-lisp:nil
                                ((serverless-cache-snapshot-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ServerlessCacheSnapshotName"))
                                (:shape-name
                                 "DeleteServerlessCacheSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-serverless-cache-snapshot-response
                                 common-lisp:nil
                                 ((serverless-cache-snapshot :target-type
                                   serverless-cache-snapshot :member-name
                                   "ServerlessCacheSnapshot"))
                                 (:shape-name
                                  "DeleteServerlessCacheSnapshotResponse"))

(smithy/sdk/shapes:define-input delete-snapshot-message common-lisp:nil
                                ((snapshot-name :target-type string :required
                                  common-lisp:t :member-name "SnapshotName"))
                                (:shape-name "DeleteSnapshotMessage"))

(smithy/sdk/shapes:define-output delete-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "DeleteSnapshotResult"))

(smithy/sdk/shapes:define-input delete-user-group-message common-lisp:nil
                                ((user-group-id :target-type string :required
                                  common-lisp:t :member-name "UserGroupId"))
                                (:shape-name "DeleteUserGroupMessage"))

(smithy/sdk/shapes:define-input delete-user-message common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId"))
                                (:shape-name "DeleteUserMessage"))

(smithy/sdk/shapes:define-input describe-cache-clusters-message common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :member-name "CacheClusterId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (show-cache-node-info :target-type
                                  boolean-optional :member-name
                                  "ShowCacheNodeInfo")
                                 (show-cache-clusters-not-in-replication-groups
                                  :target-type boolean-optional :member-name
                                  "ShowCacheClustersNotInReplicationGroups"))
                                (:shape-name "DescribeCacheClustersMessage"))

(smithy/sdk/shapes:define-input describe-cache-engine-versions-message
                                common-lisp:nil
                                ((engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (cache-parameter-group-family :target-type
                                  string :member-name
                                  "CacheParameterGroupFamily")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (default-only :target-type boolean
                                  :member-name "DefaultOnly"))
                                (:shape-name
                                 "DescribeCacheEngineVersionsMessage"))

(smithy/sdk/shapes:define-input describe-cache-parameter-groups-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeCacheParameterGroupsMessage"))

(smithy/sdk/shapes:define-input describe-cache-parameters-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeCacheParametersMessage"))

(smithy/sdk/shapes:define-input describe-cache-security-groups-message
                                common-lisp:nil
                                ((cache-security-group-name :target-type string
                                  :member-name "CacheSecurityGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeCacheSecurityGroupsMessage"))

(smithy/sdk/shapes:define-input describe-cache-subnet-groups-message
                                common-lisp:nil
                                ((cache-subnet-group-name :target-type string
                                  :member-name "CacheSubnetGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeCacheSubnetGroupsMessage"))

(smithy/sdk/shapes:define-input describe-engine-default-parameters-message
                                common-lisp:nil
                                ((cache-parameter-group-family :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupFamily")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeEngineDefaultParametersMessage"))

(smithy/sdk/shapes:define-output describe-engine-default-parameters-result
                                 common-lisp:nil
                                 ((engine-defaults :target-type engine-defaults
                                   :member-name "EngineDefaults"))
                                 (:shape-name
                                  "DescribeEngineDefaultParametersResult"))

(smithy/sdk/shapes:define-input describe-events-message common-lisp:nil
                                ((source-identifier :target-type string
                                  :member-name "SourceIdentifier")
                                 (source-type :target-type source-type
                                  :member-name "SourceType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (duration :target-type integer-optional
                                  :member-name "Duration")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEventsMessage"))

(smithy/sdk/shapes:define-input describe-global-replication-groups-message
                                common-lisp:nil
                                ((global-replication-group-id :target-type
                                  string :member-name
                                  "GlobalReplicationGroupId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (show-member-info :target-type
                                  boolean-optional :member-name
                                  "ShowMemberInfo"))
                                (:shape-name
                                 "DescribeGlobalReplicationGroupsMessage"))

(smithy/sdk/shapes:define-output describe-global-replication-groups-result
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (global-replication-groups :target-type
                                   global-replication-group-list :member-name
                                   "GlobalReplicationGroups"))
                                 (:shape-name
                                  "DescribeGlobalReplicationGroupsResult"))

(smithy/sdk/shapes:define-input describe-replication-groups-message
                                common-lisp:nil
                                ((replication-group-id :target-type string
                                  :member-name "ReplicationGroupId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReplicationGroupsMessage"))

(smithy/sdk/shapes:define-input describe-reserved-cache-nodes-message
                                common-lisp:nil
                                ((reserved-cache-node-id :target-type string
                                  :member-name "ReservedCacheNodeId")
                                 (reserved-cache-nodes-offering-id :target-type
                                  string :member-name
                                  "ReservedCacheNodesOfferingId")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (product-description :target-type string
                                  :member-name "ProductDescription")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReservedCacheNodesMessage"))

(smithy/sdk/shapes:define-input describe-reserved-cache-nodes-offerings-message
                                common-lisp:nil
                                ((reserved-cache-nodes-offering-id :target-type
                                  string :member-name
                                  "ReservedCacheNodesOfferingId")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (product-description :target-type string
                                  :member-name "ProductDescription")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReservedCacheNodesOfferingsMessage"))

(smithy/sdk/shapes:define-input describe-serverless-cache-snapshots-request
                                common-lisp:nil
                                ((serverless-cache-name :target-type string
                                  :member-name "ServerlessCacheName")
                                 (serverless-cache-snapshot-name :target-type
                                  string :member-name
                                  "ServerlessCacheSnapshotName")
                                 (snapshot-type :target-type string
                                  :member-name "SnapshotType")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeServerlessCacheSnapshotsRequest"))

(smithy/sdk/shapes:define-output describe-serverless-cache-snapshots-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (serverless-cache-snapshots :target-type
                                   serverless-cache-snapshot-list :member-name
                                   "ServerlessCacheSnapshots"))
                                 (:shape-name
                                  "DescribeServerlessCacheSnapshotsResponse"))

(smithy/sdk/shapes:define-input describe-serverless-caches-request
                                common-lisp:nil
                                ((serverless-cache-name :target-type string
                                  :member-name "ServerlessCacheName")
                                 (max-results :target-type integer-optional
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeServerlessCachesRequest"))

(smithy/sdk/shapes:define-output describe-serverless-caches-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (serverless-caches :target-type
                                   serverless-cache-list :member-name
                                   "ServerlessCaches"))
                                 (:shape-name
                                  "DescribeServerlessCachesResponse"))

(smithy/sdk/shapes:define-input describe-service-updates-message
                                common-lisp:nil
                                ((service-update-name :target-type string
                                  :member-name "ServiceUpdateName")
                                 (service-update-status :target-type
                                  service-update-status-list :member-name
                                  "ServiceUpdateStatus")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeServiceUpdatesMessage"))

(smithy/sdk/shapes:define-output describe-snapshots-list-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (snapshots :target-type snapshot-list
                                   :member-name "Snapshots"))
                                 (:shape-name "DescribeSnapshotsListMessage"))

(smithy/sdk/shapes:define-input describe-snapshots-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :member-name "ReplicationGroupId")
                                 (cache-cluster-id :target-type string
                                  :member-name "CacheClusterId")
                                 (snapshot-name :target-type string
                                  :member-name "SnapshotName")
                                 (snapshot-source :target-type string
                                  :member-name "SnapshotSource")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (show-node-group-config :target-type
                                  boolean-optional :member-name
                                  "ShowNodeGroupConfig"))
                                (:shape-name "DescribeSnapshotsMessage"))

(smithy/sdk/shapes:define-input describe-update-actions-message common-lisp:nil
                                ((service-update-name :target-type string
                                  :member-name "ServiceUpdateName")
                                 (replication-group-ids :target-type
                                  replication-group-id-list :member-name
                                  "ReplicationGroupIds")
                                 (cache-cluster-ids :target-type
                                  cache-cluster-id-list :member-name
                                  "CacheClusterIds")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (service-update-status :target-type
                                  service-update-status-list :member-name
                                  "ServiceUpdateStatus")
                                 (service-update-time-range :target-type
                                  time-range-filter :member-name
                                  "ServiceUpdateTimeRange")
                                 (update-action-status :target-type
                                  update-action-status-list :member-name
                                  "UpdateActionStatus")
                                 (show-node-level-update-status :target-type
                                  boolean-optional :member-name
                                  "ShowNodeLevelUpdateStatus")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeUpdateActionsMessage"))

(smithy/sdk/shapes:define-input describe-user-groups-message common-lisp:nil
                                ((user-group-id :target-type string
                                  :member-name "UserGroupId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeUserGroupsMessage"))

(smithy/sdk/shapes:define-output describe-user-groups-result common-lisp:nil
                                 ((user-groups :target-type user-group-list
                                   :member-name "UserGroups")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeUserGroupsResult"))

(smithy/sdk/shapes:define-input describe-users-message common-lisp:nil
                                ((engine :target-type engine-type :member-name
                                  "Engine")
                                 (user-id :target-type user-id :member-name
                                  "UserId")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeUsersMessage"))

(smithy/sdk/shapes:define-output describe-users-result common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "Users")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeUsersResult"))

(smithy/sdk/shapes:define-structure destination-details common-lisp:nil
                                    ((cloud-watch-logs-details :target-type
                                      cloud-watch-logs-destination-details
                                      :member-name "CloudWatchLogsDetails")
                                     (kinesis-firehose-details :target-type
                                      kinesis-firehose-destination-details
                                      :member-name "KinesisFirehoseDetails"))
                                    (:shape-name "DestinationDetails"))

(smithy/sdk/shapes:define-enum destination-type
    common-lisp:nil
  (:cloud-watch-logs "cloudwatch-logs")
  (:kinesis-firehose "kinesis-firehose"))

(smithy/sdk/shapes:define-input disassociate-global-replication-group-message
                                common-lisp:nil
                                ((global-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "GlobalReplicationGroupId")
                                 (replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (replication-group-region :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupRegion"))
                                (:shape-name
                                 "DisassociateGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output disassociate-global-replication-group-result
                                 common-lisp:nil
                                 ((global-replication-group :target-type
                                   global-replication-group :member-name
                                   "GlobalReplicationGroup"))
                                 (:shape-name
                                  "DisassociateGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error duplicate-user-name-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DuplicateUserNameFault")
                                (:error-name "DuplicateUserName")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure ec2security-group common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (ec2security-group-name :target-type
                                      string :member-name
                                      "EC2SecurityGroupName")
                                     (ec2security-group-owner-id :target-type
                                      string :member-name
                                      "EC2SecurityGroupOwnerId"))
                                    (:shape-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-list ec2security-group-list :member
                               (ec2security-group :xml-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-structure ecpuper-second common-lisp:nil
                                    ((maximum :target-type integer-optional
                                      :member-name "Maximum")
                                     (minimum :target-type integer-optional
                                      :member-name "Minimum"))
                                    (:shape-name "ECPUPerSecond"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure engine-defaults common-lisp:nil
                                    ((cache-parameter-group-family :target-type
                                      string :member-name
                                      "CacheParameterGroupFamily")
                                     (marker :target-type string :member-name
                                      "Marker")
                                     (parameters :target-type parameters-list
                                      :member-name "Parameters")
                                     (cache-node-type-specific-parameters
                                      :target-type
                                      cache-node-type-specific-parameters-list
                                      :member-name
                                      "CacheNodeTypeSpecificParameters"))
                                    (:shape-name "EngineDefaults"))

(smithy/sdk/shapes:define-type engine-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-identifier :target-type string
                                      :member-name "SourceIdentifier")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (date :target-type tstamp :member-name
                                      "Date"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-list :member (event :xml-name "Event"))

(smithy/sdk/shapes:define-output events-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "EventsMessage"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input export-serverless-cache-snapshot-request
                                common-lisp:nil
                                ((serverless-cache-snapshot-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ServerlessCacheSnapshotName")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName"))
                                (:shape-name
                                 "ExportServerlessCacheSnapshotRequest"))

(smithy/sdk/shapes:define-output export-serverless-cache-snapshot-response
                                 common-lisp:nil
                                 ((serverless-cache-snapshot :target-type
                                   serverless-cache-snapshot :member-name
                                   "ServerlessCacheSnapshot"))
                                 (:shape-name
                                  "ExportServerlessCacheSnapshotResponse"))

(smithy/sdk/shapes:define-input failover-global-replication-group-message
                                common-lisp:nil
                                ((global-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "GlobalReplicationGroupId")
                                 (primary-region :target-type string :required
                                  common-lisp:t :member-name "PrimaryRegion")
                                 (primary-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "PrimaryReplicationGroupId"))
                                (:shape-name
                                 "FailoverGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output failover-global-replication-group-result
                                 common-lisp:nil
                                 ((global-replication-group :target-type
                                   global-replication-group :member-name
                                   "GlobalReplicationGroup"))
                                 (:shape-name
                                  "FailoverGlobalReplicationGroupResult"))

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

(smithy/sdk/shapes:define-structure global-node-group common-lisp:nil
                                    ((global-node-group-id :target-type string
                                      :member-name "GlobalNodeGroupId")
                                     (slots :target-type string :member-name
                                      "Slots"))
                                    (:shape-name "GlobalNodeGroup"))

(smithy/sdk/shapes:define-list global-node-group-id-list :member
                               (string :xml-name "GlobalNodeGroupId"))

(smithy/sdk/shapes:define-list global-node-group-list :member
                               (global-node-group :xml-name "GlobalNodeGroup"))

(smithy/sdk/shapes:define-structure global-replication-group common-lisp:nil
                                    ((global-replication-group-id :target-type
                                      string :member-name
                                      "GlobalReplicationGroupId")
                                     (global-replication-group-description
                                      :target-type string :member-name
                                      "GlobalReplicationGroupDescription")
                                     (status :target-type string :member-name
                                      "Status")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (members :target-type
                                      global-replication-group-member-list
                                      :member-name "Members")
                                     (cluster-enabled :target-type
                                      boolean-optional :member-name
                                      "ClusterEnabled")
                                     (global-node-groups :target-type
                                      global-node-group-list :member-name
                                      "GlobalNodeGroups")
                                     (auth-token-enabled :target-type
                                      boolean-optional :member-name
                                      "AuthTokenEnabled")
                                     (transit-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "TransitEncryptionEnabled")
                                     (at-rest-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "AtRestEncryptionEnabled")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "GlobalReplicationGroup"))

(smithy/sdk/shapes:define-error global-replication-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "GlobalReplicationGroupAlreadyExistsFault")
                                (:error-name
                                 "GlobalReplicationGroupAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure global-replication-group-info
                                    common-lisp:nil
                                    ((global-replication-group-id :target-type
                                      string :member-name
                                      "GlobalReplicationGroupId")
                                     (global-replication-group-member-role
                                      :target-type string :member-name
                                      "GlobalReplicationGroupMemberRole"))
                                    (:shape-name "GlobalReplicationGroupInfo"))

(smithy/sdk/shapes:define-list global-replication-group-list :member
                               (global-replication-group :xml-name
                                "GlobalReplicationGroup"))

(smithy/sdk/shapes:define-structure global-replication-group-member
                                    common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (replication-group-region :target-type
                                      string :member-name
                                      "ReplicationGroupRegion")
                                     (role :target-type string :member-name
                                      "Role")
                                     (automatic-failover :target-type
                                      automatic-failover-status :member-name
                                      "AutomaticFailover")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name
                                     "GlobalReplicationGroupMember"))

(smithy/sdk/shapes:define-list global-replication-group-member-list :member
                               (global-replication-group-member :xml-name
                                "GlobalReplicationGroupMember"))

(smithy/sdk/shapes:define-error global-replication-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "GlobalReplicationGroupNotFoundFault")
                                (:error-name
                                 "GlobalReplicationGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-input
 increase-node-groups-in-global-replication-group-message common-lisp:nil
 ((global-replication-group-id :target-type string :required common-lisp:t
   :member-name "GlobalReplicationGroupId")
  (node-group-count :target-type integer :required common-lisp:t :member-name
   "NodeGroupCount")
  (regional-configurations :target-type regional-configuration-list
   :member-name "RegionalConfigurations")
  (apply-immediately :target-type boolean :required common-lisp:t :member-name
   "ApplyImmediately"))
 (:shape-name "IncreaseNodeGroupsInGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output
 increase-node-groups-in-global-replication-group-result common-lisp:nil
 ((global-replication-group :target-type global-replication-group :member-name
   "GlobalReplicationGroup"))
 (:shape-name "IncreaseNodeGroupsInGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input increase-replica-count-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (new-replica-count :target-type
                                  integer-optional :member-name
                                  "NewReplicaCount")
                                 (replica-configuration :target-type
                                  replica-configuration-list :member-name
                                  "ReplicaConfiguration")
                                 (apply-immediately :target-type boolean
                                  :required common-lisp:t :member-name
                                  "ApplyImmediately"))
                                (:shape-name "IncreaseReplicaCountMessage"))

(smithy/sdk/shapes:define-output increase-replica-count-result common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "IncreaseReplicaCountResult"))

(smithy/sdk/shapes:define-enum input-authentication-type
    common-lisp:nil
  (:password "password")
  (:no-password "no-password-required")
  (:iam "iam"))

(smithy/sdk/shapes:define-error insufficient-cache-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientCacheClusterCapacityFault")
                                (:error-name
                                 "InsufficientCacheClusterCapacity")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-arnfault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidARNFault")
                                (:error-name "InvalidARN") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cache-cluster-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidCacheClusterStateFault")
                                (:error-name "InvalidCacheClusterState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cache-parameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidCacheParameterGroupStateFault")
                                (:error-name "InvalidCacheParameterGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cache-security-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidCacheSecurityGroupStateFault")
                                (:error-name "InvalidCacheSecurityGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-credentials-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidCredentialsException")
                                (:error-name "InvalidCredentialsException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error invalid-global-replication-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidGlobalReplicationGroupStateFault")
                                (:error-name
                                 "InvalidGlobalReplicationGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-kmskey-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidKMSKeyFault")
                                (:error-name "InvalidKMSKeyFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-name "InvalidParameterCombination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-name "InvalidParameterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-replication-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidReplicationGroupStateFault")
                                (:error-name "InvalidReplicationGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-serverless-cache-snapshot-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidServerlessCacheSnapshotStateFault")
                                (:error-name
                                 "InvalidServerlessCacheSnapshotStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-serverless-cache-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidServerlessCacheStateFault")
                                (:error-name
                                 "InvalidServerlessCacheStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-snapshot-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSnapshotStateFault")
                                (:error-name "InvalidSnapshotState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet")
                                (:error-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-user-group-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidUserGroupStateFault")
                                (:error-name "InvalidUserGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-user-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidUserStateFault")
                                (:error-name "InvalidUserState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-name "InvalidVPCNetworkStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum ip-discovery
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-structure kinesis-firehose-destination-details
                                    common-lisp:nil
                                    ((delivery-stream :target-type string
                                      :member-name "DeliveryStream"))
                                    (:shape-name
                                     "KinesisFirehoseDestinationDetails"))

(smithy/sdk/shapes:define-input list-allowed-node-type-modifications-message
                                common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :member-name "CacheClusterId")
                                 (replication-group-id :target-type string
                                  :member-name "ReplicationGroupId"))
                                (:shape-name
                                 "ListAllowedNodeTypeModificationsMessage"))

(smithy/sdk/shapes:define-input list-tags-for-resource-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"))
                                (:shape-name "ListTagsForResourceMessage"))

(smithy/sdk/shapes:define-structure log-delivery-configuration common-lisp:nil
                                    ((log-type :target-type log-type
                                      :member-name "LogType")
                                     (destination-type :target-type
                                      destination-type :member-name
                                      "DestinationType")
                                     (destination-details :target-type
                                      destination-details :member-name
                                      "DestinationDetails")
                                     (log-format :target-type log-format
                                      :member-name "LogFormat")
                                     (status :target-type
                                      log-delivery-configuration-status
                                      :member-name "Status")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "LogDeliveryConfiguration"))

(smithy/sdk/shapes:define-list log-delivery-configuration-list :member
                               (log-delivery-configuration :xml-name
                                "LogDeliveryConfiguration"))

(smithy/sdk/shapes:define-structure log-delivery-configuration-request
                                    common-lisp:nil
                                    ((log-type :target-type log-type
                                      :member-name "LogType")
                                     (destination-type :target-type
                                      destination-type :member-name
                                      "DestinationType")
                                     (destination-details :target-type
                                      destination-details :member-name
                                      "DestinationDetails")
                                     (log-format :target-type log-format
                                      :member-name "LogFormat")
                                     (enabled :target-type boolean-optional
                                      :member-name "Enabled"))
                                    (:shape-name
                                     "LogDeliveryConfigurationRequest"))

(smithy/sdk/shapes:define-list log-delivery-configuration-request-list :member
                               (log-delivery-configuration-request :xml-name
                                "LogDeliveryConfigurationRequest"))

(smithy/sdk/shapes:define-enum log-delivery-configuration-status
    common-lisp:nil
  (:active "active")
  (:enabling "enabling")
  (:modifying "modifying")
  (:disabling "disabling")
  (:error "error"))

(smithy/sdk/shapes:define-enum log-format
    common-lisp:nil
  (:text "text")
  (:json "json"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:slow-log "slow-log")
  (:engine-log "engine-log"))

(smithy/sdk/shapes:define-input modify-cache-cluster-message common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheClusterId")
                                 (num-cache-nodes :target-type integer-optional
                                  :member-name "NumCacheNodes")
                                 (cache-node-ids-to-remove :target-type
                                  cache-node-ids-list :member-name
                                  "CacheNodeIdsToRemove")
                                 (azmode :target-type azmode :member-name
                                  "AZMode")
                                 (new-availability-zones :target-type
                                  preferred-availability-zone-list :member-name
                                  "NewAvailabilityZones")
                                 (cache-security-group-names :target-type
                                  cache-security-group-name-list :member-name
                                  "CacheSecurityGroupNames")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (notification-topic-status :target-type string
                                  :member-name "NotificationTopicStatus")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (auth-token :target-type string :member-name
                                  "AuthToken")
                                 (auth-token-update-strategy :target-type
                                  auth-token-update-strategy-type :member-name
                                  "AuthTokenUpdateStrategy")
                                 (log-delivery-configurations :target-type
                                  log-delivery-configuration-request-list
                                  :member-name "LogDeliveryConfigurations")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery")
                                 (scale-config :target-type scale-config
                                  :member-name "ScaleConfig"))
                                (:shape-name "ModifyCacheClusterMessage"))

(smithy/sdk/shapes:define-output modify-cache-cluster-result common-lisp:nil
                                 ((cache-cluster :target-type cache-cluster
                                   :member-name "CacheCluster"))
                                 (:shape-name "ModifyCacheClusterResult"))

(smithy/sdk/shapes:define-input modify-cache-parameter-group-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupName")
                                 (parameter-name-values :target-type
                                  parameter-name-value-list :required
                                  common-lisp:t :member-name
                                  "ParameterNameValues"))
                                (:shape-name
                                 "ModifyCacheParameterGroupMessage"))

(smithy/sdk/shapes:define-input modify-cache-subnet-group-message
                                common-lisp:nil
                                ((cache-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSubnetGroupName")
                                 (cache-subnet-group-description :target-type
                                  string :member-name
                                  "CacheSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :member-name
                                  "SubnetIds"))
                                (:shape-name "ModifyCacheSubnetGroupMessage"))

(smithy/sdk/shapes:define-output modify-cache-subnet-group-result
                                 common-lisp:nil
                                 ((cache-subnet-group :target-type
                                   cache-subnet-group :member-name
                                   "CacheSubnetGroup"))
                                 (:shape-name "ModifyCacheSubnetGroupResult"))

(smithy/sdk/shapes:define-input modify-global-replication-group-message
                                common-lisp:nil
                                ((global-replication-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "GlobalReplicationGroupId")
                                 (apply-immediately :target-type boolean
                                  :required common-lisp:t :member-name
                                  "ApplyImmediately")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (global-replication-group-description
                                  :target-type string :member-name
                                  "GlobalReplicationGroupDescription")
                                 (automatic-failover-enabled :target-type
                                  boolean-optional :member-name
                                  "AutomaticFailoverEnabled"))
                                (:shape-name
                                 "ModifyGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output modify-global-replication-group-result
                                 common-lisp:nil
                                 ((global-replication-group :target-type
                                   global-replication-group :member-name
                                   "GlobalReplicationGroup"))
                                 (:shape-name
                                  "ModifyGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input modify-replication-group-message
                                common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (replication-group-description :target-type
                                  string :member-name
                                  "ReplicationGroupDescription")
                                 (primary-cluster-id :target-type string
                                  :member-name "PrimaryClusterId")
                                 (snapshotting-cluster-id :target-type string
                                  :member-name "SnapshottingClusterId")
                                 (automatic-failover-enabled :target-type
                                  boolean-optional :member-name
                                  "AutomaticFailoverEnabled")
                                 (multi-azenabled :target-type boolean-optional
                                  :member-name "MultiAZEnabled")
                                 (node-group-id :target-type string
                                  :member-name "NodeGroupId")
                                 (cache-security-group-names :target-type
                                  cache-security-group-name-list :member-name
                                  "CacheSecurityGroupNames")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (notification-topic-arn :target-type string
                                  :member-name "NotificationTopicArn")
                                 (cache-parameter-group-name :target-type
                                  string :member-name
                                  "CacheParameterGroupName")
                                 (notification-topic-status :target-type string
                                  :member-name "NotificationTopicStatus")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (snapshot-window :target-type string
                                  :member-name "SnapshotWindow")
                                 (cache-node-type :target-type string
                                  :member-name "CacheNodeType")
                                 (auth-token :target-type string :member-name
                                  "AuthToken")
                                 (auth-token-update-strategy :target-type
                                  auth-token-update-strategy-type :member-name
                                  "AuthTokenUpdateStrategy")
                                 (user-group-ids-to-add :target-type
                                  user-group-id-list :member-name
                                  "UserGroupIdsToAdd")
                                 (user-group-ids-to-remove :target-type
                                  user-group-id-list :member-name
                                  "UserGroupIdsToRemove")
                                 (remove-user-groups :target-type
                                  boolean-optional :member-name
                                  "RemoveUserGroups")
                                 (log-delivery-configurations :target-type
                                  log-delivery-configuration-request-list
                                  :member-name "LogDeliveryConfigurations")
                                 (ip-discovery :target-type ip-discovery
                                  :member-name "IpDiscovery")
                                 (transit-encryption-enabled :target-type
                                  boolean-optional :member-name
                                  "TransitEncryptionEnabled")
                                 (transit-encryption-mode :target-type
                                  transit-encryption-mode :member-name
                                  "TransitEncryptionMode")
                                 (cluster-mode :target-type cluster-mode
                                  :member-name "ClusterMode"))
                                (:shape-name "ModifyReplicationGroupMessage"))

(smithy/sdk/shapes:define-output modify-replication-group-result
                                 common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "ModifyReplicationGroupResult"))

(smithy/sdk/shapes:define-input
 modify-replication-group-shard-configuration-message common-lisp:nil
 ((replication-group-id :target-type string :required common-lisp:t
   :member-name "ReplicationGroupId")
  (node-group-count :target-type integer :required common-lisp:t :member-name
   "NodeGroupCount")
  (apply-immediately :target-type boolean :required common-lisp:t :member-name
   "ApplyImmediately")
  (resharding-configuration :target-type resharding-configuration-list
   :member-name "ReshardingConfiguration")
  (node-groups-to-remove :target-type node-groups-to-remove-list :member-name
   "NodeGroupsToRemove")
  (node-groups-to-retain :target-type node-groups-to-retain-list :member-name
   "NodeGroupsToRetain"))
 (:shape-name "ModifyReplicationGroupShardConfigurationMessage"))

(smithy/sdk/shapes:define-output
 modify-replication-group-shard-configuration-result common-lisp:nil
 ((replication-group :target-type replication-group :member-name
   "ReplicationGroup"))
 (:shape-name "ModifyReplicationGroupShardConfigurationResult"))

(smithy/sdk/shapes:define-input modify-serverless-cache-request common-lisp:nil
                                ((serverless-cache-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ServerlessCacheName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (cache-usage-limits :target-type
                                  cache-usage-limits :member-name
                                  "CacheUsageLimits")
                                 (remove-user-group :target-type
                                  boolean-optional :member-name
                                  "RemoveUserGroup")
                                 (user-group-id :target-type string
                                  :member-name "UserGroupId")
                                 (security-group-ids :target-type
                                  security-group-ids-list :member-name
                                  "SecurityGroupIds")
                                 (snapshot-retention-limit :target-type
                                  integer-optional :member-name
                                  "SnapshotRetentionLimit")
                                 (daily-snapshot-time :target-type string
                                  :member-name "DailySnapshotTime")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (major-engine-version :target-type string
                                  :member-name "MajorEngineVersion"))
                                (:shape-name "ModifyServerlessCacheRequest"))

(smithy/sdk/shapes:define-output modify-serverless-cache-response
                                 common-lisp:nil
                                 ((serverless-cache :target-type
                                   serverless-cache :member-name
                                   "ServerlessCache"))
                                 (:shape-name "ModifyServerlessCacheResponse"))

(smithy/sdk/shapes:define-input modify-user-group-message common-lisp:nil
                                ((user-group-id :target-type string :required
                                  common-lisp:t :member-name "UserGroupId")
                                 (user-ids-to-add :target-type
                                  user-id-list-input :member-name
                                  "UserIdsToAdd")
                                 (user-ids-to-remove :target-type
                                  user-id-list-input :member-name
                                  "UserIdsToRemove")
                                 (engine :target-type engine-type :member-name
                                  "Engine"))
                                (:shape-name "ModifyUserGroupMessage"))

(smithy/sdk/shapes:define-input modify-user-message common-lisp:nil
                                ((user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (access-string :target-type access-string
                                  :member-name "AccessString")
                                 (append-access-string :target-type
                                  access-string :member-name
                                  "AppendAccessString")
                                 (passwords :target-type password-list-input
                                  :member-name "Passwords")
                                 (no-password-required :target-type
                                  boolean-optional :member-name
                                  "NoPasswordRequired")
                                 (authentication-mode :target-type
                                  authentication-mode :member-name
                                  "AuthenticationMode")
                                 (engine :target-type engine-type :member-name
                                  "Engine"))
                                (:shape-name "ModifyUserMessage"))

(smithy/sdk/shapes:define-enum multi-azstatus
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

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
                                (:error-code 400))

(smithy/sdk/shapes:define-structure node-group common-lisp:nil
                                    ((node-group-id :target-type string
                                      :member-name "NodeGroupId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (primary-endpoint :target-type endpoint
                                      :member-name "PrimaryEndpoint")
                                     (reader-endpoint :target-type endpoint
                                      :member-name "ReaderEndpoint")
                                     (slots :target-type string :member-name
                                      "Slots")
                                     (node-group-members :target-type
                                      node-group-member-list :member-name
                                      "NodeGroupMembers"))
                                    (:shape-name "NodeGroup"))

(smithy/sdk/shapes:define-structure node-group-configuration common-lisp:nil
                                    ((node-group-id :target-type
                                      allowed-node-group-id :member-name
                                      "NodeGroupId")
                                     (slots :target-type string :member-name
                                      "Slots")
                                     (replica-count :target-type
                                      integer-optional :member-name
                                      "ReplicaCount")
                                     (primary-availability-zone :target-type
                                      string :member-name
                                      "PrimaryAvailabilityZone")
                                     (replica-availability-zones :target-type
                                      availability-zones-list :member-name
                                      "ReplicaAvailabilityZones")
                                     (primary-outpost-arn :target-type string
                                      :member-name "PrimaryOutpostArn")
                                     (replica-outpost-arns :target-type
                                      outpost-arns-list :member-name
                                      "ReplicaOutpostArns"))
                                    (:shape-name "NodeGroupConfiguration"))

(smithy/sdk/shapes:define-list node-group-configuration-list :member
                               (node-group-configuration :xml-name
                                "NodeGroupConfiguration"))

(smithy/sdk/shapes:define-list node-group-list :member
                               (node-group :xml-name "NodeGroup"))

(smithy/sdk/shapes:define-structure node-group-member common-lisp:nil
                                    ((cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (cache-node-id :target-type string
                                      :member-name "CacheNodeId")
                                     (read-endpoint :target-type endpoint
                                      :member-name "ReadEndpoint")
                                     (preferred-availability-zone :target-type
                                      string :member-name
                                      "PreferredAvailabilityZone")
                                     (preferred-outpost-arn :target-type string
                                      :member-name "PreferredOutpostArn")
                                     (current-role :target-type string
                                      :member-name "CurrentRole"))
                                    (:shape-name "NodeGroupMember"))

(smithy/sdk/shapes:define-list node-group-member-list :member
                               (node-group-member :xml-name "NodeGroupMember"))

(smithy/sdk/shapes:define-structure node-group-member-update-status
                                    common-lisp:nil
                                    ((cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (cache-node-id :target-type string
                                      :member-name "CacheNodeId")
                                     (node-update-status :target-type
                                      node-update-status :member-name
                                      "NodeUpdateStatus")
                                     (node-deletion-date :target-type tstamp
                                      :member-name "NodeDeletionDate")
                                     (node-update-start-date :target-type
                                      tstamp :member-name
                                      "NodeUpdateStartDate")
                                     (node-update-end-date :target-type tstamp
                                      :member-name "NodeUpdateEndDate")
                                     (node-update-initiated-by :target-type
                                      node-update-initiated-by :member-name
                                      "NodeUpdateInitiatedBy")
                                     (node-update-initiated-date :target-type
                                      tstamp :member-name
                                      "NodeUpdateInitiatedDate")
                                     (node-update-status-modified-date
                                      :target-type tstamp :member-name
                                      "NodeUpdateStatusModifiedDate"))
                                    (:shape-name "NodeGroupMemberUpdateStatus"))

(smithy/sdk/shapes:define-list node-group-member-update-status-list :member
                               (node-group-member-update-status :xml-name
                                "NodeGroupMemberUpdateStatus"))

(smithy/sdk/shapes:define-error node-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "NodeGroupNotFoundFault")
                                (:error-name "NodeGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure node-group-update-status common-lisp:nil
                                    ((node-group-id :target-type string
                                      :member-name "NodeGroupId")
                                     (node-group-member-update-status
                                      :target-type
                                      node-group-member-update-status-list
                                      :member-name
                                      "NodeGroupMemberUpdateStatus"))
                                    (:shape-name "NodeGroupUpdateStatus"))

(smithy/sdk/shapes:define-list node-group-update-status-list :member
                               (node-group-update-status :xml-name
                                "NodeGroupUpdateStatus"))

(smithy/sdk/shapes:define-error
 node-groups-per-replication-group-quota-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "NodeGroupsPerReplicationGroupQuotaExceededFault")
 (:error-name "NodeGroupsPerReplicationGroupQuotaExceeded") (:error-code 400))

(smithy/sdk/shapes:define-list node-groups-to-remove-list :member
                               (allowed-node-group-id :xml-name
                                "NodeGroupToRemove"))

(smithy/sdk/shapes:define-list node-groups-to-retain-list :member
                               (allowed-node-group-id :xml-name
                                "NodeGroupToRetain"))

(smithy/sdk/shapes:define-error node-quota-for-cluster-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForClusterExceededFault")
                                (:error-name "NodeQuotaForClusterExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error node-quota-for-customer-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "NodeQuotaForCustomerExceededFault")
                                (:error-name "NodeQuotaForCustomerExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure node-snapshot common-lisp:nil
                                    ((cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (node-group-id :target-type string
                                      :member-name "NodeGroupId")
                                     (cache-node-id :target-type string
                                      :member-name "CacheNodeId")
                                     (node-group-configuration :target-type
                                      node-group-configuration :member-name
                                      "NodeGroupConfiguration")
                                     (cache-size :target-type string
                                      :member-name "CacheSize")
                                     (cache-node-create-time :target-type
                                      tstamp :member-name
                                      "CacheNodeCreateTime")
                                     (snapshot-create-time :target-type tstamp
                                      :member-name "SnapshotCreateTime"))
                                    (:shape-name "NodeSnapshot"))

(smithy/sdk/shapes:define-list node-snapshot-list :member
                               (node-snapshot :xml-name "NodeSnapshot"))

(smithy/sdk/shapes:define-list node-type-list :member string)

(smithy/sdk/shapes:define-enum node-update-initiated-by
    common-lisp:nil
  (:system "system")
  (:customer "customer"))

(smithy/sdk/shapes:define-enum node-update-status
    common-lisp:nil
  (:not-applied "not-applied")
  (:waiting-to-start "waiting-to-start")
  (:in-progress "in-progress")
  (:stopping "stopping")
  (:stopped "stopped")
  (:complete "complete"))

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((topic-arn :target-type string
                                      :member-name "TopicArn")
                                     (topic-status :target-type string
                                      :member-name "TopicStatus"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-list outpost-arns-list :member
                               (string :xml-name "OutpostArn"))

(smithy/sdk/shapes:define-enum outpost-mode
    common-lisp:nil
  (:single-outpost "single-outpost")
  (:cross-outpost "cross-outpost"))

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue")
                                     (description :target-type string
                                      :member-name "Description")
                                     (source :target-type string :member-name
                                      "Source")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (change-type :target-type change-type
                                      :member-name "ChangeType"))
                                    (:shape-name "Parameter"))

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

(smithy/sdk/shapes:define-enum pending-automatic-failover-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-structure pending-log-delivery-configuration
                                    common-lisp:nil
                                    ((log-type :target-type log-type
                                      :member-name "LogType")
                                     (destination-type :target-type
                                      destination-type :member-name
                                      "DestinationType")
                                     (destination-details :target-type
                                      destination-details :member-name
                                      "DestinationDetails")
                                     (log-format :target-type log-format
                                      :member-name "LogFormat"))
                                    (:shape-name
                                     "PendingLogDeliveryConfiguration"))

(smithy/sdk/shapes:define-list pending-log-delivery-configuration-list :member
                               pending-log-delivery-configuration)

(smithy/sdk/shapes:define-structure pending-modified-values common-lisp:nil
                                    ((num-cache-nodes :target-type
                                      integer-optional :member-name
                                      "NumCacheNodes")
                                     (cache-node-ids-to-remove :target-type
                                      cache-node-ids-list :member-name
                                      "CacheNodeIdsToRemove")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (auth-token-status :target-type
                                      auth-token-update-status :member-name
                                      "AuthTokenStatus")
                                     (log-delivery-configurations :target-type
                                      pending-log-delivery-configuration-list
                                      :member-name "LogDeliveryConfigurations")
                                     (transit-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "TransitEncryptionEnabled")
                                     (transit-encryption-mode :target-type
                                      transit-encryption-mode :member-name
                                      "TransitEncryptionMode")
                                     (scale-config :target-type scale-config
                                      :member-name "ScaleConfig"))
                                    (:shape-name "PendingModifiedValues"))

(smithy/sdk/shapes:define-list preferred-availability-zone-list :member
                               (string :xml-name "PreferredAvailabilityZone"))

(smithy/sdk/shapes:define-list preferred-outpost-arn-list :member
                               (string :xml-name "PreferredOutpostArn"))

(smithy/sdk/shapes:define-structure processed-update-action common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (update-action-status :target-type
                                      update-action-status :member-name
                                      "UpdateActionStatus"))
                                    (:shape-name "ProcessedUpdateAction"))

(smithy/sdk/shapes:define-list processed-update-action-list :member
                               (processed-update-action :xml-name
                                "ProcessedUpdateAction"))

(smithy/sdk/shapes:define-input purchase-reserved-cache-nodes-offering-message
                                common-lisp:nil
                                ((reserved-cache-nodes-offering-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ReservedCacheNodesOfferingId")
                                 (reserved-cache-node-id :target-type string
                                  :member-name "ReservedCacheNodeId")
                                 (cache-node-count :target-type
                                  integer-optional :member-name
                                  "CacheNodeCount")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "PurchaseReservedCacheNodesOfferingMessage"))

(smithy/sdk/shapes:define-output purchase-reserved-cache-nodes-offering-result
                                 common-lisp:nil
                                 ((reserved-cache-node :target-type
                                   reserved-cache-node :member-name
                                   "ReservedCacheNode"))
                                 (:shape-name
                                  "PurchaseReservedCacheNodesOfferingResult"))

(smithy/sdk/shapes:define-input
 rebalance-slots-in-global-replication-group-message common-lisp:nil
 ((global-replication-group-id :target-type string :required common-lisp:t
   :member-name "GlobalReplicationGroupId")
  (apply-immediately :target-type boolean :required common-lisp:t :member-name
   "ApplyImmediately"))
 (:shape-name "RebalanceSlotsInGlobalReplicationGroupMessage"))

(smithy/sdk/shapes:define-output
 rebalance-slots-in-global-replication-group-result common-lisp:nil
 ((global-replication-group :target-type global-replication-group :member-name
   "GlobalReplicationGroup"))
 (:shape-name "RebalanceSlotsInGlobalReplicationGroupResult"))

(smithy/sdk/shapes:define-input reboot-cache-cluster-message common-lisp:nil
                                ((cache-cluster-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheClusterId")
                                 (cache-node-ids-to-reboot :target-type
                                  cache-node-ids-list :required common-lisp:t
                                  :member-name "CacheNodeIdsToReboot"))
                                (:shape-name "RebootCacheClusterMessage"))

(smithy/sdk/shapes:define-output reboot-cache-cluster-result common-lisp:nil
                                 ((cache-cluster :target-type cache-cluster
                                   :member-name "CacheCluster"))
                                 (:shape-name "RebootCacheClusterResult"))

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

(smithy/sdk/shapes:define-structure regional-configuration common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ReplicationGroupId")
                                     (replication-group-region :target-type
                                      string :required common-lisp:t
                                      :member-name "ReplicationGroupRegion")
                                     (resharding-configuration :target-type
                                      resharding-configuration-list :required
                                      common-lisp:t :member-name
                                      "ReshardingConfiguration"))
                                    (:shape-name "RegionalConfiguration"))

(smithy/sdk/shapes:define-list regional-configuration-list :member
                               (regional-configuration :xml-name
                                "RegionalConfiguration"))

(smithy/sdk/shapes:define-list remove-replicas-list :member string)

(smithy/sdk/shapes:define-input remove-tags-from-resource-message
                                common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceMessage"))

(smithy/sdk/shapes:define-list replica-configuration-list :member
                               (configure-shard :xml-name "ConfigureShard"))

(smithy/sdk/shapes:define-structure replication-group common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (description :target-type string
                                      :member-name "Description")
                                     (global-replication-group-info
                                      :target-type
                                      global-replication-group-info
                                      :member-name
                                      "GlobalReplicationGroupInfo")
                                     (status :target-type string :member-name
                                      "Status")
                                     (pending-modified-values :target-type
                                      replication-group-pending-modified-values
                                      :member-name "PendingModifiedValues")
                                     (member-clusters :target-type
                                      cluster-id-list :member-name
                                      "MemberClusters")
                                     (node-groups :target-type node-group-list
                                      :member-name "NodeGroups")
                                     (snapshotting-cluster-id :target-type
                                      string :member-name
                                      "SnapshottingClusterId")
                                     (automatic-failover :target-type
                                      automatic-failover-status :member-name
                                      "AutomaticFailover")
                                     (multi-az :target-type multi-azstatus
                                      :member-name "MultiAZ")
                                     (configuration-endpoint :target-type
                                      endpoint :member-name
                                      "ConfigurationEndpoint")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (snapshot-window :target-type string
                                      :member-name "SnapshotWindow")
                                     (cluster-enabled :target-type
                                      boolean-optional :member-name
                                      "ClusterEnabled")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (auth-token-enabled :target-type
                                      boolean-optional :member-name
                                      "AuthTokenEnabled")
                                     (auth-token-last-modified-date
                                      :target-type tstamp :member-name
                                      "AuthTokenLastModifiedDate")
                                     (transit-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "TransitEncryptionEnabled")
                                     (at-rest-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "AtRestEncryptionEnabled")
                                     (member-clusters-outpost-arns :target-type
                                      replication-group-outpost-arn-list
                                      :member-name "MemberClustersOutpostArns")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (user-group-ids :target-type
                                      user-group-id-list :member-name
                                      "UserGroupIds")
                                     (log-delivery-configurations :target-type
                                      log-delivery-configuration-list
                                      :member-name "LogDeliveryConfigurations")
                                     (replication-group-create-time
                                      :target-type tstamp :member-name
                                      "ReplicationGroupCreateTime")
                                     (data-tiering :target-type
                                      data-tiering-status :member-name
                                      "DataTiering")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (network-type :target-type network-type
                                      :member-name "NetworkType")
                                     (ip-discovery :target-type ip-discovery
                                      :member-name "IpDiscovery")
                                     (transit-encryption-mode :target-type
                                      transit-encryption-mode :member-name
                                      "TransitEncryptionMode")
                                     (cluster-mode :target-type cluster-mode
                                      :member-name "ClusterMode")
                                     (engine :target-type string :member-name
                                      "Engine"))
                                    (:shape-name "ReplicationGroup"))

(smithy/sdk/shapes:define-error replication-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicationGroupAlreadyExistsFault")
                                (:error-name "ReplicationGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error replication-group-already-under-migration-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicationGroupAlreadyUnderMigrationFault")
                                (:error-name
                                 "ReplicationGroupAlreadyUnderMigrationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list replication-group-id-list :member string)

(smithy/sdk/shapes:define-list replication-group-list :member
                               (replication-group :xml-name "ReplicationGroup"))

(smithy/sdk/shapes:define-output replication-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replication-groups :target-type
                                   replication-group-list :member-name
                                   "ReplicationGroups"))
                                 (:shape-name "ReplicationGroupMessage"))

(smithy/sdk/shapes:define-error replication-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReplicationGroupNotFoundFault")
                                (:error-name "ReplicationGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error replication-group-not-under-migration-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicationGroupNotUnderMigrationFault")
                                (:error-name
                                 "ReplicationGroupNotUnderMigrationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list replication-group-outpost-arn-list :member
                               (string :xml-name "ReplicationGroupOutpostArn"))

(smithy/sdk/shapes:define-structure replication-group-pending-modified-values
                                    common-lisp:nil
                                    ((primary-cluster-id :target-type string
                                      :member-name "PrimaryClusterId")
                                     (automatic-failover-status :target-type
                                      pending-automatic-failover-status
                                      :member-name "AutomaticFailoverStatus")
                                     (resharding :target-type resharding-status
                                      :member-name "Resharding")
                                     (auth-token-status :target-type
                                      auth-token-update-status :member-name
                                      "AuthTokenStatus")
                                     (user-groups :target-type
                                      user-groups-update-status :member-name
                                      "UserGroups")
                                     (log-delivery-configurations :target-type
                                      pending-log-delivery-configuration-list
                                      :member-name "LogDeliveryConfigurations")
                                     (transit-encryption-enabled :target-type
                                      boolean-optional :member-name
                                      "TransitEncryptionEnabled")
                                     (transit-encryption-mode :target-type
                                      transit-encryption-mode :member-name
                                      "TransitEncryptionMode")
                                     (cluster-mode :target-type cluster-mode
                                      :member-name "ClusterMode"))
                                    (:shape-name
                                     "ReplicationGroupPendingModifiedValues"))

(smithy/sdk/shapes:define-structure reserved-cache-node common-lisp:nil
                                    ((reserved-cache-node-id :target-type
                                      string :member-name
                                      "ReservedCacheNodeId")
                                     (reserved-cache-nodes-offering-id
                                      :target-type string :member-name
                                      "ReservedCacheNodesOfferingId")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (cache-node-count :target-type integer
                                      :member-name "CacheNodeCount")
                                     (product-description :target-type string
                                      :member-name "ProductDescription")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (state :target-type string :member-name
                                      "State")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges")
                                     (reservation-arn :target-type string
                                      :member-name "ReservationARN"))
                                    (:shape-name "ReservedCacheNode"))

(smithy/sdk/shapes:define-error reserved-cache-node-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedCacheNodeAlreadyExistsFault")
                                (:error-name "ReservedCacheNodeAlreadyExists")
                                (:error-code 404))

(smithy/sdk/shapes:define-list reserved-cache-node-list :member
                               (reserved-cache-node :xml-name
                                "ReservedCacheNode"))

(smithy/sdk/shapes:define-output reserved-cache-node-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-cache-nodes :target-type
                                   reserved-cache-node-list :member-name
                                   "ReservedCacheNodes"))
                                 (:shape-name "ReservedCacheNodeMessage"))

(smithy/sdk/shapes:define-error reserved-cache-node-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedCacheNodeNotFoundFault")
                                (:error-name "ReservedCacheNodeNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error reserved-cache-node-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedCacheNodeQuotaExceededFault")
                                (:error-name "ReservedCacheNodeQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure reserved-cache-nodes-offering
                                    common-lisp:nil
                                    ((reserved-cache-nodes-offering-id
                                      :target-type string :member-name
                                      "ReservedCacheNodesOfferingId")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (product-description :target-type string
                                      :member-name "ProductDescription")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name "ReservedCacheNodesOffering"))

(smithy/sdk/shapes:define-list reserved-cache-nodes-offering-list :member
                               (reserved-cache-nodes-offering :xml-name
                                "ReservedCacheNodesOffering"))

(smithy/sdk/shapes:define-output reserved-cache-nodes-offering-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-cache-nodes-offerings :target-type
                                   reserved-cache-nodes-offering-list
                                   :member-name "ReservedCacheNodesOfferings"))
                                 (:shape-name
                                  "ReservedCacheNodesOfferingMessage"))

(smithy/sdk/shapes:define-error reserved-cache-nodes-offering-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedCacheNodesOfferingNotFoundFault")
                                (:error-name
                                 "ReservedCacheNodesOfferingNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-input reset-cache-parameter-group-message
                                common-lisp:nil
                                ((cache-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "CacheParameterGroupName")
                                 (reset-all-parameters :target-type boolean
                                  :member-name "ResetAllParameters")
                                 (parameter-name-values :target-type
                                  parameter-name-value-list :member-name
                                  "ParameterNameValues"))
                                (:shape-name "ResetCacheParameterGroupMessage"))

(smithy/sdk/shapes:define-structure resharding-configuration common-lisp:nil
                                    ((node-group-id :target-type
                                      allowed-node-group-id :member-name
                                      "NodeGroupId")
                                     (preferred-availability-zones :target-type
                                      availability-zones-list :member-name
                                      "PreferredAvailabilityZones"))
                                    (:shape-name "ReshardingConfiguration"))

(smithy/sdk/shapes:define-list resharding-configuration-list :member
                               (resharding-configuration :xml-name
                                "ReshardingConfiguration"))

(smithy/sdk/shapes:define-structure resharding-status common-lisp:nil
                                    ((slot-migration :target-type
                                      slot-migration :member-name
                                      "SlotMigration"))
                                    (:shape-name "ReshardingStatus"))

(smithy/sdk/shapes:define-input revoke-cache-security-group-ingress-message
                                common-lisp:nil
                                ((cache-security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "CacheSecurityGroupName")
                                 (ec2security-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "EC2SecurityGroupName")
                                 (ec2security-group-owner-id :target-type
                                  string :required common-lisp:t :member-name
                                  "EC2SecurityGroupOwnerId"))
                                (:shape-name
                                 "RevokeCacheSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output revoke-cache-security-group-ingress-result
                                 common-lisp:nil
                                 ((cache-security-group :target-type
                                   cache-security-group :member-name
                                   "CacheSecurityGroup"))
                                 (:shape-name
                                  "RevokeCacheSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-structure scale-config common-lisp:nil
                                    ((scale-percentage :target-type
                                      integer-optional :member-name
                                      "ScalePercentage")
                                     (scale-interval-minutes :target-type
                                      integer-optional :member-name
                                      "ScaleIntervalMinutes"))
                                    (:shape-name "ScaleConfig"))

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

(smithy/sdk/shapes:define-structure serverless-cache common-lisp:nil
                                    ((serverless-cache-name :target-type string
                                      :member-name "ServerlessCacheName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (status :target-type string :member-name
                                      "Status")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion")
                                     (full-engine-version :target-type string
                                      :member-name "FullEngineVersion")
                                     (cache-usage-limits :target-type
                                      cache-usage-limits :member-name
                                      "CacheUsageLimits")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (security-group-ids :target-type
                                      security-group-ids-list :member-name
                                      "SecurityGroupIds")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (reader-endpoint :target-type endpoint
                                      :member-name "ReaderEndpoint")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (user-group-id :target-type string
                                      :member-name "UserGroupId")
                                     (subnet-ids :target-type subnet-ids-list
                                      :member-name "SubnetIds")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (daily-snapshot-time :target-type string
                                      :member-name "DailySnapshotTime"))
                                    (:shape-name "ServerlessCache"))

(smithy/sdk/shapes:define-error serverless-cache-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServerlessCacheAlreadyExistsFault")
                                (:error-name
                                 "ServerlessCacheAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure serverless-cache-configuration
                                    common-lisp:nil
                                    ((serverless-cache-name :target-type string
                                      :member-name "ServerlessCacheName")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion"))
                                    (:shape-name
                                     "ServerlessCacheConfiguration"))

(smithy/sdk/shapes:define-list serverless-cache-list :member serverless-cache)

(smithy/sdk/shapes:define-error serverless-cache-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServerlessCacheNotFoundFault")
                                (:error-name "ServerlessCacheNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error
 serverless-cache-quota-for-customer-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "ServerlessCacheQuotaForCustomerExceededFault")
 (:error-name "ServerlessCacheQuotaForCustomerExceededFault") (:error-code 400))

(smithy/sdk/shapes:define-structure serverless-cache-snapshot common-lisp:nil
                                    ((serverless-cache-snapshot-name
                                      :target-type string :member-name
                                      "ServerlessCacheSnapshotName")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (snapshot-type :target-type string
                                      :member-name "SnapshotType")
                                     (status :target-type string :member-name
                                      "Status")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (expiry-time :target-type tstamp
                                      :member-name "ExpiryTime")
                                     (bytes-used-for-cache :target-type string
                                      :member-name "BytesUsedForCache")
                                     (serverless-cache-configuration
                                      :target-type
                                      serverless-cache-configuration
                                      :member-name
                                      "ServerlessCacheConfiguration"))
                                    (:shape-name "ServerlessCacheSnapshot"))

(smithy/sdk/shapes:define-error serverless-cache-snapshot-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServerlessCacheSnapshotAlreadyExistsFault")
                                (:error-name
                                 "ServerlessCacheSnapshotAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list serverless-cache-snapshot-list :member
                               (serverless-cache-snapshot :xml-name
                                "ServerlessCacheSnapshot"))

(smithy/sdk/shapes:define-error serverless-cache-snapshot-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServerlessCacheSnapshotNotFoundFault")
                                (:error-name
                                 "ServerlessCacheSnapshotNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error serverless-cache-snapshot-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServerlessCacheSnapshotQuotaExceededFault")
                                (:error-name
                                 "ServerlessCacheSnapshotQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-linked-role-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceLinkedRoleNotFoundFault")
                                (:error-name "ServiceLinkedRoleNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure service-update common-lisp:nil
                                    ((service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (service-update-release-date :target-type
                                      tstamp :member-name
                                      "ServiceUpdateReleaseDate")
                                     (service-update-end-date :target-type
                                      tstamp :member-name
                                      "ServiceUpdateEndDate")
                                     (service-update-severity :target-type
                                      service-update-severity :member-name
                                      "ServiceUpdateSeverity")
                                     (service-update-recommended-apply-by-date
                                      :target-type tstamp :member-name
                                      "ServiceUpdateRecommendedApplyByDate")
                                     (service-update-status :target-type
                                      service-update-status :member-name
                                      "ServiceUpdateStatus")
                                     (service-update-description :target-type
                                      string :member-name
                                      "ServiceUpdateDescription")
                                     (service-update-type :target-type
                                      service-update-type :member-name
                                      "ServiceUpdateType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (auto-update-after-recommended-apply-by-date
                                      :target-type boolean-optional
                                      :member-name
                                      "AutoUpdateAfterRecommendedApplyByDate")
                                     (estimated-update-time :target-type string
                                      :member-name "EstimatedUpdateTime"))
                                    (:shape-name "ServiceUpdate"))

(smithy/sdk/shapes:define-list service-update-list :member
                               (service-update :xml-name "ServiceUpdate"))

(smithy/sdk/shapes:define-error service-update-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceUpdateNotFoundFault")
                                (:error-name "ServiceUpdateNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum service-update-severity
    common-lisp:nil
  (:critical "critical")
  (:important "important")
  (:medium "medium")
  (:low "low"))

(smithy/sdk/shapes:define-enum service-update-status
    common-lisp:nil
  (:available "available")
  (:cancelled "cancelled")
  (:expired "expired"))

(smithy/sdk/shapes:define-list service-update-status-list :member
                               service-update-status)

(smithy/sdk/shapes:define-enum service-update-type
    common-lisp:nil
  (:security-update "security-update"))

(smithy/sdk/shapes:define-output service-updates-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (service-updates :target-type
                                   service-update-list :member-name
                                   "ServiceUpdates"))
                                 (:shape-name "ServiceUpdatesMessage"))

(smithy/sdk/shapes:define-enum sla-met
    common-lisp:nil
  (:yes "yes")
  (:no "no")
  (:na "n/a"))

(smithy/sdk/shapes:define-structure slot-migration common-lisp:nil
                                    ((progress-percentage :target-type double
                                      :member-name "ProgressPercentage"))
                                    (:shape-name "SlotMigration"))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((snapshot-name :target-type string
                                      :member-name "SnapshotName")
                                     (replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (replication-group-description
                                      :target-type string :member-name
                                      "ReplicationGroupDescription")
                                     (cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (snapshot-status :target-type string
                                      :member-name "SnapshotStatus")
                                     (snapshot-source :target-type string
                                      :member-name "SnapshotSource")
                                     (cache-node-type :target-type string
                                      :member-name "CacheNodeType")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (num-cache-nodes :target-type
                                      integer-optional :member-name
                                      "NumCacheNodes")
                                     (preferred-availability-zone :target-type
                                      string :member-name
                                      "PreferredAvailabilityZone")
                                     (preferred-outpost-arn :target-type string
                                      :member-name "PreferredOutpostArn")
                                     (cache-cluster-create-time :target-type
                                      tstamp :member-name
                                      "CacheClusterCreateTime")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (topic-arn :target-type string
                                      :member-name "TopicArn")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (cache-parameter-group-name :target-type
                                      string :member-name
                                      "CacheParameterGroupName")
                                     (cache-subnet-group-name :target-type
                                      string :member-name
                                      "CacheSubnetGroupName")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (snapshot-retention-limit :target-type
                                      integer-optional :member-name
                                      "SnapshotRetentionLimit")
                                     (snapshot-window :target-type string
                                      :member-name "SnapshotWindow")
                                     (num-node-groups :target-type
                                      integer-optional :member-name
                                      "NumNodeGroups")
                                     (automatic-failover :target-type
                                      automatic-failover-status :member-name
                                      "AutomaticFailover")
                                     (node-snapshots :target-type
                                      node-snapshot-list :member-name
                                      "NodeSnapshots")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (data-tiering :target-type
                                      data-tiering-status :member-name
                                      "DataTiering"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-error snapshot-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotAlreadyExistsFault")
                                (:error-name "SnapshotAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list snapshot-arns-list :member
                               (string :xml-name "SnapshotArn"))

(smithy/sdk/shapes:define-error snapshot-feature-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotFeatureNotSupportedFault")
                                (:error-name
                                 "SnapshotFeatureNotSupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list snapshot-list :member
                               (snapshot :xml-name "Snapshot"))

(smithy/sdk/shapes:define-error snapshot-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotNotFoundFault")
                                (:error-name "SnapshotNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error snapshot-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotQuotaExceededFault")
                                (:error-name "SnapshotQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:cache-cluster "cache-cluster")
  (:cache-parameter-group "cache-parameter-group")
  (:cache-security-group "cache-security-group")
  (:cache-subnet-group "cache-subnet-group")
  (:replication-group "replication-group")
  (:serverless-cache "serverless-cache")
  (:serverless-cache-snapshot "serverless-cache-snapshot")
  (:user "user")
  (:user-group "user-group"))

(smithy/sdk/shapes:define-input start-migration-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (customer-node-endpoint-list :target-type
                                  customer-node-endpoint-list :required
                                  common-lisp:t :member-name
                                  "CustomerNodeEndpointList"))
                                (:shape-name "StartMigrationMessage"))

(smithy/sdk/shapes:define-output start-migration-response common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "StartMigrationResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      availability-zone :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-outpost :target-type
                                      subnet-outpost :member-name
                                      "SubnetOutpost")
                                     (supported-network-types :target-type
                                      network-type-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-list subnet-ids-list :member
                               (string :xml-name "SubnetId"))

(smithy/sdk/shapes:define-error subnet-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetInUse")
                                (:error-name "SubnetInUse") (:error-code 400))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-not-allowed-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetNotAllowedFault")
                                (:error-name "SubnetNotAllowedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure subnet-outpost common-lisp:nil
                                    ((subnet-outpost-arn :target-type string
                                      :member-name "SubnetOutpostArn"))
                                    (:shape-name "SubnetOutpost"))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-structure tag-list-message common-lisp:nil
                                    ((tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "TagListMessage"))

(smithy/sdk/shapes:define-error tag-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagNotFoundFault")
                                (:error-name "TagNotFound") (:error-code 404))

(smithy/sdk/shapes:define-error tag-quota-per-resource-exceeded common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagQuotaPerResourceExceeded")
                                (:error-name "TagQuotaPerResourceExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input test-failover-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (node-group-id :target-type
                                  allowed-node-group-id :required common-lisp:t
                                  :member-name "NodeGroupId"))
                                (:shape-name "TestFailoverMessage"))

(smithy/sdk/shapes:define-error test-failover-not-available-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TestFailoverNotAvailableFault")
                                (:error-name "TestFailoverNotAvailableFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-output test-failover-result common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "TestFailoverResult"))

(smithy/sdk/shapes:define-input test-migration-message common-lisp:nil
                                ((replication-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationGroupId")
                                 (customer-node-endpoint-list :target-type
                                  customer-node-endpoint-list :required
                                  common-lisp:t :member-name
                                  "CustomerNodeEndpointList"))
                                (:shape-name "TestMigrationMessage"))

(smithy/sdk/shapes:define-output test-migration-response common-lisp:nil
                                 ((replication-group :target-type
                                   replication-group :member-name
                                   "ReplicationGroup"))
                                 (:shape-name "TestMigrationResponse"))

(smithy/sdk/shapes:define-structure time-range-filter common-lisp:nil
                                    ((start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (end-time :target-type tstamp :member-name
                                      "EndTime"))
                                    (:shape-name "TimeRangeFilter"))

(smithy/sdk/shapes:define-enum transit-encryption-mode
    common-lisp:nil
  (:preferred "preferred")
  (:required "required"))

(smithy/sdk/shapes:define-list ugreplication-group-id-list :member string)

(smithy/sdk/shapes:define-list ugserverless-cache-id-list :member string)

(smithy/sdk/shapes:define-structure unprocessed-update-action common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (error-type :target-type string
                                      :member-name "ErrorType")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UnprocessedUpdateAction"))

(smithy/sdk/shapes:define-list unprocessed-update-action-list :member
                               (unprocessed-update-action :xml-name
                                "UnprocessedUpdateAction"))

(smithy/sdk/shapes:define-structure update-action common-lisp:nil
                                    ((replication-group-id :target-type string
                                      :member-name "ReplicationGroupId")
                                     (cache-cluster-id :target-type string
                                      :member-name "CacheClusterId")
                                     (service-update-name :target-type string
                                      :member-name "ServiceUpdateName")
                                     (service-update-release-date :target-type
                                      tstamp :member-name
                                      "ServiceUpdateReleaseDate")
                                     (service-update-severity :target-type
                                      service-update-severity :member-name
                                      "ServiceUpdateSeverity")
                                     (service-update-status :target-type
                                      service-update-status :member-name
                                      "ServiceUpdateStatus")
                                     (service-update-recommended-apply-by-date
                                      :target-type tstamp :member-name
                                      "ServiceUpdateRecommendedApplyByDate")
                                     (service-update-type :target-type
                                      service-update-type :member-name
                                      "ServiceUpdateType")
                                     (update-action-available-date :target-type
                                      tstamp :member-name
                                      "UpdateActionAvailableDate")
                                     (update-action-status :target-type
                                      update-action-status :member-name
                                      "UpdateActionStatus")
                                     (nodes-updated :target-type string
                                      :member-name "NodesUpdated")
                                     (update-action-status-modified-date
                                      :target-type tstamp :member-name
                                      "UpdateActionStatusModifiedDate")
                                     (sla-met :target-type sla-met :member-name
                                      "SlaMet")
                                     (node-group-update-status :target-type
                                      node-group-update-status-list
                                      :member-name "NodeGroupUpdateStatus")
                                     (cache-node-update-status :target-type
                                      cache-node-update-status-list
                                      :member-name "CacheNodeUpdateStatus")
                                     (estimated-update-time :target-type string
                                      :member-name "EstimatedUpdateTime")
                                     (engine :target-type string :member-name
                                      "Engine"))
                                    (:shape-name "UpdateAction"))

(smithy/sdk/shapes:define-list update-action-list :member
                               (update-action :xml-name "UpdateAction"))

(smithy/sdk/shapes:define-structure update-action-results-message
                                    common-lisp:nil
                                    ((processed-update-actions :target-type
                                      processed-update-action-list :member-name
                                      "ProcessedUpdateActions")
                                     (unprocessed-update-actions :target-type
                                      unprocessed-update-action-list
                                      :member-name "UnprocessedUpdateActions"))
                                    (:shape-name "UpdateActionResultsMessage"))

(smithy/sdk/shapes:define-enum update-action-status
    common-lisp:nil
  (:not-applied "not-applied")
  (:waiting-to-start "waiting-to-start")
  (:in-progress "in-progress")
  (:stopping "stopping")
  (:stopped "stopped")
  (:complete "complete")
  (:scheduling "scheduling")
  (:scheduled "scheduled")
  (:not-applicable "not-applicable"))

(smithy/sdk/shapes:define-list update-action-status-list :member
                               update-action-status)

(smithy/sdk/shapes:define-output update-actions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (update-actions :target-type
                                   update-action-list :member-name
                                   "UpdateActions"))
                                 (:shape-name "UpdateActionsMessage"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type string :member-name
                                      "UserId")
                                     (user-name :target-type string
                                      :member-name "UserName")
                                     (status :target-type string :member-name
                                      "Status")
                                     (engine :target-type engine-type
                                      :member-name "Engine")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (access-string :target-type string
                                      :member-name "AccessString")
                                     (user-group-ids :target-type
                                      user-group-id-list :member-name
                                      "UserGroupIds")
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
                                (:error-code 400))

(smithy/sdk/shapes:define-structure user-group common-lisp:nil
                                    ((user-group-id :target-type string
                                      :member-name "UserGroupId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (engine :target-type engine-type
                                      :member-name "Engine")
                                     (user-ids :target-type user-id-list
                                      :member-name "UserIds")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (pending-changes :target-type
                                      user-group-pending-changes :member-name
                                      "PendingChanges")
                                     (replication-groups :target-type
                                      ugreplication-group-id-list :member-name
                                      "ReplicationGroups")
                                     (serverless-caches :target-type
                                      ugserverless-cache-id-list :member-name
                                      "ServerlessCaches")
                                     (arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "UserGroup"))

(smithy/sdk/shapes:define-error user-group-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserGroupAlreadyExistsFault")
                                (:error-name "UserGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type user-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-group-id-list :member user-group-id)

(smithy/sdk/shapes:define-list user-group-id-list-input :member user-group-id)

(smithy/sdk/shapes:define-list user-group-list :member user-group)

(smithy/sdk/shapes:define-error user-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserGroupNotFoundFault")
                                (:error-name "UserGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure user-group-pending-changes common-lisp:nil
                                    ((user-ids-to-remove :target-type
                                      user-id-list :member-name
                                      "UserIdsToRemove")
                                     (user-ids-to-add :target-type user-id-list
                                      :member-name "UserIdsToAdd"))
                                    (:shape-name "UserGroupPendingChanges"))

(smithy/sdk/shapes:define-error user-group-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserGroupQuotaExceededFault")
                                (:error-name "UserGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure user-groups-update-status common-lisp:nil
                                    ((user-group-ids-to-add :target-type
                                      user-group-id-list :member-name
                                      "UserGroupIdsToAdd")
                                     (user-group-ids-to-remove :target-type
                                      user-group-id-list :member-name
                                      "UserGroupIdsToRemove"))
                                    (:shape-name "UserGroupsUpdateStatus"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-id-list :member user-id)

(smithy/sdk/shapes:define-list user-id-list-input :member user-id)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error user-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserNotFoundFault")
                                (:error-name "UserNotFound") (:error-code 404))

(smithy/sdk/shapes:define-error user-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UserQuotaExceededFault")
                                (:error-name "UserQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-message :output
                                       tag-list-message :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        cache-subnet-group-not-found-fault
                                        invalid-arnfault
                                        invalid-replication-group-state-fault
                                        invalid-serverless-cache-snapshot-state-fault
                                        invalid-serverless-cache-state-fault
                                        replication-group-not-found-fault
                                        reserved-cache-node-not-found-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-not-found-fault
                                        snapshot-not-found-fault
                                        tag-quota-per-resource-exceeded
                                        user-group-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation authorize-cache-security-group-ingress
                                       :shape-name
                                       "AuthorizeCacheSecurityGroupIngress"
                                       :input
                                       authorize-cache-security-group-ingress-message
                                       :output
                                       authorize-cache-security-group-ingress-result
                                       :errors
                                       (authorization-already-exists-fault
                                        cache-security-group-not-found-fault
                                        invalid-cache-security-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation batch-apply-update-action :shape-name
                                       "BatchApplyUpdateAction" :input
                                       batch-apply-update-action-message
                                       :output update-action-results-message
                                       :errors
                                       (invalid-parameter-value-exception
                                        service-update-not-found-fault))

(smithy/sdk/operation:define-operation batch-stop-update-action :shape-name
                                       "BatchStopUpdateAction" :input
                                       batch-stop-update-action-message :output
                                       update-action-results-message :errors
                                       (invalid-parameter-value-exception
                                        service-update-not-found-fault))

(smithy/sdk/operation:define-operation complete-migration :shape-name
                                       "CompleteMigration" :input
                                       complete-migration-message :output
                                       complete-migration-response :errors
                                       (invalid-replication-group-state-fault
                                        replication-group-not-found-fault
                                        replication-group-not-under-migration-fault))

(smithy/sdk/operation:define-operation copy-serverless-cache-snapshot
                                       :shape-name
                                       "CopyServerlessCacheSnapshot" :input
                                       copy-serverless-cache-snapshot-request
                                       :output
                                       copy-serverless-cache-snapshot-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-serverless-cache-snapshot-state-fault
                                        serverless-cache-snapshot-already-exists-fault
                                        serverless-cache-snapshot-not-found-fault
                                        serverless-cache-snapshot-quota-exceeded-fault
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation copy-snapshot :shape-name "CopySnapshot"
                                       :input copy-snapshot-message :output
                                       copy-snapshot-result :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-snapshot-state-fault
                                        snapshot-already-exists-fault
                                        snapshot-not-found-fault
                                        snapshot-quota-exceeded-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-cache-cluster :shape-name
                                       "CreateCacheCluster" :input
                                       create-cache-cluster-message :output
                                       create-cache-cluster-result :errors
                                       (cache-cluster-already-exists-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        cache-subnet-group-not-found-fault
                                        cluster-quota-for-customer-exceeded-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        replication-group-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-cache-parameter-group :shape-name
                                       "CreateCacheParameterGroup" :input
                                       create-cache-parameter-group-message
                                       :output
                                       create-cache-parameter-group-result
                                       :errors
                                       (cache-parameter-group-already-exists-fault
                                        cache-parameter-group-quota-exceeded-fault
                                        invalid-cache-parameter-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-cache-security-group :shape-name
                                       "CreateCacheSecurityGroup" :input
                                       create-cache-security-group-message
                                       :output
                                       create-cache-security-group-result
                                       :errors
                                       (cache-security-group-already-exists-fault
                                        cache-security-group-quota-exceeded-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-cache-subnet-group :shape-name
                                       "CreateCacheSubnetGroup" :input
                                       create-cache-subnet-group-message
                                       :output create-cache-subnet-group-result
                                       :errors
                                       (cache-subnet-group-already-exists-fault
                                        cache-subnet-group-quota-exceeded-fault
                                        cache-subnet-quota-exceeded-fault
                                        invalid-subnet subnet-not-allowed-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-global-replication-group
                                       :shape-name
                                       "CreateGlobalReplicationGroup" :input
                                       create-global-replication-group-message
                                       :output
                                       create-global-replication-group-result
                                       :errors
                                       (global-replication-group-already-exists-fault
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        replication-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation create-replication-group :shape-name
                                       "CreateReplicationGroup" :input
                                       create-replication-group-message :output
                                       create-replication-group-result :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        cache-subnet-group-not-found-fault
                                        cluster-quota-for-customer-exceeded-fault
                                        global-replication-group-not-found-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-user-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        node-groups-per-replication-group-quota-exceeded-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        replication-group-already-exists-fault
                                        tag-quota-per-resource-exceeded
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation create-serverless-cache :shape-name
                                       "CreateServerlessCache" :input
                                       create-serverless-cache-request :output
                                       create-serverless-cache-response :errors
                                       (invalid-credentials-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-serverless-cache-state-fault
                                        invalid-user-group-state-fault
                                        serverless-cache-already-exists-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-quota-for-customer-exceeded-fault
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation create-serverless-cache-snapshot
                                       :shape-name
                                       "CreateServerlessCacheSnapshot" :input
                                       create-serverless-cache-snapshot-request
                                       :output
                                       create-serverless-cache-snapshot-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-serverless-cache-state-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-already-exists-fault
                                        serverless-cache-snapshot-quota-exceeded-fault
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-message :output
                                       create-snapshot-result :errors
                                       (cache-cluster-not-found-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        replication-group-not-found-fault
                                        snapshot-already-exists-fault
                                        snapshot-feature-not-supported-fault
                                        snapshot-quota-exceeded-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-message :output user
                                       :errors
                                       (duplicate-user-name-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded
                                        user-already-exists-fault
                                        user-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-user-group :shape-name
                                       "CreateUserGroup" :input
                                       create-user-group-message :output
                                       user-group :errors
                                       (default-user-required
                                        duplicate-user-name-fault
                                        invalid-parameter-value-exception
                                        service-linked-role-not-found-fault
                                        tag-quota-per-resource-exceeded
                                        user-group-already-exists-fault
                                        user-group-quota-exceeded-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation
 decrease-node-groups-in-global-replication-group :shape-name
 "DecreaseNodeGroupsInGlobalReplicationGroup" :input
 decrease-node-groups-in-global-replication-group-message :output
 decrease-node-groups-in-global-replication-group-result :errors
 (global-replication-group-not-found-fault
  invalid-global-replication-group-state-fault
  invalid-parameter-combination-exception invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation decrease-replica-count :shape-name
                                       "DecreaseReplicaCount" :input
                                       decrease-replica-count-message :output
                                       decrease-replica-count-result :errors
                                       (cluster-quota-for-customer-exceeded-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        node-groups-per-replication-group-quota-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        no-operation-fault
                                        replication-group-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-cache-cluster :shape-name
                                       "DeleteCacheCluster" :input
                                       delete-cache-cluster-message :output
                                       delete-cache-cluster-result :errors
                                       (cache-cluster-not-found-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        snapshot-already-exists-fault
                                        snapshot-feature-not-supported-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-cache-parameter-group :shape-name
                                       "DeleteCacheParameterGroup" :input
                                       delete-cache-parameter-group-message
                                       :output common-lisp:null :errors
                                       (cache-parameter-group-not-found-fault
                                        invalid-cache-parameter-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-cache-security-group :shape-name
                                       "DeleteCacheSecurityGroup" :input
                                       delete-cache-security-group-message
                                       :output common-lisp:null :errors
                                       (cache-security-group-not-found-fault
                                        invalid-cache-security-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-cache-subnet-group :shape-name
                                       "DeleteCacheSubnetGroup" :input
                                       delete-cache-subnet-group-message
                                       :output common-lisp:null :errors
                                       (cache-subnet-group-in-use
                                        cache-subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation delete-global-replication-group
                                       :shape-name
                                       "DeleteGlobalReplicationGroup" :input
                                       delete-global-replication-group-message
                                       :output
                                       delete-global-replication-group-result
                                       :errors
                                       (global-replication-group-not-found-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-replication-group :shape-name
                                       "DeleteReplicationGroup" :input
                                       delete-replication-group-message :output
                                       delete-replication-group-result :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        replication-group-not-found-fault
                                        snapshot-already-exists-fault
                                        snapshot-feature-not-supported-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-serverless-cache :shape-name
                                       "DeleteServerlessCache" :input
                                       delete-serverless-cache-request :output
                                       delete-serverless-cache-response :errors
                                       (invalid-credentials-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-serverless-cache-state-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-already-exists-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-serverless-cache-snapshot
                                       :shape-name
                                       "DeleteServerlessCacheSnapshot" :input
                                       delete-serverless-cache-snapshot-request
                                       :output
                                       delete-serverless-cache-snapshot-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        invalid-serverless-cache-snapshot-state-fault
                                        serverless-cache-snapshot-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation delete-snapshot :shape-name
                                       "DeleteSnapshot" :input
                                       delete-snapshot-message :output
                                       delete-snapshot-result :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-snapshot-state-fault
                                        snapshot-not-found-fault))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-message :output user
                                       :errors
                                       (default-user-associated-to-user-group-fault
                                        invalid-parameter-value-exception
                                        invalid-user-state-fault
                                        service-linked-role-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation delete-user-group :shape-name
                                       "DeleteUserGroup" :input
                                       delete-user-group-message :output
                                       user-group :errors
                                       (invalid-parameter-value-exception
                                        invalid-user-group-state-fault
                                        service-linked-role-not-found-fault
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-cache-clusters :shape-name
                                       "DescribeCacheClusters" :input
                                       describe-cache-clusters-message :output
                                       cache-cluster-message :errors
                                       (cache-cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-cache-engine-versions
                                       :shape-name
                                       "DescribeCacheEngineVersions" :input
                                       describe-cache-engine-versions-message
                                       :output cache-engine-version-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-cache-parameter-groups
                                       :shape-name
                                       "DescribeCacheParameterGroups" :input
                                       describe-cache-parameter-groups-message
                                       :output cache-parameter-groups-message
                                       :errors
                                       (cache-parameter-group-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-cache-parameters :shape-name
                                       "DescribeCacheParameters" :input
                                       describe-cache-parameters-message
                                       :output cache-parameter-group-details
                                       :errors
                                       (cache-parameter-group-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-cache-security-groups
                                       :shape-name
                                       "DescribeCacheSecurityGroups" :input
                                       describe-cache-security-groups-message
                                       :output cache-security-group-message
                                       :errors
                                       (cache-security-group-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-cache-subnet-groups :shape-name
                                       "DescribeCacheSubnetGroups" :input
                                       describe-cache-subnet-groups-message
                                       :output cache-subnet-group-message
                                       :errors
                                       (cache-subnet-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-engine-default-parameters
                                       :shape-name
                                       "DescribeEngineDefaultParameters" :input
                                       describe-engine-default-parameters-message
                                       :output
                                       describe-engine-default-parameters-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-message :output
                                       events-message :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-global-replication-groups
                                       :shape-name
                                       "DescribeGlobalReplicationGroups" :input
                                       describe-global-replication-groups-message
                                       :output
                                       describe-global-replication-groups-result
                                       :errors
                                       (global-replication-group-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-replication-groups :shape-name
                                       "DescribeReplicationGroups" :input
                                       describe-replication-groups-message
                                       :output replication-group-message
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        replication-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-reserved-cache-nodes
                                       :shape-name "DescribeReservedCacheNodes"
                                       :input
                                       describe-reserved-cache-nodes-message
                                       :output reserved-cache-node-message
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-cache-node-not-found-fault))

(smithy/sdk/operation:define-operation describe-reserved-cache-nodes-offerings
                                       :shape-name
                                       "DescribeReservedCacheNodesOfferings"
                                       :input
                                       describe-reserved-cache-nodes-offerings-message
                                       :output
                                       reserved-cache-nodes-offering-message
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-cache-nodes-offering-not-found-fault))

(smithy/sdk/operation:define-operation describe-serverless-cache-snapshots
                                       :shape-name
                                       "DescribeServerlessCacheSnapshots"
                                       :input
                                       describe-serverless-cache-snapshots-request
                                       :output
                                       describe-serverless-cache-snapshots-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-serverless-caches :shape-name
                                       "DescribeServerlessCaches" :input
                                       describe-serverless-caches-request
                                       :output
                                       describe-serverless-caches-response
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        serverless-cache-not-found-fault))

(smithy/sdk/operation:define-operation describe-service-updates :shape-name
                                       "DescribeServiceUpdates" :input
                                       describe-service-updates-message :output
                                       service-updates-message :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        service-update-not-found-fault))

(smithy/sdk/operation:define-operation describe-snapshots :shape-name
                                       "DescribeSnapshots" :input
                                       describe-snapshots-message :output
                                       describe-snapshots-list-message :errors
                                       (cache-cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        snapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-update-actions :shape-name
                                       "DescribeUpdateActions" :input
                                       describe-update-actions-message :output
                                       update-actions-message :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-user-groups :shape-name
                                       "DescribeUserGroups" :input
                                       describe-user-groups-message :output
                                       describe-user-groups-result :errors
                                       (invalid-parameter-combination-exception
                                        service-linked-role-not-found-fault
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-users :shape-name
                                       "DescribeUsers" :input
                                       describe-users-message :output
                                       describe-users-result :errors
                                       (invalid-parameter-combination-exception
                                        service-linked-role-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation disassociate-global-replication-group
                                       :shape-name
                                       "DisassociateGlobalReplicationGroup"
                                       :input
                                       disassociate-global-replication-group-message
                                       :output
                                       disassociate-global-replication-group-result
                                       :errors
                                       (global-replication-group-not-found-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation export-serverless-cache-snapshot
                                       :shape-name
                                       "ExportServerlessCacheSnapshot" :input
                                       export-serverless-cache-snapshot-request
                                       :output
                                       export-serverless-cache-snapshot-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        invalid-serverless-cache-snapshot-state-fault
                                        serverless-cache-snapshot-not-found-fault
                                        service-linked-role-not-found-fault))

(smithy/sdk/operation:define-operation failover-global-replication-group
                                       :shape-name
                                       "FailoverGlobalReplicationGroup" :input
                                       failover-global-replication-group-message
                                       :output
                                       failover-global-replication-group-result
                                       :errors
                                       (global-replication-group-not-found-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation
 increase-node-groups-in-global-replication-group :shape-name
 "IncreaseNodeGroupsInGlobalReplicationGroup" :input
 increase-node-groups-in-global-replication-group-message :output
 increase-node-groups-in-global-replication-group-result :errors
 (global-replication-group-not-found-fault
  invalid-global-replication-group-state-fault
  invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation increase-replica-count :shape-name
                                       "IncreaseReplicaCount" :input
                                       increase-replica-count-message :output
                                       increase-replica-count-result :errors
                                       (cluster-quota-for-customer-exceeded-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-kmskey-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        node-groups-per-replication-group-quota-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        no-operation-fault
                                        replication-group-not-found-fault))

(smithy/sdk/operation:define-operation list-allowed-node-type-modifications
                                       :shape-name
                                       "ListAllowedNodeTypeModifications"
                                       :input
                                       list-allowed-node-type-modifications-message
                                       :output
                                       allowed-node-type-modifications-message
                                       :errors
                                       (cache-cluster-not-found-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        replication-group-not-found-fault))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-message :output
                                       tag-list-message :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        cache-subnet-group-not-found-fault
                                        invalid-arnfault
                                        invalid-replication-group-state-fault
                                        invalid-serverless-cache-snapshot-state-fault
                                        invalid-serverless-cache-state-fault
                                        replication-group-not-found-fault
                                        reserved-cache-node-not-found-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-not-found-fault
                                        snapshot-not-found-fault
                                        user-group-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation modify-cache-cluster :shape-name
                                       "ModifyCacheCluster" :input
                                       modify-cache-cluster-message :output
                                       modify-cache-cluster-result :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-cache-security-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault))

(smithy/sdk/operation:define-operation modify-cache-parameter-group :shape-name
                                       "ModifyCacheParameterGroup" :input
                                       modify-cache-parameter-group-message
                                       :output
                                       cache-parameter-group-name-message
                                       :errors
                                       (cache-parameter-group-not-found-fault
                                        invalid-cache-parameter-group-state-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation modify-cache-subnet-group :shape-name
                                       "ModifyCacheSubnetGroup" :input
                                       modify-cache-subnet-group-message
                                       :output modify-cache-subnet-group-result
                                       :errors
                                       (cache-subnet-group-not-found-fault
                                        cache-subnet-quota-exceeded-fault
                                        invalid-subnet subnet-in-use
                                        subnet-not-allowed-fault))

(smithy/sdk/operation:define-operation modify-global-replication-group
                                       :shape-name
                                       "ModifyGlobalReplicationGroup" :input
                                       modify-global-replication-group-message
                                       :output
                                       modify-global-replication-group-result
                                       :errors
                                       (global-replication-group-not-found-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation modify-replication-group :shape-name
                                       "ModifyReplicationGroup" :input
                                       modify-replication-group-message :output
                                       modify-replication-group-result :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        insufficient-cache-cluster-capacity-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-cache-security-group-state-fault
                                        invalid-kmskey-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        invalid-user-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        node-quota-for-cluster-exceeded-fault
                                        node-quota-for-customer-exceeded-fault
                                        replication-group-not-found-fault
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation
 modify-replication-group-shard-configuration :shape-name
 "ModifyReplicationGroupShardConfiguration" :input
 modify-replication-group-shard-configuration-message :output
 modify-replication-group-shard-configuration-result :errors
 (insufficient-cache-cluster-capacity-fault invalid-cache-cluster-state-fault
  invalid-kmskey-fault invalid-parameter-combination-exception
  invalid-parameter-value-exception invalid-replication-group-state-fault
  invalid-vpcnetwork-state-fault
  node-groups-per-replication-group-quota-exceeded-fault
  node-quota-for-customer-exceeded-fault replication-group-not-found-fault))

(smithy/sdk/operation:define-operation modify-serverless-cache :shape-name
                                       "ModifyServerlessCache" :input
                                       modify-serverless-cache-request :output
                                       modify-serverless-cache-response :errors
                                       (invalid-credentials-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-serverless-cache-state-fault
                                        invalid-user-group-state-fault
                                        serverless-cache-not-found-fault
                                        service-linked-role-not-found-fault
                                        user-group-not-found-fault))

(smithy/sdk/operation:define-operation modify-user :shape-name "ModifyUser"
                                       :input modify-user-message :output user
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-user-state-fault
                                        service-linked-role-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation modify-user-group :shape-name
                                       "ModifyUserGroup" :input
                                       modify-user-group-message :output
                                       user-group :errors
                                       (default-user-required
                                        duplicate-user-name-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-user-group-state-fault
                                        service-linked-role-not-found-fault
                                        user-group-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation purchase-reserved-cache-nodes-offering
                                       :shape-name
                                       "PurchaseReservedCacheNodesOffering"
                                       :input
                                       purchase-reserved-cache-nodes-offering-message
                                       :output
                                       purchase-reserved-cache-nodes-offering-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        reserved-cache-node-already-exists-fault
                                        reserved-cache-node-quota-exceeded-fault
                                        reserved-cache-nodes-offering-not-found-fault
                                        tag-quota-per-resource-exceeded))

(smithy/sdk/operation:define-operation
 rebalance-slots-in-global-replication-group :shape-name
 "RebalanceSlotsInGlobalReplicationGroup" :input
 rebalance-slots-in-global-replication-group-message :output
 rebalance-slots-in-global-replication-group-result :errors
 (global-replication-group-not-found-fault
  invalid-global-replication-group-state-fault
  invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation reboot-cache-cluster :shape-name
                                       "RebootCacheCluster" :input
                                       reboot-cache-cluster-message :output
                                       reboot-cache-cluster-result :errors
                                       (cache-cluster-not-found-fault
                                        invalid-cache-cluster-state-fault))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-message
                                       :output tag-list-message :errors
                                       (cache-cluster-not-found-fault
                                        cache-parameter-group-not-found-fault
                                        cache-security-group-not-found-fault
                                        cache-subnet-group-not-found-fault
                                        invalid-arnfault
                                        invalid-replication-group-state-fault
                                        invalid-serverless-cache-snapshot-state-fault
                                        invalid-serverless-cache-state-fault
                                        replication-group-not-found-fault
                                        reserved-cache-node-not-found-fault
                                        serverless-cache-not-found-fault
                                        serverless-cache-snapshot-not-found-fault
                                        snapshot-not-found-fault
                                        tag-not-found-fault
                                        user-group-not-found-fault
                                        user-not-found-fault))

(smithy/sdk/operation:define-operation reset-cache-parameter-group :shape-name
                                       "ResetCacheParameterGroup" :input
                                       reset-cache-parameter-group-message
                                       :output
                                       cache-parameter-group-name-message
                                       :errors
                                       (cache-parameter-group-not-found-fault
                                        invalid-cache-parameter-group-state-fault
                                        invalid-global-replication-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation revoke-cache-security-group-ingress
                                       :shape-name
                                       "RevokeCacheSecurityGroupIngress" :input
                                       revoke-cache-security-group-ingress-message
                                       :output
                                       revoke-cache-security-group-ingress-result
                                       :errors
                                       (authorization-not-found-fault
                                        cache-security-group-not-found-fault
                                        invalid-cache-security-group-state-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation start-migration :shape-name
                                       "StartMigration" :input
                                       start-migration-message :output
                                       start-migration-response :errors
                                       (invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        replication-group-already-under-migration-fault
                                        replication-group-not-found-fault))

(smithy/sdk/operation:define-operation test-failover :shape-name "TestFailover"
                                       :input test-failover-message :output
                                       test-failover-result :errors
                                       (apicall-rate-for-customer-exceeded-fault
                                        invalid-cache-cluster-state-fault
                                        invalid-kmskey-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        node-group-not-found-fault
                                        replication-group-not-found-fault
                                        test-failover-not-available-fault))

(smithy/sdk/operation:define-operation test-migration :shape-name
                                       "TestMigration" :input
                                       test-migration-message :output
                                       test-migration-response :errors
                                       (invalid-parameter-value-exception
                                        invalid-replication-group-state-fault
                                        replication-group-already-under-migration-fault
                                        replication-group-not-found-fault))
