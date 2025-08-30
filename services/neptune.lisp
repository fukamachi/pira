(uiop/package:define-package #:pira/neptune (:use)
                             (:export #:add-role-to-dbcluster
                              #:add-source-identifier-to-subscription
                              #:add-tags-to-resource #:amazon-rdsv19
                              #:apply-method #:apply-pending-maintenance-action
                              #:attribute-value-list
                              #:authorization-not-found-fault
                              #:availability-zone #:availability-zone-list
                              #:availability-zones #:boolean #:boolean-optional
                              #:certificate-not-found-fault #:character-set
                              #:cloudwatch-logs-export-configuration
                              #:cluster-pending-modified-values
                              #:copy-dbcluster-parameter-group
                              #:copy-dbcluster-snapshot
                              #:copy-dbparameter-group #:create-dbcluster
                              #:create-dbcluster-endpoint
                              #:create-dbcluster-parameter-group
                              #:create-dbcluster-snapshot #:create-dbinstance
                              #:create-dbparameter-group
                              #:create-dbsubnet-group
                              #:create-event-subscription
                              #:create-global-cluster #:dbcluster
                              #:dbcluster-already-exists-fault
                              #:dbcluster-endpoint
                              #:dbcluster-endpoint-already-exists-fault
                              #:dbcluster-endpoint-list
                              #:dbcluster-endpoint-not-found-fault
                              #:dbcluster-endpoint-quota-exceeded-fault
                              #:dbcluster-list #:dbcluster-member
                              #:dbcluster-member-list
                              #:dbcluster-not-found-fault
                              #:dbcluster-option-group-memberships
                              #:dbcluster-option-group-status
                              #:dbcluster-parameter-group
                              #:dbcluster-parameter-group-details
                              #:dbcluster-parameter-group-list
                              #:dbcluster-parameter-group-name-message
                              #:dbcluster-parameter-group-not-found-fault
                              #:dbcluster-quota-exceeded-fault #:dbcluster-role
                              #:dbcluster-role-already-exists-fault
                              #:dbcluster-role-not-found-fault
                              #:dbcluster-role-quota-exceeded-fault
                              #:dbcluster-roles #:dbcluster-snapshot
                              #:dbcluster-snapshot-already-exists-fault
                              #:dbcluster-snapshot-attribute
                              #:dbcluster-snapshot-attribute-list
                              #:dbcluster-snapshot-attributes-result
                              #:dbcluster-snapshot-list
                              #:dbcluster-snapshot-not-found-fault
                              #:dbengine-version #:dbengine-version-list
                              #:dbinstance #:dbinstance-already-exists-fault
                              #:dbinstance-list #:dbinstance-not-found-fault
                              #:dbinstance-status-info
                              #:dbinstance-status-info-list #:dbparameter-group
                              #:dbparameter-group-already-exists-fault
                              #:dbparameter-group-details
                              #:dbparameter-group-list
                              #:dbparameter-group-name-message
                              #:dbparameter-group-not-found-fault
                              #:dbparameter-group-quota-exceeded-fault
                              #:dbparameter-group-status
                              #:dbparameter-group-status-list
                              #:dbsecurity-group-membership
                              #:dbsecurity-group-membership-list
                              #:dbsecurity-group-name-list
                              #:dbsecurity-group-not-found-fault
                              #:dbsnapshot-already-exists-fault
                              #:dbsnapshot-not-found-fault #:dbsubnet-group
                              #:dbsubnet-group-already-exists-fault
                              #:dbsubnet-group-does-not-cover-enough-azs
                              #:dbsubnet-group-not-found-fault
                              #:dbsubnet-group-quota-exceeded-fault
                              #:dbsubnet-groups #:dbsubnet-quota-exceeded-fault
                              #:dbupgrade-dependency-failure-fault
                              #:delete-dbcluster #:delete-dbcluster-endpoint
                              #:delete-dbcluster-parameter-group
                              #:delete-dbcluster-snapshot #:delete-dbinstance
                              #:delete-dbparameter-group
                              #:delete-dbsubnet-group
                              #:delete-event-subscription
                              #:delete-global-cluster
                              #:describe-dbcluster-endpoints
                              #:describe-dbcluster-parameter-groups
                              #:describe-dbcluster-parameters
                              #:describe-dbcluster-snapshot-attributes
                              #:describe-dbcluster-snapshots
                              #:describe-dbclusters
                              #:describe-dbengine-versions
                              #:describe-dbinstances
                              #:describe-dbparameter-groups
                              #:describe-dbparameters
                              #:describe-dbsubnet-groups
                              #:describe-engine-default-cluster-parameters
                              #:describe-engine-default-parameters
                              #:describe-event-categories
                              #:describe-event-subscriptions #:describe-events
                              #:describe-global-clusters
                              #:describe-orderable-dbinstance-options
                              #:describe-pending-maintenance-actions
                              #:describe-valid-dbinstance-modifications
                              #:domain-membership #:domain-membership-list
                              #:domain-not-found-fault #:double
                              #:double-optional #:double-range
                              #:double-range-list #:endpoint #:engine-defaults
                              #:event #:event-categories-list
                              #:event-categories-map
                              #:event-categories-map-list #:event-list
                              #:event-subscription
                              #:event-subscription-quota-exceeded-fault
                              #:event-subscriptions-list #:exception-message
                              #:failover-dbcluster #:failover-global-cluster
                              #:failover-state #:failover-status #:filter
                              #:filter-list #:filter-value-list
                              #:global-cluster
                              #:global-cluster-already-exists-fault
                              #:global-cluster-identifier #:global-cluster-list
                              #:global-cluster-member
                              #:global-cluster-member-list
                              #:global-cluster-not-found-fault
                              #:global-cluster-quota-exceeded-fault
                              #:instance-quota-exceeded-fault
                              #:insufficient-dbcluster-capacity-fault
                              #:insufficient-dbinstance-capacity-fault
                              #:insufficient-storage-cluster-capacity-fault
                              #:integer #:integer-optional
                              #:invalid-dbcluster-endpoint-state-fault
                              #:invalid-dbcluster-snapshot-state-fault
                              #:invalid-dbcluster-state-fault
                              #:invalid-dbinstance-state-fault
                              #:invalid-dbparameter-group-state-fault
                              #:invalid-dbsecurity-group-state-fault
                              #:invalid-dbsnapshot-state-fault
                              #:invalid-dbsubnet-group-state-fault
                              #:invalid-dbsubnet-state-fault
                              #:invalid-event-subscription-state-fault
                              #:invalid-global-cluster-state-fault
                              #:invalid-restore-fault #:invalid-subnet
                              #:invalid-vpcnetwork-state-fault
                              #:kmskey-not-accessible-fault #:key-list
                              #:list-tags-for-resource #:log-type-list
                              #:modify-dbcluster #:modify-dbcluster-endpoint
                              #:modify-dbcluster-parameter-group
                              #:modify-dbcluster-snapshot-attribute
                              #:modify-dbinstance #:modify-dbparameter-group
                              #:modify-dbsubnet-group
                              #:modify-event-subscription
                              #:modify-global-cluster #:option-group-membership
                              #:option-group-membership-list
                              #:option-group-not-found-fault
                              #:orderable-dbinstance-option
                              #:orderable-dbinstance-options-list #:parameter
                              #:parameters-list
                              #:pending-cloudwatch-logs-exports
                              #:pending-maintenance-action
                              #:pending-maintenance-action-details
                              #:pending-maintenance-actions
                              #:pending-modified-values
                              #:promote-read-replica-dbcluster
                              #:provisioned-iops-not-available-in-azfault
                              #:range #:range-list
                              #:read-replica-dbcluster-identifier-list
                              #:read-replica-dbinstance-identifier-list
                              #:read-replica-identifier-list #:readers-arn-list
                              #:reboot-dbinstance #:remove-from-global-cluster
                              #:remove-role-from-dbcluster
                              #:remove-source-identifier-from-subscription
                              #:remove-tags-from-resource
                              #:reset-dbcluster-parameter-group
                              #:reset-dbparameter-group
                              #:resource-not-found-fault
                              #:resource-pending-maintenance-actions
                              #:restore-dbcluster-from-snapshot
                              #:restore-dbcluster-to-point-in-time
                              #:snsinvalid-topic-fault
                              #:snsno-authorization-fault
                              #:snstopic-arn-not-found-fault #:sensitive-string
                              #:serverless-v2scaling-configuration
                              #:serverless-v2scaling-configuration-info
                              #:shared-snapshot-quota-exceeded-fault
                              #:snapshot-quota-exceeded-fault #:source-ids-list
                              #:source-not-found-fault #:source-type
                              #:start-dbcluster #:stop-dbcluster
                              #:storage-quota-exceeded-fault
                              #:storage-type-not-supported-fault #:string
                              #:string-list #:subnet #:subnet-already-in-use
                              #:subnet-identifier-list #:subnet-list
                              #:subscription-already-exist-fault
                              #:subscription-category-not-found-fault
                              #:subscription-not-found-fault
                              #:supported-character-sets-list
                              #:supported-timezones-list
                              #:switchover-global-cluster #:tstamp #:tag
                              #:tag-list #:timezone #:upgrade-target
                              #:valid-dbinstance-modifications-message
                              #:valid-storage-options
                              #:valid-storage-options-list
                              #:valid-upgrade-target-list
                              #:vpc-security-group-id-list
                              #:vpc-security-group-membership
                              #:vpc-security-group-membership-list
                              #:neptune-error))
(common-lisp:in-package #:pira/neptune)

(common-lisp:define-condition neptune-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-rdsv19 :shape-name "AmazonRDSv19"
                                   :version "2014-10-31" :title
                                   "Amazon Neptune" :operations
                                   '(add-role-to-dbcluster
                                     add-source-identifier-to-subscription
                                     add-tags-to-resource
                                     apply-pending-maintenance-action
                                     copy-dbcluster-parameter-group
                                     copy-dbcluster-snapshot
                                     copy-dbparameter-group create-dbcluster
                                     create-dbcluster-endpoint
                                     create-dbcluster-parameter-group
                                     create-dbcluster-snapshot
                                     create-dbinstance create-dbparameter-group
                                     create-dbsubnet-group
                                     create-event-subscription
                                     create-global-cluster delete-dbcluster
                                     delete-dbcluster-endpoint
                                     delete-dbcluster-parameter-group
                                     delete-dbcluster-snapshot
                                     delete-dbinstance delete-dbparameter-group
                                     delete-dbsubnet-group
                                     delete-event-subscription
                                     delete-global-cluster
                                     describe-dbcluster-endpoints
                                     describe-dbcluster-parameter-groups
                                     describe-dbcluster-parameters
                                     describe-dbclusters
                                     describe-dbcluster-snapshot-attributes
                                     describe-dbcluster-snapshots
                                     describe-dbengine-versions
                                     describe-dbinstances
                                     describe-dbparameter-groups
                                     describe-dbparameters
                                     describe-dbsubnet-groups
                                     describe-engine-default-cluster-parameters
                                     describe-engine-default-parameters
                                     describe-event-categories describe-events
                                     describe-event-subscriptions
                                     describe-global-clusters
                                     describe-orderable-dbinstance-options
                                     describe-pending-maintenance-actions
                                     describe-valid-dbinstance-modifications
                                     failover-dbcluster failover-global-cluster
                                     list-tags-for-resource modify-dbcluster
                                     modify-dbcluster-endpoint
                                     modify-dbcluster-parameter-group
                                     modify-dbcluster-snapshot-attribute
                                     modify-dbinstance modify-dbparameter-group
                                     modify-dbsubnet-group
                                     modify-event-subscription
                                     modify-global-cluster
                                     promote-read-replica-dbcluster
                                     reboot-dbinstance
                                     remove-from-global-cluster
                                     remove-role-from-dbcluster
                                     remove-source-identifier-from-subscription
                                     remove-tags-from-resource
                                     reset-dbcluster-parameter-group
                                     reset-dbparameter-group
                                     restore-dbcluster-from-snapshot
                                     restore-dbcluster-to-point-in-time
                                     start-dbcluster stop-dbcluster
                                     switchover-global-cluster)
                                   :xml-namespace
                                   '(:uri
                                     "http://rds.amazonaws.com/doc/2014-10-31/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Neptune")
                                      ("arnNamespace" . "rds")
                                      ("cloudFormationName" . "Neptune")
                                      ("cloudTrailEventSource"
                                       . "neptune.amazonaws.com")
                                      ("endpointPrefix" . "rds"))
                                     ("aws.auth#sigv4" ("name" . "rds"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-input add-role-to-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (feature-name :target-type string :member-name
                                  "FeatureName"))
                                (:shape-name "AddRoleToDBClusterMessage"))

(smithy/sdk/shapes:define-input add-source-identifier-to-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (source-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceIdentifier"))
                                (:shape-name
                                 "AddSourceIdentifierToSubscriptionMessage"))

(smithy/sdk/shapes:define-output add-source-identifier-to-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name
                                  "AddSourceIdentifierToSubscriptionResult"))

(smithy/sdk/shapes:define-input add-tags-to-resource-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceMessage"))

(smithy/sdk/shapes:define-enum apply-method
    common-lisp:nil
  (:immediate "immediate")
  (:pending-reboot "pending-reboot"))

(smithy/sdk/shapes:define-input apply-pending-maintenance-action-message
                                common-lisp:nil
                                ((resource-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceIdentifier")
                                 (apply-action :target-type string :required
                                  common-lisp:t :member-name "ApplyAction")
                                 (opt-in-type :target-type string :required
                                  common-lisp:t :member-name "OptInType"))
                                (:shape-name
                                 "ApplyPendingMaintenanceActionMessage"))

(smithy/sdk/shapes:define-output apply-pending-maintenance-action-result
                                 common-lisp:nil
                                 ((resource-pending-maintenance-actions
                                   :target-type
                                   resource-pending-maintenance-actions
                                   :member-name
                                   "ResourcePendingMaintenanceActions"))
                                 (:shape-name
                                  "ApplyPendingMaintenanceActionResult"))

(smithy/sdk/shapes:define-list attribute-value-list :member
                               (string :xml-name "AttributeValue"))

(smithy/sdk/shapes:define-error authorization-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationNotFoundFault")
                                (:error-name "AuthorizationNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zone-list :member
                               (availability-zone :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zones :member
                               (string :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error certificate-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CertificateNotFoundFault")
                                (:error-name "CertificateNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure character-set common-lisp:nil
                                    ((character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (character-set-description :target-type
                                      string :member-name
                                      "CharacterSetDescription"))
                                    (:shape-name "CharacterSet"))

(smithy/sdk/shapes:define-structure cloudwatch-logs-export-configuration
                                    common-lisp:nil
                                    ((enable-log-types :target-type
                                      log-type-list :member-name
                                      "EnableLogTypes")
                                     (disable-log-types :target-type
                                      log-type-list :member-name
                                      "DisableLogTypes"))
                                    (:shape-name
                                     "CloudwatchLogsExportConfiguration"))

(smithy/sdk/shapes:define-structure cluster-pending-modified-values
                                    common-lisp:nil
                                    ((pending-cloudwatch-logs-exports
                                      :target-type
                                      pending-cloudwatch-logs-exports
                                      :member-name
                                      "PendingCloudwatchLogsExports")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean-optional
                                      :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (allocated-storage :target-type
                                      integer-optional :member-name
                                      "AllocatedStorage")
                                     (iops :target-type integer-optional
                                      :member-name "Iops"))
                                    (:shape-name
                                     "ClusterPendingModifiedValues"))

(smithy/sdk/shapes:define-input copy-dbcluster-parameter-group-message
                                common-lisp:nil
                                ((source-dbcluster-parameter-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "SourceDBClusterParameterGroupIdentifier")
                                 (target-dbcluster-parameter-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetDBClusterParameterGroupIdentifier")
                                 (target-dbcluster-parameter-group-description
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetDBClusterParameterGroupDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CopyDBClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output copy-dbcluster-parameter-group-result
                                 common-lisp:nil
                                 ((dbcluster-parameter-group :target-type
                                   dbcluster-parameter-group :member-name
                                   "DBClusterParameterGroup"))
                                 (:shape-name
                                  "CopyDBClusterParameterGroupResult"))

(smithy/sdk/shapes:define-input copy-dbcluster-snapshot-message common-lisp:nil
                                ((source-dbcluster-snapshot-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "SourceDBClusterSnapshotIdentifier")
                                 (target-dbcluster-snapshot-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetDBClusterSnapshotIdentifier")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (pre-signed-url :target-type string
                                  :member-name "PreSignedUrl")
                                 (copy-tags :target-type boolean-optional
                                  :member-name "CopyTags")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopyDBClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output copy-dbcluster-snapshot-result common-lisp:nil
                                 ((dbcluster-snapshot :target-type
                                   dbcluster-snapshot :member-name
                                   "DBClusterSnapshot"))
                                 (:shape-name "CopyDBClusterSnapshotResult"))

(smithy/sdk/shapes:define-input copy-dbparameter-group-message common-lisp:nil
                                ((source-dbparameter-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "SourceDBParameterGroupIdentifier")
                                 (target-dbparameter-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetDBParameterGroupIdentifier")
                                 (target-dbparameter-group-description
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "TargetDBParameterGroupDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopyDBParameterGroupMessage"))

(smithy/sdk/shapes:define-output copy-dbparameter-group-result common-lisp:nil
                                 ((dbparameter-group :target-type
                                   dbparameter-group :member-name
                                   "DBParameterGroup"))
                                 (:shape-name "CopyDBParameterGroupResult"))

(smithy/sdk/shapes:define-input create-dbcluster-endpoint-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (dbcluster-endpoint-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterEndpointIdentifier")
                                 (endpoint-type :target-type string :required
                                  common-lisp:t :member-name "EndpointType")
                                 (static-members :target-type string-list
                                  :member-name "StaticMembers")
                                 (excluded-members :target-type string-list
                                  :member-name "ExcludedMembers")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBClusterEndpointMessage"))

(smithy/sdk/shapes:define-output create-dbcluster-endpoint-output
                                 common-lisp:nil
                                 ((dbcluster-endpoint-identifier :target-type
                                   string :member-name
                                   "DBClusterEndpointIdentifier")
                                  (dbcluster-identifier :target-type string
                                   :member-name "DBClusterIdentifier")
                                  (dbcluster-endpoint-resource-identifier
                                   :target-type string :member-name
                                   "DBClusterEndpointResourceIdentifier")
                                  (endpoint :target-type string :member-name
                                   "Endpoint")
                                  (status :target-type string :member-name
                                   "Status")
                                  (endpoint-type :target-type string
                                   :member-name "EndpointType")
                                  (custom-endpoint-type :target-type string
                                   :member-name "CustomEndpointType")
                                  (static-members :target-type string-list
                                   :member-name "StaticMembers")
                                  (excluded-members :target-type string-list
                                   :member-name "ExcludedMembers")
                                  (dbcluster-endpoint-arn :target-type string
                                   :member-name "DBClusterEndpointArn"))
                                 (:shape-name "CreateDBClusterEndpointOutput"))

(smithy/sdk/shapes:define-input create-dbcluster-message common-lisp:nil
                                ((availability-zones :target-type
                                  availability-zones :member-name
                                  "AvailabilityZones")
                                 (backup-retention-period :target-type
                                  integer-optional :member-name
                                  "BackupRetentionPeriod")
                                 (character-set-name :target-type string
                                  :member-name "CharacterSetName")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (database-name :target-type string
                                  :member-name "DatabaseName")
                                 (dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (master-username :target-type string
                                  :member-name "MasterUsername")
                                 (master-user-password :target-type string
                                  :member-name "MasterUserPassword")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (replication-source-identifier :target-type
                                  string :member-name
                                  "ReplicationSourceIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (pre-signed-url :target-type string
                                  :member-name "PreSignedUrl")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (global-cluster-identifier :target-type
                                  global-cluster-identifier :member-name
                                  "GlobalClusterIdentifier")
                                 (storage-type :target-type string :member-name
                                  "StorageType"))
                                (:shape-name "CreateDBClusterMessage"))

(smithy/sdk/shapes:define-input create-dbcluster-parameter-group-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterParameterGroupName")
                                 (dbparameter-group-family :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupFamily")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateDBClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output create-dbcluster-parameter-group-result
                                 common-lisp:nil
                                 ((dbcluster-parameter-group :target-type
                                   dbcluster-parameter-group :member-name
                                   "DBClusterParameterGroup"))
                                 (:shape-name
                                  "CreateDBClusterParameterGroupResult"))

(smithy/sdk/shapes:define-output create-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "CreateDBClusterResult"))

(smithy/sdk/shapes:define-input create-dbcluster-snapshot-message
                                common-lisp:nil
                                ((dbcluster-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterSnapshotIdentifier")
                                 (dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output create-dbcluster-snapshot-result
                                 common-lisp:nil
                                 ((dbcluster-snapshot :target-type
                                   dbcluster-snapshot :member-name
                                   "DBClusterSnapshot"))
                                 (:shape-name "CreateDBClusterSnapshotResult"))

(smithy/sdk/shapes:define-input create-dbinstance-message common-lisp:nil
                                ((dbname :target-type string :member-name
                                  "DBName")
                                 (dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (dbinstance-class :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceClass")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (master-username :target-type string
                                  :member-name "MasterUsername")
                                 (master-user-password :target-type string
                                  :member-name "MasterUserPassword")
                                 (dbsecurity-groups :target-type
                                  dbsecurity-group-name-list :member-name
                                  "DBSecurityGroups")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (backup-retention-period :target-type
                                  integer-optional :member-name
                                  "BackupRetentionPeriod")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (license-model :target-type string
                                  :member-name "LicenseModel")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (character-set-name :target-type string
                                  :member-name "CharacterSetName")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (tde-credential-arn :target-type string
                                  :member-name "TdeCredentialArn")
                                 (tde-credential-password :target-type
                                  sensitive-string :member-name
                                  "TdeCredentialPassword")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (promotion-tier :target-type integer-optional
                                  :member-name "PromotionTier")
                                 (timezone :target-type string :member-name
                                  "Timezone")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection"))
                                (:shape-name "CreateDBInstanceMessage"))

(smithy/sdk/shapes:define-output create-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "CreateDBInstanceResult"))

(smithy/sdk/shapes:define-input create-dbparameter-group-message
                                common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupName")
                                 (dbparameter-group-family :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupFamily")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBParameterGroupMessage"))

(smithy/sdk/shapes:define-output create-dbparameter-group-result
                                 common-lisp:nil
                                 ((dbparameter-group :target-type
                                   dbparameter-group :member-name
                                   "DBParameterGroup"))
                                 (:shape-name "CreateDBParameterGroupResult"))

(smithy/sdk/shapes:define-input create-dbsubnet-group-message common-lisp:nil
                                ((dbsubnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSubnetGroupName")
                                 (dbsubnet-group-description :target-type
                                  string :required common-lisp:t :member-name
                                  "DBSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBSubnetGroupMessage"))

(smithy/sdk/shapes:define-output create-dbsubnet-group-result common-lisp:nil
                                 ((dbsubnet-group :target-type dbsubnet-group
                                   :member-name "DBSubnetGroup"))
                                 (:shape-name "CreateDBSubnetGroupResult"))

(smithy/sdk/shapes:define-input create-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string :required
                                  common-lisp:t :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (source-ids :target-type source-ids-list
                                  :member-name "SourceIds")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output create-event-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name "CreateEventSubscriptionResult"))

(smithy/sdk/shapes:define-input create-global-cluster-message common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (source-dbcluster-identifier :target-type
                                  string :member-name
                                  "SourceDBClusterIdentifier")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted"))
                                (:shape-name "CreateGlobalClusterMessage"))

(smithy/sdk/shapes:define-output create-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "CreateGlobalClusterResult"))

(smithy/sdk/shapes:define-structure dbcluster common-lisp:nil
                                    ((allocated-storage :target-type
                                      integer-optional :member-name
                                      "AllocatedStorage")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (dbcluster-parameter-group :target-type
                                      string :member-name
                                      "DBClusterParameterGroup")
                                     (dbsubnet-group :target-type string
                                      :member-name "DBSubnetGroup")
                                     (status :target-type string :member-name
                                      "Status")
                                     (percent-progress :target-type string
                                      :member-name "PercentProgress")
                                     (earliest-restorable-time :target-type
                                      tstamp :member-name
                                      "EarliestRestorableTime")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (reader-endpoint :target-type string
                                      :member-name "ReaderEndpoint")
                                     (multi-az :target-type boolean
                                      :member-name "MultiAZ")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (latest-restorable-time :target-type
                                      tstamp :member-name
                                      "LatestRestorableTime")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (dbcluster-option-group-memberships
                                      :target-type
                                      dbcluster-option-group-memberships
                                      :member-name
                                      "DBClusterOptionGroupMemberships")
                                     (preferred-backup-window :target-type
                                      string :member-name
                                      "PreferredBackupWindow")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (replication-source-identifier
                                      :target-type string :member-name
                                      "ReplicationSourceIdentifier")
                                     (read-replica-identifiers :target-type
                                      read-replica-identifier-list :member-name
                                      "ReadReplicaIdentifiers")
                                     (dbcluster-members :target-type
                                      dbcluster-member-list :member-name
                                      "DBClusterMembers")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "VpcSecurityGroups")
                                     (hosted-zone-id :target-type string
                                      :member-name "HostedZoneId")
                                     (storage-encrypted :target-type boolean
                                      :member-name "StorageEncrypted")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (db-cluster-resource-id :target-type
                                      string :member-name
                                      "DbClusterResourceId")
                                     (dbcluster-arn :target-type string
                                      :member-name "DBClusterArn")
                                     (associated-roles :target-type
                                      dbcluster-roles :member-name
                                      "AssociatedRoles")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (clone-group-id :target-type string
                                      :member-name "CloneGroupId")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (copy-tags-to-snapshot :target-type
                                      boolean-optional :member-name
                                      "CopyTagsToSnapshot")
                                     (enabled-cloudwatch-logs-exports
                                      :target-type log-type-list :member-name
                                      "EnabledCloudwatchLogsExports")
                                     (pending-modified-values :target-type
                                      cluster-pending-modified-values
                                      :member-name "PendingModifiedValues")
                                     (deletion-protection :target-type
                                      boolean-optional :member-name
                                      "DeletionProtection")
                                     (cross-account-clone :target-type
                                      boolean-optional :member-name
                                      "CrossAccountClone")
                                     (automatic-restart-time :target-type
                                      tstamp :member-name
                                      "AutomaticRestartTime")
                                     (serverless-v2scaling-configuration
                                      :target-type
                                      serverless-v2scaling-configuration-info
                                      :member-name
                                      "ServerlessV2ScalingConfiguration")
                                     (global-cluster-identifier :target-type
                                      global-cluster-identifier :member-name
                                      "GlobalClusterIdentifier")
                                     (iooptimized-next-allowed-modification-time
                                      :target-type tstamp :member-name
                                      "IOOptimizedNextAllowedModificationTime")
                                     (storage-type :target-type string
                                      :member-name "StorageType"))
                                    (:shape-name "DBCluster"))

(smithy/sdk/shapes:define-error dbcluster-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterAlreadyExistsFault")
                                (:error-name "DBClusterAlreadyExistsFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbcluster-endpoint common-lisp:nil
                                    ((dbcluster-endpoint-identifier
                                      :target-type string :member-name
                                      "DBClusterEndpointIdentifier")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (dbcluster-endpoint-resource-identifier
                                      :target-type string :member-name
                                      "DBClusterEndpointResourceIdentifier")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (status :target-type string :member-name
                                      "Status")
                                     (endpoint-type :target-type string
                                      :member-name "EndpointType")
                                     (custom-endpoint-type :target-type string
                                      :member-name "CustomEndpointType")
                                     (static-members :target-type string-list
                                      :member-name "StaticMembers")
                                     (excluded-members :target-type string-list
                                      :member-name "ExcludedMembers")
                                     (dbcluster-endpoint-arn :target-type
                                      string :member-name
                                      "DBClusterEndpointArn"))
                                    (:shape-name "DBClusterEndpoint"))

(smithy/sdk/shapes:define-error dbcluster-endpoint-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterEndpointAlreadyExistsFault")
                                (:error-name
                                 "DBClusterEndpointAlreadyExistsFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbcluster-endpoint-list :member
                               (dbcluster-endpoint :xml-name
                                "DBClusterEndpointList"))

(smithy/sdk/shapes:define-output dbcluster-endpoint-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbcluster-endpoints :target-type
                                   dbcluster-endpoint-list :member-name
                                   "DBClusterEndpoints"))
                                 (:shape-name "DBClusterEndpointMessage"))

(smithy/sdk/shapes:define-error dbcluster-endpoint-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterEndpointNotFoundFault")
                                (:error-name "DBClusterEndpointNotFoundFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbcluster-endpoint-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterEndpointQuotaExceededFault")
                                (:error-name
                                 "DBClusterEndpointQuotaExceededFault")
                                (:error-code 403) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbcluster-list :member
                               (dbcluster :xml-name "DBCluster"))

(smithy/sdk/shapes:define-structure dbcluster-member common-lisp:nil
                                    ((dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (is-cluster-writer :target-type boolean
                                      :member-name "IsClusterWriter")
                                     (dbcluster-parameter-group-status
                                      :target-type string :member-name
                                      "DBClusterParameterGroupStatus")
                                     (promotion-tier :target-type
                                      integer-optional :member-name
                                      "PromotionTier"))
                                    (:shape-name "DBClusterMember"))

(smithy/sdk/shapes:define-list dbcluster-member-list :member
                               (dbcluster-member :xml-name "DBClusterMember"))

(smithy/sdk/shapes:define-output dbcluster-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbclusters :target-type dbcluster-list
                                   :member-name "DBClusters"))
                                 (:shape-name "DBClusterMessage"))

(smithy/sdk/shapes:define-error dbcluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterNotFoundFault")
                                (:error-name "DBClusterNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbcluster-option-group-memberships :member
                               (dbcluster-option-group-status :xml-name
                                "DBClusterOptionGroup"))

(smithy/sdk/shapes:define-structure dbcluster-option-group-status
                                    common-lisp:nil
                                    ((dbcluster-option-group-name :target-type
                                      string :member-name
                                      "DBClusterOptionGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DBClusterOptionGroupStatus"))

(smithy/sdk/shapes:define-structure dbcluster-parameter-group common-lisp:nil
                                    ((dbcluster-parameter-group-name
                                      :target-type string :member-name
                                      "DBClusterParameterGroupName")
                                     (dbparameter-group-family :target-type
                                      string :member-name
                                      "DBParameterGroupFamily")
                                     (description :target-type string
                                      :member-name "Description")
                                     (dbcluster-parameter-group-arn
                                      :target-type string :member-name
                                      "DBClusterParameterGroupArn"))
                                    (:shape-name "DBClusterParameterGroup"))

(smithy/sdk/shapes:define-structure dbcluster-parameter-group-details
                                    common-lisp:nil
                                    ((parameters :target-type parameters-list
                                      :member-name "Parameters")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name
                                     "DBClusterParameterGroupDetails"))

(smithy/sdk/shapes:define-list dbcluster-parameter-group-list :member
                               (dbcluster-parameter-group :xml-name
                                "DBClusterParameterGroup"))

(smithy/sdk/shapes:define-structure dbcluster-parameter-group-name-message
                                    common-lisp:nil
                                    ((dbcluster-parameter-group-name
                                      :target-type string :member-name
                                      "DBClusterParameterGroupName"))
                                    (:shape-name
                                     "DBClusterParameterGroupNameMessage"))

(smithy/sdk/shapes:define-error dbcluster-parameter-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterParameterGroupNotFoundFault")
                                (:error-name "DBClusterParameterGroupNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-output dbcluster-parameter-groups-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbcluster-parameter-groups :target-type
                                   dbcluster-parameter-group-list :member-name
                                   "DBClusterParameterGroups"))
                                 (:shape-name
                                  "DBClusterParameterGroupsMessage"))

(smithy/sdk/shapes:define-error dbcluster-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterQuotaExceededFault")
                                (:error-name "DBClusterQuotaExceededFault")
                                (:error-code 403) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbcluster-role common-lisp:nil
                                    ((role-arn :target-type string :member-name
                                      "RoleArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (feature-name :target-type string
                                      :member-name "FeatureName"))
                                    (:shape-name "DBClusterRole"))

(smithy/sdk/shapes:define-error dbcluster-role-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterRoleAlreadyExistsFault")
                                (:error-name "DBClusterRoleAlreadyExists")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbcluster-role-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterRoleNotFoundFault")
                                (:error-name "DBClusterRoleNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbcluster-role-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterRoleQuotaExceededFault")
                                (:error-name "DBClusterRoleQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbcluster-roles :member
                               (dbcluster-role :xml-name "DBClusterRole"))

(smithy/sdk/shapes:define-structure dbcluster-snapshot common-lisp:nil
                                    ((availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (dbcluster-snapshot-identifier
                                      :target-type string :member-name
                                      "DBClusterSnapshotIdentifier")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (snapshot-create-time :target-type tstamp
                                      :member-name "SnapshotCreateTime")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (allocated-storage :target-type integer
                                      :member-name "AllocatedStorage")
                                     (status :target-type string :member-name
                                      "Status")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (snapshot-type :target-type string
                                      :member-name "SnapshotType")
                                     (percent-progress :target-type integer
                                      :member-name "PercentProgress")
                                     (storage-encrypted :target-type boolean
                                      :member-name "StorageEncrypted")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (dbcluster-snapshot-arn :target-type
                                      string :member-name
                                      "DBClusterSnapshotArn")
                                     (source-dbcluster-snapshot-arn
                                      :target-type string :member-name
                                      "SourceDBClusterSnapshotArn")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (storage-type :target-type string
                                      :member-name "StorageType"))
                                    (:shape-name "DBClusterSnapshot"))

(smithy/sdk/shapes:define-error dbcluster-snapshot-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterSnapshotAlreadyExistsFault")
                                (:error-name
                                 "DBClusterSnapshotAlreadyExistsFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbcluster-snapshot-attribute
                                    common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "AttributeName")
                                     (attribute-values :target-type
                                      attribute-value-list :member-name
                                      "AttributeValues"))
                                    (:shape-name "DBClusterSnapshotAttribute"))

(smithy/sdk/shapes:define-list dbcluster-snapshot-attribute-list :member
                               (dbcluster-snapshot-attribute :xml-name
                                "DBClusterSnapshotAttribute"))

(smithy/sdk/shapes:define-structure dbcluster-snapshot-attributes-result
                                    common-lisp:nil
                                    ((dbcluster-snapshot-identifier
                                      :target-type string :member-name
                                      "DBClusterSnapshotIdentifier")
                                     (dbcluster-snapshot-attributes
                                      :target-type
                                      dbcluster-snapshot-attribute-list
                                      :member-name
                                      "DBClusterSnapshotAttributes"))
                                    (:shape-name
                                     "DBClusterSnapshotAttributesResult"))

(smithy/sdk/shapes:define-list dbcluster-snapshot-list :member
                               (dbcluster-snapshot :xml-name
                                "DBClusterSnapshot"))

(smithy/sdk/shapes:define-output dbcluster-snapshot-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbcluster-snapshots :target-type
                                   dbcluster-snapshot-list :member-name
                                   "DBClusterSnapshots"))
                                 (:shape-name "DBClusterSnapshotMessage"))

(smithy/sdk/shapes:define-error dbcluster-snapshot-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterSnapshotNotFoundFault")
                                (:error-name "DBClusterSnapshotNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbengine-version common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (dbparameter-group-family :target-type
                                      string :member-name
                                      "DBParameterGroupFamily")
                                     (dbengine-description :target-type string
                                      :member-name "DBEngineDescription")
                                     (dbengine-version-description :target-type
                                      string :member-name
                                      "DBEngineVersionDescription")
                                     (default-character-set :target-type
                                      character-set :member-name
                                      "DefaultCharacterSet")
                                     (supported-character-sets :target-type
                                      supported-character-sets-list
                                      :member-name "SupportedCharacterSets")
                                     (valid-upgrade-target :target-type
                                      valid-upgrade-target-list :member-name
                                      "ValidUpgradeTarget")
                                     (supported-timezones :target-type
                                      supported-timezones-list :member-name
                                      "SupportedTimezones")
                                     (exportable-log-types :target-type
                                      log-type-list :member-name
                                      "ExportableLogTypes")
                                     (supports-log-exports-to-cloudwatch-logs
                                      :target-type boolean :member-name
                                      "SupportsLogExportsToCloudwatchLogs")
                                     (supports-read-replica :target-type
                                      boolean :member-name
                                      "SupportsReadReplica")
                                     (supports-global-databases :target-type
                                      boolean :member-name
                                      "SupportsGlobalDatabases"))
                                    (:shape-name "DBEngineVersion"))

(smithy/sdk/shapes:define-list dbengine-version-list :member
                               (dbengine-version :xml-name "DBEngineVersion"))

(smithy/sdk/shapes:define-output dbengine-version-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbengine-versions :target-type
                                   dbengine-version-list :member-name
                                   "DBEngineVersions"))
                                 (:shape-name "DBEngineVersionMessage"))

(smithy/sdk/shapes:define-structure dbinstance common-lisp:nil
                                    ((dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (dbinstance-status :target-type string
                                      :member-name "DBInstanceStatus")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (dbname :target-type string :member-name
                                      "DBName")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (allocated-storage :target-type integer
                                      :member-name "AllocatedStorage")
                                     (instance-create-time :target-type tstamp
                                      :member-name "InstanceCreateTime")
                                     (preferred-backup-window :target-type
                                      string :member-name
                                      "PreferredBackupWindow")
                                     (backup-retention-period :target-type
                                      integer :member-name
                                      "BackupRetentionPeriod")
                                     (dbsecurity-groups :target-type
                                      dbsecurity-group-membership-list
                                      :member-name "DBSecurityGroups")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "VpcSecurityGroups")
                                     (dbparameter-groups :target-type
                                      dbparameter-group-status-list
                                      :member-name "DBParameterGroups")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (dbsubnet-group :target-type
                                      dbsubnet-group :member-name
                                      "DBSubnetGroup")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (pending-modified-values :target-type
                                      pending-modified-values :member-name
                                      "PendingModifiedValues")
                                     (latest-restorable-time :target-type
                                      tstamp :member-name
                                      "LatestRestorableTime")
                                     (multi-az :target-type boolean
                                      :member-name "MultiAZ")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (read-replica-source-dbinstance-identifier
                                      :target-type string :member-name
                                      "ReadReplicaSourceDBInstanceIdentifier")
                                     (read-replica-dbinstance-identifiers
                                      :target-type
                                      read-replica-dbinstance-identifier-list
                                      :member-name
                                      "ReadReplicaDBInstanceIdentifiers")
                                     (read-replica-dbcluster-identifiers
                                      :target-type
                                      read-replica-dbcluster-identifier-list
                                      :member-name
                                      "ReadReplicaDBClusterIdentifiers")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (option-group-memberships :target-type
                                      option-group-membership-list :member-name
                                      "OptionGroupMemberships")
                                     (character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (secondary-availability-zone :target-type
                                      string :member-name
                                      "SecondaryAvailabilityZone")
                                     (publicly-accessible :target-type boolean
                                      :member-name "PubliclyAccessible")
                                     (status-infos :target-type
                                      dbinstance-status-info-list :member-name
                                      "StatusInfos")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (tde-credential-arn :target-type string
                                      :member-name "TdeCredentialArn")
                                     (db-instance-port :target-type integer
                                      :member-name "DbInstancePort")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (storage-encrypted :target-type boolean
                                      :member-name "StorageEncrypted")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (dbi-resource-id :target-type string
                                      :member-name "DbiResourceId")
                                     (cacertificate-identifier :target-type
                                      string :member-name
                                      "CACertificateIdentifier")
                                     (domain-memberships :target-type
                                      domain-membership-list :member-name
                                      "DomainMemberships")
                                     (copy-tags-to-snapshot :target-type
                                      boolean :member-name
                                      "CopyTagsToSnapshot")
                                     (monitoring-interval :target-type
                                      integer-optional :member-name
                                      "MonitoringInterval")
                                     (enhanced-monitoring-resource-arn
                                      :target-type string :member-name
                                      "EnhancedMonitoringResourceArn")
                                     (monitoring-role-arn :target-type string
                                      :member-name "MonitoringRoleArn")
                                     (promotion-tier :target-type
                                      integer-optional :member-name
                                      "PromotionTier")
                                     (dbinstance-arn :target-type string
                                      :member-name "DBInstanceArn")
                                     (timezone :target-type string :member-name
                                      "Timezone")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (performance-insights-enabled :target-type
                                      boolean-optional :member-name
                                      "PerformanceInsightsEnabled")
                                     (performance-insights-kmskey-id
                                      :target-type string :member-name
                                      "PerformanceInsightsKMSKeyId")
                                     (enabled-cloudwatch-logs-exports
                                      :target-type log-type-list :member-name
                                      "EnabledCloudwatchLogsExports")
                                     (deletion-protection :target-type
                                      boolean-optional :member-name
                                      "DeletionProtection"))
                                    (:shape-name "DBInstance"))

(smithy/sdk/shapes:define-error dbinstance-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBInstanceAlreadyExistsFault")
                                (:error-name "DBInstanceAlreadyExists")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbinstance-list :member
                               (dbinstance :xml-name "DBInstance"))

(smithy/sdk/shapes:define-output dbinstance-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbinstances :target-type dbinstance-list
                                   :member-name "DBInstances"))
                                 (:shape-name "DBInstanceMessage"))

(smithy/sdk/shapes:define-error dbinstance-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBInstanceNotFoundFault")
                                (:error-name "DBInstanceNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbinstance-status-info common-lisp:nil
                                    ((status-type :target-type string
                                      :member-name "StatusType")
                                     (normal :target-type boolean :member-name
                                      "Normal")
                                     (status :target-type string :member-name
                                      "Status")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "DBInstanceStatusInfo"))

(smithy/sdk/shapes:define-list dbinstance-status-info-list :member
                               (dbinstance-status-info :xml-name
                                "DBInstanceStatusInfo"))

(smithy/sdk/shapes:define-structure dbparameter-group common-lisp:nil
                                    ((dbparameter-group-name :target-type
                                      string :member-name
                                      "DBParameterGroupName")
                                     (dbparameter-group-family :target-type
                                      string :member-name
                                      "DBParameterGroupFamily")
                                     (description :target-type string
                                      :member-name "Description")
                                     (dbparameter-group-arn :target-type string
                                      :member-name "DBParameterGroupArn"))
                                    (:shape-name "DBParameterGroup"))

(smithy/sdk/shapes:define-error dbparameter-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBParameterGroupAlreadyExistsFault")
                                (:error-name "DBParameterGroupAlreadyExists")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbparameter-group-details common-lisp:nil
                                    ((parameters :target-type parameters-list
                                      :member-name "Parameters")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "DBParameterGroupDetails"))

(smithy/sdk/shapes:define-list dbparameter-group-list :member
                               (dbparameter-group :xml-name "DBParameterGroup"))

(smithy/sdk/shapes:define-structure dbparameter-group-name-message
                                    common-lisp:nil
                                    ((dbparameter-group-name :target-type
                                      string :member-name
                                      "DBParameterGroupName"))
                                    (:shape-name "DBParameterGroupNameMessage"))

(smithy/sdk/shapes:define-error dbparameter-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBParameterGroupNotFoundFault")
                                (:error-name "DBParameterGroupNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbparameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBParameterGroupQuotaExceededFault")
                                (:error-name "DBParameterGroupQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbparameter-group-status common-lisp:nil
                                    ((dbparameter-group-name :target-type
                                      string :member-name
                                      "DBParameterGroupName")
                                     (parameter-apply-status :target-type
                                      string :member-name
                                      "ParameterApplyStatus"))
                                    (:shape-name "DBParameterGroupStatus"))

(smithy/sdk/shapes:define-list dbparameter-group-status-list :member
                               (dbparameter-group-status :xml-name
                                "DBParameterGroup"))

(smithy/sdk/shapes:define-output dbparameter-groups-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbparameter-groups :target-type
                                   dbparameter-group-list :member-name
                                   "DBParameterGroups"))
                                 (:shape-name "DBParameterGroupsMessage"))

(smithy/sdk/shapes:define-structure dbsecurity-group-membership common-lisp:nil
                                    ((dbsecurity-group-name :target-type string
                                      :member-name "DBSecurityGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DBSecurityGroupMembership"))

(smithy/sdk/shapes:define-list dbsecurity-group-membership-list :member
                               (dbsecurity-group-membership :xml-name
                                "DBSecurityGroup"))

(smithy/sdk/shapes:define-list dbsecurity-group-name-list :member
                               (string :xml-name "DBSecurityGroupName"))

(smithy/sdk/shapes:define-error dbsecurity-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSecurityGroupNotFoundFault")
                                (:error-name "DBSecurityGroupNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbsnapshot-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSnapshotAlreadyExistsFault")
                                (:error-name "DBSnapshotAlreadyExists")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbsnapshot-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSnapshotNotFoundFault")
                                (:error-name "DBSnapshotNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure dbsubnet-group common-lisp:nil
                                    ((dbsubnet-group-name :target-type string
                                      :member-name "DBSubnetGroupName")
                                     (dbsubnet-group-description :target-type
                                      string :member-name
                                      "DBSubnetGroupDescription")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnet-group-status :target-type string
                                      :member-name "SubnetGroupStatus")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets")
                                     (dbsubnet-group-arn :target-type string
                                      :member-name "DBSubnetGroupArn"))
                                    (:shape-name "DBSubnetGroup"))

(smithy/sdk/shapes:define-error dbsubnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupAlreadyExistsFault")
                                (:error-name "DBSubnetGroupAlreadyExists")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbsubnet-group-does-not-cover-enough-azs
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSubnetGroupDoesNotCoverEnoughAZs")
                                (:error-name
                                 "DBSubnetGroupDoesNotCoverEnoughAZs")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-output dbsubnet-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbsubnet-groups :target-type dbsubnet-groups
                                   :member-name "DBSubnetGroups"))
                                 (:shape-name "DBSubnetGroupMessage"))

(smithy/sdk/shapes:define-error dbsubnet-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupNotFoundFault")
                                (:error-name "DBSubnetGroupNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbsubnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupQuotaExceededFault")
                                (:error-name "DBSubnetGroupQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list dbsubnet-groups :member
                               (dbsubnet-group :xml-name "DBSubnetGroup"))

(smithy/sdk/shapes:define-error dbsubnet-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetQuotaExceededFault")
                                (:error-name "DBSubnetQuotaExceededFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error dbupgrade-dependency-failure-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBUpgradeDependencyFailureFault")
                                (:error-name "DBUpgradeDependencyFailure")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-input delete-dbcluster-endpoint-message
                                common-lisp:nil
                                ((dbcluster-endpoint-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterEndpointIdentifier"))
                                (:shape-name "DeleteDBClusterEndpointMessage"))

(smithy/sdk/shapes:define-output delete-dbcluster-endpoint-output
                                 common-lisp:nil
                                 ((dbcluster-endpoint-identifier :target-type
                                   string :member-name
                                   "DBClusterEndpointIdentifier")
                                  (dbcluster-identifier :target-type string
                                   :member-name "DBClusterIdentifier")
                                  (dbcluster-endpoint-resource-identifier
                                   :target-type string :member-name
                                   "DBClusterEndpointResourceIdentifier")
                                  (endpoint :target-type string :member-name
                                   "Endpoint")
                                  (status :target-type string :member-name
                                   "Status")
                                  (endpoint-type :target-type string
                                   :member-name "EndpointType")
                                  (custom-endpoint-type :target-type string
                                   :member-name "CustomEndpointType")
                                  (static-members :target-type string-list
                                   :member-name "StaticMembers")
                                  (excluded-members :target-type string-list
                                   :member-name "ExcludedMembers")
                                  (dbcluster-endpoint-arn :target-type string
                                   :member-name "DBClusterEndpointArn"))
                                 (:shape-name "DeleteDBClusterEndpointOutput"))

(smithy/sdk/shapes:define-input delete-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "SkipFinalSnapshot")
                                 (final-dbsnapshot-identifier :target-type
                                  string :member-name
                                  "FinalDBSnapshotIdentifier"))
                                (:shape-name "DeleteDBClusterMessage"))

(smithy/sdk/shapes:define-input delete-dbcluster-parameter-group-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterParameterGroupName"))
                                (:shape-name
                                 "DeleteDBClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output delete-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "DeleteDBClusterResult"))

(smithy/sdk/shapes:define-input delete-dbcluster-snapshot-message
                                common-lisp:nil
                                ((dbcluster-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterSnapshotIdentifier"))
                                (:shape-name "DeleteDBClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output delete-dbcluster-snapshot-result
                                 common-lisp:nil
                                 ((dbcluster-snapshot :target-type
                                   dbcluster-snapshot :member-name
                                   "DBClusterSnapshot"))
                                 (:shape-name "DeleteDBClusterSnapshotResult"))

(smithy/sdk/shapes:define-input delete-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "SkipFinalSnapshot")
                                 (final-dbsnapshot-identifier :target-type
                                  string :member-name
                                  "FinalDBSnapshotIdentifier"))
                                (:shape-name "DeleteDBInstanceMessage"))

(smithy/sdk/shapes:define-output delete-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "DeleteDBInstanceResult"))

(smithy/sdk/shapes:define-input delete-dbparameter-group-message
                                common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupName"))
                                (:shape-name "DeleteDBParameterGroupMessage"))

(smithy/sdk/shapes:define-input delete-dbsubnet-group-message common-lisp:nil
                                ((dbsubnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSubnetGroupName"))
                                (:shape-name "DeleteDBSubnetGroupMessage"))

(smithy/sdk/shapes:define-input delete-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName"))
                                (:shape-name "DeleteEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output delete-event-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name "DeleteEventSubscriptionResult"))

(smithy/sdk/shapes:define-input delete-global-cluster-message common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier"))
                                (:shape-name "DeleteGlobalClusterMessage"))

(smithy/sdk/shapes:define-output delete-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "DeleteGlobalClusterResult"))

(smithy/sdk/shapes:define-input describe-dbcluster-endpoints-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (dbcluster-endpoint-identifier :target-type
                                  string :member-name
                                  "DBClusterEndpointIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBClusterEndpointsMessage"))

(smithy/sdk/shapes:define-input describe-dbcluster-parameter-groups-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBClusterParameterGroupsMessage"))

(smithy/sdk/shapes:define-input describe-dbcluster-parameters-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterParameterGroupName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBClusterParametersMessage"))

(smithy/sdk/shapes:define-input describe-dbcluster-snapshot-attributes-message
                                common-lisp:nil
                                ((dbcluster-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterSnapshotIdentifier"))
                                (:shape-name
                                 "DescribeDBClusterSnapshotAttributesMessage"))

(smithy/sdk/shapes:define-output describe-dbcluster-snapshot-attributes-result
                                 common-lisp:nil
                                 ((dbcluster-snapshot-attributes-result
                                   :target-type
                                   dbcluster-snapshot-attributes-result
                                   :member-name
                                   "DBClusterSnapshotAttributesResult"))
                                 (:shape-name
                                  "DescribeDBClusterSnapshotAttributesResult"))

(smithy/sdk/shapes:define-input describe-dbcluster-snapshots-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (dbcluster-snapshot-identifier :target-type
                                  string :member-name
                                  "DBClusterSnapshotIdentifier")
                                 (snapshot-type :target-type string
                                  :member-name "SnapshotType")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (include-shared :target-type boolean
                                  :member-name "IncludeShared")
                                 (include-public :target-type boolean
                                  :member-name "IncludePublic"))
                                (:shape-name
                                 "DescribeDBClusterSnapshotsMessage"))

(smithy/sdk/shapes:define-input describe-dbclusters-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBClustersMessage"))

(smithy/sdk/shapes:define-input describe-dbengine-versions-message
                                common-lisp:nil
                                ((engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (dbparameter-group-family :target-type string
                                  :member-name "DBParameterGroupFamily")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (default-only :target-type boolean
                                  :member-name "DefaultOnly")
                                 (list-supported-character-sets :target-type
                                  boolean-optional :member-name
                                  "ListSupportedCharacterSets")
                                 (list-supported-timezones :target-type
                                  boolean-optional :member-name
                                  "ListSupportedTimezones"))
                                (:shape-name "DescribeDBEngineVersionsMessage"))

(smithy/sdk/shapes:define-input describe-dbinstances-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :member-name "DBInstanceIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBInstancesMessage"))

(smithy/sdk/shapes:define-input describe-dbparameter-groups-message
                                common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBParameterGroupsMessage"))

(smithy/sdk/shapes:define-input describe-dbparameters-message common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBParametersMessage"))

(smithy/sdk/shapes:define-input describe-dbsubnet-groups-message
                                common-lisp:nil
                                ((dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBSubnetGroupsMessage"))

(smithy/sdk/shapes:define-input
 describe-engine-default-cluster-parameters-message common-lisp:nil
 ((dbparameter-group-family :target-type string :required common-lisp:t
   :member-name "DBParameterGroupFamily")
  (filters :target-type filter-list :member-name "Filters")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeEngineDefaultClusterParametersMessage"))

(smithy/sdk/shapes:define-output
 describe-engine-default-cluster-parameters-result common-lisp:nil
 ((engine-defaults :target-type engine-defaults :member-name "EngineDefaults"))
 (:shape-name "DescribeEngineDefaultClusterParametersResult"))

(smithy/sdk/shapes:define-input describe-engine-default-parameters-message
                                common-lisp:nil
                                ((dbparameter-group-family :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupFamily")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
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

(smithy/sdk/shapes:define-input describe-event-categories-message
                                common-lisp:nil
                                ((source-type :target-type string :member-name
                                  "SourceType")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "DescribeEventCategoriesMessage"))

(smithy/sdk/shapes:define-input describe-event-subscriptions-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :member-name "SubscriptionName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeEventSubscriptionsMessage"))

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
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEventsMessage"))

(smithy/sdk/shapes:define-input describe-global-clusters-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :member-name
                                  "GlobalClusterIdentifier")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeGlobalClustersMessage"))

(smithy/sdk/shapes:define-input describe-orderable-dbinstance-options-message
                                common-lisp:nil
                                ((engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (license-model :target-type string
                                  :member-name "LicenseModel")
                                 (vpc :target-type boolean-optional
                                  :member-name "Vpc")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeOrderableDBInstanceOptionsMessage"))

(smithy/sdk/shapes:define-input describe-pending-maintenance-actions-message
                                common-lisp:nil
                                ((resource-identifier :target-type string
                                  :member-name "ResourceIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribePendingMaintenanceActionsMessage"))

(smithy/sdk/shapes:define-input describe-valid-dbinstance-modifications-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier"))
                                (:shape-name
                                 "DescribeValidDBInstanceModificationsMessage"))

(smithy/sdk/shapes:define-output describe-valid-dbinstance-modifications-result
                                 common-lisp:nil
                                 ((valid-dbinstance-modifications-message
                                   :target-type
                                   valid-dbinstance-modifications-message
                                   :member-name
                                   "ValidDBInstanceModificationsMessage"))
                                 (:shape-name
                                  "DescribeValidDBInstanceModificationsResult"))

(smithy/sdk/shapes:define-structure domain-membership common-lisp:nil
                                    ((domain :target-type string :member-name
                                      "Domain")
                                     (status :target-type string :member-name
                                      "Status")
                                     (fqdn :target-type string :member-name
                                      "FQDN")
                                     (iamrole-name :target-type string
                                      :member-name "IAMRoleName"))
                                    (:shape-name "DomainMembership"))

(smithy/sdk/shapes:define-list domain-membership-list :member
                               (domain-membership :xml-name "DomainMembership"))

(smithy/sdk/shapes:define-error domain-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DomainNotFoundFault")
                                (:error-name "DomainNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-optional smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure double-range common-lisp:nil
                                    ((from :target-type double :member-name
                                      "From")
                                     (to :target-type double :member-name
                                      "To"))
                                    (:shape-name "DoubleRange"))

(smithy/sdk/shapes:define-list double-range-list :member
                               (double-range :xml-name "DoubleRange"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (hosted-zone-id :target-type string
                                      :member-name "HostedZoneId"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure engine-defaults common-lisp:nil
                                    ((dbparameter-group-family :target-type
                                      string :member-name
                                      "DBParameterGroupFamily")
                                     (marker :target-type string :member-name
                                      "Marker")
                                     (parameters :target-type parameters-list
                                      :member-name "Parameters"))
                                    (:shape-name "EngineDefaults"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-identifier :target-type string
                                      :member-name "SourceIdentifier")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories")
                                     (date :target-type tstamp :member-name
                                      "Date")
                                     (source-arn :target-type string
                                      :member-name "SourceArn"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-categories-list :member
                               (string :xml-name "EventCategory"))

(smithy/sdk/shapes:define-structure event-categories-map common-lisp:nil
                                    ((source-type :target-type string
                                      :member-name "SourceType")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories"))
                                    (:shape-name "EventCategoriesMap"))

(smithy/sdk/shapes:define-list event-categories-map-list :member
                               (event-categories-map :xml-name
                                "EventCategoriesMap"))

(smithy/sdk/shapes:define-output event-categories-message common-lisp:nil
                                 ((event-categories-map-list :target-type
                                   event-categories-map-list :member-name
                                   "EventCategoriesMapList"))
                                 (:shape-name "EventCategoriesMessage"))

(smithy/sdk/shapes:define-list event-list :member (event :xml-name "Event"))

(smithy/sdk/shapes:define-structure event-subscription common-lisp:nil
                                    ((customer-aws-id :target-type string
                                      :member-name "CustomerAwsId")
                                     (cust-subscription-id :target-type string
                                      :member-name "CustSubscriptionId")
                                     (sns-topic-arn :target-type string
                                      :member-name "SnsTopicArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (subscription-creation-time :target-type
                                      string :member-name
                                      "SubscriptionCreationTime")
                                     (source-type :target-type string
                                      :member-name "SourceType")
                                     (source-ids-list :target-type
                                      source-ids-list :member-name
                                      "SourceIdsList")
                                     (event-categories-list :target-type
                                      event-categories-list :member-name
                                      "EventCategoriesList")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (event-subscription-arn :target-type
                                      string :member-name
                                      "EventSubscriptionArn"))
                                    (:shape-name "EventSubscription"))

(smithy/sdk/shapes:define-error event-subscription-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "EventSubscriptionQuotaExceededFault")
                                (:error-name "EventSubscriptionQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list event-subscriptions-list :member
                               (event-subscription :xml-name
                                "EventSubscription"))

(smithy/sdk/shapes:define-output event-subscriptions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (event-subscriptions-list :target-type
                                   event-subscriptions-list :member-name
                                   "EventSubscriptionsList"))
                                 (:shape-name "EventSubscriptionsMessage"))

(smithy/sdk/shapes:define-output events-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "EventsMessage"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input failover-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (target-dbinstance-identifier :target-type
                                  string :member-name
                                  "TargetDBInstanceIdentifier"))
                                (:shape-name "FailoverDBClusterMessage"))

(smithy/sdk/shapes:define-output failover-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "FailoverDBClusterResult"))

(smithy/sdk/shapes:define-input failover-global-cluster-message common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (target-db-cluster-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetDbClusterIdentifier")
                                 (allow-data-loss :target-type boolean-optional
                                  :member-name "AllowDataLoss")
                                 (switchover :target-type boolean-optional
                                  :member-name "Switchover"))
                                (:shape-name "FailoverGlobalClusterMessage"))

(smithy/sdk/shapes:define-output failover-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "FailoverGlobalClusterResult"))

(smithy/sdk/shapes:define-structure failover-state common-lisp:nil
                                    ((status :target-type failover-status
                                      :member-name "Status")
                                     (from-db-cluster-arn :target-type string
                                      :member-name "FromDbClusterArn")
                                     (to-db-cluster-arn :target-type string
                                      :member-name "ToDbClusterArn")
                                     (is-data-loss-allowed :target-type boolean
                                      :member-name "IsDataLossAllowed"))
                                    (:shape-name "FailoverState"))

(smithy/sdk/shapes:define-enum failover-status
    common-lisp:nil
  (:pending "pending")
  (:failing-over "failing-over")
  (:cancelling "cancelling"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member (filter :xml-name "Filter"))

(smithy/sdk/shapes:define-list filter-value-list :member
                               (string :xml-name "Value"))

(smithy/sdk/shapes:define-structure global-cluster common-lisp:nil
                                    ((global-cluster-identifier :target-type
                                      global-cluster-identifier :member-name
                                      "GlobalClusterIdentifier")
                                     (global-cluster-resource-id :target-type
                                      string :member-name
                                      "GlobalClusterResourceId")
                                     (global-cluster-arn :target-type string
                                      :member-name "GlobalClusterArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (storage-encrypted :target-type
                                      boolean-optional :member-name
                                      "StorageEncrypted")
                                     (deletion-protection :target-type
                                      boolean-optional :member-name
                                      "DeletionProtection")
                                     (global-cluster-members :target-type
                                      global-cluster-member-list :member-name
                                      "GlobalClusterMembers")
                                     (failover-state :target-type
                                      failover-state :member-name
                                      "FailoverState"))
                                    (:shape-name "GlobalCluster"))

(smithy/sdk/shapes:define-error global-cluster-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterAlreadyExistsFault")
                                (:error-name "GlobalClusterAlreadyExistsFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-type global-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list global-cluster-list :member
                               (global-cluster :xml-name "GlobalClusterMember"))

(smithy/sdk/shapes:define-structure global-cluster-member common-lisp:nil
                                    ((dbcluster-arn :target-type string
                                      :member-name "DBClusterArn")
                                     (readers :target-type readers-arn-list
                                      :member-name "Readers")
                                     (is-writer :target-type boolean
                                      :member-name "IsWriter"))
                                    (:shape-name "GlobalClusterMember"))

(smithy/sdk/shapes:define-list global-cluster-member-list :member
                               (global-cluster-member :xml-name
                                "GlobalClusterMember"))

(smithy/sdk/shapes:define-error global-cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterNotFoundFault")
                                (:error-name "GlobalClusterNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error global-cluster-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterQuotaExceededFault")
                                (:error-name "GlobalClusterQuotaExceededFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-output global-clusters-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (global-clusters :target-type
                                   global-cluster-list :member-name
                                   "GlobalClusters"))
                                 (:shape-name "GlobalClustersMessage"))

(smithy/sdk/shapes:define-error instance-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InstanceQuotaExceededFault")
                                (:error-name "InstanceQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error insufficient-dbcluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientDBClusterCapacityFault")
                                (:error-name
                                 "InsufficientDBClusterCapacityFault")
                                (:error-code 403) (:base-class neptune-error))

(smithy/sdk/shapes:define-error insufficient-dbinstance-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientDBInstanceCapacityFault")
                                (:error-name "InsufficientDBInstanceCapacity")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error insufficient-storage-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientStorageClusterCapacityFault")
                                (:error-name
                                 "InsufficientStorageClusterCapacity")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-dbcluster-endpoint-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBClusterEndpointStateFault")
                                (:error-name
                                 "InvalidDBClusterEndpointStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbcluster-snapshot-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBClusterSnapshotStateFault")
                                (:error-name
                                 "InvalidDBClusterSnapshotStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbcluster-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBClusterStateFault")
                                (:error-name "InvalidDBClusterStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbinstance-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBInstanceStateFault")
                                (:error-name "InvalidDBInstanceState")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbparameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBParameterGroupStateFault")
                                (:error-name "InvalidDBParameterGroupState")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbsecurity-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBSecurityGroupStateFault")
                                (:error-name "InvalidDBSecurityGroupState")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbsnapshot-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSnapshotStateFault")
                                (:error-name "InvalidDBSnapshotState")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbsubnet-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSubnetGroupStateFault")
                                (:error-name "InvalidDBSubnetGroupStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-dbsubnet-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSubnetStateFault")
                                (:error-name "InvalidDBSubnetStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-event-subscription-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidEventSubscriptionStateFault")
                                (:error-name "InvalidEventSubscriptionState")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-global-cluster-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidGlobalClusterStateFault")
                                (:error-name "InvalidGlobalClusterStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-restore-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidRestoreFault")
                                (:error-name "InvalidRestoreFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet")
                                (:error-name "InvalidSubnet") (:error-code 400)
                                (:base-class neptune-error))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-name "InvalidVPCNetworkStateFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error kmskey-not-accessible-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSKeyNotAccessibleFault")
                                (:error-name "KMSKeyNotAccessibleFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-input list-tags-for-resource-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "ListTagsForResourceMessage"))

(smithy/sdk/shapes:define-list log-type-list :member string)

(smithy/sdk/shapes:define-input modify-dbcluster-endpoint-message
                                common-lisp:nil
                                ((dbcluster-endpoint-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterEndpointIdentifier")
                                 (endpoint-type :target-type string
                                  :member-name "EndpointType")
                                 (static-members :target-type string-list
                                  :member-name "StaticMembers")
                                 (excluded-members :target-type string-list
                                  :member-name "ExcludedMembers"))
                                (:shape-name "ModifyDBClusterEndpointMessage"))

(smithy/sdk/shapes:define-output modify-dbcluster-endpoint-output
                                 common-lisp:nil
                                 ((dbcluster-endpoint-identifier :target-type
                                   string :member-name
                                   "DBClusterEndpointIdentifier")
                                  (dbcluster-identifier :target-type string
                                   :member-name "DBClusterIdentifier")
                                  (dbcluster-endpoint-resource-identifier
                                   :target-type string :member-name
                                   "DBClusterEndpointResourceIdentifier")
                                  (endpoint :target-type string :member-name
                                   "Endpoint")
                                  (status :target-type string :member-name
                                   "Status")
                                  (endpoint-type :target-type string
                                   :member-name "EndpointType")
                                  (custom-endpoint-type :target-type string
                                   :member-name "CustomEndpointType")
                                  (static-members :target-type string-list
                                   :member-name "StaticMembers")
                                  (excluded-members :target-type string-list
                                   :member-name "ExcludedMembers")
                                  (dbcluster-endpoint-arn :target-type string
                                   :member-name "DBClusterEndpointArn"))
                                 (:shape-name "ModifyDBClusterEndpointOutput"))

(smithy/sdk/shapes:define-input modify-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (new-dbcluster-identifier :target-type string
                                  :member-name "NewDBClusterIdentifier")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately")
                                 (backup-retention-period :target-type
                                  integer-optional :member-name
                                  "BackupRetentionPeriod")
                                 (dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (master-user-password :target-type string
                                  :member-name "MasterUserPassword")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (cloudwatch-logs-export-configuration
                                  :target-type
                                  cloudwatch-logs-export-configuration
                                  :member-name
                                  "CloudwatchLogsExportConfiguration")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (allow-major-version-upgrade :target-type
                                  boolean :member-name
                                  "AllowMajorVersionUpgrade")
                                 (dbinstance-parameter-group-name :target-type
                                  string :member-name
                                  "DBInstanceParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (storage-type :target-type string :member-name
                                  "StorageType"))
                                (:shape-name "ModifyDBClusterMessage"))

(smithy/sdk/shapes:define-input modify-dbcluster-parameter-group-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterParameterGroupName")
                                 (parameters :target-type parameters-list
                                  :required common-lisp:t :member-name
                                  "Parameters"))
                                (:shape-name
                                 "ModifyDBClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output modify-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "ModifyDBClusterResult"))

(smithy/sdk/shapes:define-input modify-dbcluster-snapshot-attribute-message
                                common-lisp:nil
                                ((dbcluster-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterSnapshotIdentifier")
                                 (attribute-name :target-type string :required
                                  common-lisp:t :member-name "AttributeName")
                                 (values-to-add :target-type
                                  attribute-value-list :member-name
                                  "ValuesToAdd")
                                 (values-to-remove :target-type
                                  attribute-value-list :member-name
                                  "ValuesToRemove"))
                                (:shape-name
                                 "ModifyDBClusterSnapshotAttributeMessage"))

(smithy/sdk/shapes:define-output modify-dbcluster-snapshot-attribute-result
                                 common-lisp:nil
                                 ((dbcluster-snapshot-attributes-result
                                   :target-type
                                   dbcluster-snapshot-attributes-result
                                   :member-name
                                   "DBClusterSnapshotAttributesResult"))
                                 (:shape-name
                                  "ModifyDBClusterSnapshotAttributeResult"))

(smithy/sdk/shapes:define-input modify-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (dbsecurity-groups :target-type
                                  dbsecurity-group-name-list :member-name
                                  "DBSecurityGroups")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately")
                                 (master-user-password :target-type string
                                  :member-name "MasterUserPassword")
                                 (dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (backup-retention-period :target-type
                                  integer-optional :member-name
                                  "BackupRetentionPeriod")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (allow-major-version-upgrade :target-type
                                  boolean :member-name
                                  "AllowMajorVersionUpgrade")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (license-model :target-type string
                                  :member-name "LicenseModel")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (new-dbinstance-identifier :target-type string
                                  :member-name "NewDBInstanceIdentifier")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (tde-credential-arn :target-type string
                                  :member-name "TdeCredentialArn")
                                 (tde-credential-password :target-type
                                  sensitive-string :member-name
                                  "TdeCredentialPassword")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (dbport-number :target-type integer-optional
                                  :member-name "DBPortNumber")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (promotion-tier :target-type integer-optional
                                  :member-name "PromotionTier")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (cloudwatch-logs-export-configuration
                                  :target-type
                                  cloudwatch-logs-export-configuration
                                  :member-name
                                  "CloudwatchLogsExportConfiguration")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection"))
                                (:shape-name "ModifyDBInstanceMessage"))

(smithy/sdk/shapes:define-output modify-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "ModifyDBInstanceResult"))

(smithy/sdk/shapes:define-input modify-dbparameter-group-message
                                common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupName")
                                 (parameters :target-type parameters-list
                                  :required common-lisp:t :member-name
                                  "Parameters"))
                                (:shape-name "ModifyDBParameterGroupMessage"))

(smithy/sdk/shapes:define-input modify-dbsubnet-group-message common-lisp:nil
                                ((dbsubnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSubnetGroupName")
                                 (dbsubnet-group-description :target-type
                                  string :member-name
                                  "DBSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds"))
                                (:shape-name "ModifyDBSubnetGroupMessage"))

(smithy/sdk/shapes:define-output modify-dbsubnet-group-result common-lisp:nil
                                 ((dbsubnet-group :target-type dbsubnet-group
                                   :member-name "DBSubnetGroup"))
                                 (:shape-name "ModifyDBSubnetGroupResult"))

(smithy/sdk/shapes:define-input modify-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled"))
                                (:shape-name "ModifyEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output modify-event-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name "ModifyEventSubscriptionResult"))

(smithy/sdk/shapes:define-input modify-global-cluster-message common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (new-global-cluster-identifier :target-type
                                  global-cluster-identifier :member-name
                                  "NewGlobalClusterIdentifier")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (allow-major-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AllowMajorVersionUpgrade"))
                                (:shape-name "ModifyGlobalClusterMessage"))

(smithy/sdk/shapes:define-output modify-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "ModifyGlobalClusterResult"))

(smithy/sdk/shapes:define-structure option-group-membership common-lisp:nil
                                    ((option-group-name :target-type string
                                      :member-name "OptionGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "OptionGroupMembership"))

(smithy/sdk/shapes:define-list option-group-membership-list :member
                               (option-group-membership :xml-name
                                "OptionGroupMembership"))

(smithy/sdk/shapes:define-error option-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OptionGroupNotFoundFault")
                                (:error-name "OptionGroupNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure orderable-dbinstance-option common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (availability-zones :target-type
                                      availability-zone-list :member-name
                                      "AvailabilityZones")
                                     (multi-azcapable :target-type boolean
                                      :member-name "MultiAZCapable")
                                     (read-replica-capable :target-type boolean
                                      :member-name "ReadReplicaCapable")
                                     (vpc :target-type boolean :member-name
                                      "Vpc")
                                     (supports-storage-encryption :target-type
                                      boolean :member-name
                                      "SupportsStorageEncryption")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (supports-iops :target-type boolean
                                      :member-name "SupportsIops")
                                     (supports-enhanced-monitoring :target-type
                                      boolean :member-name
                                      "SupportsEnhancedMonitoring")
                                     (supports-iamdatabase-authentication
                                      :target-type boolean :member-name
                                      "SupportsIAMDatabaseAuthentication")
                                     (supports-performance-insights
                                      :target-type boolean :member-name
                                      "SupportsPerformanceInsights")
                                     (min-storage-size :target-type
                                      integer-optional :member-name
                                      "MinStorageSize")
                                     (max-storage-size :target-type
                                      integer-optional :member-name
                                      "MaxStorageSize")
                                     (min-iops-per-db-instance :target-type
                                      integer-optional :member-name
                                      "MinIopsPerDbInstance")
                                     (max-iops-per-db-instance :target-type
                                      integer-optional :member-name
                                      "MaxIopsPerDbInstance")
                                     (min-iops-per-gib :target-type
                                      double-optional :member-name
                                      "MinIopsPerGib")
                                     (max-iops-per-gib :target-type
                                      double-optional :member-name
                                      "MaxIopsPerGib")
                                     (supports-global-databases :target-type
                                      boolean :member-name
                                      "SupportsGlobalDatabases"))
                                    (:shape-name "OrderableDBInstanceOption"))

(smithy/sdk/shapes:define-list orderable-dbinstance-options-list :member
                               (orderable-dbinstance-option :xml-name
                                "OrderableDBInstanceOption"))

(smithy/sdk/shapes:define-output orderable-dbinstance-options-message
                                 common-lisp:nil
                                 ((orderable-dbinstance-options :target-type
                                   orderable-dbinstance-options-list
                                   :member-name "OrderableDBInstanceOptions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "OrderableDBInstanceOptionsMessage"))

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue")
                                     (description :target-type string
                                      :member-name "Description")
                                     (source :target-type string :member-name
                                      "Source")
                                     (apply-type :target-type string
                                      :member-name "ApplyType")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion")
                                     (apply-method :target-type apply-method
                                      :member-name "ApplyMethod"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-list parameters-list :member
                               (parameter :xml-name "Parameter"))

(smithy/sdk/shapes:define-structure pending-cloudwatch-logs-exports
                                    common-lisp:nil
                                    ((log-types-to-enable :target-type
                                      log-type-list :member-name
                                      "LogTypesToEnable")
                                     (log-types-to-disable :target-type
                                      log-type-list :member-name
                                      "LogTypesToDisable"))
                                    (:shape-name
                                     "PendingCloudwatchLogsExports"))

(smithy/sdk/shapes:define-structure pending-maintenance-action common-lisp:nil
                                    ((action :target-type string :member-name
                                      "Action")
                                     (auto-applied-after-date :target-type
                                      tstamp :member-name
                                      "AutoAppliedAfterDate")
                                     (forced-apply-date :target-type tstamp
                                      :member-name "ForcedApplyDate")
                                     (opt-in-status :target-type string
                                      :member-name "OptInStatus")
                                     (current-apply-date :target-type tstamp
                                      :member-name "CurrentApplyDate")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "PendingMaintenanceAction"))

(smithy/sdk/shapes:define-list pending-maintenance-action-details :member
                               (pending-maintenance-action :xml-name
                                "PendingMaintenanceAction"))

(smithy/sdk/shapes:define-list pending-maintenance-actions :member
                               (resource-pending-maintenance-actions :xml-name
                                "ResourcePendingMaintenanceActions"))

(smithy/sdk/shapes:define-output pending-maintenance-actions-message
                                 common-lisp:nil
                                 ((pending-maintenance-actions :target-type
                                   pending-maintenance-actions :member-name
                                   "PendingMaintenanceActions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "PendingMaintenanceActionsMessage"))

(smithy/sdk/shapes:define-structure pending-modified-values common-lisp:nil
                                    ((dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (allocated-storage :target-type
                                      integer-optional :member-name
                                      "AllocatedStorage")
                                     (master-user-password :target-type string
                                      :member-name "MasterUserPassword")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (multi-az :target-type boolean-optional
                                      :member-name "MultiAZ")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (cacertificate-identifier :target-type
                                      string :member-name
                                      "CACertificateIdentifier")
                                     (dbsubnet-group-name :target-type string
                                      :member-name "DBSubnetGroupName")
                                     (pending-cloudwatch-logs-exports
                                      :target-type
                                      pending-cloudwatch-logs-exports
                                      :member-name
                                      "PendingCloudwatchLogsExports"))
                                    (:shape-name "PendingModifiedValues"))

(smithy/sdk/shapes:define-input promote-read-replica-dbcluster-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name
                                 "PromoteReadReplicaDBClusterMessage"))

(smithy/sdk/shapes:define-output promote-read-replica-dbcluster-result
                                 common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name
                                  "PromoteReadReplicaDBClusterResult"))

(smithy/sdk/shapes:define-error provisioned-iops-not-available-in-azfault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ProvisionedIopsNotAvailableInAZFault")
                                (:error-name
                                 "ProvisionedIopsNotAvailableInAZFault")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((from :target-type integer :member-name
                                      "From")
                                     (to :target-type integer :member-name
                                      "To")
                                     (step :target-type integer-optional
                                      :member-name "Step"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-list range-list :member (range :xml-name "Range"))

(smithy/sdk/shapes:define-list read-replica-dbcluster-identifier-list :member
                               (string :xml-name
                                "ReadReplicaDBClusterIdentifier"))

(smithy/sdk/shapes:define-list read-replica-dbinstance-identifier-list :member
                               (string :xml-name
                                "ReadReplicaDBInstanceIdentifier"))

(smithy/sdk/shapes:define-list read-replica-identifier-list :member
                               (string :xml-name "ReadReplicaIdentifier"))

(smithy/sdk/shapes:define-list readers-arn-list :member string)

(smithy/sdk/shapes:define-input reboot-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (force-failover :target-type boolean-optional
                                  :member-name "ForceFailover"))
                                (:shape-name "RebootDBInstanceMessage"))

(smithy/sdk/shapes:define-output reboot-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "RebootDBInstanceResult"))

(smithy/sdk/shapes:define-input remove-from-global-cluster-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (db-cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DbClusterIdentifier"))
                                (:shape-name "RemoveFromGlobalClusterMessage"))

(smithy/sdk/shapes:define-output remove-from-global-cluster-result
                                 common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "RemoveFromGlobalClusterResult"))

(smithy/sdk/shapes:define-input remove-role-from-dbcluster-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (feature-name :target-type string :member-name
                                  "FeatureName"))
                                (:shape-name "RemoveRoleFromDBClusterMessage"))

(smithy/sdk/shapes:define-input
 remove-source-identifier-from-subscription-message common-lisp:nil
 ((subscription-name :target-type string :required common-lisp:t :member-name
   "SubscriptionName")
  (source-identifier :target-type string :required common-lisp:t :member-name
   "SourceIdentifier"))
 (:shape-name "RemoveSourceIdentifierFromSubscriptionMessage"))

(smithy/sdk/shapes:define-output
 remove-source-identifier-from-subscription-result common-lisp:nil
 ((event-subscription :target-type event-subscription :member-name
   "EventSubscription"))
 (:shape-name "RemoveSourceIdentifierFromSubscriptionResult"))

(smithy/sdk/shapes:define-input remove-tags-from-resource-message
                                common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceMessage"))

(smithy/sdk/shapes:define-input reset-dbcluster-parameter-group-message
                                common-lisp:nil
                                ((dbcluster-parameter-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterParameterGroupName")
                                 (reset-all-parameters :target-type boolean
                                  :member-name "ResetAllParameters")
                                 (parameters :target-type parameters-list
                                  :member-name "Parameters"))
                                (:shape-name
                                 "ResetDBClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-input reset-dbparameter-group-message common-lisp:nil
                                ((dbparameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBParameterGroupName")
                                 (reset-all-parameters :target-type boolean
                                  :member-name "ResetAllParameters")
                                 (parameters :target-type parameters-list
                                  :member-name "Parameters"))
                                (:shape-name "ResetDBParameterGroupMessage"))

(smithy/sdk/shapes:define-error resource-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundFault")
                                (:error-name "ResourceNotFoundFault")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-structure resource-pending-maintenance-actions
                                    common-lisp:nil
                                    ((resource-identifier :target-type string
                                      :member-name "ResourceIdentifier")
                                     (pending-maintenance-action-details
                                      :target-type
                                      pending-maintenance-action-details
                                      :member-name
                                      "PendingMaintenanceActionDetails"))
                                    (:shape-name
                                     "ResourcePendingMaintenanceActions"))

(smithy/sdk/shapes:define-input restore-dbcluster-from-snapshot-message
                                common-lisp:nil
                                ((availability-zones :target-type
                                  availability-zones :member-name
                                  "AvailabilityZones")
                                 (dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (snapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotIdentifier")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (database-name :target-type string
                                  :member-name "DatabaseName")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (storage-type :target-type string :member-name
                                  "StorageType"))
                                (:shape-name
                                 "RestoreDBClusterFromSnapshotMessage"))

(smithy/sdk/shapes:define-output restore-dbcluster-from-snapshot-result
                                 common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name
                                  "RestoreDBClusterFromSnapshotResult"))

(smithy/sdk/shapes:define-input restore-dbcluster-to-point-in-time-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (restore-type :target-type string :member-name
                                  "RestoreType")
                                 (source-dbcluster-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "SourceDBClusterIdentifier")
                                 (restore-to-time :target-type tstamp
                                  :member-name "RestoreToTime")
                                 (use-latest-restorable-time :target-type
                                  boolean :member-name
                                  "UseLatestRestorableTime")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (storage-type :target-type string :member-name
                                  "StorageType"))
                                (:shape-name
                                 "RestoreDBClusterToPointInTimeMessage"))

(smithy/sdk/shapes:define-output restore-dbcluster-to-point-in-time-result
                                 common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name
                                  "RestoreDBClusterToPointInTimeResult"))

(smithy/sdk/shapes:define-error snsinvalid-topic-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSInvalidTopicFault")
                                (:error-name "SNSInvalidTopic")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error snsno-authorization-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSNoAuthorizationFault")
                                (:error-name "SNSNoAuthorization")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error snstopic-arn-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSTopicArnNotFoundFault")
                                (:error-name "SNSTopicArnNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure serverless-v2scaling-configuration
                                    common-lisp:nil
                                    ((min-capacity :target-type double-optional
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type double-optional
                                      :member-name "MaxCapacity"))
                                    (:shape-name
                                     "ServerlessV2ScalingConfiguration"))

(smithy/sdk/shapes:define-structure serverless-v2scaling-configuration-info
                                    common-lisp:nil
                                    ((min-capacity :target-type double-optional
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type double-optional
                                      :member-name "MaxCapacity"))
                                    (:shape-name
                                     "ServerlessV2ScalingConfigurationInfo"))

(smithy/sdk/shapes:define-error shared-snapshot-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SharedSnapshotQuotaExceededFault")
                                (:error-name "SharedSnapshotQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error snapshot-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotQuotaExceededFault")
                                (:error-name "SnapshotQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list source-ids-list :member
                               (string :xml-name "SourceId"))

(smithy/sdk/shapes:define-error source-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceNotFoundFault")
                                (:error-name "SourceNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:db-instance "db-instance")
  (:db-parameter-group "db-parameter-group")
  (:db-security-group "db-security-group")
  (:db-snapshot "db-snapshot")
  (:db-cluster "db-cluster")
  (:db-cluster-snapshot "db-cluster-snapshot"))

(smithy/sdk/shapes:define-input start-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name "StartDBClusterMessage"))

(smithy/sdk/shapes:define-output start-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "StartDBClusterResult"))

(smithy/sdk/shapes:define-input stop-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name "StopDBClusterMessage"))

(smithy/sdk/shapes:define-output stop-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "StopDBClusterResult"))

(smithy/sdk/shapes:define-error storage-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageQuotaExceededFault")
                                (:error-name "StorageQuotaExceeded")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error storage-type-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageTypeNotSupportedFault")
                                (:error-name "StorageTypeNotSupported")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      availability-zone :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-status :target-type string
                                      :member-name "SubnetStatus"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-already-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetAlreadyInUse")
                                (:error-name "SubnetAlreadyInUse")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-error subscription-already-exist-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionAlreadyExistFault")
                                (:error-name "SubscriptionAlreadyExist")
                                (:error-code 400) (:base-class neptune-error))

(smithy/sdk/shapes:define-error subscription-category-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SubscriptionCategoryNotFoundFault")
                                (:error-name "SubscriptionCategoryNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-error subscription-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionNotFoundFault")
                                (:error-name "SubscriptionNotFound")
                                (:error-code 404) (:base-class neptune-error))

(smithy/sdk/shapes:define-list supported-character-sets-list :member
                               (character-set :xml-name "CharacterSet"))

(smithy/sdk/shapes:define-list supported-timezones-list :member
                               (timezone :xml-name "Timezone"))

(smithy/sdk/shapes:define-input switchover-global-cluster-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (target-db-cluster-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetDbClusterIdentifier"))
                                (:shape-name "SwitchoverGlobalClusterMessage"))

(smithy/sdk/shapes:define-output switchover-global-cluster-result
                                 common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "SwitchoverGlobalClusterResult"))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-output tag-list-message common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "TagListMessage"))

(smithy/sdk/shapes:define-structure timezone common-lisp:nil
                                    ((timezone-name :target-type string
                                      :member-name "TimezoneName"))
                                    (:shape-name "Timezone"))

(smithy/sdk/shapes:define-structure upgrade-target common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (description :target-type string
                                      :member-name "Description")
                                     (auto-upgrade :target-type boolean
                                      :member-name "AutoUpgrade")
                                     (is-major-version-upgrade :target-type
                                      boolean :member-name
                                      "IsMajorVersionUpgrade")
                                     (supports-global-databases :target-type
                                      boolean-optional :member-name
                                      "SupportsGlobalDatabases"))
                                    (:shape-name "UpgradeTarget"))

(smithy/sdk/shapes:define-structure valid-dbinstance-modifications-message
                                    common-lisp:nil
                                    ((storage :target-type
                                      valid-storage-options-list :member-name
                                      "Storage"))
                                    (:shape-name
                                     "ValidDBInstanceModificationsMessage"))

(smithy/sdk/shapes:define-structure valid-storage-options common-lisp:nil
                                    ((storage-type :target-type string
                                      :member-name "StorageType")
                                     (storage-size :target-type range-list
                                      :member-name "StorageSize")
                                     (provisioned-iops :target-type range-list
                                      :member-name "ProvisionedIops")
                                     (iops-to-storage-ratio :target-type
                                      double-range-list :member-name
                                      "IopsToStorageRatio"))
                                    (:shape-name "ValidStorageOptions"))

(smithy/sdk/shapes:define-list valid-storage-options-list :member
                               (valid-storage-options :xml-name
                                "ValidStorageOptions"))

(smithy/sdk/shapes:define-list valid-upgrade-target-list :member
                               (upgrade-target :xml-name "UpgradeTarget"))

(smithy/sdk/shapes:define-list vpc-security-group-id-list :member
                               (string :xml-name "VpcSecurityGroupId"))

(smithy/sdk/shapes:define-structure vpc-security-group-membership
                                    common-lisp:nil
                                    ((vpc-security-group-id :target-type string
                                      :member-name "VpcSecurityGroupId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "VpcSecurityGroupMembership"))

(smithy/sdk/shapes:define-list vpc-security-group-membership-list :member
                               (vpc-security-group-membership :xml-name
                                "VpcSecurityGroupMembership"))

(smithy/sdk/operation:define-operation add-role-to-dbcluster :shape-name
                                       "AddRoleToDBCluster" :input
                                       add-role-to-dbcluster-message :output
                                       common-lisp:null :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-role-already-exists-fault
                                        dbcluster-role-quota-exceeded-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation add-source-identifier-to-subscription
                                       :shape-name
                                       "AddSourceIdentifierToSubscription"
                                       :input
                                       add-source-identifier-to-subscription-message
                                       :output
                                       add-source-identifier-to-subscription-result
                                       :errors
                                       (source-not-found-fault
                                        subscription-not-found-fault))

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-message :output
                                       common-lisp:null :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation apply-pending-maintenance-action
                                       :shape-name
                                       "ApplyPendingMaintenanceAction" :input
                                       apply-pending-maintenance-action-message
                                       :output
                                       apply-pending-maintenance-action-result
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation copy-dbcluster-parameter-group
                                       :shape-name
                                       "CopyDBClusterParameterGroup" :input
                                       copy-dbcluster-parameter-group-message
                                       :output
                                       copy-dbcluster-parameter-group-result
                                       :errors
                                       (dbparameter-group-already-exists-fault
                                        dbparameter-group-not-found-fault
                                        dbparameter-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation copy-dbcluster-snapshot :shape-name
                                       "CopyDBClusterSnapshot" :input
                                       copy-dbcluster-snapshot-message :output
                                       copy-dbcluster-snapshot-result :errors
                                       (dbcluster-snapshot-already-exists-fault
                                        dbcluster-snapshot-not-found-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        kmskey-not-accessible-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation copy-dbparameter-group :shape-name
                                       "CopyDBParameterGroup" :input
                                       copy-dbparameter-group-message :output
                                       copy-dbparameter-group-result :errors
                                       (dbparameter-group-already-exists-fault
                                        dbparameter-group-not-found-fault
                                        dbparameter-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbcluster :shape-name
                                       "CreateDBCluster" :input
                                       create-dbcluster-message :output
                                       create-dbcluster-result :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbinstance-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        global-cluster-not-found-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-global-cluster-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbcluster-endpoint :shape-name
                                       "CreateDBClusterEndpoint" :input
                                       create-dbcluster-endpoint-message
                                       :output create-dbcluster-endpoint-output
                                       :errors
                                       (dbcluster-endpoint-already-exists-fault
                                        dbcluster-endpoint-quota-exceeded-fault
                                        dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation create-dbcluster-parameter-group
                                       :shape-name
                                       "CreateDBClusterParameterGroup" :input
                                       create-dbcluster-parameter-group-message
                                       :output
                                       create-dbcluster-parameter-group-result
                                       :errors
                                       (dbparameter-group-already-exists-fault
                                        dbparameter-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbcluster-snapshot :shape-name
                                       "CreateDBClusterSnapshot" :input
                                       create-dbcluster-snapshot-message
                                       :output create-dbcluster-snapshot-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-snapshot-already-exists-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbinstance :shape-name
                                       "CreateDBInstance" :input
                                       create-dbinstance-message :output
                                       create-dbinstance-result :errors
                                       (authorization-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        instance-quota-exceeded-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault))

(smithy/sdk/operation:define-operation create-dbparameter-group :shape-name
                                       "CreateDBParameterGroup" :input
                                       create-dbparameter-group-message :output
                                       create-dbparameter-group-result :errors
                                       (dbparameter-group-already-exists-fault
                                        dbparameter-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbsubnet-group :shape-name
                                       "CreateDBSubnetGroup" :input
                                       create-dbsubnet-group-message :output
                                       create-dbsubnet-group-result :errors
                                       (dbsubnet-group-already-exists-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-quota-exceeded-fault
                                        dbsubnet-quota-exceeded-fault
                                        invalid-subnet))

(smithy/sdk/operation:define-operation create-event-subscription :shape-name
                                       "CreateEventSubscription" :input
                                       create-event-subscription-message
                                       :output create-event-subscription-result
                                       :errors
                                       (event-subscription-quota-exceeded-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault
                                        snstopic-arn-not-found-fault
                                        source-not-found-fault
                                        subscription-already-exist-fault
                                        subscription-category-not-found-fault))

(smithy/sdk/operation:define-operation create-global-cluster :shape-name
                                       "CreateGlobalCluster" :input
                                       create-global-cluster-message :output
                                       create-global-cluster-result :errors
                                       (dbcluster-not-found-fault
                                        global-cluster-already-exists-fault
                                        global-cluster-quota-exceeded-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation delete-dbcluster :shape-name
                                       "DeleteDBCluster" :input
                                       delete-dbcluster-message :output
                                       delete-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-snapshot-already-exists-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-dbcluster-endpoint :shape-name
                                       "DeleteDBClusterEndpoint" :input
                                       delete-dbcluster-endpoint-message
                                       :output delete-dbcluster-endpoint-output
                                       :errors
                                       (dbcluster-endpoint-not-found-fault
                                        invalid-dbcluster-endpoint-state-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation delete-dbcluster-parameter-group
                                       :shape-name
                                       "DeleteDBClusterParameterGroup" :input
                                       delete-dbcluster-parameter-group-message
                                       :output common-lisp:null :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation delete-dbcluster-snapshot :shape-name
                                       "DeleteDBClusterSnapshot" :input
                                       delete-dbcluster-snapshot-message
                                       :output delete-dbcluster-snapshot-result
                                       :errors
                                       (dbcluster-snapshot-not-found-fault
                                        invalid-dbcluster-snapshot-state-fault))

(smithy/sdk/operation:define-operation delete-dbinstance :shape-name
                                       "DeleteDBInstance" :input
                                       delete-dbinstance-message :output
                                       delete-dbinstance-result :errors
                                       (dbinstance-not-found-fault
                                        dbsnapshot-already-exists-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-dbparameter-group :shape-name
                                       "DeleteDBParameterGroup" :input
                                       delete-dbparameter-group-message :output
                                       common-lisp:null :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation delete-dbsubnet-group :shape-name
                                       "DeleteDBSubnetGroup" :input
                                       delete-dbsubnet-group-message :output
                                       common-lisp:null :errors
                                       (dbsubnet-group-not-found-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-dbsubnet-state-fault))

(smithy/sdk/operation:define-operation delete-event-subscription :shape-name
                                       "DeleteEventSubscription" :input
                                       delete-event-subscription-message
                                       :output delete-event-subscription-result
                                       :errors
                                       (invalid-event-subscription-state-fault
                                        subscription-not-found-fault))

(smithy/sdk/operation:define-operation delete-global-cluster :shape-name
                                       "DeleteGlobalCluster" :input
                                       delete-global-cluster-message :output
                                       delete-global-cluster-result :errors
                                       (global-cluster-not-found-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-endpoints :shape-name
                                       "DescribeDBClusterEndpoints" :input
                                       describe-dbcluster-endpoints-message
                                       :output dbcluster-endpoint-message
                                       :errors (dbcluster-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-parameter-groups
                                       :shape-name
                                       "DescribeDBClusterParameterGroups"
                                       :input
                                       describe-dbcluster-parameter-groups-message
                                       :output
                                       dbcluster-parameter-groups-message
                                       :errors
                                       (dbparameter-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-parameters
                                       :shape-name
                                       "DescribeDBClusterParameters" :input
                                       describe-dbcluster-parameters-message
                                       :output
                                       dbcluster-parameter-group-details
                                       :errors
                                       (dbparameter-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-snapshot-attributes
                                       :shape-name
                                       "DescribeDBClusterSnapshotAttributes"
                                       :input
                                       describe-dbcluster-snapshot-attributes-message
                                       :output
                                       describe-dbcluster-snapshot-attributes-result
                                       :errors
                                       (dbcluster-snapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-snapshots :shape-name
                                       "DescribeDBClusterSnapshots" :input
                                       describe-dbcluster-snapshots-message
                                       :output dbcluster-snapshot-message
                                       :errors
                                       (dbcluster-snapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbclusters :shape-name
                                       "DescribeDBClusters" :input
                                       describe-dbclusters-message :output
                                       dbcluster-message :errors
                                       (dbcluster-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbengine-versions :shape-name
                                       "DescribeDBEngineVersions" :input
                                       describe-dbengine-versions-message
                                       :output dbengine-version-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-dbinstances :shape-name
                                       "DescribeDBInstances" :input
                                       describe-dbinstances-message :output
                                       dbinstance-message :errors
                                       (dbinstance-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbparameter-groups :shape-name
                                       "DescribeDBParameterGroups" :input
                                       describe-dbparameter-groups-message
                                       :output dbparameter-groups-message
                                       :errors
                                       (dbparameter-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbparameters :shape-name
                                       "DescribeDBParameters" :input
                                       describe-dbparameters-message :output
                                       dbparameter-group-details :errors
                                       (dbparameter-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbsubnet-groups :shape-name
                                       "DescribeDBSubnetGroups" :input
                                       describe-dbsubnet-groups-message :output
                                       dbsubnet-group-message :errors
                                       (dbsubnet-group-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-engine-default-cluster-parameters :shape-name
 "DescribeEngineDefaultClusterParameters" :input
 describe-engine-default-cluster-parameters-message :output
 describe-engine-default-cluster-parameters-result :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-engine-default-parameters
                                       :shape-name
                                       "DescribeEngineDefaultParameters" :input
                                       describe-engine-default-parameters-message
                                       :output
                                       describe-engine-default-parameters-result
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-categories :shape-name
                                       "DescribeEventCategories" :input
                                       describe-event-categories-message
                                       :output event-categories-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-subscriptions :shape-name
                                       "DescribeEventSubscriptions" :input
                                       describe-event-subscriptions-message
                                       :output event-subscriptions-message
                                       :errors (subscription-not-found-fault))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-message :output
                                       events-message :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-global-clusters :shape-name
                                       "DescribeGlobalClusters" :input
                                       describe-global-clusters-message :output
                                       global-clusters-message :errors
                                       (global-cluster-not-found-fault))

(smithy/sdk/operation:define-operation describe-orderable-dbinstance-options
                                       :shape-name
                                       "DescribeOrderableDBInstanceOptions"
                                       :input
                                       describe-orderable-dbinstance-options-message
                                       :output
                                       orderable-dbinstance-options-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-pending-maintenance-actions
                                       :shape-name
                                       "DescribePendingMaintenanceActions"
                                       :input
                                       describe-pending-maintenance-actions-message
                                       :output
                                       pending-maintenance-actions-message
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-valid-dbinstance-modifications
                                       :shape-name
                                       "DescribeValidDBInstanceModifications"
                                       :input
                                       describe-valid-dbinstance-modifications-message
                                       :output
                                       describe-valid-dbinstance-modifications-result
                                       :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation failover-dbcluster :shape-name
                                       "FailoverDBCluster" :input
                                       failover-dbcluster-message :output
                                       failover-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation failover-global-cluster :shape-name
                                       "FailoverGlobalCluster" :input
                                       failover-global-cluster-message :output
                                       failover-global-cluster-result :errors
                                       (dbcluster-not-found-fault
                                        global-cluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-message :output
                                       tag-list-message :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation modify-dbcluster :shape-name
                                       "ModifyDBCluster" :input
                                       modify-dbcluster-message :output
                                       modify-dbcluster-result :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbsubnet-group-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsecurity-group-state-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault))

(smithy/sdk/operation:define-operation modify-dbcluster-endpoint :shape-name
                                       "ModifyDBClusterEndpoint" :input
                                       modify-dbcluster-endpoint-message
                                       :output modify-dbcluster-endpoint-output
                                       :errors
                                       (dbcluster-endpoint-not-found-fault
                                        dbinstance-not-found-fault
                                        invalid-dbcluster-endpoint-state-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation modify-dbcluster-parameter-group
                                       :shape-name
                                       "ModifyDBClusterParameterGroup" :input
                                       modify-dbcluster-parameter-group-message
                                       :output
                                       dbcluster-parameter-group-name-message
                                       :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation modify-dbcluster-snapshot-attribute
                                       :shape-name
                                       "ModifyDBClusterSnapshotAttribute"
                                       :input
                                       modify-dbcluster-snapshot-attribute-message
                                       :output
                                       modify-dbcluster-snapshot-attribute-result
                                       :errors
                                       (dbcluster-snapshot-not-found-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        shared-snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation modify-dbinstance :shape-name
                                       "ModifyDBInstance" :input
                                       modify-dbinstance-message :output
                                       modify-dbinstance-result :errors
                                       (authorization-not-found-fault
                                        certificate-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbinstance-not-found-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbupgrade-dependency-failure-fault
                                        domain-not-found-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsecurity-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault))

(smithy/sdk/operation:define-operation modify-dbparameter-group :shape-name
                                       "ModifyDBParameterGroup" :input
                                       modify-dbparameter-group-message :output
                                       dbparameter-group-name-message :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation modify-dbsubnet-group :shape-name
                                       "ModifyDBSubnetGroup" :input
                                       modify-dbsubnet-group-message :output
                                       modify-dbsubnet-group-result :errors
                                       (dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        dbsubnet-quota-exceeded-fault
                                        invalid-subnet subnet-already-in-use))

(smithy/sdk/operation:define-operation modify-event-subscription :shape-name
                                       "ModifyEventSubscription" :input
                                       modify-event-subscription-message
                                       :output modify-event-subscription-result
                                       :errors
                                       (event-subscription-quota-exceeded-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault
                                        snstopic-arn-not-found-fault
                                        subscription-category-not-found-fault
                                        subscription-not-found-fault))

(smithy/sdk/operation:define-operation modify-global-cluster :shape-name
                                       "ModifyGlobalCluster" :input
                                       modify-global-cluster-message :output
                                       modify-global-cluster-result :errors
                                       (global-cluster-not-found-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation promote-read-replica-dbcluster
                                       :shape-name
                                       "PromoteReadReplicaDBCluster" :input
                                       promote-read-replica-dbcluster-message
                                       :output
                                       promote-read-replica-dbcluster-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation reboot-dbinstance :shape-name
                                       "RebootDBInstance" :input
                                       reboot-dbinstance-message :output
                                       reboot-dbinstance-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation remove-from-global-cluster :shape-name
                                       "RemoveFromGlobalCluster" :input
                                       remove-from-global-cluster-message
                                       :output
                                       remove-from-global-cluster-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        global-cluster-not-found-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation remove-role-from-dbcluster :shape-name
                                       "RemoveRoleFromDBCluster" :input
                                       remove-role-from-dbcluster-message
                                       :output common-lisp:null :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-role-not-found-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation
 remove-source-identifier-from-subscription :shape-name
 "RemoveSourceIdentifierFromSubscription" :input
 remove-source-identifier-from-subscription-message :output
 remove-source-identifier-from-subscription-result :errors
 (source-not-found-fault subscription-not-found-fault))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-message
                                       :output common-lisp:null :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation reset-dbcluster-parameter-group
                                       :shape-name
                                       "ResetDBClusterParameterGroup" :input
                                       reset-dbcluster-parameter-group-message
                                       :output
                                       dbcluster-parameter-group-name-message
                                       :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation reset-dbparameter-group :shape-name
                                       "ResetDBParameterGroup" :input
                                       reset-dbparameter-group-message :output
                                       dbparameter-group-name-message :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation restore-dbcluster-from-snapshot
                                       :shape-name
                                       "RestoreDBClusterFromSnapshot" :input
                                       restore-dbcluster-from-snapshot-message
                                       :output
                                       restore-dbcluster-from-snapshot-result
                                       :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbcluster-snapshot-not-found-fault
                                        dbsnapshot-not-found-fault
                                        dbsubnet-group-not-found-fault
                                        insufficient-dbcluster-capacity-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbsnapshot-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        option-group-not-found-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation restore-dbcluster-to-point-in-time
                                       :shape-name
                                       "RestoreDBClusterToPointInTime" :input
                                       restore-dbcluster-to-point-in-time-message
                                       :output
                                       restore-dbcluster-to-point-in-time-result
                                       :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbcluster-snapshot-not-found-fault
                                        dbsubnet-group-not-found-fault
                                        insufficient-dbcluster-capacity-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbsnapshot-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        option-group-not-found-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation start-dbcluster :shape-name
                                       "StartDBCluster" :input
                                       start-dbcluster-message :output
                                       start-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation stop-dbcluster :shape-name
                                       "StopDBCluster" :input
                                       stop-dbcluster-message :output
                                       stop-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation switchover-global-cluster :shape-name
                                       "SwitchoverGlobalCluster" :input
                                       switchover-global-cluster-message
                                       :output switchover-global-cluster-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        global-cluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-global-cluster-state-fault))
