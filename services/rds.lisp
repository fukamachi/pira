(uiop/package:define-package #:pira/rds (:use)
                             (:export #:account-quota #:account-quota-list
                              #:activity-stream-mode
                              #:activity-stream-mode-list
                              #:activity-stream-policy-status
                              #:activity-stream-status #:add-role-to-dbcluster
                              #:add-role-to-dbinstance
                              #:add-source-identifier-to-subscription
                              #:add-tags-to-resource #:amazon-rdsv19
                              #:apply-method #:apply-pending-maintenance-action
                              #:arn #:attribute-value-list #:audit-policy-state
                              #:auth-scheme
                              #:authorize-dbsecurity-group-ingress
                              #:automation-mode #:availability-zone
                              #:availability-zone-list #:availability-zones
                              #:available-processor-feature
                              #:available-processor-feature-list
                              #:aws-backup-recovery-point-arn
                              #:backtrack-dbcluster #:blue-green-deployment
                              #:blue-green-deployment-identifier
                              #:blue-green-deployment-list
                              #:blue-green-deployment-name
                              #:blue-green-deployment-status
                              #:blue-green-deployment-status-details
                              #:blue-green-deployment-task
                              #:blue-green-deployment-task-list
                              #:blue-green-deployment-task-name
                              #:blue-green-deployment-task-status #:boolean
                              #:boolean-optional #:bucket-name
                              #:cacertificate-identifiers-list
                              #:cancel-export-task #:certificate
                              #:certificate-details #:certificate-list
                              #:character-set #:client-password-auth-type
                              #:cloudwatch-logs-export-configuration
                              #:cluster-pending-modified-values
                              #:cluster-scalability-type
                              #:connection-pool-configuration
                              #:connection-pool-configuration-info
                              #:context-attribute #:context-attribute-list
                              #:copy-dbcluster-parameter-group
                              #:copy-dbcluster-snapshot
                              #:copy-dbparameter-group #:copy-dbsnapshot
                              #:copy-option-group
                              #:create-blue-green-deployment
                              #:create-custom-dbengine-version
                              #:create-dbcluster #:create-dbcluster-endpoint
                              #:create-dbcluster-parameter-group
                              #:create-dbcluster-snapshot #:create-dbinstance
                              #:create-dbinstance-read-replica
                              #:create-dbparameter-group #:create-dbproxy
                              #:create-dbproxy-endpoint
                              #:create-dbsecurity-group #:create-dbshard-group
                              #:create-dbsnapshot #:create-dbsubnet-group
                              #:create-event-subscription
                              #:create-global-cluster #:create-integration
                              #:create-option-group #:create-tenant-database
                              #:custom-dbengine-version-ami
                              #:custom-dbengine-version-manifest
                              #:custom-engine-name #:custom-engine-version
                              #:custom-engine-version-status #:dbcluster
                              #:dbcluster-automated-backup
                              #:dbcluster-automated-backup-list
                              #:dbcluster-backtrack #:dbcluster-backtrack-list
                              #:dbcluster-capacity-info #:dbcluster-endpoint
                              #:dbcluster-endpoint-list #:dbcluster-identifier
                              #:dbcluster-list #:dbcluster-member
                              #:dbcluster-member-list
                              #:dbcluster-option-group-memberships
                              #:dbcluster-option-group-status
                              #:dbcluster-parameter-group
                              #:dbcluster-parameter-group-details
                              #:dbcluster-parameter-group-list
                              #:dbcluster-parameter-group-name-message
                              #:dbcluster-role #:dbcluster-roles
                              #:dbcluster-snapshot
                              #:dbcluster-snapshot-attribute
                              #:dbcluster-snapshot-attribute-list
                              #:dbcluster-snapshot-attributes-result
                              #:dbcluster-snapshot-list #:dbcluster-status-info
                              #:dbcluster-status-info-list #:dbengine-version
                              #:dbengine-version-list #:dbinstance
                              #:dbinstance-automated-backup
                              #:dbinstance-automated-backup-list
                              #:dbinstance-automated-backups-replication
                              #:dbinstance-automated-backups-replication-list
                              #:dbinstance-list #:dbinstance-role
                              #:dbinstance-roles #:dbinstance-status-info
                              #:dbinstance-status-info-list
                              #:dbmajor-engine-version
                              #:dbmajor-engine-versions-list
                              #:dbparameter-group #:dbparameter-group-details
                              #:dbparameter-group-list
                              #:dbparameter-group-name-message
                              #:dbparameter-group-status
                              #:dbparameter-group-status-list #:dbproxy
                              #:dbproxy-endpoint #:dbproxy-endpoint-list
                              #:dbproxy-endpoint-name #:dbproxy-endpoint-status
                              #:dbproxy-endpoint-target-role #:dbproxy-list
                              #:dbproxy-name #:dbproxy-status #:dbproxy-target
                              #:dbproxy-target-group #:dbrecommendation
                              #:dbrecommendation-list #:dbsecurity-group
                              #:dbsecurity-group-membership
                              #:dbsecurity-group-membership-list
                              #:dbsecurity-group-name-list #:dbsecurity-groups
                              #:dbshard-group #:dbshard-group-identifier
                              #:dbshard-groups-list #:dbsnapshot
                              #:dbsnapshot-attribute
                              #:dbsnapshot-attribute-list
                              #:dbsnapshot-attributes-result #:dbsnapshot-list
                              #:dbsnapshot-tenant-database
                              #:dbsnapshot-tenant-databases-list
                              #:dbsubnet-group #:dbsubnet-groups #:data-filter
                              #:database-arn #:database-insights-mode
                              #:delete-blue-green-deployment
                              #:delete-custom-dbengine-version
                              #:delete-dbcluster
                              #:delete-dbcluster-automated-backup
                              #:delete-dbcluster-endpoint
                              #:delete-dbcluster-parameter-group
                              #:delete-dbcluster-snapshot #:delete-dbinstance
                              #:delete-dbinstance-automated-backup
                              #:delete-dbparameter-group #:delete-dbproxy
                              #:delete-dbproxy-endpoint
                              #:delete-dbsecurity-group #:delete-dbshard-group
                              #:delete-dbsnapshot #:delete-dbsubnet-group
                              #:delete-event-subscription
                              #:delete-global-cluster #:delete-integration
                              #:delete-option-group #:delete-tenant-database
                              #:deregister-dbproxy-targets
                              #:describe-account-attributes
                              #:describe-blue-green-deployments
                              #:describe-certificates
                              #:describe-dbcluster-automated-backups
                              #:describe-dbcluster-backtracks
                              #:describe-dbcluster-endpoints
                              #:describe-dbcluster-parameter-groups
                              #:describe-dbcluster-parameters
                              #:describe-dbcluster-snapshot-attributes
                              #:describe-dbcluster-snapshots
                              #:describe-dbclusters
                              #:describe-dbengine-versions
                              #:describe-dbinstance-automated-backups
                              #:describe-dbinstances #:describe-dblog-files
                              #:describe-dblog-files-details
                              #:describe-dblog-files-list
                              #:describe-dbmajor-engine-versions
                              #:describe-dbparameter-groups
                              #:describe-dbparameters #:describe-dbproxies
                              #:describe-dbproxy-endpoints
                              #:describe-dbproxy-target-groups
                              #:describe-dbproxy-targets
                              #:describe-dbrecommendations
                              #:describe-dbsecurity-groups
                              #:describe-dbshard-groups
                              #:describe-dbsnapshot-attributes
                              #:describe-dbsnapshot-tenant-databases
                              #:describe-dbsnapshots #:describe-dbsubnet-groups
                              #:describe-engine-default-cluster-parameters
                              #:describe-engine-default-parameters
                              #:describe-event-categories
                              #:describe-event-subscriptions #:describe-events
                              #:describe-export-tasks
                              #:describe-global-clusters
                              #:describe-integrations
                              #:describe-option-group-options
                              #:describe-option-groups
                              #:describe-orderable-dbinstance-options
                              #:describe-pending-maintenance-actions
                              #:describe-reserved-dbinstances
                              #:describe-reserved-dbinstances-offerings
                              #:describe-source-regions
                              #:describe-tenant-databases
                              #:describe-valid-dbinstance-modifications
                              #:description #:disable-http-endpoint #:doc-link
                              #:doc-link-list #:domain-membership
                              #:domain-membership-list #:double
                              #:double-optional #:double-range
                              #:double-range-list #:download-dblog-file-portion
                              #:download-dblog-file-portion-details
                              #:ec2security-group #:ec2security-group-list
                              #:enable-http-endpoint #:encryption-context-map
                              #:endpoint #:engine #:engine-defaults
                              #:engine-family #:engine-mode-list #:event
                              #:event-categories-list #:event-categories-map
                              #:event-categories-map-list #:event-list
                              #:event-subscription #:event-subscriptions-list
                              #:exception-message #:export-source-type
                              #:export-task #:export-tasks-list
                              #:failover-dbcluster #:failover-global-cluster
                              #:failover-state #:failover-status
                              #:feature-name-list #:filter #:filter-list
                              #:filter-value-list #:global-cluster
                              #:global-cluster-identifier #:global-cluster-list
                              #:global-cluster-member
                              #:global-cluster-member-list
                              #:global-cluster-member-synchronization-status
                              #:iamauth-mode #:iprange #:iprange-list #:integer
                              #:integer-optional #:integration
                              #:integration-arn #:integration-description
                              #:integration-error #:integration-error-list
                              #:integration-identifier #:integration-list
                              #:integration-name #:integration-status
                              #:issue-details #:key-list #:kms-key-id-or-arn
                              #:lifecycle-support-name #:limitless-database
                              #:limitless-database-status
                              #:list-tags-for-resource
                              #:local-write-forwarding-status #:log-type-list
                              #:long #:long-optional #:major-engine-version
                              #:marker #:master-user-secret #:max-records
                              #:metric #:metric-list #:metric-query
                              #:metric-reference #:metric-reference-list
                              #:minimum-engine-version-per-allowed-value
                              #:minimum-engine-version-per-allowed-value-list
                              #:modify-activity-stream #:modify-certificates
                              #:modify-current-dbcluster-capacity
                              #:modify-custom-dbengine-version
                              #:modify-dbcluster #:modify-dbcluster-endpoint
                              #:modify-dbcluster-parameter-group
                              #:modify-dbcluster-snapshot-attribute
                              #:modify-dbinstance #:modify-dbparameter-group
                              #:modify-dbproxy #:modify-dbproxy-endpoint
                              #:modify-dbproxy-target-group
                              #:modify-dbrecommendation #:modify-dbshard-group
                              #:modify-dbsnapshot #:modify-dbsnapshot-attribute
                              #:modify-dbsubnet-group
                              #:modify-event-subscription
                              #:modify-global-cluster #:modify-integration
                              #:modify-option-group #:modify-tenant-database
                              #:option #:option-configuration
                              #:option-configuration-list #:option-group
                              #:option-group-membership
                              #:option-group-membership-list
                              #:option-group-option
                              #:option-group-option-setting
                              #:option-group-option-settings-list
                              #:option-group-option-versions-list
                              #:option-group-options-list #:option-groups
                              #:option-groups-list #:option-names-list
                              #:option-setting
                              #:option-setting-configuration-list
                              #:option-settings-list #:option-version
                              #:options-conflicts-with #:options-depended-on
                              #:options-list #:orderable-dbinstance-option
                              #:orderable-dbinstance-options-list #:outpost
                              #:parameter #:parameters-list
                              #:pending-cloudwatch-logs-exports
                              #:pending-maintenance-action
                              #:pending-maintenance-action-details
                              #:pending-maintenance-actions
                              #:pending-modified-values
                              #:performance-insights-metric-dimension-group
                              #:performance-insights-metric-query
                              #:performance-issue-details #:processor-feature
                              #:processor-feature-list #:promote-read-replica
                              #:promote-read-replica-dbcluster
                              #:purchase-reserved-dbinstances-offering #:range
                              #:range-list #:rds-custom-cluster-configuration
                              #:read-replica-dbcluster-identifier-list
                              #:read-replica-dbinstance-identifier-list
                              #:read-replica-identifier-list #:readers-arn-list
                              #:reboot-dbcluster #:reboot-dbinstance
                              #:reboot-dbshard-group #:recommended-action
                              #:recommended-action-list
                              #:recommended-action-parameter
                              #:recommended-action-parameter-list
                              #:recommended-action-update
                              #:recommended-action-update-list
                              #:recurring-charge #:recurring-charge-list
                              #:reference-details #:register-dbproxy-targets
                              #:remove-from-global-cluster
                              #:remove-role-from-dbcluster
                              #:remove-role-from-dbinstance
                              #:remove-source-identifier-from-subscription
                              #:remove-tags-from-resource #:replica-mode
                              #:reserved-dbinstance #:reserved-dbinstance-list
                              #:reserved-dbinstances-offering
                              #:reserved-dbinstances-offering-list
                              #:reset-dbcluster-parameter-group
                              #:reset-dbparameter-group
                              #:resource-pending-maintenance-actions
                              #:restore-dbcluster-from-s3
                              #:restore-dbcluster-from-snapshot
                              #:restore-dbcluster-to-point-in-time
                              #:restore-dbinstance-from-dbsnapshot
                              #:restore-dbinstance-from-s3
                              #:restore-dbinstance-to-point-in-time
                              #:restore-window
                              #:revoke-dbsecurity-group-ingress
                              #:scalar-reference-details
                              #:scaling-configuration
                              #:scaling-configuration-info #:sensitive-string
                              #:serverless-v2features-support
                              #:serverless-v2scaling-configuration
                              #:serverless-v2scaling-configuration-info
                              #:source-arn #:source-ids-list #:source-region
                              #:source-region-list #:source-type
                              #:start-activity-stream #:start-dbcluster
                              #:start-dbinstance
                              #:start-dbinstance-automated-backups-replication
                              #:start-export-task #:stop-activity-stream
                              #:stop-dbcluster #:stop-dbinstance
                              #:stop-dbinstance-automated-backups-replication
                              #:string #:string255 #:string-list #:subnet
                              #:subnet-identifier-list #:subnet-list
                              #:supported-character-sets-list
                              #:supported-engine-lifecycle
                              #:supported-engine-lifecycle-list
                              #:supported-timezones-list
                              #:switchover-blue-green-deployment
                              #:switchover-detail #:switchover-detail-list
                              #:switchover-detail-status
                              #:switchover-global-cluster
                              #:switchover-read-replica #:switchover-timeout
                              #:tstamp #:tag #:tag-list
                              #:target-dbcluster-parameter-group-name
                              #:target-dbinstance-class
                              #:target-dbparameter-group-name
                              #:target-engine-version #:target-group-list
                              #:target-health #:target-health-reason
                              #:target-list #:target-role #:target-state
                              #:target-storage-type #:target-type
                              #:tenant-database
                              #:tenant-database-pending-modified-values
                              #:tenant-databases-list #:timezone
                              #:upgrade-target #:user-auth-config
                              #:user-auth-config-info
                              #:user-auth-config-info-list
                              #:user-auth-config-list
                              #:valid-dbinstance-modifications-message
                              #:valid-storage-options
                              #:valid-storage-options-list
                              #:valid-upgrade-target-list
                              #:vpc-security-group-id-list
                              #:vpc-security-group-membership
                              #:vpc-security-group-membership-list
                              #:write-forwarding-status))
(common-lisp:in-package #:pira/rds)

(smithy/sdk/service:define-service amazon-rdsv19 :shape-name "AmazonRDSv19"
                                   :version "2014-10-31" :title
                                   "Amazon Relational Database Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://rds.amazonaws.com/doc/2014-10-31/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "RDS")
                                      ("arnNamespace" . "rds")
                                      ("cloudFormationName" . "RDS")
                                      ("cloudTrailEventSource"
                                       . "rds.amazonaws.com")
                                      ("endpointPrefix" . "rds"))
                                     ("aws.auth#sigv4" ("name" . "rds"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-output account-attributes-message common-lisp:nil
                                 ((account-quotas :target-type
                                   account-quota-list :member-name
                                   "AccountQuotas"))
                                 (:shape-name "AccountAttributesMessage"))

(smithy/sdk/shapes:define-structure account-quota common-lisp:nil
                                    ((account-quota-name :target-type string
                                      :member-name "AccountQuotaName")
                                     (used :target-type long :member-name
                                      "Used")
                                     (max :target-type long :member-name
                                      "Max"))
                                    (:shape-name "AccountQuota"))

(smithy/sdk/shapes:define-list account-quota-list :member
                               (account-quota :xml-name "AccountQuota"))

(smithy/sdk/shapes:define-enum activity-stream-mode
    common-lisp:nil
  (:sync "sync")
  (:async "async"))

(smithy/sdk/shapes:define-list activity-stream-mode-list :member string)

(smithy/sdk/shapes:define-enum activity-stream-policy-status
    common-lisp:nil
  (:locked "locked")
  (:unlocked "unlocked")
  (:locking-policy "locking-policy")
  (:unlocking-policy "unlocking-policy"))

(smithy/sdk/shapes:define-enum activity-stream-status
    common-lisp:nil
  (:stopped "stopped")
  (:starting "starting")
  (:started "started")
  (:stopping "stopping"))

(smithy/sdk/shapes:define-input add-role-to-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (feature-name :target-type string :member-name
                                  "FeatureName"))
                                (:shape-name "AddRoleToDBClusterMessage"))

(smithy/sdk/shapes:define-input add-role-to-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (feature-name :target-type string :required
                                  common-lisp:t :member-name "FeatureName"))
                                (:shape-name "AddRoleToDBInstanceMessage"))

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

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-value-list :member
                               (string :xml-name "AttributeValue"))

(smithy/sdk/shapes:define-enum audit-policy-state
    common-lisp:nil
  (:locked-policy "locked")
  (:unlocked-policy "unlocked"))

(smithy/sdk/shapes:define-enum auth-scheme
    common-lisp:nil
  (:secrets "SECRETS"))

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

(smithy/sdk/shapes:define-error authorization-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationQuotaExceededFault")
                                (:error-name "AuthorizationQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input authorize-dbsecurity-group-ingress-message
                                common-lisp:nil
                                ((dbsecurity-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSecurityGroupName")
                                 (cidrip :target-type string :member-name
                                  "CIDRIP")
                                 (ec2security-group-name :target-type string
                                  :member-name "EC2SecurityGroupName")
                                 (ec2security-group-id :target-type string
                                  :member-name "EC2SecurityGroupId")
                                 (ec2security-group-owner-id :target-type
                                  string :member-name
                                  "EC2SecurityGroupOwnerId"))
                                (:shape-name
                                 "AuthorizeDBSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output authorize-dbsecurity-group-ingress-result
                                 common-lisp:nil
                                 ((dbsecurity-group :target-type
                                   dbsecurity-group :member-name
                                   "DBSecurityGroup"))
                                 (:shape-name
                                  "AuthorizeDBSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-enum automation-mode
    common-lisp:nil
  (:full "full")
  (:all-paused "all-paused"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zone-list :member
                               (availability-zone :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zones :member
                               (string :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-structure available-processor-feature common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (default-value :target-type string
                                      :member-name "DefaultValue")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues"))
                                    (:shape-name "AvailableProcessorFeature"))

(smithy/sdk/shapes:define-list available-processor-feature-list :member
                               (available-processor-feature :xml-name
                                "AvailableProcessorFeature"))

(smithy/sdk/shapes:define-type aws-backup-recovery-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input backtrack-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (backtrack-to :target-type tstamp :required
                                  common-lisp:t :member-name "BacktrackTo")
                                 (force :target-type boolean-optional
                                  :member-name "Force")
                                 (use-earliest-time-on-point-in-time-unavailable
                                  :target-type boolean-optional :member-name
                                  "UseEarliestTimeOnPointInTimeUnavailable"))
                                (:shape-name "BacktrackDBClusterMessage"))

(smithy/sdk/shapes:define-error backup-policy-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "BackupPolicyNotFoundFault")
                                (:error-name "BackupPolicyNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure blue-green-deployment common-lisp:nil
                                    ((blue-green-deployment-identifier
                                      :target-type
                                      blue-green-deployment-identifier
                                      :member-name
                                      "BlueGreenDeploymentIdentifier")
                                     (blue-green-deployment-name :target-type
                                      blue-green-deployment-name :member-name
                                      "BlueGreenDeploymentName")
                                     (source :target-type database-arn
                                      :member-name "Source")
                                     (target :target-type database-arn
                                      :member-name "Target")
                                     (switchover-details :target-type
                                      switchover-detail-list :member-name
                                      "SwitchoverDetails")
                                     (tasks :target-type
                                      blue-green-deployment-task-list
                                      :member-name "Tasks")
                                     (status :target-type
                                      blue-green-deployment-status :member-name
                                      "Status")
                                     (status-details :target-type
                                      blue-green-deployment-status-details
                                      :member-name "StatusDetails")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (delete-time :target-type tstamp
                                      :member-name "DeleteTime")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "BlueGreenDeployment"))

(smithy/sdk/shapes:define-error blue-green-deployment-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "BlueGreenDeploymentAlreadyExistsFault")
                                (:error-name
                                 "BlueGreenDeploymentAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type blue-green-deployment-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blue-green-deployment-list :member
                               blue-green-deployment)

(smithy/sdk/shapes:define-type blue-green-deployment-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error blue-green-deployment-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "BlueGreenDeploymentNotFoundFault")
                                (:error-name
                                 "BlueGreenDeploymentNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-type blue-green-deployment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type blue-green-deployment-status-details
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure blue-green-deployment-task common-lisp:nil
                                    ((name :target-type
                                      blue-green-deployment-task-name
                                      :member-name "Name")
                                     (status :target-type
                                      blue-green-deployment-task-status
                                      :member-name "Status"))
                                    (:shape-name "BlueGreenDeploymentTask"))

(smithy/sdk/shapes:define-list blue-green-deployment-task-list :member
                               blue-green-deployment-task)

(smithy/sdk/shapes:define-type blue-green-deployment-task-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type blue-green-deployment-task-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cacertificate-identifiers-list :member string)

(smithy/sdk/shapes:define-input cancel-export-task-message common-lisp:nil
                                ((export-task-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ExportTaskIdentifier"))
                                (:shape-name "CancelExportTaskMessage"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-identifier :target-type
                                      string :member-name
                                      "CertificateIdentifier")
                                     (certificate-type :target-type string
                                      :member-name "CertificateType")
                                     (thumbprint :target-type string
                                      :member-name "Thumbprint")
                                     (valid-from :target-type tstamp
                                      :member-name "ValidFrom")
                                     (valid-till :target-type tstamp
                                      :member-name "ValidTill")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (customer-override :target-type
                                      boolean-optional :member-name
                                      "CustomerOverride")
                                     (customer-override-valid-till :target-type
                                      tstamp :member-name
                                      "CustomerOverrideValidTill"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-structure certificate-details common-lisp:nil
                                    ((caidentifier :target-type string
                                      :member-name "CAIdentifier")
                                     (valid-till :target-type tstamp
                                      :member-name "ValidTill"))
                                    (:shape-name "CertificateDetails"))

(smithy/sdk/shapes:define-list certificate-list :member
                               (certificate :xml-name "Certificate"))

(smithy/sdk/shapes:define-output certificate-message common-lisp:nil
                                 ((default-certificate-for-new-launches
                                   :target-type string :member-name
                                   "DefaultCertificateForNewLaunches")
                                  (certificates :target-type certificate-list
                                   :member-name "Certificates")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "CertificateMessage"))

(smithy/sdk/shapes:define-error certificate-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CertificateNotFoundFault")
                                (:error-name "CertificateNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure character-set common-lisp:nil
                                    ((character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (character-set-description :target-type
                                      string :member-name
                                      "CharacterSetDescription"))
                                    (:shape-name "CharacterSet"))

(smithy/sdk/shapes:define-enum client-password-auth-type
    common-lisp:nil
  (:mysql-native-password "MYSQL_NATIVE_PASSWORD")
  (:mysql-caching-sha2-password "MYSQL_CACHING_SHA2_PASSWORD")
  (:postgres-scram-sha-256 "POSTGRES_SCRAM_SHA_256")
  (:postgres-md5 "POSTGRES_MD5")
  (:sql-server-authentication "SQL_SERVER_AUTHENTICATION"))

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
                                     (master-user-password :target-type string
                                      :member-name "MasterUserPassword")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean-optional
                                      :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (allocated-storage :target-type
                                      integer-optional :member-name
                                      "AllocatedStorage")
                                     (rds-custom-cluster-configuration
                                      :target-type
                                      rds-custom-cluster-configuration
                                      :member-name
                                      "RdsCustomClusterConfiguration")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (certificate-details :target-type
                                      certificate-details :member-name
                                      "CertificateDetails"))
                                    (:shape-name
                                     "ClusterPendingModifiedValues"))

(smithy/sdk/shapes:define-enum cluster-scalability-type
    common-lisp:nil
  (:standard "standard")
  (:limitless "limitless"))

(smithy/sdk/shapes:define-structure connection-pool-configuration
                                    common-lisp:nil
                                    ((max-connections-percent :target-type
                                      integer-optional :member-name
                                      "MaxConnectionsPercent")
                                     (max-idle-connections-percent :target-type
                                      integer-optional :member-name
                                      "MaxIdleConnectionsPercent")
                                     (connection-borrow-timeout :target-type
                                      integer-optional :member-name
                                      "ConnectionBorrowTimeout")
                                     (session-pinning-filters :target-type
                                      string-list :member-name
                                      "SessionPinningFilters")
                                     (init-query :target-type string
                                      :member-name "InitQuery"))
                                    (:shape-name "ConnectionPoolConfiguration"))

(smithy/sdk/shapes:define-structure connection-pool-configuration-info
                                    common-lisp:nil
                                    ((max-connections-percent :target-type
                                      integer :member-name
                                      "MaxConnectionsPercent")
                                     (max-idle-connections-percent :target-type
                                      integer :member-name
                                      "MaxIdleConnectionsPercent")
                                     (connection-borrow-timeout :target-type
                                      integer :member-name
                                      "ConnectionBorrowTimeout")
                                     (session-pinning-filters :target-type
                                      string-list :member-name
                                      "SessionPinningFilters")
                                     (init-query :target-type string
                                      :member-name "InitQuery"))
                                    (:shape-name
                                     "ConnectionPoolConfigurationInfo"))

(smithy/sdk/shapes:define-structure context-attribute common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "ContextAttribute"))

(smithy/sdk/shapes:define-list context-attribute-list :member context-attribute)

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

(smithy/sdk/shapes:define-input copy-dbsnapshot-message common-lisp:nil
                                ((source-dbsnapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "SourceDBSnapshotIdentifier")
                                 (target-dbsnapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetDBSnapshotIdentifier")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (copy-tags :target-type boolean-optional
                                  :member-name "CopyTags")
                                 (pre-signed-url :target-type string
                                  :member-name "PreSignedUrl")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (target-custom-availability-zone :target-type
                                  string :member-name
                                  "TargetCustomAvailabilityZone")
                                 (copy-option-group :target-type
                                  boolean-optional :member-name
                                  "CopyOptionGroup")
                                 (snapshot-availability-zone :target-type
                                  string :member-name
                                  "SnapshotAvailabilityZone")
                                 (snapshot-target :target-type string
                                  :member-name "SnapshotTarget"))
                                (:shape-name "CopyDBSnapshotMessage"))

(smithy/sdk/shapes:define-output copy-dbsnapshot-result common-lisp:nil
                                 ((dbsnapshot :target-type dbsnapshot
                                   :member-name "DBSnapshot"))
                                 (:shape-name "CopyDBSnapshotResult"))

(smithy/sdk/shapes:define-input copy-option-group-message common-lisp:nil
                                ((source-option-group-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "SourceOptionGroupIdentifier")
                                 (target-option-group-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetOptionGroupIdentifier")
                                 (target-option-group-description :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetOptionGroupDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopyOptionGroupMessage"))

(smithy/sdk/shapes:define-output copy-option-group-result common-lisp:nil
                                 ((option-group :target-type option-group
                                   :member-name "OptionGroup"))
                                 (:shape-name "CopyOptionGroupResult"))

(smithy/sdk/shapes:define-input create-blue-green-deployment-request
                                common-lisp:nil
                                ((blue-green-deployment-name :target-type
                                  blue-green-deployment-name :required
                                  common-lisp:t :member-name
                                  "BlueGreenDeploymentName")
                                 (source :target-type database-arn :required
                                  common-lisp:t :member-name "Source")
                                 (target-engine-version :target-type
                                  target-engine-version :member-name
                                  "TargetEngineVersion")
                                 (target-dbparameter-group-name :target-type
                                  target-dbparameter-group-name :member-name
                                  "TargetDBParameterGroupName")
                                 (target-dbcluster-parameter-group-name
                                  :target-type
                                  target-dbcluster-parameter-group-name
                                  :member-name
                                  "TargetDBClusterParameterGroupName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (target-dbinstance-class :target-type
                                  target-dbinstance-class :member-name
                                  "TargetDBInstanceClass")
                                 (upgrade-target-storage-config :target-type
                                  boolean-optional :member-name
                                  "UpgradeTargetStorageConfig")
                                 (target-iops :target-type integer-optional
                                  :member-name "TargetIops")
                                 (target-storage-type :target-type
                                  target-storage-type :member-name
                                  "TargetStorageType")
                                 (target-allocated-storage :target-type
                                  integer-optional :member-name
                                  "TargetAllocatedStorage")
                                 (target-storage-throughput :target-type
                                  integer-optional :member-name
                                  "TargetStorageThroughput"))
                                (:shape-name
                                 "CreateBlueGreenDeploymentRequest"))

(smithy/sdk/shapes:define-output create-blue-green-deployment-response
                                 common-lisp:nil
                                 ((blue-green-deployment :target-type
                                   blue-green-deployment :member-name
                                   "BlueGreenDeployment"))
                                 (:shape-name
                                  "CreateBlueGreenDeploymentResponse"))

(smithy/sdk/shapes:define-error create-custom-dbengine-version-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CreateCustomDBEngineVersionFault")
                                (:error-name
                                 "CreateCustomDBEngineVersionFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-custom-dbengine-version-message
                                common-lisp:nil
                                ((engine :target-type custom-engine-name
                                  :required common-lisp:t :member-name
                                  "Engine")
                                 (engine-version :target-type
                                  custom-engine-version :required common-lisp:t
                                  :member-name "EngineVersion")
                                 (database-installation-files-s3bucket-name
                                  :target-type bucket-name :member-name
                                  "DatabaseInstallationFilesS3BucketName")
                                 (database-installation-files-s3prefix
                                  :target-type string255 :member-name
                                  "DatabaseInstallationFilesS3Prefix")
                                 (image-id :target-type string255 :member-name
                                  "ImageId")
                                 (kmskey-id :target-type kms-key-id-or-arn
                                  :member-name "KMSKeyId")
                                 (description :target-type description
                                  :member-name "Description")
                                 (manifest :target-type
                                  custom-dbengine-version-manifest :member-name
                                  "Manifest")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (source-custom-db-engine-version-identifier
                                  :target-type string255 :member-name
                                  "SourceCustomDbEngineVersionIdentifier")
                                 (use-aws-provided-latest-image :target-type
                                  boolean-optional :member-name
                                  "UseAwsProvidedLatestImage"))
                                (:shape-name
                                 "CreateCustomDBEngineVersionMessage"))

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

(smithy/sdk/shapes:define-input create-dbcluster-message common-lisp:nil
                                ((availability-zones :target-type
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
                                 (backtrack-window :target-type long-optional
                                  :member-name "BacktrackWindow")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (engine-mode :target-type string :member-name
                                  "EngineMode")
                                 (scaling-configuration :target-type
                                  scaling-configuration :member-name
                                  "ScalingConfiguration")
                                 (rds-custom-cluster-configuration :target-type
                                  rds-custom-cluster-configuration :member-name
                                  "RdsCustomClusterConfiguration")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (global-cluster-identifier :target-type string
                                  :member-name "GlobalClusterIdentifier")
                                 (enable-http-endpoint :target-type
                                  boolean-optional :member-name
                                  "EnableHttpEndpoint")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (enable-global-write-forwarding :target-type
                                  boolean-optional :member-name
                                  "EnableGlobalWriteForwarding")
                                 (dbcluster-instance-class :target-type string
                                  :member-name "DBClusterInstanceClass")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (enable-limitless-database :target-type
                                  boolean-optional :member-name
                                  "EnableLimitlessDatabase")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (cluster-scalability-type :target-type
                                  cluster-scalability-type :member-name
                                  "ClusterScalabilityType")
                                 (dbsystem-id :target-type string :member-name
                                  "DBSystemId")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (enable-local-write-forwarding :target-type
                                  boolean-optional :member-name
                                  "EnableLocalWriteForwarding")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
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
                                 (nchar-character-set-name :target-type string
                                  :member-name "NcharCharacterSetName")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (tde-credential-arn :target-type string
                                  :member-name "TdeCredentialArn")
                                 (tde-credential-password :target-type string
                                  :member-name "TdeCredentialPassword")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-fqdn :target-type string :member-name
                                  "DomainFqdn")
                                 (domain-ou :target-type string :member-name
                                  "DomainOu")
                                 (domain-auth-secret-arn :target-type string
                                  :member-name "DomainAuthSecretArn")
                                 (domain-dns-ips :target-type string-list
                                  :member-name "DomainDnsIps")
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
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (max-allocated-storage :target-type
                                  integer-optional :member-name
                                  "MaxAllocatedStorage")
                                 (enable-customer-owned-ip :target-type
                                  boolean-optional :member-name
                                  "EnableCustomerOwnedIp")
                                 (custom-iam-instance-profile :target-type
                                  string :member-name
                                  "CustomIamInstanceProfile")
                                 (backup-target :target-type string
                                  :member-name "BackupTarget")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (dbsystem-id :target-type string :member-name
                                  "DBSystemId")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (multi-tenant :target-type boolean-optional
                                  :member-name "MultiTenant")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
                                (:shape-name "CreateDBInstanceMessage"))

(smithy/sdk/shapes:define-input create-dbinstance-read-replica-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (source-dbinstance-identifier :target-type
                                  string :member-name
                                  "SourceDBInstanceIdentifier")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (pre-signed-url :target-type string
                                  :member-name "PreSignedUrl")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (use-default-processor-features :target-type
                                  boolean-optional :member-name
                                  "UseDefaultProcessorFeatures")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (domain-fqdn :target-type string :member-name
                                  "DomainFqdn")
                                 (domain-ou :target-type string :member-name
                                  "DomainOu")
                                 (domain-auth-secret-arn :target-type string
                                  :member-name "DomainAuthSecretArn")
                                 (domain-dns-ips :target-type string-list
                                  :member-name "DomainDnsIps")
                                 (replica-mode :target-type replica-mode
                                  :member-name "ReplicaMode")
                                 (max-allocated-storage :target-type
                                  integer-optional :member-name
                                  "MaxAllocatedStorage")
                                 (custom-iam-instance-profile :target-type
                                  string :member-name
                                  "CustomIamInstanceProfile")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (enable-customer-owned-ip :target-type
                                  boolean-optional :member-name
                                  "EnableCustomerOwnedIp")
                                 (backup-target :target-type string
                                  :member-name "BackupTarget")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (source-dbcluster-identifier :target-type
                                  string :member-name
                                  "SourceDBClusterIdentifier")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (upgrade-storage-config :target-type
                                  boolean-optional :member-name
                                  "UpgradeStorageConfig")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier"))
                                (:shape-name
                                 "CreateDBInstanceReadReplicaMessage"))

(smithy/sdk/shapes:define-output create-dbinstance-read-replica-result
                                 common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name
                                  "CreateDBInstanceReadReplicaResult"))

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

(smithy/sdk/shapes:define-input create-dbproxy-endpoint-request common-lisp:nil
                                ((dbproxy-name :target-type dbproxy-name
                                  :required common-lisp:t :member-name
                                  "DBProxyName")
                                 (dbproxy-endpoint-name :target-type
                                  dbproxy-endpoint-name :required common-lisp:t
                                  :member-name "DBProxyEndpointName")
                                 (vpc-subnet-ids :target-type string-list
                                  :required common-lisp:t :member-name
                                  "VpcSubnetIds")
                                 (vpc-security-group-ids :target-type
                                  string-list :member-name
                                  "VpcSecurityGroupIds")
                                 (target-role :target-type
                                  dbproxy-endpoint-target-role :member-name
                                  "TargetRole")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBProxyEndpointRequest"))

(smithy/sdk/shapes:define-output create-dbproxy-endpoint-response
                                 common-lisp:nil
                                 ((dbproxy-endpoint :target-type
                                   dbproxy-endpoint :member-name
                                   "DBProxyEndpoint"))
                                 (:shape-name "CreateDBProxyEndpointResponse"))

(smithy/sdk/shapes:define-input create-dbproxy-request common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (engine-family :target-type engine-family
                                  :required common-lisp:t :member-name
                                  "EngineFamily")
                                 (auth :target-type user-auth-config-list
                                  :required common-lisp:t :member-name "Auth")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (vpc-subnet-ids :target-type string-list
                                  :required common-lisp:t :member-name
                                  "VpcSubnetIds")
                                 (vpc-security-group-ids :target-type
                                  string-list :member-name
                                  "VpcSecurityGroupIds")
                                 (require-tls :target-type boolean :member-name
                                  "RequireTLS")
                                 (idle-client-timeout :target-type
                                  integer-optional :member-name
                                  "IdleClientTimeout")
                                 (debug-logging :target-type boolean
                                  :member-name "DebugLogging")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBProxyRequest"))

(smithy/sdk/shapes:define-output create-dbproxy-response common-lisp:nil
                                 ((dbproxy :target-type dbproxy :member-name
                                   "DBProxy"))
                                 (:shape-name "CreateDBProxyResponse"))

(smithy/sdk/shapes:define-input create-dbsecurity-group-message common-lisp:nil
                                ((dbsecurity-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSecurityGroupName")
                                 (dbsecurity-group-description :target-type
                                  string :required common-lisp:t :member-name
                                  "DBSecurityGroupDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBSecurityGroupMessage"))

(smithy/sdk/shapes:define-output create-dbsecurity-group-result common-lisp:nil
                                 ((dbsecurity-group :target-type
                                   dbsecurity-group :member-name
                                   "DBSecurityGroup"))
                                 (:shape-name "CreateDBSecurityGroupResult"))

(smithy/sdk/shapes:define-input create-dbshard-group-message common-lisp:nil
                                ((dbshard-group-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBShardGroupIdentifier")
                                 (dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (compute-redundancy :target-type
                                  integer-optional :member-name
                                  "ComputeRedundancy")
                                 (max-acu :target-type double-optional
                                  :required common-lisp:t :member-name
                                  "MaxACU")
                                 (min-acu :target-type double-optional
                                  :member-name "MinACU")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBShardGroupMessage"))

(smithy/sdk/shapes:define-input create-dbsnapshot-message common-lisp:nil
                                ((dbsnapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSnapshotIdentifier")
                                 (dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDBSnapshotMessage"))

(smithy/sdk/shapes:define-output create-dbsnapshot-result common-lisp:nil
                                 ((dbsnapshot :target-type dbsnapshot
                                   :member-name "DBSnapshot"))
                                 (:shape-name "CreateDBSnapshotResult"))

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
                                ((global-cluster-identifier :target-type string
                                  :member-name "GlobalClusterIdentifier")
                                 (source-dbcluster-identifier :target-type
                                  string :member-name
                                  "SourceDBClusterIdentifier")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (database-name :target-type string
                                  :member-name "DatabaseName")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGlobalClusterMessage"))

(smithy/sdk/shapes:define-output create-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "CreateGlobalClusterResult"))

(smithy/sdk/shapes:define-input create-integration-message common-lisp:nil
                                ((source-arn :target-type source-arn :required
                                  common-lisp:t :member-name "SourceArn")
                                 (target-arn :target-type arn :required
                                  common-lisp:t :member-name "TargetArn")
                                 (integration-name :target-type
                                  integration-name :required common-lisp:t
                                  :member-name "IntegrationName")
                                 (kmskey-id :target-type string :member-name
                                  "KMSKeyId")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "AdditionalEncryptionContext")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (data-filter :target-type data-filter
                                  :member-name "DataFilter")
                                 (description :target-type
                                  integration-description :member-name
                                  "Description"))
                                (:shape-name "CreateIntegrationMessage"))

(smithy/sdk/shapes:define-input create-option-group-message common-lisp:nil
                                ((option-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "OptionGroupName")
                                 (engine-name :target-type string :required
                                  common-lisp:t :member-name "EngineName")
                                 (major-engine-version :target-type string
                                  :required common-lisp:t :member-name
                                  "MajorEngineVersion")
                                 (option-group-description :target-type string
                                  :required common-lisp:t :member-name
                                  "OptionGroupDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateOptionGroupMessage"))

(smithy/sdk/shapes:define-output create-option-group-result common-lisp:nil
                                 ((option-group :target-type option-group
                                   :member-name "OptionGroup"))
                                 (:shape-name "CreateOptionGroupResult"))

(smithy/sdk/shapes:define-input create-tenant-database-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (tenant-dbname :target-type string :required
                                  common-lisp:t :member-name "TenantDBName")
                                 (master-username :target-type string :required
                                  common-lisp:t :member-name "MasterUsername")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "MasterUserPassword")
                                 (character-set-name :target-type string
                                  :member-name "CharacterSetName")
                                 (nchar-character-set-name :target-type string
                                  :member-name "NcharCharacterSetName")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateTenantDatabaseMessage"))

(smithy/sdk/shapes:define-output create-tenant-database-result common-lisp:nil
                                 ((tenant-database :target-type tenant-database
                                   :member-name "TenantDatabase"))
                                 (:shape-name "CreateTenantDatabaseResult"))

(smithy/sdk/shapes:define-error custom-availability-zone-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CustomAvailabilityZoneNotFoundFault")
                                (:error-name "CustomAvailabilityZoneNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure custom-dbengine-version-ami common-lisp:nil
                                    ((image-id :target-type string :member-name
                                      "ImageId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "CustomDBEngineVersionAMI"))

(smithy/sdk/shapes:define-error custom-dbengine-version-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CustomDBEngineVersionAlreadyExistsFault")
                                (:error-name
                                 "CustomDBEngineVersionAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type custom-dbengine-version-manifest
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error custom-dbengine-version-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CustomDBEngineVersionNotFoundFault")
                                (:error-name
                                 "CustomDBEngineVersionNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error custom-dbengine-version-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CustomDBEngineVersionQuotaExceededFault")
                                (:error-name
                                 "CustomDBEngineVersionQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type custom-engine-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-engine-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum custom-engine-version-status
    common-lisp:nil
  (:available "available")
  (:inactive "inactive")
  (:inactive-except-restore "inactive-except-restore"))

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
                                     (automatic-restart-time :target-type
                                      tstamp :member-name
                                      "AutomaticRestartTime")
                                     (percent-progress :target-type string
                                      :member-name "PercentProgress")
                                     (earliest-restorable-time :target-type
                                      tstamp :member-name
                                      "EarliestRestorableTime")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (reader-endpoint :target-type string
                                      :member-name "ReaderEndpoint")
                                     (custom-endpoints :target-type string-list
                                      :member-name "CustomEndpoints")
                                     (multi-az :target-type boolean-optional
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
                                     (status-infos :target-type
                                      dbcluster-status-info-list :member-name
                                      "StatusInfos")
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
                                      :target-type boolean-optional
                                      :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (clone-group-id :target-type string
                                      :member-name "CloneGroupId")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (earliest-backtrack-time :target-type
                                      tstamp :member-name
                                      "EarliestBacktrackTime")
                                     (backtrack-window :target-type
                                      long-optional :member-name
                                      "BacktrackWindow")
                                     (backtrack-consumed-change-records
                                      :target-type long-optional :member-name
                                      "BacktrackConsumedChangeRecords")
                                     (enabled-cloudwatch-logs-exports
                                      :target-type log-type-list :member-name
                                      "EnabledCloudwatchLogsExports")
                                     (capacity :target-type integer-optional
                                      :member-name "Capacity")
                                     (engine-mode :target-type string
                                      :member-name "EngineMode")
                                     (scaling-configuration-info :target-type
                                      scaling-configuration-info :member-name
                                      "ScalingConfigurationInfo")
                                     (rds-custom-cluster-configuration
                                      :target-type
                                      rds-custom-cluster-configuration
                                      :member-name
                                      "RdsCustomClusterConfiguration")
                                     (deletion-protection :target-type
                                      boolean-optional :member-name
                                      "DeletionProtection")
                                     (http-endpoint-enabled :target-type
                                      boolean-optional :member-name
                                      "HttpEndpointEnabled")
                                     (activity-stream-mode :target-type
                                      activity-stream-mode :member-name
                                      "ActivityStreamMode")
                                     (activity-stream-status :target-type
                                      activity-stream-status :member-name
                                      "ActivityStreamStatus")
                                     (activity-stream-kms-key-id :target-type
                                      string :member-name
                                      "ActivityStreamKmsKeyId")
                                     (activity-stream-kinesis-stream-name
                                      :target-type string :member-name
                                      "ActivityStreamKinesisStreamName")
                                     (copy-tags-to-snapshot :target-type
                                      boolean-optional :member-name
                                      "CopyTagsToSnapshot")
                                     (cross-account-clone :target-type
                                      boolean-optional :member-name
                                      "CrossAccountClone")
                                     (domain-memberships :target-type
                                      domain-membership-list :member-name
                                      "DomainMemberships")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (global-cluster-identifier :target-type
                                      global-cluster-identifier :member-name
                                      "GlobalClusterIdentifier")
                                     (global-write-forwarding-status
                                      :target-type write-forwarding-status
                                      :member-name
                                      "GlobalWriteForwardingStatus")
                                     (global-write-forwarding-requested
                                      :target-type boolean-optional
                                      :member-name
                                      "GlobalWriteForwardingRequested")
                                     (pending-modified-values :target-type
                                      cluster-pending-modified-values
                                      :member-name "PendingModifiedValues")
                                     (dbcluster-instance-class :target-type
                                      string :member-name
                                      "DBClusterInstanceClass")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (publicly-accessible :target-type
                                      boolean-optional :member-name
                                      "PubliclyAccessible")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (monitoring-interval :target-type
                                      integer-optional :member-name
                                      "MonitoringInterval")
                                     (monitoring-role-arn :target-type string
                                      :member-name "MonitoringRoleArn")
                                     (database-insights-mode :target-type
                                      database-insights-mode :member-name
                                      "DatabaseInsightsMode")
                                     (performance-insights-enabled :target-type
                                      boolean-optional :member-name
                                      "PerformanceInsightsEnabled")
                                     (performance-insights-kmskey-id
                                      :target-type string :member-name
                                      "PerformanceInsightsKMSKeyId")
                                     (performance-insights-retention-period
                                      :target-type integer-optional
                                      :member-name
                                      "PerformanceInsightsRetentionPeriod")
                                     (serverless-v2scaling-configuration
                                      :target-type
                                      serverless-v2scaling-configuration-info
                                      :member-name
                                      "ServerlessV2ScalingConfiguration")
                                     (serverless-v2platform-version
                                      :target-type string :member-name
                                      "ServerlessV2PlatformVersion")
                                     (network-type :target-type string
                                      :member-name "NetworkType")
                                     (dbsystem-id :target-type string
                                      :member-name "DBSystemId")
                                     (master-user-secret :target-type
                                      master-user-secret :member-name
                                      "MasterUserSecret")
                                     (iooptimized-next-allowed-modification-time
                                      :target-type tstamp :member-name
                                      "IOOptimizedNextAllowedModificationTime")
                                     (local-write-forwarding-status
                                      :target-type
                                      local-write-forwarding-status
                                      :member-name
                                      "LocalWriteForwardingStatus")
                                     (aws-backup-recovery-point-arn
                                      :target-type string :member-name
                                      "AwsBackupRecoveryPointArn")
                                     (limitless-database :target-type
                                      limitless-database :member-name
                                      "LimitlessDatabase")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput")
                                     (cluster-scalability-type :target-type
                                      cluster-scalability-type :member-name
                                      "ClusterScalabilityType")
                                     (certificate-details :target-type
                                      certificate-details :member-name
                                      "CertificateDetails")
                                     (engine-lifecycle-support :target-type
                                      string :member-name
                                      "EngineLifecycleSupport"))
                                    (:shape-name "DBCluster"))

(smithy/sdk/shapes:define-error dbcluster-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterAlreadyExistsFault")
                                (:error-name "DBClusterAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbcluster-automated-backup common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (dbcluster-automated-backups-arn
                                      :target-type string :member-name
                                      "DBClusterAutomatedBackupsArn")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (restore-window :target-type
                                      restore-window :member-name
                                      "RestoreWindow")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (db-cluster-resource-id :target-type
                                      string :member-name
                                      "DbClusterResourceId")
                                     (region :target-type string :member-name
                                      "Region")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (status :target-type string :member-name
                                      "Status")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (storage-encrypted :target-type boolean
                                      :member-name "StorageEncrypted")
                                     (allocated-storage :target-type integer
                                      :member-name "AllocatedStorage")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (dbcluster-arn :target-type string
                                      :member-name "DBClusterArn")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (engine-mode :target-type string
                                      :member-name "EngineMode")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (aws-backup-recovery-point-arn
                                      :target-type string :member-name
                                      "AwsBackupRecoveryPointArn")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput"))
                                    (:shape-name "DBClusterAutomatedBackup"))

(smithy/sdk/shapes:define-list dbcluster-automated-backup-list :member
                               (dbcluster-automated-backup :xml-name
                                "DBClusterAutomatedBackup"))

(smithy/sdk/shapes:define-output dbcluster-automated-backup-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbcluster-automated-backups :target-type
                                   dbcluster-automated-backup-list :member-name
                                   "DBClusterAutomatedBackups"))
                                 (:shape-name
                                  "DBClusterAutomatedBackupMessage"))

(smithy/sdk/shapes:define-error dbcluster-automated-backup-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterAutomatedBackupNotFoundFault")
                                (:error-name
                                 "DBClusterAutomatedBackupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbcluster-automated-backup-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterAutomatedBackupQuotaExceededFault")
                                (:error-name
                                 "DBClusterAutomatedBackupQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbcluster-backtrack common-lisp:nil
                                    ((dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (backtrack-identifier :target-type string
                                      :member-name "BacktrackIdentifier")
                                     (backtrack-to :target-type tstamp
                                      :member-name "BacktrackTo")
                                     (backtracked-from :target-type tstamp
                                      :member-name "BacktrackedFrom")
                                     (backtrack-request-creation-time
                                      :target-type tstamp :member-name
                                      "BacktrackRequestCreationTime")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DBClusterBacktrack"))

(smithy/sdk/shapes:define-list dbcluster-backtrack-list :member
                               (dbcluster-backtrack :xml-name
                                "DBClusterBacktrack"))

(smithy/sdk/shapes:define-output dbcluster-backtrack-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbcluster-backtracks :target-type
                                   dbcluster-backtrack-list :member-name
                                   "DBClusterBacktracks"))
                                 (:shape-name "DBClusterBacktrackMessage"))

(smithy/sdk/shapes:define-error dbcluster-backtrack-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterBacktrackNotFoundFault")
                                (:error-name "DBClusterBacktrackNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dbcluster-capacity-info common-lisp:nil
                                    ((dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (pending-capacity :target-type
                                      integer-optional :member-name
                                      "PendingCapacity")
                                     (current-capacity :target-type
                                      integer-optional :member-name
                                      "CurrentCapacity")
                                     (seconds-before-timeout :target-type
                                      integer-optional :member-name
                                      "SecondsBeforeTimeout")
                                     (timeout-action :target-type string
                                      :member-name "TimeoutAction"))
                                    (:shape-name "DBClusterCapacityInfo"))

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
                                (:error-code 400))

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
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbcluster-endpoint-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterEndpointQuotaExceededFault")
                                (:error-name
                                 "DBClusterEndpointQuotaExceededFault")
                                (:error-code 403))

(smithy/sdk/shapes:define-type dbcluster-identifier
                               smithy/sdk/smithy-types:string)

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
                                (:error-code 404))

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
                                (:error-code 404))

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
                                (:error-code 403))

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
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbcluster-role-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterRoleNotFoundFault")
                                (:error-name "DBClusterRoleNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbcluster-role-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBClusterRoleQuotaExceededFault")
                                (:error-name "DBClusterRoleQuotaExceeded")
                                (:error-code 400))

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
                                     (engine-mode :target-type string
                                      :member-name "EngineMode")
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
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (dbsystem-id :target-type string
                                      :member-name "DBSystemId")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (db-cluster-resource-id :target-type
                                      string :member-name
                                      "DbClusterResourceId")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput"))
                                    (:shape-name "DBClusterSnapshot"))

(smithy/sdk/shapes:define-error dbcluster-snapshot-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBClusterSnapshotAlreadyExistsFault")
                                (:error-name
                                 "DBClusterSnapshotAlreadyExistsFault")
                                (:error-code 400))

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
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dbcluster-status-info common-lisp:nil
                                    ((status-type :target-type string
                                      :member-name "StatusType")
                                     (normal :target-type boolean :member-name
                                      "Normal")
                                     (status :target-type string :member-name
                                      "Status")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "DBClusterStatusInfo"))

(smithy/sdk/shapes:define-list dbcluster-status-info-list :member
                               (dbcluster-status-info :xml-name
                                "DBClusterStatusInfo"))

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
                                     (image :target-type
                                      custom-dbengine-version-ami :member-name
                                      "Image")
                                     (dbengine-media-type :target-type string
                                      :member-name "DBEngineMediaType")
                                     (supported-character-sets :target-type
                                      supported-character-sets-list
                                      :member-name "SupportedCharacterSets")
                                     (supported-nchar-character-sets
                                      :target-type
                                      supported-character-sets-list
                                      :member-name
                                      "SupportedNcharCharacterSets")
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
                                     (supported-engine-modes :target-type
                                      engine-mode-list :member-name
                                      "SupportedEngineModes")
                                     (supported-feature-names :target-type
                                      feature-name-list :member-name
                                      "SupportedFeatureNames")
                                     (status :target-type string :member-name
                                      "Status")
                                     (supports-parallel-query :target-type
                                      boolean :member-name
                                      "SupportsParallelQuery")
                                     (supports-global-databases :target-type
                                      boolean :member-name
                                      "SupportsGlobalDatabases")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion")
                                     (database-installation-files-s3bucket-name
                                      :target-type string :member-name
                                      "DatabaseInstallationFilesS3BucketName")
                                     (database-installation-files-s3prefix
                                      :target-type string :member-name
                                      "DatabaseInstallationFilesS3Prefix")
                                     (dbengine-version-arn :target-type string
                                      :member-name "DBEngineVersionArn")
                                     (kmskey-id :target-type string
                                      :member-name "KMSKeyId")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (supports-babelfish :target-type boolean
                                      :member-name "SupportsBabelfish")
                                     (custom-dbengine-version-manifest
                                      :target-type
                                      custom-dbengine-version-manifest
                                      :member-name
                                      "CustomDBEngineVersionManifest")
                                     (supports-limitless-database :target-type
                                      boolean :member-name
                                      "SupportsLimitlessDatabase")
                                     (supports-certificate-rotation-without-restart
                                      :target-type boolean-optional
                                      :member-name
                                      "SupportsCertificateRotationWithoutRestart")
                                     (supported-cacertificate-identifiers
                                      :target-type
                                      cacertificate-identifiers-list
                                      :member-name
                                      "SupportedCACertificateIdentifiers")
                                     (supports-local-write-forwarding
                                      :target-type boolean-optional
                                      :member-name
                                      "SupportsLocalWriteForwarding")
                                     (supports-integrations :target-type
                                      boolean :member-name
                                      "SupportsIntegrations")
                                     (serverless-v2features-support
                                      :target-type
                                      serverless-v2features-support
                                      :member-name
                                      "ServerlessV2FeaturesSupport"))
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
                                     (automatic-restart-time :target-type
                                      tstamp :member-name
                                      "AutomaticRestartTime")
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
                                     (replica-mode :target-type replica-mode
                                      :member-name "ReplicaMode")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (option-group-memberships :target-type
                                      option-group-membership-list :member-name
                                      "OptionGroupMemberships")
                                     (character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (nchar-character-set-name :target-type
                                      string :member-name
                                      "NcharCharacterSetName")
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
                                     (database-insights-mode :target-type
                                      database-insights-mode :member-name
                                      "DatabaseInsightsMode")
                                     (performance-insights-enabled :target-type
                                      boolean-optional :member-name
                                      "PerformanceInsightsEnabled")
                                     (performance-insights-kmskey-id
                                      :target-type string :member-name
                                      "PerformanceInsightsKMSKeyId")
                                     (performance-insights-retention-period
                                      :target-type integer-optional
                                      :member-name
                                      "PerformanceInsightsRetentionPeriod")
                                     (enabled-cloudwatch-logs-exports
                                      :target-type log-type-list :member-name
                                      "EnabledCloudwatchLogsExports")
                                     (processor-features :target-type
                                      processor-feature-list :member-name
                                      "ProcessorFeatures")
                                     (deletion-protection :target-type boolean
                                      :member-name "DeletionProtection")
                                     (associated-roles :target-type
                                      dbinstance-roles :member-name
                                      "AssociatedRoles")
                                     (listener-endpoint :target-type endpoint
                                      :member-name "ListenerEndpoint")
                                     (max-allocated-storage :target-type
                                      integer-optional :member-name
                                      "MaxAllocatedStorage")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (dbinstance-automated-backups-replications
                                      :target-type
                                      dbinstance-automated-backups-replication-list
                                      :member-name
                                      "DBInstanceAutomatedBackupsReplications")
                                     (customer-owned-ip-enabled :target-type
                                      boolean-optional :member-name
                                      "CustomerOwnedIpEnabled")
                                     (aws-backup-recovery-point-arn
                                      :target-type string :member-name
                                      "AwsBackupRecoveryPointArn")
                                     (activity-stream-status :target-type
                                      activity-stream-status :member-name
                                      "ActivityStreamStatus")
                                     (activity-stream-kms-key-id :target-type
                                      string :member-name
                                      "ActivityStreamKmsKeyId")
                                     (activity-stream-kinesis-stream-name
                                      :target-type string :member-name
                                      "ActivityStreamKinesisStreamName")
                                     (activity-stream-mode :target-type
                                      activity-stream-mode :member-name
                                      "ActivityStreamMode")
                                     (activity-stream-engine-native-audit-fields-included
                                      :target-type boolean-optional
                                      :member-name
                                      "ActivityStreamEngineNativeAuditFieldsIncluded")
                                     (automation-mode :target-type
                                      automation-mode :member-name
                                      "AutomationMode")
                                     (resume-full-automation-mode-time
                                      :target-type tstamp :member-name
                                      "ResumeFullAutomationModeTime")
                                     (custom-iam-instance-profile :target-type
                                      string :member-name
                                      "CustomIamInstanceProfile")
                                     (backup-target :target-type string
                                      :member-name "BackupTarget")
                                     (network-type :target-type string
                                      :member-name "NetworkType")
                                     (activity-stream-policy-status
                                      :target-type
                                      activity-stream-policy-status
                                      :member-name
                                      "ActivityStreamPolicyStatus")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput")
                                     (dbsystem-id :target-type string
                                      :member-name "DBSystemId")
                                     (master-user-secret :target-type
                                      master-user-secret :member-name
                                      "MasterUserSecret")
                                     (certificate-details :target-type
                                      certificate-details :member-name
                                      "CertificateDetails")
                                     (read-replica-source-dbcluster-identifier
                                      :target-type string :member-name
                                      "ReadReplicaSourceDBClusterIdentifier")
                                     (percent-progress :target-type string
                                      :member-name "PercentProgress")
                                     (dedicated-log-volume :target-type boolean
                                      :member-name "DedicatedLogVolume")
                                     (is-storage-config-upgrade-available
                                      :target-type boolean-optional
                                      :member-name
                                      "IsStorageConfigUpgradeAvailable")
                                     (multi-tenant :target-type
                                      boolean-optional :member-name
                                      "MultiTenant")
                                     (engine-lifecycle-support :target-type
                                      string :member-name
                                      "EngineLifecycleSupport"))
                                    (:shape-name "DBInstance"))

(smithy/sdk/shapes:define-error dbinstance-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBInstanceAlreadyExistsFault")
                                (:error-name "DBInstanceAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbinstance-automated-backup common-lisp:nil
                                    ((dbinstance-arn :target-type string
                                      :member-name "DBInstanceArn")
                                     (dbi-resource-id :target-type string
                                      :member-name "DbiResourceId")
                                     (region :target-type string :member-name
                                      "Region")
                                     (dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (restore-window :target-type
                                      restore-window :member-name
                                      "RestoreWindow")
                                     (allocated-storage :target-type integer
                                      :member-name "AllocatedStorage")
                                     (status :target-type string :member-name
                                      "Status")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (instance-create-time :target-type tstamp
                                      :member-name "InstanceCreateTime")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (option-group-name :target-type string
                                      :member-name "OptionGroupName")
                                     (tde-credential-arn :target-type string
                                      :member-name "TdeCredentialArn")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (timezone :target-type string :member-name
                                      "Timezone")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (backup-retention-period :target-type
                                      integer-optional :member-name
                                      "BackupRetentionPeriod")
                                     (dbinstance-automated-backups-arn
                                      :target-type string :member-name
                                      "DBInstanceAutomatedBackupsArn")
                                     (dbinstance-automated-backups-replications
                                      :target-type
                                      dbinstance-automated-backups-replication-list
                                      :member-name
                                      "DBInstanceAutomatedBackupsReplications")
                                     (backup-target :target-type string
                                      :member-name "BackupTarget")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput")
                                     (aws-backup-recovery-point-arn
                                      :target-type string :member-name
                                      "AwsBackupRecoveryPointArn")
                                     (dedicated-log-volume :target-type
                                      boolean-optional :member-name
                                      "DedicatedLogVolume")
                                     (multi-tenant :target-type
                                      boolean-optional :member-name
                                      "MultiTenant"))
                                    (:shape-name "DBInstanceAutomatedBackup"))

(smithy/sdk/shapes:define-list dbinstance-automated-backup-list :member
                               (dbinstance-automated-backup :xml-name
                                "DBInstanceAutomatedBackup"))

(smithy/sdk/shapes:define-output dbinstance-automated-backup-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbinstance-automated-backups :target-type
                                   dbinstance-automated-backup-list
                                   :member-name "DBInstanceAutomatedBackups"))
                                 (:shape-name
                                  "DBInstanceAutomatedBackupMessage"))

(smithy/sdk/shapes:define-error dbinstance-automated-backup-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBInstanceAutomatedBackupNotFoundFault")
                                (:error-name
                                 "DBInstanceAutomatedBackupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error
 dbinstance-automated-backup-quota-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "DBInstanceAutomatedBackupQuotaExceededFault")
 (:error-name "DBInstanceAutomatedBackupQuotaExceeded") (:error-code 400))

(smithy/sdk/shapes:define-structure dbinstance-automated-backups-replication
                                    common-lisp:nil
                                    ((dbinstance-automated-backups-arn
                                      :target-type string :member-name
                                      "DBInstanceAutomatedBackupsArn"))
                                    (:shape-name
                                     "DBInstanceAutomatedBackupsReplication"))

(smithy/sdk/shapes:define-list dbinstance-automated-backups-replication-list
                               :member
                               (dbinstance-automated-backups-replication
                                :xml-name
                                "DBInstanceAutomatedBackupsReplication"))

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
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbinstance-not-ready-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBInstanceNotReadyFault")
                                (:error-name "DBInstanceNotReady")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure dbinstance-role common-lisp:nil
                                    ((role-arn :target-type string :member-name
                                      "RoleArn")
                                     (feature-name :target-type string
                                      :member-name "FeatureName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DBInstanceRole"))

(smithy/sdk/shapes:define-error dbinstance-role-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBInstanceRoleAlreadyExistsFault")
                                (:error-name "DBInstanceRoleAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbinstance-role-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBInstanceRoleNotFoundFault")
                                (:error-name "DBInstanceRoleNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbinstance-role-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBInstanceRoleQuotaExceededFault")
                                (:error-name "DBInstanceRoleQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list dbinstance-roles :member
                               (dbinstance-role :xml-name "DBInstanceRole"))

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

(smithy/sdk/shapes:define-error dblog-file-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBLogFileNotFoundFault")
                                (:error-name "DBLogFileNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dbmajor-engine-version common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion")
                                     (supported-engine-lifecycles :target-type
                                      supported-engine-lifecycle-list
                                      :member-name
                                      "SupportedEngineLifecycles"))
                                    (:shape-name "DBMajorEngineVersion"))

(smithy/sdk/shapes:define-list dbmajor-engine-versions-list :member
                               (dbmajor-engine-version :xml-name
                                "DBMajorEngineVersion"))

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
                                (:error-code 400))

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
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbparameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBParameterGroupQuotaExceededFault")
                                (:error-name "DBParameterGroupQuotaExceeded")
                                (:error-code 400))

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

(smithy/sdk/shapes:define-structure dbproxy common-lisp:nil
                                    ((dbproxy-name :target-type string
                                      :member-name "DBProxyName")
                                     (dbproxy-arn :target-type string
                                      :member-name "DBProxyArn")
                                     (status :target-type dbproxy-status
                                      :member-name "Status")
                                     (engine-family :target-type string
                                      :member-name "EngineFamily")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (vpc-security-group-ids :target-type
                                      string-list :member-name
                                      "VpcSecurityGroupIds")
                                     (vpc-subnet-ids :target-type string-list
                                      :member-name "VpcSubnetIds")
                                     (auth :target-type
                                      user-auth-config-info-list :member-name
                                      "Auth")
                                     (role-arn :target-type string :member-name
                                      "RoleArn")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (require-tls :target-type boolean
                                      :member-name "RequireTLS")
                                     (idle-client-timeout :target-type integer
                                      :member-name "IdleClientTimeout")
                                     (debug-logging :target-type boolean
                                      :member-name "DebugLogging")
                                     (created-date :target-type tstamp
                                      :member-name "CreatedDate")
                                     (updated-date :target-type tstamp
                                      :member-name "UpdatedDate"))
                                    (:shape-name "DBProxy"))

(smithy/sdk/shapes:define-error dbproxy-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyAlreadyExistsFault")
                                (:error-name "DBProxyAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbproxy-endpoint common-lisp:nil
                                    ((dbproxy-endpoint-name :target-type string
                                      :member-name "DBProxyEndpointName")
                                     (dbproxy-endpoint-arn :target-type string
                                      :member-name "DBProxyEndpointArn")
                                     (dbproxy-name :target-type string
                                      :member-name "DBProxyName")
                                     (status :target-type
                                      dbproxy-endpoint-status :member-name
                                      "Status")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (vpc-security-group-ids :target-type
                                      string-list :member-name
                                      "VpcSecurityGroupIds")
                                     (vpc-subnet-ids :target-type string-list
                                      :member-name "VpcSubnetIds")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (created-date :target-type tstamp
                                      :member-name "CreatedDate")
                                     (target-role :target-type
                                      dbproxy-endpoint-target-role :member-name
                                      "TargetRole")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault"))
                                    (:shape-name "DBProxyEndpoint"))

(smithy/sdk/shapes:define-error dbproxy-endpoint-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBProxyEndpointAlreadyExistsFault")
                                (:error-name
                                 "DBProxyEndpointAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list dbproxy-endpoint-list :member dbproxy-endpoint)

(smithy/sdk/shapes:define-type dbproxy-endpoint-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error dbproxy-endpoint-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyEndpointNotFoundFault")
                                (:error-name "DBProxyEndpointNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbproxy-endpoint-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBProxyEndpointQuotaExceededFault")
                                (:error-name
                                 "DBProxyEndpointQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum dbproxy-endpoint-status
    common-lisp:nil
  (:available "available")
  (:modifying "modifying")
  (:incompatible-network "incompatible-network")
  (:insufficient-resource-limits "insufficient-resource-limits")
  (:creating "creating")
  (:deleting "deleting"))

(smithy/sdk/shapes:define-enum dbproxy-endpoint-target-role
    common-lisp:nil
  (:read-write "READ_WRITE")
  (:read-only "READ_ONLY"))

(smithy/sdk/shapes:define-list dbproxy-list :member dbproxy)

(smithy/sdk/shapes:define-type dbproxy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error dbproxy-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyNotFoundFault")
                                (:error-name "DBProxyNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbproxy-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyQuotaExceededFault")
                                (:error-name "DBProxyQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum dbproxy-status
    common-lisp:nil
  (:available "available")
  (:modifying "modifying")
  (:incompatible-network "incompatible-network")
  (:insufficient-resource-limits "insufficient-resource-limits")
  (:creating "creating")
  (:deleting "deleting")
  (:suspended "suspended")
  (:suspending "suspending")
  (:reactivating "reactivating"))

(smithy/sdk/shapes:define-structure dbproxy-target common-lisp:nil
                                    ((target-arn :target-type string
                                      :member-name "TargetArn")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (tracked-cluster-id :target-type string
                                      :member-name "TrackedClusterId")
                                     (rds-resource-id :target-type string
                                      :member-name "RdsResourceId")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (type :target-type target-type
                                      :member-name "Type")
                                     (role :target-type target-role
                                      :member-name "Role")
                                     (target-health :target-type target-health
                                      :member-name "TargetHealth"))
                                    (:shape-name "DBProxyTarget"))

(smithy/sdk/shapes:define-error dbproxy-target-already-registered-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBProxyTargetAlreadyRegisteredFault")
                                (:error-name
                                 "DBProxyTargetAlreadyRegisteredFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbproxy-target-group common-lisp:nil
                                    ((dbproxy-name :target-type string
                                      :member-name "DBProxyName")
                                     (target-group-name :target-type string
                                      :member-name "TargetGroupName")
                                     (target-group-arn :target-type string
                                      :member-name "TargetGroupArn")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault")
                                     (status :target-type string :member-name
                                      "Status")
                                     (connection-pool-config :target-type
                                      connection-pool-configuration-info
                                      :member-name "ConnectionPoolConfig")
                                     (created-date :target-type tstamp
                                      :member-name "CreatedDate")
                                     (updated-date :target-type tstamp
                                      :member-name "UpdatedDate"))
                                    (:shape-name "DBProxyTargetGroup"))

(smithy/sdk/shapes:define-error dbproxy-target-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyTargetGroupNotFoundFault")
                                (:error-name "DBProxyTargetGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbproxy-target-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBProxyTargetNotFoundFault")
                                (:error-name "DBProxyTargetNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dbrecommendation common-lisp:nil
                                    ((recommendation-id :target-type string
                                      :member-name "RecommendationId")
                                     (type-id :target-type string :member-name
                                      "TypeId")
                                     (severity :target-type string :member-name
                                      "Severity")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (created-time :target-type tstamp
                                      :member-name "CreatedTime")
                                     (updated-time :target-type tstamp
                                      :member-name "UpdatedTime")
                                     (detection :target-type string
                                      :member-name "Detection")
                                     (recommendation :target-type string
                                      :member-name "Recommendation")
                                     (description :target-type string
                                      :member-name "Description")
                                     (reason :target-type string :member-name
                                      "Reason")
                                     (recommended-actions :target-type
                                      recommended-action-list :member-name
                                      "RecommendedActions")
                                     (category :target-type string :member-name
                                      "Category")
                                     (source :target-type string :member-name
                                      "Source")
                                     (type-detection :target-type string
                                      :member-name "TypeDetection")
                                     (type-recommendation :target-type string
                                      :member-name "TypeRecommendation")
                                     (impact :target-type string :member-name
                                      "Impact")
                                     (additional-info :target-type string
                                      :member-name "AdditionalInfo")
                                     (links :target-type doc-link-list
                                      :member-name "Links")
                                     (issue-details :target-type issue-details
                                      :member-name "IssueDetails"))
                                    (:shape-name "DBRecommendation"))

(smithy/sdk/shapes:define-list dbrecommendation-list :member dbrecommendation)

(smithy/sdk/shapes:define-output dbrecommendation-message common-lisp:nil
                                 ((dbrecommendation :target-type
                                   dbrecommendation :member-name
                                   "DBRecommendation"))
                                 (:shape-name "DBRecommendationMessage"))

(smithy/sdk/shapes:define-output dbrecommendations-message common-lisp:nil
                                 ((dbrecommendations :target-type
                                   dbrecommendation-list :member-name
                                   "DBRecommendations")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DBRecommendationsMessage"))

(smithy/sdk/shapes:define-structure dbsecurity-group common-lisp:nil
                                    ((owner-id :target-type string :member-name
                                      "OwnerId")
                                     (dbsecurity-group-name :target-type string
                                      :member-name "DBSecurityGroupName")
                                     (dbsecurity-group-description :target-type
                                      string :member-name
                                      "DBSecurityGroupDescription")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (ec2security-groups :target-type
                                      ec2security-group-list :member-name
                                      "EC2SecurityGroups")
                                     (ipranges :target-type iprange-list
                                      :member-name "IPRanges")
                                     (dbsecurity-group-arn :target-type string
                                      :member-name "DBSecurityGroupArn"))
                                    (:shape-name "DBSecurityGroup"))

(smithy/sdk/shapes:define-error dbsecurity-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSecurityGroupAlreadyExistsFault")
                                (:error-name "DBSecurityGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbsecurity-group-membership common-lisp:nil
                                    ((dbsecurity-group-name :target-type string
                                      :member-name "DBSecurityGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DBSecurityGroupMembership"))

(smithy/sdk/shapes:define-list dbsecurity-group-membership-list :member
                               (dbsecurity-group-membership :xml-name
                                "DBSecurityGroup"))

(smithy/sdk/shapes:define-output dbsecurity-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbsecurity-groups :target-type
                                   dbsecurity-groups :member-name
                                   "DBSecurityGroups"))
                                 (:shape-name "DBSecurityGroupMessage"))

(smithy/sdk/shapes:define-list dbsecurity-group-name-list :member
                               (string :xml-name "DBSecurityGroupName"))

(smithy/sdk/shapes:define-error dbsecurity-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSecurityGroupNotFoundFault")
                                (:error-name "DBSecurityGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbsecurity-group-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSecurityGroupNotSupportedFault")
                                (:error-name "DBSecurityGroupNotSupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbsecurity-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSecurityGroupQuotaExceededFault")
                                (:error-name "QuotaExceeded.DBSecurityGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-list dbsecurity-groups :member
                               (dbsecurity-group :xml-name "DBSecurityGroup"))

(smithy/sdk/shapes:define-structure dbshard-group common-lisp:nil
                                    ((dbshard-group-resource-id :target-type
                                      string :member-name
                                      "DBShardGroupResourceId")
                                     (dbshard-group-identifier :target-type
                                      dbshard-group-identifier :member-name
                                      "DBShardGroupIdentifier")
                                     (dbcluster-identifier :target-type string
                                      :member-name "DBClusterIdentifier")
                                     (max-acu :target-type double-optional
                                      :member-name "MaxACU")
                                     (min-acu :target-type double-optional
                                      :member-name "MinACU")
                                     (compute-redundancy :target-type
                                      integer-optional :member-name
                                      "ComputeRedundancy")
                                     (status :target-type string :member-name
                                      "Status")
                                     (publicly-accessible :target-type
                                      boolean-optional :member-name
                                      "PubliclyAccessible")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (dbshard-group-arn :target-type string
                                      :member-name "DBShardGroupArn")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "DBShardGroup"))

(smithy/sdk/shapes:define-error dbshard-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBShardGroupAlreadyExistsFault")
                                (:error-name "DBShardGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type dbshard-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error dbshard-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBShardGroupNotFoundFault")
                                (:error-name "DBShardGroupNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list dbshard-groups-list :member
                               (dbshard-group :xml-name "DBShardGroup"))

(smithy/sdk/shapes:define-structure dbsnapshot common-lisp:nil
                                    ((dbsnapshot-identifier :target-type string
                                      :member-name "DBSnapshotIdentifier")
                                     (dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
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
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (instance-create-time :target-type tstamp
                                      :member-name "InstanceCreateTime")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (snapshot-type :target-type string
                                      :member-name "SnapshotType")
                                     (iops :target-type integer-optional
                                      :member-name "Iops")
                                     (option-group-name :target-type string
                                      :member-name "OptionGroupName")
                                     (percent-progress :target-type integer
                                      :member-name "PercentProgress")
                                     (source-region :target-type string
                                      :member-name "SourceRegion")
                                     (source-dbsnapshot-identifier :target-type
                                      string :member-name
                                      "SourceDBSnapshotIdentifier")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (tde-credential-arn :target-type string
                                      :member-name "TdeCredentialArn")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (dbsnapshot-arn :target-type string
                                      :member-name "DBSnapshotArn")
                                     (timezone :target-type string :member-name
                                      "Timezone")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (processor-features :target-type
                                      processor-feature-list :member-name
                                      "ProcessorFeatures")
                                     (dbi-resource-id :target-type string
                                      :member-name "DbiResourceId")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (original-snapshot-create-time
                                      :target-type tstamp :member-name
                                      "OriginalSnapshotCreateTime")
                                     (snapshot-database-time :target-type
                                      tstamp :member-name
                                      "SnapshotDatabaseTime")
                                     (snapshot-target :target-type string
                                      :member-name "SnapshotTarget")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput")
                                     (dbsystem-id :target-type string
                                      :member-name "DBSystemId")
                                     (dedicated-log-volume :target-type boolean
                                      :member-name "DedicatedLogVolume")
                                     (multi-tenant :target-type
                                      boolean-optional :member-name
                                      "MultiTenant")
                                     (snapshot-availability-zone :target-type
                                      string :member-name
                                      "SnapshotAvailabilityZone"))
                                    (:shape-name "DBSnapshot"))

(smithy/sdk/shapes:define-error dbsnapshot-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSnapshotAlreadyExistsFault")
                                (:error-name "DBSnapshotAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dbsnapshot-attribute common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "AttributeName")
                                     (attribute-values :target-type
                                      attribute-value-list :member-name
                                      "AttributeValues"))
                                    (:shape-name "DBSnapshotAttribute"))

(smithy/sdk/shapes:define-list dbsnapshot-attribute-list :member
                               (dbsnapshot-attribute :xml-name
                                "DBSnapshotAttribute"))

(smithy/sdk/shapes:define-structure dbsnapshot-attributes-result
                                    common-lisp:nil
                                    ((dbsnapshot-identifier :target-type string
                                      :member-name "DBSnapshotIdentifier")
                                     (dbsnapshot-attributes :target-type
                                      dbsnapshot-attribute-list :member-name
                                      "DBSnapshotAttributes"))
                                    (:shape-name "DBSnapshotAttributesResult"))

(smithy/sdk/shapes:define-list dbsnapshot-list :member
                               (dbsnapshot :xml-name "DBSnapshot"))

(smithy/sdk/shapes:define-output dbsnapshot-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbsnapshots :target-type dbsnapshot-list
                                   :member-name "DBSnapshots"))
                                 (:shape-name "DBSnapshotMessage"))

(smithy/sdk/shapes:define-error dbsnapshot-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSnapshotNotFoundFault")
                                (:error-name "DBSnapshotNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dbsnapshot-tenant-database common-lisp:nil
                                    ((dbsnapshot-identifier :target-type string
                                      :member-name "DBSnapshotIdentifier")
                                     (dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (dbi-resource-id :target-type string
                                      :member-name "DbiResourceId")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (snapshot-type :target-type string
                                      :member-name "SnapshotType")
                                     (tenant-database-create-time :target-type
                                      tstamp :member-name
                                      "TenantDatabaseCreateTime")
                                     (tenant-dbname :target-type string
                                      :member-name "TenantDBName")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (tenant-database-resource-id :target-type
                                      string :member-name
                                      "TenantDatabaseResourceId")
                                     (character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (dbsnapshot-tenant-database-arn
                                      :target-type string :member-name
                                      "DBSnapshotTenantDatabaseARN")
                                     (nchar-character-set-name :target-type
                                      string :member-name
                                      "NcharCharacterSetName")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "DBSnapshotTenantDatabase"))

(smithy/sdk/shapes:define-error dbsnapshot-tenant-database-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSnapshotTenantDatabaseNotFoundFault")
                                (:error-name
                                 "DBSnapshotTenantDatabaseNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-list dbsnapshot-tenant-databases-list :member
                               (dbsnapshot-tenant-database :xml-name
                                "DBSnapshotTenantDatabase"))

(smithy/sdk/shapes:define-output dbsnapshot-tenant-databases-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbsnapshot-tenant-databases :target-type
                                   dbsnapshot-tenant-databases-list
                                   :member-name "DBSnapshotTenantDatabases"))
                                 (:shape-name
                                  "DBSnapshotTenantDatabasesMessage"))

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
                                      :member-name "DBSubnetGroupArn")
                                     (supported-network-types :target-type
                                      string-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "DBSubnetGroup"))

(smithy/sdk/shapes:define-error dbsubnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupAlreadyExistsFault")
                                (:error-name "DBSubnetGroupAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbsubnet-group-does-not-cover-enough-azs
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DBSubnetGroupDoesNotCoverEnoughAZs")
                                (:error-name
                                 "DBSubnetGroupDoesNotCoverEnoughAZs")
                                (:error-code 400))

(smithy/sdk/shapes:define-output dbsubnet-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (dbsubnet-groups :target-type dbsubnet-groups
                                   :member-name "DBSubnetGroups"))
                                 (:shape-name "DBSubnetGroupMessage"))

(smithy/sdk/shapes:define-error dbsubnet-group-not-allowed-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupNotAllowedFault")
                                (:error-name "DBSubnetGroupNotAllowedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbsubnet-group-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupNotFoundFault")
                                (:error-name "DBSubnetGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error dbsubnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetGroupQuotaExceededFault")
                                (:error-name "DBSubnetGroupQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list dbsubnet-groups :member
                               (dbsubnet-group :xml-name "DBSubnetGroup"))

(smithy/sdk/shapes:define-error dbsubnet-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBSubnetQuotaExceededFault")
                                (:error-name "DBSubnetQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dbupgrade-dependency-failure-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DBUpgradeDependencyFailureFault")
                                (:error-name "DBUpgradeDependencyFailure")
                                (:error-code 400))

(smithy/sdk/shapes:define-type data-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum database-insights-mode
    common-lisp:nil
  (:standard "standard")
  (:advanced "advanced"))

(smithy/sdk/shapes:define-input delete-blue-green-deployment-request
                                common-lisp:nil
                                ((blue-green-deployment-identifier :target-type
                                  blue-green-deployment-identifier :required
                                  common-lisp:t :member-name
                                  "BlueGreenDeploymentIdentifier")
                                 (delete-target :target-type boolean-optional
                                  :member-name "DeleteTarget"))
                                (:shape-name
                                 "DeleteBlueGreenDeploymentRequest"))

(smithy/sdk/shapes:define-output delete-blue-green-deployment-response
                                 common-lisp:nil
                                 ((blue-green-deployment :target-type
                                   blue-green-deployment :member-name
                                   "BlueGreenDeployment"))
                                 (:shape-name
                                  "DeleteBlueGreenDeploymentResponse"))

(smithy/sdk/shapes:define-input delete-custom-dbengine-version-message
                                common-lisp:nil
                                ((engine :target-type custom-engine-name
                                  :required common-lisp:t :member-name
                                  "Engine")
                                 (engine-version :target-type
                                  custom-engine-version :required common-lisp:t
                                  :member-name "EngineVersion"))
                                (:shape-name
                                 "DeleteCustomDBEngineVersionMessage"))

(smithy/sdk/shapes:define-input delete-dbcluster-automated-backup-message
                                common-lisp:nil
                                ((db-cluster-resource-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DbClusterResourceId"))
                                (:shape-name
                                 "DeleteDBClusterAutomatedBackupMessage"))

(smithy/sdk/shapes:define-output delete-dbcluster-automated-backup-result
                                 common-lisp:nil
                                 ((dbcluster-automated-backup :target-type
                                   dbcluster-automated-backup :member-name
                                   "DBClusterAutomatedBackup"))
                                 (:shape-name
                                  "DeleteDBClusterAutomatedBackupResult"))

(smithy/sdk/shapes:define-input delete-dbcluster-endpoint-message
                                common-lisp:nil
                                ((dbcluster-endpoint-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "DBClusterEndpointIdentifier"))
                                (:shape-name "DeleteDBClusterEndpointMessage"))

(smithy/sdk/shapes:define-input delete-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "SkipFinalSnapshot")
                                 (final-dbsnapshot-identifier :target-type
                                  string :member-name
                                  "FinalDBSnapshotIdentifier")
                                 (delete-automated-backups :target-type
                                  boolean-optional :member-name
                                  "DeleteAutomatedBackups"))
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

(smithy/sdk/shapes:define-input delete-dbinstance-automated-backup-message
                                common-lisp:nil
                                ((dbi-resource-id :target-type string
                                  :member-name "DbiResourceId")
                                 (dbinstance-automated-backups-arn :target-type
                                  string :member-name
                                  "DBInstanceAutomatedBackupsArn"))
                                (:shape-name
                                 "DeleteDBInstanceAutomatedBackupMessage"))

(smithy/sdk/shapes:define-output delete-dbinstance-automated-backup-result
                                 common-lisp:nil
                                 ((dbinstance-automated-backup :target-type
                                   dbinstance-automated-backup :member-name
                                   "DBInstanceAutomatedBackup"))
                                 (:shape-name
                                  "DeleteDBInstanceAutomatedBackupResult"))

(smithy/sdk/shapes:define-input delete-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "SkipFinalSnapshot")
                                 (final-dbsnapshot-identifier :target-type
                                  string :member-name
                                  "FinalDBSnapshotIdentifier")
                                 (delete-automated-backups :target-type
                                  boolean-optional :member-name
                                  "DeleteAutomatedBackups"))
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

(smithy/sdk/shapes:define-input delete-dbproxy-endpoint-request common-lisp:nil
                                ((dbproxy-endpoint-name :target-type
                                  dbproxy-endpoint-name :required common-lisp:t
                                  :member-name "DBProxyEndpointName"))
                                (:shape-name "DeleteDBProxyEndpointRequest"))

(smithy/sdk/shapes:define-output delete-dbproxy-endpoint-response
                                 common-lisp:nil
                                 ((dbproxy-endpoint :target-type
                                   dbproxy-endpoint :member-name
                                   "DBProxyEndpoint"))
                                 (:shape-name "DeleteDBProxyEndpointResponse"))

(smithy/sdk/shapes:define-input delete-dbproxy-request common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName"))
                                (:shape-name "DeleteDBProxyRequest"))

(smithy/sdk/shapes:define-output delete-dbproxy-response common-lisp:nil
                                 ((dbproxy :target-type dbproxy :member-name
                                   "DBProxy"))
                                 (:shape-name "DeleteDBProxyResponse"))

(smithy/sdk/shapes:define-input delete-dbsecurity-group-message common-lisp:nil
                                ((dbsecurity-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSecurityGroupName"))
                                (:shape-name "DeleteDBSecurityGroupMessage"))

(smithy/sdk/shapes:define-input delete-dbshard-group-message common-lisp:nil
                                ((dbshard-group-identifier :target-type
                                  dbshard-group-identifier :required
                                  common-lisp:t :member-name
                                  "DBShardGroupIdentifier"))
                                (:shape-name "DeleteDBShardGroupMessage"))

(smithy/sdk/shapes:define-input delete-dbsnapshot-message common-lisp:nil
                                ((dbsnapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSnapshotIdentifier"))
                                (:shape-name "DeleteDBSnapshotMessage"))

(smithy/sdk/shapes:define-output delete-dbsnapshot-result common-lisp:nil
                                 ((dbsnapshot :target-type dbsnapshot
                                   :member-name "DBSnapshot"))
                                 (:shape-name "DeleteDBSnapshotResult"))

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
                                ((global-cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "GlobalClusterIdentifier"))
                                (:shape-name "DeleteGlobalClusterMessage"))

(smithy/sdk/shapes:define-output delete-global-cluster-result common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "DeleteGlobalClusterResult"))

(smithy/sdk/shapes:define-input delete-integration-message common-lisp:nil
                                ((integration-identifier :target-type
                                  integration-identifier :required
                                  common-lisp:t :member-name
                                  "IntegrationIdentifier"))
                                (:shape-name "DeleteIntegrationMessage"))

(smithy/sdk/shapes:define-input delete-option-group-message common-lisp:nil
                                ((option-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "OptionGroupName"))
                                (:shape-name "DeleteOptionGroupMessage"))

(smithy/sdk/shapes:define-input delete-tenant-database-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (tenant-dbname :target-type string :required
                                  common-lisp:t :member-name "TenantDBName")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "SkipFinalSnapshot")
                                 (final-dbsnapshot-identifier :target-type
                                  string :member-name
                                  "FinalDBSnapshotIdentifier"))
                                (:shape-name "DeleteTenantDatabaseMessage"))

(smithy/sdk/shapes:define-output delete-tenant-database-result common-lisp:nil
                                 ((tenant-database :target-type tenant-database
                                   :member-name "TenantDatabase"))
                                 (:shape-name "DeleteTenantDatabaseResult"))

(smithy/sdk/shapes:define-input deregister-dbproxy-targets-request
                                common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (target-group-name :target-type string
                                  :member-name "TargetGroupName")
                                 (dbinstance-identifiers :target-type
                                  string-list :member-name
                                  "DBInstanceIdentifiers")
                                 (dbcluster-identifiers :target-type
                                  string-list :member-name
                                  "DBClusterIdentifiers"))
                                (:shape-name "DeregisterDBProxyTargetsRequest"))

(smithy/sdk/shapes:define-output deregister-dbproxy-targets-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterDBProxyTargetsResponse"))

(smithy/sdk/shapes:define-input describe-account-attributes-message
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeAccountAttributesMessage"))

(smithy/sdk/shapes:define-input describe-blue-green-deployments-request
                                common-lisp:nil
                                ((blue-green-deployment-identifier :target-type
                                  blue-green-deployment-identifier :member-name
                                  "BlueGreenDeploymentIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeBlueGreenDeploymentsRequest"))

(smithy/sdk/shapes:define-output describe-blue-green-deployments-response
                                 common-lisp:nil
                                 ((blue-green-deployments :target-type
                                   blue-green-deployment-list :member-name
                                   "BlueGreenDeployments")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeBlueGreenDeploymentsResponse"))

(smithy/sdk/shapes:define-input describe-certificates-message common-lisp:nil
                                ((certificate-identifier :target-type string
                                  :member-name "CertificateIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeCertificatesMessage"))

(smithy/sdk/shapes:define-input describe-dbcluster-automated-backups-message
                                common-lisp:nil
                                ((db-cluster-resource-id :target-type string
                                  :member-name "DbClusterResourceId")
                                 (dbcluster-identifier :target-type string
                                  :member-name "DBClusterIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBClusterAutomatedBackupsMessage"))

(smithy/sdk/shapes:define-input describe-dbcluster-backtracks-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (backtrack-identifier :target-type string
                                  :member-name "BacktrackIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBClusterBacktracksMessage"))

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
                                  :member-name "IncludePublic")
                                 (db-cluster-resource-id :target-type string
                                  :member-name "DbClusterResourceId"))
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
                                  "Marker")
                                 (include-shared :target-type boolean
                                  :member-name "IncludeShared"))
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
                                  "ListSupportedTimezones")
                                 (include-all :target-type boolean-optional
                                  :member-name "IncludeAll"))
                                (:shape-name "DescribeDBEngineVersionsMessage"))

(smithy/sdk/shapes:define-input describe-dbinstance-automated-backups-message
                                common-lisp:nil
                                ((dbi-resource-id :target-type string
                                  :member-name "DbiResourceId")
                                 (dbinstance-identifier :target-type string
                                  :member-name "DBInstanceIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (dbinstance-automated-backups-arn :target-type
                                  string :member-name
                                  "DBInstanceAutomatedBackupsArn"))
                                (:shape-name
                                 "DescribeDBInstanceAutomatedBackupsMessage"))

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

(smithy/sdk/shapes:define-structure describe-dblog-files-details
                                    common-lisp:nil
                                    ((log-file-name :target-type string
                                      :member-name "LogFileName")
                                     (last-written :target-type long
                                      :member-name "LastWritten")
                                     (size :target-type long :member-name
                                      "Size"))
                                    (:shape-name "DescribeDBLogFilesDetails"))

(smithy/sdk/shapes:define-list describe-dblog-files-list :member
                               (describe-dblog-files-details :xml-name
                                "DescribeDBLogFilesDetails"))

(smithy/sdk/shapes:define-input describe-dblog-files-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (filename-contains :target-type string
                                  :member-name "FilenameContains")
                                 (file-last-written :target-type long
                                  :member-name "FileLastWritten")
                                 (file-size :target-type long :member-name
                                  "FileSize")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBLogFilesMessage"))

(smithy/sdk/shapes:define-output describe-dblog-files-response common-lisp:nil
                                 ((describe-dblog-files :target-type
                                   describe-dblog-files-list :member-name
                                   "DescribeDBLogFiles")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDBLogFilesResponse"))

(smithy/sdk/shapes:define-input describe-dbmajor-engine-versions-request
                                common-lisp:nil
                                ((engine :target-type engine :member-name
                                  "Engine")
                                 (major-engine-version :target-type
                                  major-engine-version :member-name
                                  "MajorEngineVersion")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeDBMajorEngineVersionsRequest"))

(smithy/sdk/shapes:define-output describe-dbmajor-engine-versions-response
                                 common-lisp:nil
                                 ((dbmajor-engine-versions :target-type
                                   dbmajor-engine-versions-list :member-name
                                   "DBMajorEngineVersions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeDBMajorEngineVersionsResponse"))

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

(smithy/sdk/shapes:define-input describe-dbproxies-request common-lisp:nil
                                ((dbproxy-name :target-type string :member-name
                                  "DBProxyName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeDBProxiesRequest"))

(smithy/sdk/shapes:define-output describe-dbproxies-response common-lisp:nil
                                 ((dbproxies :target-type dbproxy-list
                                   :member-name "DBProxies")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDBProxiesResponse"))

(smithy/sdk/shapes:define-input describe-dbproxy-endpoints-request
                                common-lisp:nil
                                ((dbproxy-name :target-type dbproxy-name
                                  :member-name "DBProxyName")
                                 (dbproxy-endpoint-name :target-type
                                  dbproxy-endpoint-name :member-name
                                  "DBProxyEndpointName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeDBProxyEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-dbproxy-endpoints-response
                                 common-lisp:nil
                                 ((dbproxy-endpoints :target-type
                                   dbproxy-endpoint-list :member-name
                                   "DBProxyEndpoints")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeDBProxyEndpointsResponse"))

(smithy/sdk/shapes:define-input describe-dbproxy-target-groups-request
                                common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (target-group-name :target-type string
                                  :member-name "TargetGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeDBProxyTargetGroupsRequest"))

(smithy/sdk/shapes:define-output describe-dbproxy-target-groups-response
                                 common-lisp:nil
                                 ((target-groups :target-type target-group-list
                                   :member-name "TargetGroups")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeDBProxyTargetGroupsResponse"))

(smithy/sdk/shapes:define-input describe-dbproxy-targets-request
                                common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (target-group-name :target-type string
                                  :member-name "TargetGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeDBProxyTargetsRequest"))

(smithy/sdk/shapes:define-output describe-dbproxy-targets-response
                                 common-lisp:nil
                                 ((targets :target-type target-list
                                   :member-name "Targets")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDBProxyTargetsResponse"))

(smithy/sdk/shapes:define-input describe-dbrecommendations-message
                                common-lisp:nil
                                ((last-updated-after :target-type tstamp
                                  :member-name "LastUpdatedAfter")
                                 (last-updated-before :target-type tstamp
                                  :member-name "LastUpdatedBefore")
                                 (locale :target-type string :member-name
                                  "Locale")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDBRecommendationsMessage"))

(smithy/sdk/shapes:define-input describe-dbsecurity-groups-message
                                common-lisp:nil
                                ((dbsecurity-group-name :target-type string
                                  :member-name "DBSecurityGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDBSecurityGroupsMessage"))

(smithy/sdk/shapes:define-input describe-dbshard-groups-message common-lisp:nil
                                ((dbshard-group-identifier :target-type
                                  dbshard-group-identifier :member-name
                                  "DBShardGroupIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeDBShardGroupsMessage"))

(smithy/sdk/shapes:define-output describe-dbshard-groups-response
                                 common-lisp:nil
                                 ((dbshard-groups :target-type
                                   dbshard-groups-list :member-name
                                   "DBShardGroups")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDBShardGroupsResponse"))

(smithy/sdk/shapes:define-input describe-dbsnapshot-attributes-message
                                common-lisp:nil
                                ((dbsnapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSnapshotIdentifier"))
                                (:shape-name
                                 "DescribeDBSnapshotAttributesMessage"))

(smithy/sdk/shapes:define-output describe-dbsnapshot-attributes-result
                                 common-lisp:nil
                                 ((dbsnapshot-attributes-result :target-type
                                   dbsnapshot-attributes-result :member-name
                                   "DBSnapshotAttributesResult"))
                                 (:shape-name
                                  "DescribeDBSnapshotAttributesResult"))

(smithy/sdk/shapes:define-input describe-dbsnapshot-tenant-databases-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :member-name "DBInstanceIdentifier")
                                 (dbsnapshot-identifier :target-type string
                                  :member-name "DBSnapshotIdentifier")
                                 (snapshot-type :target-type string
                                  :member-name "SnapshotType")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (dbi-resource-id :target-type string
                                  :member-name "DbiResourceId"))
                                (:shape-name
                                 "DescribeDBSnapshotTenantDatabasesMessage"))

(smithy/sdk/shapes:define-input describe-dbsnapshots-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :member-name "DBInstanceIdentifier")
                                 (dbsnapshot-identifier :target-type string
                                  :member-name "DBSnapshotIdentifier")
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
                                  :member-name "IncludePublic")
                                 (dbi-resource-id :target-type string
                                  :member-name "DbiResourceId"))
                                (:shape-name "DescribeDBSnapshotsMessage"))

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

(smithy/sdk/shapes:define-input describe-export-tasks-message common-lisp:nil
                                ((export-task-identifier :target-type string
                                  :member-name "ExportTaskIdentifier")
                                 (source-arn :target-type string :member-name
                                  "SourceArn")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (source-type :target-type export-source-type
                                  :member-name "SourceType"))
                                (:shape-name "DescribeExportTasksMessage"))

(smithy/sdk/shapes:define-input describe-global-clusters-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type string
                                  :member-name "GlobalClusterIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeGlobalClustersMessage"))

(smithy/sdk/shapes:define-input describe-integrations-message common-lisp:nil
                                ((integration-identifier :target-type
                                  integration-identifier :member-name
                                  "IntegrationIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "DescribeIntegrationsMessage"))

(smithy/sdk/shapes:define-output describe-integrations-response common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (integrations :target-type integration-list
                                   :member-name "Integrations"))
                                 (:shape-name "DescribeIntegrationsResponse"))

(smithy/sdk/shapes:define-input describe-option-group-options-message
                                common-lisp:nil
                                ((engine-name :target-type string :required
                                  common-lisp:t :member-name "EngineName")
                                 (major-engine-version :target-type string
                                  :member-name "MajorEngineVersion")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeOptionGroupOptionsMessage"))

(smithy/sdk/shapes:define-input describe-option-groups-message common-lisp:nil
                                ((option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (engine-name :target-type string :member-name
                                  "EngineName")
                                 (major-engine-version :target-type string
                                  :member-name "MajorEngineVersion"))
                                (:shape-name "DescribeOptionGroupsMessage"))

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
                                 (availability-zone-group :target-type string
                                  :member-name "AvailabilityZoneGroup")
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

(smithy/sdk/shapes:define-input describe-reserved-dbinstances-message
                                common-lisp:nil
                                ((reserved-dbinstance-id :target-type string
                                  :member-name "ReservedDBInstanceId")
                                 (reserved-dbinstances-offering-id :target-type
                                  string :member-name
                                  "ReservedDBInstancesOfferingId")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (product-description :target-type string
                                  :member-name "ProductDescription")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (lease-id :target-type string :member-name
                                  "LeaseId")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReservedDBInstancesMessage"))

(smithy/sdk/shapes:define-input describe-reserved-dbinstances-offerings-message
                                common-lisp:nil
                                ((reserved-dbinstances-offering-id :target-type
                                  string :member-name
                                  "ReservedDBInstancesOfferingId")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (duration :target-type string :member-name
                                  "Duration")
                                 (product-description :target-type string
                                  :member-name "ProductDescription")
                                 (offering-type :target-type string
                                  :member-name "OfferingType")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReservedDBInstancesOfferingsMessage"))

(smithy/sdk/shapes:define-input describe-source-regions-message common-lisp:nil
                                ((region-name :target-type string :member-name
                                  "RegionName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "DescribeSourceRegionsMessage"))

(smithy/sdk/shapes:define-input describe-tenant-databases-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :member-name "DBInstanceIdentifier")
                                 (tenant-dbname :target-type string
                                  :member-name "TenantDBName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeTenantDatabasesMessage"))

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

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disable-http-endpoint-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "DisableHttpEndpointRequest"))

(smithy/sdk/shapes:define-output disable-http-endpoint-response common-lisp:nil
                                 ((resource-arn :target-type string
                                   :member-name "ResourceArn")
                                  (http-endpoint-enabled :target-type boolean
                                   :member-name "HttpEndpointEnabled"))
                                 (:shape-name "DisableHttpEndpointResponse"))

(smithy/sdk/shapes:define-structure doc-link common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "DocLink"))

(smithy/sdk/shapes:define-list doc-link-list :member doc-link)

(smithy/sdk/shapes:define-structure domain-membership common-lisp:nil
                                    ((domain :target-type string :member-name
                                      "Domain")
                                     (status :target-type string :member-name
                                      "Status")
                                     (fqdn :target-type string :member-name
                                      "FQDN")
                                     (iamrole-name :target-type string
                                      :member-name "IAMRoleName")
                                     (ou :target-type string :member-name "OU")
                                     (auth-secret-arn :target-type string
                                      :member-name "AuthSecretArn")
                                     (dns-ips :target-type string-list
                                      :member-name "DnsIps"))
                                    (:shape-name "DomainMembership"))

(smithy/sdk/shapes:define-list domain-membership-list :member
                               (domain-membership :xml-name "DomainMembership"))

(smithy/sdk/shapes:define-error domain-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "DomainNotFoundFault")
                                (:error-name "DomainNotFoundFault")
                                (:error-code 404))

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

(smithy/sdk/shapes:define-structure download-dblog-file-portion-details
                                    common-lisp:nil
                                    ((log-file-data :target-type string
                                      :member-name "LogFileData")
                                     (marker :target-type string :member-name
                                      "Marker")
                                     (additional-data-pending :target-type
                                      boolean :member-name
                                      "AdditionalDataPending"))
                                    (:shape-name
                                     "DownloadDBLogFilePortionDetails"))

(smithy/sdk/shapes:define-input download-dblog-file-portion-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (log-file-name :target-type string :required
                                  common-lisp:t :member-name "LogFileName")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (number-of-lines :target-type integer
                                  :member-name "NumberOfLines"))
                                (:shape-name "DownloadDBLogFilePortionMessage"))

(smithy/sdk/shapes:define-structure ec2security-group common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (ec2security-group-name :target-type
                                      string :member-name
                                      "EC2SecurityGroupName")
                                     (ec2security-group-id :target-type string
                                      :member-name "EC2SecurityGroupId")
                                     (ec2security-group-owner-id :target-type
                                      string :member-name
                                      "EC2SecurityGroupOwnerId"))
                                    (:shape-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-list ec2security-group-list :member
                               (ec2security-group :xml-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-error ec2image-properties-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "Ec2ImagePropertiesNotSupportedFault")
                                (:error-name
                                 "Ec2ImagePropertiesNotSupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input enable-http-endpoint-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "EnableHttpEndpointRequest"))

(smithy/sdk/shapes:define-output enable-http-endpoint-response common-lisp:nil
                                 ((resource-arn :target-type string
                                   :member-name "ResourceArn")
                                  (http-endpoint-enabled :target-type boolean
                                   :member-name "HttpEndpointEnabled"))
                                 (:shape-name "EnableHttpEndpointResponse"))

(smithy/sdk/shapes:define-map encryption-context-map :key string :value string)

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (hosted-zone-id :target-type string
                                      :member-name "HostedZoneId"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-type engine smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure engine-defaults common-lisp:nil
                                    ((dbparameter-group-family :target-type
                                      string :member-name
                                      "DBParameterGroupFamily")
                                     (marker :target-type string :member-name
                                      "Marker")
                                     (parameters :target-type parameters-list
                                      :member-name "Parameters"))
                                    (:shape-name "EngineDefaults"))

(smithy/sdk/shapes:define-enum engine-family
    common-lisp:nil
  (:mysql "MYSQL")
  (:postgresql "POSTGRESQL")
  (:sqlserver "SQLSERVER"))

(smithy/sdk/shapes:define-list engine-mode-list :member string)

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
                                (:error-code 400))

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

(smithy/sdk/shapes:define-enum export-source-type
    common-lisp:nil
  (:snapshot "SNAPSHOT")
  (:cluster "CLUSTER"))

(smithy/sdk/shapes:define-structure export-task common-lisp:nil
                                    ((export-task-identifier :target-type
                                      string :member-name
                                      "ExportTaskIdentifier")
                                     (source-arn :target-type string
                                      :member-name "SourceArn")
                                     (export-only :target-type string-list
                                      :member-name "ExportOnly")
                                     (snapshot-time :target-type tstamp
                                      :member-name "SnapshotTime")
                                     (task-start-time :target-type tstamp
                                      :member-name "TaskStartTime")
                                     (task-end-time :target-type tstamp
                                      :member-name "TaskEndTime")
                                     (s3bucket :target-type string :member-name
                                      "S3Bucket")
                                     (s3prefix :target-type string :member-name
                                      "S3Prefix")
                                     (iam-role-arn :target-type string
                                      :member-name "IamRoleArn")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (percent-progress :target-type integer
                                      :member-name "PercentProgress")
                                     (total-extracted-data-in-gb :target-type
                                      integer :member-name
                                      "TotalExtractedDataInGB")
                                     (failure-cause :target-type string
                                      :member-name "FailureCause")
                                     (warning-message :target-type string
                                      :member-name "WarningMessage")
                                     (source-type :target-type
                                      export-source-type :member-name
                                      "SourceType"))
                                    (:shape-name "ExportTask"))

(smithy/sdk/shapes:define-error export-task-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ExportTaskAlreadyExistsFault")
                                (:error-name "ExportTaskAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error export-task-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ExportTaskNotFoundFault")
                                (:error-name "ExportTaskNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list export-tasks-list :member
                               (export-task :xml-name "ExportTask"))

(smithy/sdk/shapes:define-output export-tasks-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (export-tasks :target-type export-tasks-list
                                   :member-name "ExportTasks"))
                                 (:shape-name "ExportTasksMessage"))

(smithy/sdk/shapes:define-input failover-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
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
                                  dbcluster-identifier :required common-lisp:t
                                  :member-name "TargetDbClusterIdentifier")
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

(smithy/sdk/shapes:define-list feature-name-list :member string)

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
                                      string :member-name
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
                                     (engine-lifecycle-support :target-type
                                      string :member-name
                                      "EngineLifecycleSupport")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (storage-encrypted :target-type
                                      boolean-optional :member-name
                                      "StorageEncrypted")
                                     (deletion-protection :target-type
                                      boolean-optional :member-name
                                      "DeletionProtection")
                                     (global-cluster-members :target-type
                                      global-cluster-member-list :member-name
                                      "GlobalClusterMembers")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (failover-state :target-type
                                      failover-state :member-name
                                      "FailoverState")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "GlobalCluster"))

(smithy/sdk/shapes:define-error global-cluster-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterAlreadyExistsFault")
                                (:error-name "GlobalClusterAlreadyExistsFault")
                                (:error-code 400))

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
                                      :member-name "IsWriter")
                                     (global-write-forwarding-status
                                      :target-type write-forwarding-status
                                      :member-name
                                      "GlobalWriteForwardingStatus")
                                     (synchronization-status :target-type
                                      global-cluster-member-synchronization-status
                                      :member-name "SynchronizationStatus"))
                                    (:shape-name "GlobalClusterMember"))

(smithy/sdk/shapes:define-list global-cluster-member-list :member
                               (global-cluster-member :xml-name
                                "GlobalClusterMember"))

(smithy/sdk/shapes:define-enum global-cluster-member-synchronization-status
    common-lisp:nil
  (:connected "connected")
  (:pending-resync "pending-resync"))

(smithy/sdk/shapes:define-error global-cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterNotFoundFault")
                                (:error-name "GlobalClusterNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error global-cluster-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "GlobalClusterQuotaExceededFault")
                                (:error-name "GlobalClusterQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-output global-clusters-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (global-clusters :target-type
                                   global-cluster-list :member-name
                                   "GlobalClusters"))
                                 (:shape-name "GlobalClustersMessage"))

(smithy/sdk/shapes:define-enum iamauth-mode
    common-lisp:nil
  (:disabled "DISABLED")
  (:required "REQUIRED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure iprange common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (cidrip :target-type string :member-name
                                      "CIDRIP"))
                                    (:shape-name "IPRange"))

(smithy/sdk/shapes:define-list iprange-list :member
                               (iprange :xml-name "IPRange"))

(smithy/sdk/shapes:define-error iam-role-missing-permissions-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IamRoleMissingPermissionsFault")
                                (:error-name "IamRoleMissingPermissions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error iam-role-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IamRoleNotFoundFault")
                                (:error-name "IamRoleNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error instance-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InstanceQuotaExceededFault")
                                (:error-name "InstanceQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-available-ips-in-subnet-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientAvailableIPsInSubnetFault")
                                (:error-name
                                 "InsufficientAvailableIPsInSubnetFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-dbcluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientDBClusterCapacityFault")
                                (:error-name
                                 "InsufficientDBClusterCapacityFault")
                                (:error-code 403))

(smithy/sdk/shapes:define-error insufficient-dbinstance-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientDBInstanceCapacityFault")
                                (:error-name "InsufficientDBInstanceCapacity")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-storage-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientStorageClusterCapacityFault")
                                (:error-name
                                 "InsufficientStorageClusterCapacity")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integration common-lisp:nil
                                    ((source-arn :target-type source-arn
                                      :member-name "SourceArn")
                                     (target-arn :target-type arn :member-name
                                      "TargetArn")
                                     (integration-name :target-type
                                      integration-name :member-name
                                      "IntegrationName")
                                     (integration-arn :target-type
                                      integration-arn :member-name
                                      "IntegrationArn")
                                     (kmskey-id :target-type string
                                      :member-name "KMSKeyId")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "AdditionalEncryptionContext")
                                     (status :target-type integration-status
                                      :member-name "Status")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (errors :target-type
                                      integration-error-list :member-name
                                      "Errors")
                                     (data-filter :target-type data-filter
                                      :member-name "DataFilter")
                                     (description :target-type
                                      integration-description :member-name
                                      "Description"))
                                    (:shape-name "Integration"))

(smithy/sdk/shapes:define-error integration-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationAlreadyExistsFault")
                                (:error-name "IntegrationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integration-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error integration-conflict-operation-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "IntegrationConflictOperationFault")
                                (:error-name
                                 "IntegrationConflictOperationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure integration-error common-lisp:nil
                                    ((error-code :target-type string :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "IntegrationError"))

(smithy/sdk/shapes:define-list integration-error-list :member
                               (integration-error :xml-name "IntegrationError"))

(smithy/sdk/shapes:define-type integration-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list integration-list :member
                               (integration :xml-name "Integration"))

(smithy/sdk/shapes:define-type integration-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error integration-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationNotFoundFault")
                                (:error-name "IntegrationNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error integration-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationQuotaExceededFault")
                                (:error-name "IntegrationQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum integration-status
    common-lisp:nil
  (:creating "creating")
  (:active "active")
  (:modifying "modifying")
  (:failed "failed")
  (:deleting "deleting")
  (:syncing "syncing")
  (:needs-attention "needs_attention"))

(smithy/sdk/shapes:define-error invalid-blue-green-deployment-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidBlueGreenDeploymentStateFault")
                                (:error-name
                                 "InvalidBlueGreenDeploymentStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-custom-dbengine-version-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidCustomDBEngineVersionStateFault")
                                (:error-name
                                 "InvalidCustomDBEngineVersionStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbcluster-automated-backup-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBClusterAutomatedBackupStateFault")
                                (:error-name
                                 "InvalidDBClusterAutomatedBackupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbcluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBClusterCapacityFault")
                                (:error-name "InvalidDBClusterCapacityFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbcluster-endpoint-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBClusterEndpointStateFault")
                                (:error-name
                                 "InvalidDBClusterEndpointStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbcluster-snapshot-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBClusterSnapshotStateFault")
                                (:error-name
                                 "InvalidDBClusterSnapshotStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbcluster-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBClusterStateFault")
                                (:error-name "InvalidDBClusterStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbinstance-automated-backup-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBInstanceAutomatedBackupStateFault")
                                (:error-name
                                 "InvalidDBInstanceAutomatedBackupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbinstance-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBInstanceStateFault")
                                (:error-name "InvalidDBInstanceState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbparameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBParameterGroupStateFault")
                                (:error-name "InvalidDBParameterGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbproxy-endpoint-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBProxyEndpointStateFault")
                                (:error-name
                                 "InvalidDBProxyEndpointStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbproxy-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBProxyStateFault")
                                (:error-name "InvalidDBProxyStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbsecurity-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDBSecurityGroupStateFault")
                                (:error-name "InvalidDBSecurityGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbshard-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBShardGroupStateFault")
                                (:error-name "InvalidDBShardGroupState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbsnapshot-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSnapshotStateFault")
                                (:error-name "InvalidDBSnapshotState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbsubnet-group-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSubnetGroupFault")
                                (:error-name "InvalidDBSubnetGroupFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbsubnet-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSubnetGroupStateFault")
                                (:error-name "InvalidDBSubnetGroupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-dbsubnet-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDBSubnetStateFault")
                                (:error-name "InvalidDBSubnetStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-event-subscription-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidEventSubscriptionStateFault")
                                (:error-name "InvalidEventSubscriptionState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-export-only-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidExportOnlyFault")
                                (:error-name "InvalidExportOnly")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-export-source-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidExportSourceStateFault")
                                (:error-name "InvalidExportSourceState")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-export-task-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidExportTaskStateFault")
                                (:error-name "InvalidExportTaskStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-global-cluster-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidGlobalClusterStateFault")
                                (:error-name "InvalidGlobalClusterStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-integration-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidIntegrationStateFault")
                                (:error-name "InvalidIntegrationStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-option-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidOptionGroupStateFault")
                                (:error-name "InvalidOptionGroupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidResourceStateFault")
                                (:error-name "InvalidResourceStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-restore-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidRestoreFault")
                                (:error-name "InvalidRestoreFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3bucket-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3BucketFault")
                                (:error-name "InvalidS3BucketFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet")
                                (:error-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-name "InvalidVPCNetworkStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure issue-details common-lisp:nil
                                    ((performance-issue-details :target-type
                                      performance-issue-details :member-name
                                      "PerformanceIssueDetails"))
                                    (:shape-name "IssueDetails"))

(smithy/sdk/shapes:define-error kmskey-not-accessible-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSKeyNotAccessibleFault")
                                (:error-name "KMSKeyNotAccessibleFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-type kms-key-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum lifecycle-support-name
    common-lisp:nil
  (:open-source-rds-standard-support "open-source-rds-standard-support")
  (:open-source-rds-extended-support "open-source-rds-extended-support"))

(smithy/sdk/shapes:define-structure limitless-database common-lisp:nil
                                    ((status :target-type
                                      limitless-database-status :member-name
                                      "Status")
                                     (min-required-acu :target-type
                                      double-optional :member-name
                                      "MinRequiredACU"))
                                    (:shape-name "LimitlessDatabase"))

(smithy/sdk/shapes:define-enum limitless-database-status
    common-lisp:nil
  (:active "active")
  (:not-in-use "not-in-use")
  (:enabled "enabled")
  (:disabled "disabled")
  (:enabling "enabling")
  (:disabling "disabling")
  (:modifying-max-capacity "modifying-max-capacity")
  (:error "error"))

(smithy/sdk/shapes:define-input list-tags-for-resource-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "ListTagsForResourceMessage"))

(smithy/sdk/shapes:define-enum local-write-forwarding-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:enabling "enabling")
  (:disabling "disabling")
  (:requested "requested"))

(smithy/sdk/shapes:define-list log-type-list :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-optional smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type major-engine-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure master-user-secret common-lisp:nil
                                    ((secret-arn :target-type string
                                      :member-name "SecretArn")
                                     (secret-status :target-type string
                                      :member-name "SecretStatus")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId"))
                                    (:shape-name "MasterUserSecret"))

(smithy/sdk/shapes:define-error max-dbshard-group-limit-reached common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "MaxDBShardGroupLimitReached")
                                (:error-name "MaxDBShardGroupLimitReached")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-records smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (references :target-type
                                      metric-reference-list :member-name
                                      "References")
                                     (statistics-details :target-type string
                                      :member-name "StatisticsDetails")
                                     (metric-query :target-type metric-query
                                      :member-name "MetricQuery"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-list metric-list :member metric)

(smithy/sdk/shapes:define-structure metric-query common-lisp:nil
                                    ((performance-insights-metric-query
                                      :target-type
                                      performance-insights-metric-query
                                      :member-name
                                      "PerformanceInsightsMetricQuery"))
                                    (:shape-name "MetricQuery"))

(smithy/sdk/shapes:define-structure metric-reference common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (reference-details :target-type
                                      reference-details :member-name
                                      "ReferenceDetails"))
                                    (:shape-name "MetricReference"))

(smithy/sdk/shapes:define-list metric-reference-list :member metric-reference)

(smithy/sdk/shapes:define-structure minimum-engine-version-per-allowed-value
                                    common-lisp:nil
                                    ((allowed-value :target-type string
                                      :member-name "AllowedValue")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion"))
                                    (:shape-name
                                     "MinimumEngineVersionPerAllowedValue"))

(smithy/sdk/shapes:define-list minimum-engine-version-per-allowed-value-list
                               :member
                               (minimum-engine-version-per-allowed-value
                                :xml-name
                                "MinimumEngineVersionPerAllowedValue"))

(smithy/sdk/shapes:define-input modify-activity-stream-request common-lisp:nil
                                ((resource-arn :target-type string :member-name
                                  "ResourceArn")
                                 (audit-policy-state :target-type
                                  audit-policy-state :member-name
                                  "AuditPolicyState"))
                                (:shape-name "ModifyActivityStreamRequest"))

(smithy/sdk/shapes:define-output modify-activity-stream-response
                                 common-lisp:nil
                                 ((kms-key-id :target-type string :member-name
                                   "KmsKeyId")
                                  (kinesis-stream-name :target-type string
                                   :member-name "KinesisStreamName")
                                  (status :target-type activity-stream-status
                                   :member-name "Status")
                                  (mode :target-type activity-stream-mode
                                   :member-name "Mode")
                                  (engine-native-audit-fields-included
                                   :target-type boolean-optional :member-name
                                   "EngineNativeAuditFieldsIncluded")
                                  (policy-status :target-type
                                   activity-stream-policy-status :member-name
                                   "PolicyStatus"))
                                 (:shape-name "ModifyActivityStreamResponse"))

(smithy/sdk/shapes:define-input modify-certificates-message common-lisp:nil
                                ((certificate-identifier :target-type string
                                  :member-name "CertificateIdentifier")
                                 (remove-customer-override :target-type
                                  boolean-optional :member-name
                                  "RemoveCustomerOverride"))
                                (:shape-name "ModifyCertificatesMessage"))

(smithy/sdk/shapes:define-output modify-certificates-result common-lisp:nil
                                 ((certificate :target-type certificate
                                   :member-name "Certificate"))
                                 (:shape-name "ModifyCertificatesResult"))

(smithy/sdk/shapes:define-input modify-current-dbcluster-capacity-message
                                common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier")
                                 (capacity :target-type integer-optional
                                  :member-name "Capacity")
                                 (seconds-before-timeout :target-type
                                  integer-optional :member-name
                                  "SecondsBeforeTimeout")
                                 (timeout-action :target-type string
                                  :member-name "TimeoutAction"))
                                (:shape-name
                                 "ModifyCurrentDBClusterCapacityMessage"))

(smithy/sdk/shapes:define-input modify-custom-dbengine-version-message
                                common-lisp:nil
                                ((engine :target-type custom-engine-name
                                  :required common-lisp:t :member-name
                                  "Engine")
                                 (engine-version :target-type
                                  custom-engine-version :required common-lisp:t
                                  :member-name "EngineVersion")
                                 (description :target-type description
                                  :member-name "Description")
                                 (status :target-type
                                  custom-engine-version-status :member-name
                                  "Status"))
                                (:shape-name
                                 "ModifyCustomDBEngineVersionMessage"))

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
                                 (backtrack-window :target-type long-optional
                                  :member-name "BacktrackWindow")
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
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (scaling-configuration :target-type
                                  scaling-configuration :member-name
                                  "ScalingConfiguration")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (enable-http-endpoint :target-type
                                  boolean-optional :member-name
                                  "EnableHttpEndpoint")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (enable-global-write-forwarding :target-type
                                  boolean-optional :member-name
                                  "EnableGlobalWriteForwarding")
                                 (dbcluster-instance-class :target-type string
                                  :member-name "DBClusterInstanceClass")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (rotate-master-user-password :target-type
                                  boolean-optional :member-name
                                  "RotateMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (engine-mode :target-type string :member-name
                                  "EngineMode")
                                 (allow-engine-mode-change :target-type boolean
                                  :member-name "AllowEngineModeChange")
                                 (enable-local-write-forwarding :target-type
                                  boolean-optional :member-name
                                  "EnableLocalWriteForwarding")
                                 (aws-backup-recovery-point-arn :target-type
                                  aws-backup-recovery-point-arn :member-name
                                  "AwsBackupRecoveryPointArn")
                                 (enable-limitless-database :target-type
                                  boolean-optional :member-name
                                  "EnableLimitlessDatabase")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier"))
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
                                 (tde-credential-password :target-type string
                                  :member-name "TdeCredentialPassword")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-fqdn :target-type string :member-name
                                  "DomainFqdn")
                                 (domain-ou :target-type string :member-name
                                  "DomainOu")
                                 (domain-auth-secret-arn :target-type string
                                  :member-name "DomainAuthSecretArn")
                                 (domain-dns-ips :target-type string-list
                                  :member-name "DomainDnsIps")
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
                                 (disable-domain :target-type boolean-optional
                                  :member-name "DisableDomain")
                                 (promotion-tier :target-type integer-optional
                                  :member-name "PromotionTier")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (cloudwatch-logs-export-configuration
                                  :target-type
                                  cloudwatch-logs-export-configuration
                                  :member-name
                                  "CloudwatchLogsExportConfiguration")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (use-default-processor-features :target-type
                                  boolean-optional :member-name
                                  "UseDefaultProcessorFeatures")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (max-allocated-storage :target-type
                                  integer-optional :member-name
                                  "MaxAllocatedStorage")
                                 (certificate-rotation-restart :target-type
                                  boolean-optional :member-name
                                  "CertificateRotationRestart")
                                 (replica-mode :target-type replica-mode
                                  :member-name "ReplicaMode")
                                 (enable-customer-owned-ip :target-type
                                  boolean-optional :member-name
                                  "EnableCustomerOwnedIp")
                                 (aws-backup-recovery-point-arn :target-type
                                  aws-backup-recovery-point-arn :member-name
                                  "AwsBackupRecoveryPointArn")
                                 (automation-mode :target-type automation-mode
                                  :member-name "AutomationMode")
                                 (resume-full-automation-mode-minutes
                                  :target-type integer-optional :member-name
                                  "ResumeFullAutomationModeMinutes")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (rotate-master-user-password :target-type
                                  boolean-optional :member-name
                                  "RotateMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (multi-tenant :target-type boolean-optional
                                  :member-name "MultiTenant"))
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

(smithy/sdk/shapes:define-input modify-dbproxy-endpoint-request common-lisp:nil
                                ((dbproxy-endpoint-name :target-type
                                  dbproxy-endpoint-name :required common-lisp:t
                                  :member-name "DBProxyEndpointName")
                                 (new-dbproxy-endpoint-name :target-type
                                  dbproxy-endpoint-name :member-name
                                  "NewDBProxyEndpointName")
                                 (vpc-security-group-ids :target-type
                                  string-list :member-name
                                  "VpcSecurityGroupIds"))
                                (:shape-name "ModifyDBProxyEndpointRequest"))

(smithy/sdk/shapes:define-output modify-dbproxy-endpoint-response
                                 common-lisp:nil
                                 ((dbproxy-endpoint :target-type
                                   dbproxy-endpoint :member-name
                                   "DBProxyEndpoint"))
                                 (:shape-name "ModifyDBProxyEndpointResponse"))

(smithy/sdk/shapes:define-input modify-dbproxy-request common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (new-dbproxy-name :target-type string
                                  :member-name "NewDBProxyName")
                                 (auth :target-type user-auth-config-list
                                  :member-name "Auth")
                                 (require-tls :target-type boolean-optional
                                  :member-name "RequireTLS")
                                 (idle-client-timeout :target-type
                                  integer-optional :member-name
                                  "IdleClientTimeout")
                                 (debug-logging :target-type boolean-optional
                                  :member-name "DebugLogging")
                                 (role-arn :target-type string :member-name
                                  "RoleArn")
                                 (security-groups :target-type string-list
                                  :member-name "SecurityGroups"))
                                (:shape-name "ModifyDBProxyRequest"))

(smithy/sdk/shapes:define-output modify-dbproxy-response common-lisp:nil
                                 ((dbproxy :target-type dbproxy :member-name
                                   "DBProxy"))
                                 (:shape-name "ModifyDBProxyResponse"))

(smithy/sdk/shapes:define-input modify-dbproxy-target-group-request
                                common-lisp:nil
                                ((target-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetGroupName")
                                 (dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (connection-pool-config :target-type
                                  connection-pool-configuration :member-name
                                  "ConnectionPoolConfig")
                                 (new-name :target-type string :member-name
                                  "NewName"))
                                (:shape-name "ModifyDBProxyTargetGroupRequest"))

(smithy/sdk/shapes:define-output modify-dbproxy-target-group-response
                                 common-lisp:nil
                                 ((dbproxy-target-group :target-type
                                   dbproxy-target-group :member-name
                                   "DBProxyTargetGroup"))
                                 (:shape-name
                                  "ModifyDBProxyTargetGroupResponse"))

(smithy/sdk/shapes:define-input modify-dbrecommendation-message common-lisp:nil
                                ((recommendation-id :target-type string
                                  :required common-lisp:t :member-name
                                  "RecommendationId")
                                 (locale :target-type string :member-name
                                  "Locale")
                                 (status :target-type string :member-name
                                  "Status")
                                 (recommended-action-updates :target-type
                                  recommended-action-update-list :member-name
                                  "RecommendedActionUpdates"))
                                (:shape-name "ModifyDBRecommendationMessage"))

(smithy/sdk/shapes:define-input modify-dbshard-group-message common-lisp:nil
                                ((dbshard-group-identifier :target-type
                                  dbshard-group-identifier :required
                                  common-lisp:t :member-name
                                  "DBShardGroupIdentifier")
                                 (max-acu :target-type double-optional
                                  :member-name "MaxACU")
                                 (min-acu :target-type double-optional
                                  :member-name "MinACU")
                                 (compute-redundancy :target-type
                                  integer-optional :member-name
                                  "ComputeRedundancy"))
                                (:shape-name "ModifyDBShardGroupMessage"))

(smithy/sdk/shapes:define-input modify-dbsnapshot-attribute-message
                                common-lisp:nil
                                ((dbsnapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSnapshotIdentifier")
                                 (attribute-name :target-type string :required
                                  common-lisp:t :member-name "AttributeName")
                                 (values-to-add :target-type
                                  attribute-value-list :member-name
                                  "ValuesToAdd")
                                 (values-to-remove :target-type
                                  attribute-value-list :member-name
                                  "ValuesToRemove"))
                                (:shape-name
                                 "ModifyDBSnapshotAttributeMessage"))

(smithy/sdk/shapes:define-output modify-dbsnapshot-attribute-result
                                 common-lisp:nil
                                 ((dbsnapshot-attributes-result :target-type
                                   dbsnapshot-attributes-result :member-name
                                   "DBSnapshotAttributesResult"))
                                 (:shape-name
                                  "ModifyDBSnapshotAttributeResult"))

(smithy/sdk/shapes:define-input modify-dbsnapshot-message common-lisp:nil
                                ((dbsnapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSnapshotIdentifier")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName"))
                                (:shape-name "ModifyDBSnapshotMessage"))

(smithy/sdk/shapes:define-output modify-dbsnapshot-result common-lisp:nil
                                 ((dbsnapshot :target-type dbsnapshot
                                   :member-name "DBSnapshot"))
                                 (:shape-name "ModifyDBSnapshotResult"))

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
                                ((global-cluster-identifier :target-type string
                                  :member-name "GlobalClusterIdentifier")
                                 (new-global-cluster-identifier :target-type
                                  string :member-name
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

(smithy/sdk/shapes:define-input modify-integration-message common-lisp:nil
                                ((integration-identifier :target-type
                                  integration-identifier :required
                                  common-lisp:t :member-name
                                  "IntegrationIdentifier")
                                 (integration-name :target-type
                                  integration-name :member-name
                                  "IntegrationName")
                                 (data-filter :target-type data-filter
                                  :member-name "DataFilter")
                                 (description :target-type
                                  integration-description :member-name
                                  "Description"))
                                (:shape-name "ModifyIntegrationMessage"))

(smithy/sdk/shapes:define-input modify-option-group-message common-lisp:nil
                                ((option-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "OptionGroupName")
                                 (options-to-include :target-type
                                  option-configuration-list :member-name
                                  "OptionsToInclude")
                                 (options-to-remove :target-type
                                  option-names-list :member-name
                                  "OptionsToRemove")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately"))
                                (:shape-name "ModifyOptionGroupMessage"))

(smithy/sdk/shapes:define-output modify-option-group-result common-lisp:nil
                                 ((option-group :target-type option-group
                                   :member-name "OptionGroup"))
                                 (:shape-name "ModifyOptionGroupResult"))

(smithy/sdk/shapes:define-input modify-tenant-database-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (tenant-dbname :target-type string :required
                                  common-lisp:t :member-name "TenantDBName")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "MasterUserPassword")
                                 (new-tenant-dbname :target-type string
                                  :member-name "NewTenantDBName")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (rotate-master-user-password :target-type
                                  boolean-optional :member-name
                                  "RotateMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId"))
                                (:shape-name "ModifyTenantDatabaseMessage"))

(smithy/sdk/shapes:define-output modify-tenant-database-result common-lisp:nil
                                 ((tenant-database :target-type tenant-database
                                   :member-name "TenantDatabase"))
                                 (:shape-name "ModifyTenantDatabaseResult"))

(smithy/sdk/shapes:define-error network-type-not-supported common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "NetworkTypeNotSupported")
                                (:error-name "NetworkTypeNotSupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure option common-lisp:nil
                                    ((option-name :target-type string
                                      :member-name "OptionName")
                                     (option-description :target-type string
                                      :member-name "OptionDescription")
                                     (persistent :target-type boolean
                                      :member-name "Persistent")
                                     (permanent :target-type boolean
                                      :member-name "Permanent")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (option-version :target-type string
                                      :member-name "OptionVersion")
                                     (option-settings :target-type
                                      option-setting-configuration-list
                                      :member-name "OptionSettings")
                                     (dbsecurity-group-memberships :target-type
                                      dbsecurity-group-membership-list
                                      :member-name
                                      "DBSecurityGroupMemberships")
                                     (vpc-security-group-memberships
                                      :target-type
                                      vpc-security-group-membership-list
                                      :member-name
                                      "VpcSecurityGroupMemberships"))
                                    (:shape-name "Option"))

(smithy/sdk/shapes:define-structure option-configuration common-lisp:nil
                                    ((option-name :target-type string :required
                                      common-lisp:t :member-name "OptionName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (option-version :target-type string
                                      :member-name "OptionVersion")
                                     (dbsecurity-group-memberships :target-type
                                      dbsecurity-group-name-list :member-name
                                      "DBSecurityGroupMemberships")
                                     (vpc-security-group-memberships
                                      :target-type vpc-security-group-id-list
                                      :member-name
                                      "VpcSecurityGroupMemberships")
                                     (option-settings :target-type
                                      option-settings-list :member-name
                                      "OptionSettings"))
                                    (:shape-name "OptionConfiguration"))

(smithy/sdk/shapes:define-list option-configuration-list :member
                               (option-configuration :xml-name
                                "OptionConfiguration"))

(smithy/sdk/shapes:define-structure option-group common-lisp:nil
                                    ((option-group-name :target-type string
                                      :member-name "OptionGroupName")
                                     (option-group-description :target-type
                                      string :member-name
                                      "OptionGroupDescription")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion")
                                     (options :target-type options-list
                                      :member-name "Options")
                                     (allows-vpc-and-non-vpc-instance-memberships
                                      :target-type boolean :member-name
                                      "AllowsVpcAndNonVpcInstanceMemberships")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (option-group-arn :target-type string
                                      :member-name "OptionGroupArn")
                                     (source-option-group :target-type string
                                      :member-name "SourceOptionGroup")
                                     (source-account-id :target-type string
                                      :member-name "SourceAccountId")
                                     (copy-timestamp :target-type tstamp
                                      :member-name "CopyTimestamp"))
                                    (:shape-name "OptionGroup"))

(smithy/sdk/shapes:define-error option-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OptionGroupAlreadyExistsFault")
                                (:error-name "OptionGroupAlreadyExistsFault")
                                (:error-code 400))

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
                                (:error-code 404))

(smithy/sdk/shapes:define-structure option-group-option common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (major-engine-version :target-type string
                                      :member-name "MajorEngineVersion")
                                     (minimum-required-minor-engine-version
                                      :target-type string :member-name
                                      "MinimumRequiredMinorEngineVersion")
                                     (port-required :target-type boolean
                                      :member-name "PortRequired")
                                     (default-port :target-type
                                      integer-optional :member-name
                                      "DefaultPort")
                                     (options-depended-on :target-type
                                      options-depended-on :member-name
                                      "OptionsDependedOn")
                                     (options-conflicts-with :target-type
                                      options-conflicts-with :member-name
                                      "OptionsConflictsWith")
                                     (persistent :target-type boolean
                                      :member-name "Persistent")
                                     (permanent :target-type boolean
                                      :member-name "Permanent")
                                     (requires-auto-minor-engine-version-upgrade
                                      :target-type boolean :member-name
                                      "RequiresAutoMinorEngineVersionUpgrade")
                                     (vpc-only :target-type boolean
                                      :member-name "VpcOnly")
                                     (supports-option-version-downgrade
                                      :target-type boolean-optional
                                      :member-name
                                      "SupportsOptionVersionDowngrade")
                                     (option-group-option-settings :target-type
                                      option-group-option-settings-list
                                      :member-name "OptionGroupOptionSettings")
                                     (option-group-option-versions :target-type
                                      option-group-option-versions-list
                                      :member-name "OptionGroupOptionVersions")
                                     (copyable-cross-account :target-type
                                      boolean-optional :member-name
                                      "CopyableCrossAccount"))
                                    (:shape-name "OptionGroupOption"))

(smithy/sdk/shapes:define-structure option-group-option-setting common-lisp:nil
                                    ((setting-name :target-type string
                                      :member-name "SettingName")
                                     (setting-description :target-type string
                                      :member-name "SettingDescription")
                                     (default-value :target-type string
                                      :member-name "DefaultValue")
                                     (apply-type :target-type string
                                      :member-name "ApplyType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (is-required :target-type boolean
                                      :member-name "IsRequired")
                                     (minimum-engine-version-per-allowed-value
                                      :target-type
                                      minimum-engine-version-per-allowed-value-list
                                      :member-name
                                      "MinimumEngineVersionPerAllowedValue"))
                                    (:shape-name "OptionGroupOptionSetting"))

(smithy/sdk/shapes:define-list option-group-option-settings-list :member
                               (option-group-option-setting :xml-name
                                "OptionGroupOptionSetting"))

(smithy/sdk/shapes:define-list option-group-option-versions-list :member
                               (option-version :xml-name "OptionVersion"))

(smithy/sdk/shapes:define-list option-group-options-list :member
                               (option-group-option :xml-name
                                "OptionGroupOption"))

(smithy/sdk/shapes:define-output option-group-options-message common-lisp:nil
                                 ((option-group-options :target-type
                                   option-group-options-list :member-name
                                   "OptionGroupOptions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "OptionGroupOptionsMessage"))

(smithy/sdk/shapes:define-error option-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OptionGroupQuotaExceededFault")
                                (:error-name "OptionGroupQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure option-groups common-lisp:nil
                                    ((option-groups-list :target-type
                                      option-groups-list :member-name
                                      "OptionGroupsList")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "OptionGroups"))

(smithy/sdk/shapes:define-list option-groups-list :member
                               (option-group :xml-name "OptionGroup"))

(smithy/sdk/shapes:define-list option-names-list :member string)

(smithy/sdk/shapes:define-structure option-setting common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type string :member-name
                                      "Value")
                                     (default-value :target-type string
                                      :member-name "DefaultValue")
                                     (description :target-type string
                                      :member-name "Description")
                                     (apply-type :target-type string
                                      :member-name "ApplyType")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (is-collection :target-type boolean
                                      :member-name "IsCollection"))
                                    (:shape-name "OptionSetting"))

(smithy/sdk/shapes:define-list option-setting-configuration-list :member
                               (option-setting :xml-name "OptionSetting"))

(smithy/sdk/shapes:define-list option-settings-list :member
                               (option-setting :xml-name "OptionSetting"))

(smithy/sdk/shapes:define-structure option-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault"))
                                    (:shape-name "OptionVersion"))

(smithy/sdk/shapes:define-list options-conflicts-with :member
                               (string :xml-name "OptionConflictName"))

(smithy/sdk/shapes:define-list options-depended-on :member
                               (string :xml-name "OptionName"))

(smithy/sdk/shapes:define-list options-list :member (option :xml-name "Option"))

(smithy/sdk/shapes:define-structure orderable-dbinstance-option common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (license-model :target-type string
                                      :member-name "LicenseModel")
                                     (availability-zone-group :target-type
                                      string :member-name
                                      "AvailabilityZoneGroup")
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
                                     (available-processor-features :target-type
                                      available-processor-feature-list
                                      :member-name
                                      "AvailableProcessorFeatures")
                                     (supported-engine-modes :target-type
                                      engine-mode-list :member-name
                                      "SupportedEngineModes")
                                     (supports-storage-autoscaling :target-type
                                      boolean-optional :member-name
                                      "SupportsStorageAutoscaling")
                                     (supports-kerberos-authentication
                                      :target-type boolean-optional
                                      :member-name
                                      "SupportsKerberosAuthentication")
                                     (outpost-capable :target-type boolean
                                      :member-name "OutpostCapable")
                                     (supported-activity-stream-modes
                                      :target-type activity-stream-mode-list
                                      :member-name
                                      "SupportedActivityStreamModes")
                                     (supports-global-databases :target-type
                                      boolean :member-name
                                      "SupportsGlobalDatabases")
                                     (supports-clusters :target-type boolean
                                      :member-name "SupportsClusters")
                                     (supported-network-types :target-type
                                      string-list :member-name
                                      "SupportedNetworkTypes")
                                     (supports-storage-throughput :target-type
                                      boolean :member-name
                                      "SupportsStorageThroughput")
                                     (min-storage-throughput-per-db-instance
                                      :target-type integer-optional
                                      :member-name
                                      "MinStorageThroughputPerDbInstance")
                                     (max-storage-throughput-per-db-instance
                                      :target-type integer-optional
                                      :member-name
                                      "MaxStorageThroughputPerDbInstance")
                                     (min-storage-throughput-per-iops
                                      :target-type double-optional :member-name
                                      "MinStorageThroughputPerIops")
                                     (max-storage-throughput-per-iops
                                      :target-type double-optional :member-name
                                      "MaxStorageThroughputPerIops")
                                     (supports-dedicated-log-volume
                                      :target-type boolean :member-name
                                      "SupportsDedicatedLogVolume"))
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

(smithy/sdk/shapes:define-structure outpost common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn"))
                                    (:shape-name "Outpost"))

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
                                      :member-name "ApplyMethod")
                                     (supported-engine-modes :target-type
                                      engine-mode-list :member-name
                                      "SupportedEngineModes"))
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
                                      "PendingCloudwatchLogsExports")
                                     (processor-features :target-type
                                      processor-feature-list :member-name
                                      "ProcessorFeatures")
                                     (iamdatabase-authentication-enabled
                                      :target-type boolean-optional
                                      :member-name
                                      "IAMDatabaseAuthenticationEnabled")
                                     (automation-mode :target-type
                                      automation-mode :member-name
                                      "AutomationMode")
                                     (resume-full-automation-mode-time
                                      :target-type tstamp :member-name
                                      "ResumeFullAutomationModeTime")
                                     (storage-throughput :target-type
                                      integer-optional :member-name
                                      "StorageThroughput")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (dedicated-log-volume :target-type
                                      boolean-optional :member-name
                                      "DedicatedLogVolume")
                                     (multi-tenant :target-type
                                      boolean-optional :member-name
                                      "MultiTenant"))
                                    (:shape-name "PendingModifiedValues"))

(smithy/sdk/shapes:define-structure performance-insights-metric-dimension-group
                                    common-lisp:nil
                                    ((dimensions :target-type string-list
                                      :member-name "Dimensions")
                                     (group :target-type string :member-name
                                      "Group")
                                     (limit :target-type integer :member-name
                                      "Limit"))
                                    (:shape-name
                                     "PerformanceInsightsMetricDimensionGroup"))

(smithy/sdk/shapes:define-structure performance-insights-metric-query
                                    common-lisp:nil
                                    ((group-by :target-type
                                      performance-insights-metric-dimension-group
                                      :member-name "GroupBy")
                                     (metric :target-type string :member-name
                                      "Metric"))
                                    (:shape-name
                                     "PerformanceInsightsMetricQuery"))

(smithy/sdk/shapes:define-structure performance-issue-details common-lisp:nil
                                    ((start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (end-time :target-type tstamp :member-name
                                      "EndTime")
                                     (metrics :target-type metric-list
                                      :member-name "Metrics")
                                     (analysis :target-type string :member-name
                                      "Analysis"))
                                    (:shape-name "PerformanceIssueDetails"))

(smithy/sdk/shapes:define-error point-in-time-restore-not-enabled-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "PointInTimeRestoreNotEnabledFault")
                                (:error-name "PointInTimeRestoreNotEnabled")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure processor-feature common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "ProcessorFeature"))

(smithy/sdk/shapes:define-list processor-feature-list :member
                               (processor-feature :xml-name "ProcessorFeature"))

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

(smithy/sdk/shapes:define-input promote-read-replica-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (backup-retention-period :target-type
                                  integer-optional :member-name
                                  "BackupRetentionPeriod")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow"))
                                (:shape-name "PromoteReadReplicaMessage"))

(smithy/sdk/shapes:define-output promote-read-replica-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "PromoteReadReplicaResult"))

(smithy/sdk/shapes:define-error provisioned-iops-not-available-in-azfault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ProvisionedIopsNotAvailableInAZFault")
                                (:error-name
                                 "ProvisionedIopsNotAvailableInAZFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input purchase-reserved-dbinstances-offering-message
                                common-lisp:nil
                                ((reserved-dbinstances-offering-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ReservedDBInstancesOfferingId")
                                 (reserved-dbinstance-id :target-type string
                                  :member-name "ReservedDBInstanceId")
                                 (dbinstance-count :target-type
                                  integer-optional :member-name
                                  "DBInstanceCount")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "PurchaseReservedDBInstancesOfferingMessage"))

(smithy/sdk/shapes:define-output purchase-reserved-dbinstances-offering-result
                                 common-lisp:nil
                                 ((reserved-dbinstance :target-type
                                   reserved-dbinstance :member-name
                                   "ReservedDBInstance"))
                                 (:shape-name
                                  "PurchaseReservedDBInstancesOfferingResult"))

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((from :target-type integer :member-name
                                      "From")
                                     (to :target-type integer :member-name
                                      "To")
                                     (step :target-type integer-optional
                                      :member-name "Step"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-list range-list :member (range :xml-name "Range"))

(smithy/sdk/shapes:define-structure rds-custom-cluster-configuration
                                    common-lisp:nil
                                    ((interconnect-subnet-id :target-type
                                      string :member-name
                                      "InterconnectSubnetId")
                                     (transit-gateway-multicast-domain-id
                                      :target-type string :member-name
                                      "TransitGatewayMulticastDomainId")
                                     (replica-mode :target-type replica-mode
                                      :member-name "ReplicaMode"))
                                    (:shape-name
                                     "RdsCustomClusterConfiguration"))

(smithy/sdk/shapes:define-list read-replica-dbcluster-identifier-list :member
                               (string :xml-name
                                "ReadReplicaDBClusterIdentifier"))

(smithy/sdk/shapes:define-list read-replica-dbinstance-identifier-list :member
                               (string :xml-name
                                "ReadReplicaDBInstanceIdentifier"))

(smithy/sdk/shapes:define-list read-replica-identifier-list :member
                               (string :xml-name "ReadReplicaIdentifier"))

(smithy/sdk/shapes:define-list readers-arn-list :member string)

(smithy/sdk/shapes:define-input reboot-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name "RebootDBClusterMessage"))

(smithy/sdk/shapes:define-output reboot-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "RebootDBClusterResult"))

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

(smithy/sdk/shapes:define-input reboot-dbshard-group-message common-lisp:nil
                                ((dbshard-group-identifier :target-type
                                  dbshard-group-identifier :required
                                  common-lisp:t :member-name
                                  "DBShardGroupIdentifier"))
                                (:shape-name "RebootDBShardGroupMessage"))

(smithy/sdk/shapes:define-structure recommended-action common-lisp:nil
                                    ((action-id :target-type string
                                      :member-name "ActionId")
                                     (title :target-type string :member-name
                                      "Title")
                                     (description :target-type string
                                      :member-name "Description")
                                     (operation :target-type string
                                      :member-name "Operation")
                                     (parameters :target-type
                                      recommended-action-parameter-list
                                      :member-name "Parameters")
                                     (apply-modes :target-type string-list
                                      :member-name "ApplyModes")
                                     (status :target-type string :member-name
                                      "Status")
                                     (issue-details :target-type issue-details
                                      :member-name "IssueDetails")
                                     (context-attributes :target-type
                                      context-attribute-list :member-name
                                      "ContextAttributes"))
                                    (:shape-name "RecommendedAction"))

(smithy/sdk/shapes:define-list recommended-action-list :member
                               recommended-action)

(smithy/sdk/shapes:define-structure recommended-action-parameter
                                    common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "RecommendedActionParameter"))

(smithy/sdk/shapes:define-list recommended-action-parameter-list :member
                               recommended-action-parameter)

(smithy/sdk/shapes:define-structure recommended-action-update common-lisp:nil
                                    ((action-id :target-type string :required
                                      common-lisp:t :member-name "ActionId")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "RecommendedActionUpdate"))

(smithy/sdk/shapes:define-list recommended-action-update-list :member
                               recommended-action-update)

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

(smithy/sdk/shapes:define-structure reference-details common-lisp:nil
                                    ((scalar-reference-details :target-type
                                      scalar-reference-details :member-name
                                      "ScalarReferenceDetails"))
                                    (:shape-name "ReferenceDetails"))

(smithy/sdk/shapes:define-input register-dbproxy-targets-request
                                common-lisp:nil
                                ((dbproxy-name :target-type string :required
                                  common-lisp:t :member-name "DBProxyName")
                                 (target-group-name :target-type string
                                  :member-name "TargetGroupName")
                                 (dbinstance-identifiers :target-type
                                  string-list :member-name
                                  "DBInstanceIdentifiers")
                                 (dbcluster-identifiers :target-type
                                  string-list :member-name
                                  "DBClusterIdentifiers"))
                                (:shape-name "RegisterDBProxyTargetsRequest"))

(smithy/sdk/shapes:define-output register-dbproxy-targets-response
                                 common-lisp:nil
                                 ((dbproxy-targets :target-type target-list
                                   :member-name "DBProxyTargets"))
                                 (:shape-name "RegisterDBProxyTargetsResponse"))

(smithy/sdk/shapes:define-input remove-from-global-cluster-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type string
                                  :member-name "GlobalClusterIdentifier")
                                 (db-cluster-identifier :target-type string
                                  :member-name "DbClusterIdentifier"))
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

(smithy/sdk/shapes:define-input remove-role-from-dbinstance-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn")
                                 (feature-name :target-type string :required
                                  common-lisp:t :member-name "FeatureName"))
                                (:shape-name "RemoveRoleFromDBInstanceMessage"))

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

(smithy/sdk/shapes:define-enum replica-mode
    common-lisp:nil
  (:open-read-only "open-read-only")
  (:mounted "mounted"))

(smithy/sdk/shapes:define-structure reserved-dbinstance common-lisp:nil
                                    ((reserved-dbinstance-id :target-type
                                      string :member-name
                                      "ReservedDBInstanceId")
                                     (reserved-dbinstances-offering-id
                                      :target-type string :member-name
                                      "ReservedDBInstancesOfferingId")
                                     (dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (dbinstance-count :target-type integer
                                      :member-name "DBInstanceCount")
                                     (product-description :target-type string
                                      :member-name "ProductDescription")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (multi-az :target-type boolean
                                      :member-name "MultiAZ")
                                     (state :target-type string :member-name
                                      "State")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges")
                                     (reserved-dbinstance-arn :target-type
                                      string :member-name
                                      "ReservedDBInstanceArn")
                                     (lease-id :target-type string :member-name
                                      "LeaseId"))
                                    (:shape-name "ReservedDBInstance"))

(smithy/sdk/shapes:define-error reserved-dbinstance-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedDBInstanceAlreadyExistsFault")
                                (:error-name "ReservedDBInstanceAlreadyExists")
                                (:error-code 404))

(smithy/sdk/shapes:define-list reserved-dbinstance-list :member
                               (reserved-dbinstance :xml-name
                                "ReservedDBInstance"))

(smithy/sdk/shapes:define-output reserved-dbinstance-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-dbinstances :target-type
                                   reserved-dbinstance-list :member-name
                                   "ReservedDBInstances"))
                                 (:shape-name "ReservedDBInstanceMessage"))

(smithy/sdk/shapes:define-error reserved-dbinstance-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedDBInstanceNotFoundFault")
                                (:error-name "ReservedDBInstanceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error reserved-dbinstance-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedDBInstanceQuotaExceededFault")
                                (:error-name "ReservedDBInstanceQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure reserved-dbinstances-offering
                                    common-lisp:nil
                                    ((reserved-dbinstances-offering-id
                                      :target-type string :member-name
                                      "ReservedDBInstancesOfferingId")
                                     (dbinstance-class :target-type string
                                      :member-name "DBInstanceClass")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (product-description :target-type string
                                      :member-name "ProductDescription")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (multi-az :target-type boolean
                                      :member-name "MultiAZ")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name "ReservedDBInstancesOffering"))

(smithy/sdk/shapes:define-list reserved-dbinstances-offering-list :member
                               (reserved-dbinstances-offering :xml-name
                                "ReservedDBInstancesOffering"))

(smithy/sdk/shapes:define-output reserved-dbinstances-offering-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-dbinstances-offerings :target-type
                                   reserved-dbinstances-offering-list
                                   :member-name
                                   "ReservedDBInstancesOfferings"))
                                 (:shape-name
                                  "ReservedDBInstancesOfferingMessage"))

(smithy/sdk/shapes:define-error reserved-dbinstances-offering-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedDBInstancesOfferingNotFoundFault")
                                (:error-name
                                 "ReservedDBInstancesOfferingNotFound")
                                (:error-code 404))

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
                                (:error-code 404))

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

(smithy/sdk/shapes:define-input restore-dbcluster-from-s3message
                                common-lisp:nil
                                ((availability-zones :target-type
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
                                 (master-username :target-type string :required
                                  common-lisp:t :member-name "MasterUsername")
                                 (master-user-password :target-type string
                                  :member-name "MasterUserPassword")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (preferred-backup-window :target-type string
                                  :member-name "PreferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (source-engine :target-type string :required
                                  common-lisp:t :member-name "SourceEngine")
                                 (source-engine-version :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceEngineVersion")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName")
                                 (s3prefix :target-type string :member-name
                                  "S3Prefix")
                                 (s3ingestion-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "S3IngestionRoleArn")
                                 (backtrack-window :target-type long-optional
                                  :member-name "BacktrackWindow")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
                                (:shape-name "RestoreDBClusterFromS3Message"))

(smithy/sdk/shapes:define-output restore-dbcluster-from-s3result
                                 common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "RestoreDBClusterFromS3Result"))

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
                                 (backtrack-window :target-type long-optional
                                  :member-name "BacktrackWindow")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (engine-mode :target-type string :member-name
                                  "EngineMode")
                                 (scaling-configuration :target-type
                                  scaling-configuration :member-name
                                  "ScalingConfiguration")
                                 (dbcluster-parameter-group-name :target-type
                                  string :member-name
                                  "DBClusterParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (dbcluster-instance-class :target-type string
                                  :member-name "DBClusterInstanceClass")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (rds-custom-cluster-configuration :target-type
                                  rds-custom-cluster-configuration :member-name
                                  "RdsCustomClusterConfiguration")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
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
                                  string :member-name
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
                                 (backtrack-window :target-type long-optional
                                  :member-name "BacktrackWindow")
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
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (scaling-configuration :target-type
                                  scaling-configuration :member-name
                                  "ScalingConfiguration")
                                 (engine-mode :target-type string :member-name
                                  "EngineMode")
                                 (dbcluster-instance-class :target-type string
                                  :member-name "DBClusterInstanceClass")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (serverless-v2scaling-configuration
                                  :target-type
                                  serverless-v2scaling-configuration
                                  :member-name
                                  "ServerlessV2ScalingConfiguration")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (source-db-cluster-resource-id :target-type
                                  string :member-name
                                  "SourceDbClusterResourceId")
                                 (rds-custom-cluster-configuration :target-type
                                  rds-custom-cluster-configuration :member-name
                                  "RdsCustomClusterConfiguration")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
                                (:shape-name
                                 "RestoreDBClusterToPointInTimeMessage"))

(smithy/sdk/shapes:define-output restore-dbcluster-to-point-in-time-result
                                 common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name
                                  "RestoreDBClusterToPointInTimeResult"))

(smithy/sdk/shapes:define-input restore-dbinstance-from-dbsnapshot-message
                                common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (dbsnapshot-identifier :target-type string
                                  :member-name "DBSnapshotIdentifier")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (license-model :target-type string
                                  :member-name "LicenseModel")
                                 (dbname :target-type string :member-name
                                  "DBName")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (tde-credential-arn :target-type string
                                  :member-name "TdeCredentialArn")
                                 (tde-credential-password :target-type string
                                  :member-name "TdeCredentialPassword")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-fqdn :target-type string :member-name
                                  "DomainFqdn")
                                 (domain-ou :target-type string :member-name
                                  "DomainOu")
                                 (domain-auth-secret-arn :target-type string
                                  :member-name "DomainAuthSecretArn")
                                 (domain-dns-ips :target-type string-list
                                  :member-name "DomainDnsIps")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (use-default-processor-features :target-type
                                  boolean-optional :member-name
                                  "UseDefaultProcessorFeatures")
                                 (dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (enable-customer-owned-ip :target-type
                                  boolean-optional :member-name
                                  "EnableCustomerOwnedIp")
                                 (custom-iam-instance-profile :target-type
                                  string :member-name
                                  "CustomIamInstanceProfile")
                                 (backup-target :target-type string
                                  :member-name "BackupTarget")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (dbcluster-snapshot-identifier :target-type
                                  string :member-name
                                  "DBClusterSnapshotIdentifier")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId"))
                                (:shape-name
                                 "RestoreDBInstanceFromDBSnapshotMessage"))

(smithy/sdk/shapes:define-output restore-dbinstance-from-dbsnapshot-result
                                 common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name
                                  "RestoreDBInstanceFromDBSnapshotResult"))

(smithy/sdk/shapes:define-input restore-dbinstance-from-s3message
                                common-lisp:nil
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
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (storage-encrypted :target-type
                                  boolean-optional :member-name
                                  "StorageEncrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (monitoring-interval :target-type
                                  integer-optional :member-name
                                  "MonitoringInterval")
                                 (monitoring-role-arn :target-type string
                                  :member-name "MonitoringRoleArn")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (source-engine :target-type string :required
                                  common-lisp:t :member-name "SourceEngine")
                                 (source-engine-version :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceEngineVersion")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName")
                                 (s3prefix :target-type string :member-name
                                  "S3Prefix")
                                 (s3ingestion-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "S3IngestionRoleArn")
                                 (database-insights-mode :target-type
                                  database-insights-mode :member-name
                                  "DatabaseInsightsMode")
                                 (enable-performance-insights :target-type
                                  boolean-optional :member-name
                                  "EnablePerformanceInsights")
                                 (performance-insights-kmskey-id :target-type
                                  string :member-name
                                  "PerformanceInsightsKMSKeyId")
                                 (performance-insights-retention-period
                                  :target-type integer-optional :member-name
                                  "PerformanceInsightsRetentionPeriod")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (use-default-processor-features :target-type
                                  boolean-optional :member-name
                                  "UseDefaultProcessorFeatures")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (max-allocated-storage :target-type
                                  integer-optional :member-name
                                  "MaxAllocatedStorage")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport"))
                                (:shape-name "RestoreDBInstanceFromS3Message"))

(smithy/sdk/shapes:define-output restore-dbinstance-from-s3result
                                 common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "RestoreDBInstanceFromS3Result"))

(smithy/sdk/shapes:define-input restore-dbinstance-to-point-in-time-message
                                common-lisp:nil
                                ((source-dbinstance-identifier :target-type
                                  string :member-name
                                  "SourceDBInstanceIdentifier")
                                 (target-dbinstance-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetDBInstanceIdentifier")
                                 (restore-time :target-type tstamp :member-name
                                  "RestoreTime")
                                 (use-latest-restorable-time :target-type
                                  boolean :member-name
                                  "UseLatestRestorableTime")
                                 (dbinstance-class :target-type string
                                  :member-name "DBInstanceClass")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (dbsubnet-group-name :target-type string
                                  :member-name "DBSubnetGroupName")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (license-model :target-type string
                                  :member-name "LicenseModel")
                                 (dbname :target-type string :member-name
                                  "DBName")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (iops :target-type integer-optional
                                  :member-name "Iops")
                                 (option-group-name :target-type string
                                  :member-name "OptionGroupName")
                                 (copy-tags-to-snapshot :target-type
                                  boolean-optional :member-name
                                  "CopyTagsToSnapshot")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (storage-type :target-type string :member-name
                                  "StorageType")
                                 (tde-credential-arn :target-type string
                                  :member-name "TdeCredentialArn")
                                 (tde-credential-password :target-type string
                                  :member-name "TdeCredentialPassword")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (domain :target-type string :member-name
                                  "Domain")
                                 (domain-iamrole-name :target-type string
                                  :member-name "DomainIAMRoleName")
                                 (domain-fqdn :target-type string :member-name
                                  "DomainFqdn")
                                 (domain-ou :target-type string :member-name
                                  "DomainOu")
                                 (domain-auth-secret-arn :target-type string
                                  :member-name "DomainAuthSecretArn")
                                 (domain-dns-ips :target-type string-list
                                  :member-name "DomainDnsIps")
                                 (enable-iamdatabase-authentication
                                  :target-type boolean-optional :member-name
                                  "EnableIAMDatabaseAuthentication")
                                 (enable-cloudwatch-logs-exports :target-type
                                  log-type-list :member-name
                                  "EnableCloudwatchLogsExports")
                                 (processor-features :target-type
                                  processor-feature-list :member-name
                                  "ProcessorFeatures")
                                 (use-default-processor-features :target-type
                                  boolean-optional :member-name
                                  "UseDefaultProcessorFeatures")
                                 (dbparameter-group-name :target-type string
                                  :member-name "DBParameterGroupName")
                                 (deletion-protection :target-type
                                  boolean-optional :member-name
                                  "DeletionProtection")
                                 (source-dbi-resource-id :target-type string
                                  :member-name "SourceDbiResourceId")
                                 (max-allocated-storage :target-type
                                  integer-optional :member-name
                                  "MaxAllocatedStorage")
                                 (source-dbinstance-automated-backups-arn
                                  :target-type string :member-name
                                  "SourceDBInstanceAutomatedBackupsArn")
                                 (enable-customer-owned-ip :target-type
                                  boolean-optional :member-name
                                  "EnableCustomerOwnedIp")
                                 (custom-iam-instance-profile :target-type
                                  string :member-name
                                  "CustomIamInstanceProfile")
                                 (backup-target :target-type string
                                  :member-name "BackupTarget")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (storage-throughput :target-type
                                  integer-optional :member-name
                                  "StorageThroughput")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (dedicated-log-volume :target-type
                                  boolean-optional :member-name
                                  "DedicatedLogVolume")
                                 (cacertificate-identifier :target-type string
                                  :member-name "CACertificateIdentifier")
                                 (engine-lifecycle-support :target-type string
                                  :member-name "EngineLifecycleSupport")
                                 (manage-master-user-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterUserPassword")
                                 (master-user-secret-kms-key-id :target-type
                                  string :member-name
                                  "MasterUserSecretKmsKeyId"))
                                (:shape-name
                                 "RestoreDBInstanceToPointInTimeMessage"))

(smithy/sdk/shapes:define-output restore-dbinstance-to-point-in-time-result
                                 common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name
                                  "RestoreDBInstanceToPointInTimeResult"))

(smithy/sdk/shapes:define-structure restore-window common-lisp:nil
                                    ((earliest-time :target-type tstamp
                                      :member-name "EarliestTime")
                                     (latest-time :target-type tstamp
                                      :member-name "LatestTime"))
                                    (:shape-name "RestoreWindow"))

(smithy/sdk/shapes:define-input revoke-dbsecurity-group-ingress-message
                                common-lisp:nil
                                ((dbsecurity-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "DBSecurityGroupName")
                                 (cidrip :target-type string :member-name
                                  "CIDRIP")
                                 (ec2security-group-name :target-type string
                                  :member-name "EC2SecurityGroupName")
                                 (ec2security-group-id :target-type string
                                  :member-name "EC2SecurityGroupId")
                                 (ec2security-group-owner-id :target-type
                                  string :member-name
                                  "EC2SecurityGroupOwnerId"))
                                (:shape-name
                                 "RevokeDBSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output revoke-dbsecurity-group-ingress-result
                                 common-lisp:nil
                                 ((dbsecurity-group :target-type
                                   dbsecurity-group :member-name
                                   "DBSecurityGroup"))
                                 (:shape-name
                                  "RevokeDBSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-error snsinvalid-topic-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSInvalidTopicFault")
                                (:error-name "SNSInvalidTopic")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snsno-authorization-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSNoAuthorizationFault")
                                (:error-name "SNSNoAuthorization")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snstopic-arn-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSTopicArnNotFoundFault")
                                (:error-name "SNSTopicArnNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure scalar-reference-details common-lisp:nil
                                    ((value :target-type double :member-name
                                      "Value"))
                                    (:shape-name "ScalarReferenceDetails"))

(smithy/sdk/shapes:define-structure scaling-configuration common-lisp:nil
                                    ((min-capacity :target-type
                                      integer-optional :member-name
                                      "MinCapacity")
                                     (max-capacity :target-type
                                      integer-optional :member-name
                                      "MaxCapacity")
                                     (auto-pause :target-type boolean-optional
                                      :member-name "AutoPause")
                                     (seconds-until-auto-pause :target-type
                                      integer-optional :member-name
                                      "SecondsUntilAutoPause")
                                     (timeout-action :target-type string
                                      :member-name "TimeoutAction")
                                     (seconds-before-timeout :target-type
                                      integer-optional :member-name
                                      "SecondsBeforeTimeout"))
                                    (:shape-name "ScalingConfiguration"))

(smithy/sdk/shapes:define-structure scaling-configuration-info common-lisp:nil
                                    ((min-capacity :target-type
                                      integer-optional :member-name
                                      "MinCapacity")
                                     (max-capacity :target-type
                                      integer-optional :member-name
                                      "MaxCapacity")
                                     (auto-pause :target-type boolean-optional
                                      :member-name "AutoPause")
                                     (seconds-until-auto-pause :target-type
                                      integer-optional :member-name
                                      "SecondsUntilAutoPause")
                                     (timeout-action :target-type string
                                      :member-name "TimeoutAction")
                                     (seconds-before-timeout :target-type
                                      integer-optional :member-name
                                      "SecondsBeforeTimeout"))
                                    (:shape-name "ScalingConfigurationInfo"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure serverless-v2features-support
                                    common-lisp:nil
                                    ((min-capacity :target-type double-optional
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type double-optional
                                      :member-name "MaxCapacity"))
                                    (:shape-name "ServerlessV2FeaturesSupport"))

(smithy/sdk/shapes:define-structure serverless-v2scaling-configuration
                                    common-lisp:nil
                                    ((min-capacity :target-type double-optional
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type double-optional
                                      :member-name "MaxCapacity")
                                     (seconds-until-auto-pause :target-type
                                      integer-optional :member-name
                                      "SecondsUntilAutoPause"))
                                    (:shape-name
                                     "ServerlessV2ScalingConfiguration"))

(smithy/sdk/shapes:define-structure serverless-v2scaling-configuration-info
                                    common-lisp:nil
                                    ((min-capacity :target-type double-optional
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type double-optional
                                      :member-name "MaxCapacity")
                                     (seconds-until-auto-pause :target-type
                                      integer-optional :member-name
                                      "SecondsUntilAutoPause"))
                                    (:shape-name
                                     "ServerlessV2ScalingConfigurationInfo"))

(smithy/sdk/shapes:define-error shared-snapshot-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SharedSnapshotQuotaExceededFault")
                                (:error-name "SharedSnapshotQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotQuotaExceededFault")
                                (:error-name "SnapshotQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type source-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error source-cluster-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceClusterNotSupportedFault")
                                (:error-name "SourceClusterNotSupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error source-database-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceDatabaseNotSupportedFault")
                                (:error-name "SourceDatabaseNotSupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list source-ids-list :member
                               (string :xml-name "SourceId"))

(smithy/sdk/shapes:define-error source-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceNotFoundFault")
                                (:error-name "SourceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure source-region common-lisp:nil
                                    ((region-name :target-type string
                                      :member-name "RegionName")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (status :target-type string :member-name
                                      "Status")
                                     (supports-dbinstance-automated-backups-replication
                                      :target-type boolean :member-name
                                      "SupportsDBInstanceAutomatedBackupsReplication"))
                                    (:shape-name "SourceRegion"))

(smithy/sdk/shapes:define-list source-region-list :member
                               (source-region :xml-name "SourceRegion"))

(smithy/sdk/shapes:define-output source-region-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (source-regions :target-type
                                   source-region-list :member-name
                                   "SourceRegions"))
                                 (:shape-name "SourceRegionMessage"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:db-instance "db-instance")
  (:db-parameter-group "db-parameter-group")
  (:db-security-group "db-security-group")
  (:db-snapshot "db-snapshot")
  (:db-cluster "db-cluster")
  (:db-cluster-snapshot "db-cluster-snapshot")
  (:custom-engine-version "custom-engine-version")
  (:db-proxy "db-proxy")
  (:blue-green-deployment "blue-green-deployment"))

(smithy/sdk/shapes:define-input start-activity-stream-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (mode :target-type activity-stream-mode
                                  :required common-lisp:t :member-name "Mode")
                                 (kms-key-id :target-type string :required
                                  common-lisp:t :member-name "KmsKeyId")
                                 (apply-immediately :target-type
                                  boolean-optional :member-name
                                  "ApplyImmediately")
                                 (engine-native-audit-fields-included
                                  :target-type boolean-optional :member-name
                                  "EngineNativeAuditFieldsIncluded"))
                                (:shape-name "StartActivityStreamRequest"))

(smithy/sdk/shapes:define-output start-activity-stream-response common-lisp:nil
                                 ((kms-key-id :target-type string :member-name
                                   "KmsKeyId")
                                  (kinesis-stream-name :target-type string
                                   :member-name "KinesisStreamName")
                                  (status :target-type activity-stream-status
                                   :member-name "Status")
                                  (mode :target-type activity-stream-mode
                                   :member-name "Mode")
                                  (apply-immediately :target-type boolean
                                   :member-name "ApplyImmediately")
                                  (engine-native-audit-fields-included
                                   :target-type boolean-optional :member-name
                                   "EngineNativeAuditFieldsIncluded"))
                                 (:shape-name "StartActivityStreamResponse"))

(smithy/sdk/shapes:define-input start-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name "StartDBClusterMessage"))

(smithy/sdk/shapes:define-output start-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "StartDBClusterResult"))

(smithy/sdk/shapes:define-input
 start-dbinstance-automated-backups-replication-message common-lisp:nil
 ((source-dbinstance-arn :target-type string :required common-lisp:t
   :member-name "SourceDBInstanceArn")
  (backup-retention-period :target-type integer-optional :member-name
   "BackupRetentionPeriod")
  (kms-key-id :target-type string :member-name "KmsKeyId")
  (pre-signed-url :target-type string :member-name "PreSignedUrl"))
 (:shape-name "StartDBInstanceAutomatedBackupsReplicationMessage"))

(smithy/sdk/shapes:define-output
 start-dbinstance-automated-backups-replication-result common-lisp:nil
 ((dbinstance-automated-backup :target-type dbinstance-automated-backup
   :member-name "DBInstanceAutomatedBackup"))
 (:shape-name "StartDBInstanceAutomatedBackupsReplicationResult"))

(smithy/sdk/shapes:define-input start-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier"))
                                (:shape-name "StartDBInstanceMessage"))

(smithy/sdk/shapes:define-output start-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "StartDBInstanceResult"))

(smithy/sdk/shapes:define-input start-export-task-message common-lisp:nil
                                ((export-task-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ExportTaskIdentifier")
                                 (source-arn :target-type string :required
                                  common-lisp:t :member-name "SourceArn")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName")
                                 (iam-role-arn :target-type string :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (kms-key-id :target-type string :required
                                  common-lisp:t :member-name "KmsKeyId")
                                 (s3prefix :target-type string :member-name
                                  "S3Prefix")
                                 (export-only :target-type string-list
                                  :member-name "ExportOnly"))
                                (:shape-name "StartExportTaskMessage"))

(smithy/sdk/shapes:define-input stop-activity-stream-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (apply-immediately :target-type
                                  boolean-optional :member-name
                                  "ApplyImmediately"))
                                (:shape-name "StopActivityStreamRequest"))

(smithy/sdk/shapes:define-output stop-activity-stream-response common-lisp:nil
                                 ((kms-key-id :target-type string :member-name
                                   "KmsKeyId")
                                  (kinesis-stream-name :target-type string
                                   :member-name "KinesisStreamName")
                                  (status :target-type activity-stream-status
                                   :member-name "Status"))
                                 (:shape-name "StopActivityStreamResponse"))

(smithy/sdk/shapes:define-input stop-dbcluster-message common-lisp:nil
                                ((dbcluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBClusterIdentifier"))
                                (:shape-name "StopDBClusterMessage"))

(smithy/sdk/shapes:define-output stop-dbcluster-result common-lisp:nil
                                 ((dbcluster :target-type dbcluster
                                   :member-name "DBCluster"))
                                 (:shape-name "StopDBClusterResult"))

(smithy/sdk/shapes:define-input
 stop-dbinstance-automated-backups-replication-message common-lisp:nil
 ((source-dbinstance-arn :target-type string :required common-lisp:t
   :member-name "SourceDBInstanceArn"))
 (:shape-name "StopDBInstanceAutomatedBackupsReplicationMessage"))

(smithy/sdk/shapes:define-output
 stop-dbinstance-automated-backups-replication-result common-lisp:nil
 ((dbinstance-automated-backup :target-type dbinstance-automated-backup
   :member-name "DBInstanceAutomatedBackup"))
 (:shape-name "StopDBInstanceAutomatedBackupsReplicationResult"))

(smithy/sdk/shapes:define-input stop-dbinstance-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier")
                                 (dbsnapshot-identifier :target-type string
                                  :member-name "DBSnapshotIdentifier"))
                                (:shape-name "StopDBInstanceMessage"))

(smithy/sdk/shapes:define-output stop-dbinstance-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "StopDBInstanceResult"))

(smithy/sdk/shapes:define-error storage-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageQuotaExceededFault")
                                (:error-name "StorageQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error storage-type-not-available-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageTypeNotAvailableFault")
                                (:error-name "StorageTypeNotAvailableFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error storage-type-not-supported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageTypeNotSupportedFault")
                                (:error-name "StorageTypeNotSupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      availability-zone :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-outpost :target-type outpost
                                      :member-name "SubnetOutpost")
                                     (subnet-status :target-type string
                                      :member-name "SubnetStatus"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-already-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetAlreadyInUse")
                                (:error-name "SubnetAlreadyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-error subscription-already-exist-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionAlreadyExistFault")
                                (:error-name "SubscriptionAlreadyExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-error subscription-category-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SubscriptionCategoryNotFoundFault")
                                (:error-name "SubscriptionCategoryNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error subscription-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionNotFoundFault")
                                (:error-name "SubscriptionNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list supported-character-sets-list :member
                               (character-set :xml-name "CharacterSet"))

(smithy/sdk/shapes:define-structure supported-engine-lifecycle common-lisp:nil
                                    ((lifecycle-support-name :target-type
                                      lifecycle-support-name :required
                                      common-lisp:t :member-name
                                      "LifecycleSupportName")
                                     (lifecycle-support-start-date :target-type
                                      tstamp :required common-lisp:t
                                      :member-name "LifecycleSupportStartDate")
                                     (lifecycle-support-end-date :target-type
                                      tstamp :required common-lisp:t
                                      :member-name "LifecycleSupportEndDate"))
                                    (:shape-name "SupportedEngineLifecycle"))

(smithy/sdk/shapes:define-list supported-engine-lifecycle-list :member
                               (supported-engine-lifecycle :xml-name
                                "SupportedEngineLifecycle"))

(smithy/sdk/shapes:define-list supported-timezones-list :member
                               (timezone :xml-name "Timezone"))

(smithy/sdk/shapes:define-input switchover-blue-green-deployment-request
                                common-lisp:nil
                                ((blue-green-deployment-identifier :target-type
                                  blue-green-deployment-identifier :required
                                  common-lisp:t :member-name
                                  "BlueGreenDeploymentIdentifier")
                                 (switchover-timeout :target-type
                                  switchover-timeout :member-name
                                  "SwitchoverTimeout"))
                                (:shape-name
                                 "SwitchoverBlueGreenDeploymentRequest"))

(smithy/sdk/shapes:define-output switchover-blue-green-deployment-response
                                 common-lisp:nil
                                 ((blue-green-deployment :target-type
                                   blue-green-deployment :member-name
                                   "BlueGreenDeployment"))
                                 (:shape-name
                                  "SwitchoverBlueGreenDeploymentResponse"))

(smithy/sdk/shapes:define-structure switchover-detail common-lisp:nil
                                    ((source-member :target-type database-arn
                                      :member-name "SourceMember")
                                     (target-member :target-type database-arn
                                      :member-name "TargetMember")
                                     (status :target-type
                                      switchover-detail-status :member-name
                                      "Status"))
                                    (:shape-name "SwitchoverDetail"))

(smithy/sdk/shapes:define-list switchover-detail-list :member switchover-detail)

(smithy/sdk/shapes:define-type switchover-detail-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input switchover-global-cluster-message
                                common-lisp:nil
                                ((global-cluster-identifier :target-type
                                  global-cluster-identifier :required
                                  common-lisp:t :member-name
                                  "GlobalClusterIdentifier")
                                 (target-db-cluster-identifier :target-type
                                  dbcluster-identifier :required common-lisp:t
                                  :member-name "TargetDbClusterIdentifier"))
                                (:shape-name "SwitchoverGlobalClusterMessage"))

(smithy/sdk/shapes:define-output switchover-global-cluster-result
                                 common-lisp:nil
                                 ((global-cluster :target-type global-cluster
                                   :member-name "GlobalCluster"))
                                 (:shape-name "SwitchoverGlobalClusterResult"))

(smithy/sdk/shapes:define-input switchover-read-replica-message common-lisp:nil
                                ((dbinstance-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DBInstanceIdentifier"))
                                (:shape-name "SwitchoverReadReplicaMessage"))

(smithy/sdk/shapes:define-output switchover-read-replica-result common-lisp:nil
                                 ((dbinstance :target-type dbinstance
                                   :member-name "DBInstance"))
                                 (:shape-name "SwitchoverReadReplicaResult"))

(smithy/sdk/shapes:define-type switchover-timeout
                               smithy/sdk/smithy-types:integer)

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

(smithy/sdk/shapes:define-type target-dbcluster-parameter-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-dbinstance-class
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-dbparameter-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-engine-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-group-list :member dbproxy-target-group)

(smithy/sdk/shapes:define-structure target-health common-lisp:nil
                                    ((state :target-type target-state
                                      :member-name "State")
                                     (reason :target-type target-health-reason
                                      :member-name "Reason")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "TargetHealth"))

(smithy/sdk/shapes:define-enum target-health-reason
    common-lisp:nil
  (:unreachable "UNREACHABLE")
  (:connection-failed "CONNECTION_FAILED")
  (:auth-failure "AUTH_FAILURE")
  (:pending-proxy-capacity "PENDING_PROXY_CAPACITY")
  (:invalid-replication-state "INVALID_REPLICATION_STATE"))

(smithy/sdk/shapes:define-list target-list :member dbproxy-target)

(smithy/sdk/shapes:define-enum target-role
    common-lisp:nil
  (:read-write "READ_WRITE")
  (:read-only "READ_ONLY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum target-state
    common-lisp:nil
  (:registering "REGISTERING")
  (:available "AVAILABLE")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-type target-storage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:rds-instance "RDS_INSTANCE")
  (:rds-serverless-endpoint "RDS_SERVERLESS_ENDPOINT")
  (:tracked-cluster "TRACKED_CLUSTER"))

(smithy/sdk/shapes:define-structure tenant-database common-lisp:nil
                                    ((tenant-database-create-time :target-type
                                      tstamp :member-name
                                      "TenantDatabaseCreateTime")
                                     (dbinstance-identifier :target-type string
                                      :member-name "DBInstanceIdentifier")
                                     (tenant-dbname :target-type string
                                      :member-name "TenantDBName")
                                     (status :target-type string :member-name
                                      "Status")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (dbi-resource-id :target-type string
                                      :member-name "DbiResourceId")
                                     (tenant-database-resource-id :target-type
                                      string :member-name
                                      "TenantDatabaseResourceId")
                                     (tenant-database-arn :target-type string
                                      :member-name "TenantDatabaseARN")
                                     (character-set-name :target-type string
                                      :member-name "CharacterSetName")
                                     (nchar-character-set-name :target-type
                                      string :member-name
                                      "NcharCharacterSetName")
                                     (deletion-protection :target-type boolean
                                      :member-name "DeletionProtection")
                                     (pending-modified-values :target-type
                                      tenant-database-pending-modified-values
                                      :member-name "PendingModifiedValues")
                                     (master-user-secret :target-type
                                      master-user-secret :member-name
                                      "MasterUserSecret")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "TenantDatabase"))

(smithy/sdk/shapes:define-error tenant-database-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "TenantDatabaseAlreadyExistsFault")
                                (:error-name "TenantDatabaseAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error tenant-database-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TenantDatabaseNotFoundFault")
                                (:error-name "TenantDatabaseNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure tenant-database-pending-modified-values
                                    common-lisp:nil
                                    ((master-user-password :target-type
                                      sensitive-string :member-name
                                      "MasterUserPassword")
                                     (tenant-dbname :target-type string
                                      :member-name "TenantDBName"))
                                    (:shape-name
                                     "TenantDatabasePendingModifiedValues"))

(smithy/sdk/shapes:define-error tenant-database-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "TenantDatabaseQuotaExceededFault")
                                (:error-name "TenantDatabaseQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tenant-databases-list :member
                               (tenant-database :xml-name "TenantDatabase"))

(smithy/sdk/shapes:define-output tenant-databases-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (tenant-databases :target-type
                                   tenant-databases-list :member-name
                                   "TenantDatabases"))
                                 (:shape-name "TenantDatabasesMessage"))

(smithy/sdk/shapes:define-structure timezone common-lisp:nil
                                    ((timezone-name :target-type string
                                      :member-name "TimezoneName"))
                                    (:shape-name "Timezone"))

(smithy/sdk/shapes:define-error unsupported-dbengine-version-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedDBEngineVersionFault")
                                (:error-name "UnsupportedDBEngineVersion")
                                (:error-code 400))

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
                                     (supported-engine-modes :target-type
                                      engine-mode-list :member-name
                                      "SupportedEngineModes")
                                     (supports-parallel-query :target-type
                                      boolean-optional :member-name
                                      "SupportsParallelQuery")
                                     (supports-global-databases :target-type
                                      boolean-optional :member-name
                                      "SupportsGlobalDatabases")
                                     (supports-babelfish :target-type
                                      boolean-optional :member-name
                                      "SupportsBabelfish")
                                     (supports-limitless-database :target-type
                                      boolean-optional :member-name
                                      "SupportsLimitlessDatabase")
                                     (supports-local-write-forwarding
                                      :target-type boolean-optional
                                      :member-name
                                      "SupportsLocalWriteForwarding")
                                     (supports-integrations :target-type
                                      boolean-optional :member-name
                                      "SupportsIntegrations"))
                                    (:shape-name "UpgradeTarget"))

(smithy/sdk/shapes:define-structure user-auth-config common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (user-name :target-type string
                                      :member-name "UserName")
                                     (auth-scheme :target-type auth-scheme
                                      :member-name "AuthScheme")
                                     (secret-arn :target-type string
                                      :member-name "SecretArn")
                                     (iamauth :target-type iamauth-mode
                                      :member-name "IAMAuth")
                                     (client-password-auth-type :target-type
                                      client-password-auth-type :member-name
                                      "ClientPasswordAuthType"))
                                    (:shape-name "UserAuthConfig"))

(smithy/sdk/shapes:define-structure user-auth-config-info common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (user-name :target-type string
                                      :member-name "UserName")
                                     (auth-scheme :target-type auth-scheme
                                      :member-name "AuthScheme")
                                     (secret-arn :target-type string
                                      :member-name "SecretArn")
                                     (iamauth :target-type iamauth-mode
                                      :member-name "IAMAuth")
                                     (client-password-auth-type :target-type
                                      client-password-auth-type :member-name
                                      "ClientPasswordAuthType"))
                                    (:shape-name "UserAuthConfigInfo"))

(smithy/sdk/shapes:define-list user-auth-config-info-list :member
                               user-auth-config-info)

(smithy/sdk/shapes:define-list user-auth-config-list :member user-auth-config)

(smithy/sdk/shapes:define-structure valid-dbinstance-modifications-message
                                    common-lisp:nil
                                    ((storage :target-type
                                      valid-storage-options-list :member-name
                                      "Storage")
                                     (valid-processor-features :target-type
                                      available-processor-feature-list
                                      :member-name "ValidProcessorFeatures")
                                     (supports-dedicated-log-volume
                                      :target-type boolean :member-name
                                      "SupportsDedicatedLogVolume"))
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
                                      "IopsToStorageRatio")
                                     (supports-storage-autoscaling :target-type
                                      boolean :member-name
                                      "SupportsStorageAutoscaling")
                                     (provisioned-storage-throughput
                                      :target-type range-list :member-name
                                      "ProvisionedStorageThroughput")
                                     (storage-throughput-to-iops-ratio
                                      :target-type double-range-list
                                      :member-name
                                      "StorageThroughputToIopsRatio"))
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

(smithy/sdk/shapes:define-enum write-forwarding-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:enabling "enabling")
  (:disabling "disabling")
  (:unknown "unknown"))

(smithy/sdk/operation:define-operation add-role-to-dbcluster :shape-name
                                       "AddRoleToDBCluster" :input
                                       add-role-to-dbcluster-message :output
                                       common-lisp:null :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-role-already-exists-fault
                                        dbcluster-role-quota-exceeded-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation add-role-to-dbinstance :shape-name
                                       "AddRoleToDBInstance" :input
                                       add-role-to-dbinstance-message :output
                                       common-lisp:null :errors
                                       (dbinstance-not-found-fault
                                        dbinstance-role-already-exists-fault
                                        dbinstance-role-quota-exceeded-fault
                                        invalid-dbinstance-state-fault))

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
                                       (blue-green-deployment-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        dbsnapshot-not-found-fault
                                        dbsnapshot-tenant-database-not-found-fault
                                        integration-not-found-fault
                                        tenant-database-not-found-fault))

(smithy/sdk/operation:define-operation apply-pending-maintenance-action
                                       :shape-name
                                       "ApplyPendingMaintenanceAction" :input
                                       apply-pending-maintenance-action-message
                                       :output
                                       apply-pending-maintenance-action-result
                                       :errors
                                       (invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation authorize-dbsecurity-group-ingress
                                       :shape-name
                                       "AuthorizeDBSecurityGroupIngress" :input
                                       authorize-dbsecurity-group-ingress-message
                                       :output
                                       authorize-dbsecurity-group-ingress-result
                                       :errors
                                       (authorization-already-exists-fault
                                        authorization-quota-exceeded-fault
                                        dbsecurity-group-not-found-fault
                                        invalid-dbsecurity-group-state-fault))

(smithy/sdk/operation:define-operation backtrack-dbcluster :shape-name
                                       "BacktrackDBCluster" :input
                                       backtrack-dbcluster-message :output
                                       dbcluster-backtrack :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation cancel-export-task :shape-name
                                       "CancelExportTask" :input
                                       cancel-export-task-message :output
                                       export-task :errors
                                       (export-task-not-found-fault
                                        invalid-export-task-state-fault))

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

(smithy/sdk/operation:define-operation copy-dbsnapshot :shape-name
                                       "CopyDBSnapshot" :input
                                       copy-dbsnapshot-message :output
                                       copy-dbsnapshot-result :errors
                                       (custom-availability-zone-not-found-fault
                                        dbsnapshot-already-exists-fault
                                        dbsnapshot-not-found-fault
                                        invalid-dbsnapshot-state-fault
                                        kmskey-not-accessible-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation copy-option-group :shape-name
                                       "CopyOptionGroup" :input
                                       copy-option-group-message :output
                                       copy-option-group-result :errors
                                       (option-group-already-exists-fault
                                        option-group-not-found-fault
                                        option-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-blue-green-deployment :shape-name
                                       "CreateBlueGreenDeployment" :input
                                       create-blue-green-deployment-request
                                       :output
                                       create-blue-green-deployment-response
                                       :errors
                                       (blue-green-deployment-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbinstance-not-found-fault
                                        dbparameter-group-not-found-fault
                                        instance-quota-exceeded-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        source-cluster-not-supported-fault
                                        source-database-not-supported-fault))

(smithy/sdk/operation:define-operation create-custom-dbengine-version
                                       :shape-name
                                       "CreateCustomDBEngineVersion" :input
                                       create-custom-dbengine-version-message
                                       :output dbengine-version :errors
                                       (create-custom-dbengine-version-fault
                                        custom-dbengine-version-already-exists-fault
                                        custom-dbengine-version-quota-exceeded-fault
                                        ec2image-properties-not-supported-fault
                                        kmskey-not-accessible-fault))

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
                                        domain-not-found-fault
                                        global-cluster-not-found-fault
                                        insufficient-dbinstance-capacity-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsubnet-group-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-global-cluster-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        option-group-not-found-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbcluster-endpoint :shape-name
                                       "CreateDBClusterEndpoint" :input
                                       create-dbcluster-endpoint-message
                                       :output dbcluster-endpoint :errors
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
                                        backup-policy-not-found-fault
                                        certificate-not-found-fault
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
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbinstance-read-replica
                                       :shape-name
                                       "CreateDBInstanceReadReplica" :input
                                       create-dbinstance-read-replica-message
                                       :output
                                       create-dbinstance-read-replica-result
                                       :errors
                                       (certificate-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbinstance-not-found-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-allowed-fault
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        instance-quota-exceeded-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsubnet-group-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbparameter-group :shape-name
                                       "CreateDBParameterGroup" :input
                                       create-dbparameter-group-message :output
                                       create-dbparameter-group-result :errors
                                       (dbparameter-group-already-exists-fault
                                        dbparameter-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbproxy :shape-name
                                       "CreateDBProxy" :input
                                       create-dbproxy-request :output
                                       create-dbproxy-response :errors
                                       (dbproxy-already-exists-fault
                                        dbproxy-quota-exceeded-fault
                                        invalid-subnet))

(smithy/sdk/operation:define-operation create-dbproxy-endpoint :shape-name
                                       "CreateDBProxyEndpoint" :input
                                       create-dbproxy-endpoint-request :output
                                       create-dbproxy-endpoint-response :errors
                                       (dbproxy-endpoint-already-exists-fault
                                        dbproxy-endpoint-quota-exceeded-fault
                                        dbproxy-not-found-fault
                                        invalid-dbproxy-state-fault
                                        invalid-subnet))

(smithy/sdk/operation:define-operation create-dbsecurity-group :shape-name
                                       "CreateDBSecurityGroup" :input
                                       create-dbsecurity-group-message :output
                                       create-dbsecurity-group-result :errors
                                       (dbsecurity-group-already-exists-fault
                                        dbsecurity-group-not-supported-fault
                                        dbsecurity-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-dbshard-group :shape-name
                                       "CreateDBShardGroup" :input
                                       create-dbshard-group-message :output
                                       dbshard-group :errors
                                       (dbcluster-not-found-fault
                                        dbshard-group-already-exists-fault
                                        invalid-dbcluster-state-fault
                                        invalid-vpcnetwork-state-fault
                                        max-dbshard-group-limit-reached
                                        network-type-not-supported
                                        unsupported-dbengine-version-fault))

(smithy/sdk/operation:define-operation create-dbsnapshot :shape-name
                                       "CreateDBSnapshot" :input
                                       create-dbsnapshot-message :output
                                       create-dbsnapshot-result :errors
                                       (dbinstance-not-found-fault
                                        dbsnapshot-already-exists-fault
                                        invalid-dbinstance-state-fault
                                        snapshot-quota-exceeded-fault))

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

(smithy/sdk/operation:define-operation create-integration :shape-name
                                       "CreateIntegration" :input
                                       create-integration-message :output
                                       integration :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        integration-already-exists-fault
                                        integration-conflict-operation-fault
                                        integration-quota-exceeded-fault
                                        kmskey-not-accessible-fault))

(smithy/sdk/operation:define-operation create-option-group :shape-name
                                       "CreateOptionGroup" :input
                                       create-option-group-message :output
                                       create-option-group-result :errors
                                       (option-group-already-exists-fault
                                        option-group-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-tenant-database :shape-name
                                       "CreateTenantDatabase" :input
                                       create-tenant-database-message :output
                                       create-tenant-database-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault
                                        kmskey-not-accessible-fault
                                        tenant-database-already-exists-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-blue-green-deployment :shape-name
                                       "DeleteBlueGreenDeployment" :input
                                       delete-blue-green-deployment-request
                                       :output
                                       delete-blue-green-deployment-response
                                       :errors
                                       (blue-green-deployment-not-found-fault
                                        invalid-blue-green-deployment-state-fault))

(smithy/sdk/operation:define-operation delete-custom-dbengine-version
                                       :shape-name
                                       "DeleteCustomDBEngineVersion" :input
                                       delete-custom-dbengine-version-message
                                       :output dbengine-version :errors
                                       (custom-dbengine-version-not-found-fault
                                        invalid-custom-dbengine-version-state-fault))

(smithy/sdk/operation:define-operation delete-dbcluster :shape-name
                                       "DeleteDBCluster" :input
                                       delete-dbcluster-message :output
                                       delete-dbcluster-result :errors
                                       (dbcluster-automated-backup-quota-exceeded-fault
                                        dbcluster-not-found-fault
                                        dbcluster-snapshot-already-exists-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-dbcluster-automated-backup
                                       :shape-name
                                       "DeleteDBClusterAutomatedBackup" :input
                                       delete-dbcluster-automated-backup-message
                                       :output
                                       delete-dbcluster-automated-backup-result
                                       :errors
                                       (dbcluster-automated-backup-not-found-fault
                                        invalid-dbcluster-automated-backup-state-fault))

(smithy/sdk/operation:define-operation delete-dbcluster-endpoint :shape-name
                                       "DeleteDBClusterEndpoint" :input
                                       delete-dbcluster-endpoint-message
                                       :output dbcluster-endpoint :errors
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
                                       (dbinstance-automated-backup-quota-exceeded-fault
                                        dbinstance-not-found-fault
                                        dbsnapshot-already-exists-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-dbinstance-automated-backup
                                       :shape-name
                                       "DeleteDBInstanceAutomatedBackup" :input
                                       delete-dbinstance-automated-backup-message
                                       :output
                                       delete-dbinstance-automated-backup-result
                                       :errors
                                       (dbinstance-automated-backup-not-found-fault
                                        invalid-dbinstance-automated-backup-state-fault))

(smithy/sdk/operation:define-operation delete-dbparameter-group :shape-name
                                       "DeleteDBParameterGroup" :input
                                       delete-dbparameter-group-message :output
                                       common-lisp:null :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation delete-dbproxy :shape-name
                                       "DeleteDBProxy" :input
                                       delete-dbproxy-request :output
                                       delete-dbproxy-response :errors
                                       (dbproxy-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation delete-dbproxy-endpoint :shape-name
                                       "DeleteDBProxyEndpoint" :input
                                       delete-dbproxy-endpoint-request :output
                                       delete-dbproxy-endpoint-response :errors
                                       (dbproxy-endpoint-not-found-fault
                                        invalid-dbproxy-endpoint-state-fault))

(smithy/sdk/operation:define-operation delete-dbsecurity-group :shape-name
                                       "DeleteDBSecurityGroup" :input
                                       delete-dbsecurity-group-message :output
                                       common-lisp:null :errors
                                       (dbsecurity-group-not-found-fault
                                        invalid-dbsecurity-group-state-fault))

(smithy/sdk/operation:define-operation delete-dbshard-group :shape-name
                                       "DeleteDBShardGroup" :input
                                       delete-dbshard-group-message :output
                                       dbshard-group :errors
                                       (dbshard-group-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbshard-group-state-fault))

(smithy/sdk/operation:define-operation delete-dbsnapshot :shape-name
                                       "DeleteDBSnapshot" :input
                                       delete-dbsnapshot-message :output
                                       delete-dbsnapshot-result :errors
                                       (dbsnapshot-not-found-fault
                                        invalid-dbsnapshot-state-fault))

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

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-message :output
                                       integration :errors
                                       (integration-conflict-operation-fault
                                        integration-not-found-fault
                                        invalid-integration-state-fault))

(smithy/sdk/operation:define-operation delete-option-group :shape-name
                                       "DeleteOptionGroup" :input
                                       delete-option-group-message :output
                                       common-lisp:null :errors
                                       (invalid-option-group-state-fault
                                        option-group-not-found-fault))

(smithy/sdk/operation:define-operation delete-tenant-database :shape-name
                                       "DeleteTenantDatabase" :input
                                       delete-tenant-database-message :output
                                       delete-tenant-database-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault
                                        tenant-database-not-found-fault))

(smithy/sdk/operation:define-operation deregister-dbproxy-targets :shape-name
                                       "DeregisterDBProxyTargets" :input
                                       deregister-dbproxy-targets-request
                                       :output
                                       deregister-dbproxy-targets-response
                                       :errors
                                       (dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        dbproxy-target-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       describe-account-attributes-message
                                       :output account-attributes-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-blue-green-deployments
                                       :shape-name
                                       "DescribeBlueGreenDeployments" :input
                                       describe-blue-green-deployments-request
                                       :output
                                       describe-blue-green-deployments-response
                                       :errors
                                       (blue-green-deployment-not-found-fault))

(smithy/sdk/operation:define-operation describe-certificates :shape-name
                                       "DescribeCertificates" :input
                                       describe-certificates-message :output
                                       certificate-message :errors
                                       (certificate-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-automated-backups
                                       :shape-name
                                       "DescribeDBClusterAutomatedBackups"
                                       :input
                                       describe-dbcluster-automated-backups-message
                                       :output
                                       dbcluster-automated-backup-message
                                       :errors
                                       (dbcluster-automated-backup-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbcluster-backtracks
                                       :shape-name
                                       "DescribeDBClusterBacktracks" :input
                                       describe-dbcluster-backtracks-message
                                       :output dbcluster-backtrack-message
                                       :errors
                                       (dbcluster-backtrack-not-found-fault
                                        dbcluster-not-found-fault))

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

(smithy/sdk/operation:define-operation describe-dbinstance-automated-backups
                                       :shape-name
                                       "DescribeDBInstanceAutomatedBackups"
                                       :input
                                       describe-dbinstance-automated-backups-message
                                       :output
                                       dbinstance-automated-backup-message
                                       :errors
                                       (dbinstance-automated-backup-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbinstances :shape-name
                                       "DescribeDBInstances" :input
                                       describe-dbinstances-message :output
                                       dbinstance-message :errors
                                       (dbinstance-not-found-fault))

(smithy/sdk/operation:define-operation describe-dblog-files :shape-name
                                       "DescribeDBLogFiles" :input
                                       describe-dblog-files-message :output
                                       describe-dblog-files-response :errors
                                       (dbinstance-not-found-fault
                                        dbinstance-not-ready-fault))

(smithy/sdk/operation:define-operation describe-dbmajor-engine-versions
                                       :shape-name
                                       "DescribeDBMajorEngineVersions" :input
                                       describe-dbmajor-engine-versions-request
                                       :output
                                       describe-dbmajor-engine-versions-response
                                       :errors common-lisp:nil)

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

(smithy/sdk/operation:define-operation describe-dbproxies :shape-name
                                       "DescribeDBProxies" :input
                                       describe-dbproxies-request :output
                                       describe-dbproxies-response :errors
                                       (dbproxy-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbproxy-endpoints :shape-name
                                       "DescribeDBProxyEndpoints" :input
                                       describe-dbproxy-endpoints-request
                                       :output
                                       describe-dbproxy-endpoints-response
                                       :errors
                                       (dbproxy-endpoint-not-found-fault
                                        dbproxy-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbproxy-target-groups
                                       :shape-name
                                       "DescribeDBProxyTargetGroups" :input
                                       describe-dbproxy-target-groups-request
                                       :output
                                       describe-dbproxy-target-groups-response
                                       :errors
                                       (dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation describe-dbproxy-targets :shape-name
                                       "DescribeDBProxyTargets" :input
                                       describe-dbproxy-targets-request :output
                                       describe-dbproxy-targets-response
                                       :errors
                                       (dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        dbproxy-target-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation describe-dbrecommendations :shape-name
                                       "DescribeDBRecommendations" :input
                                       describe-dbrecommendations-message
                                       :output dbrecommendations-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-dbsecurity-groups :shape-name
                                       "DescribeDBSecurityGroups" :input
                                       describe-dbsecurity-groups-message
                                       :output dbsecurity-group-message :errors
                                       (dbsecurity-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbshard-groups :shape-name
                                       "DescribeDBShardGroups" :input
                                       describe-dbshard-groups-message :output
                                       describe-dbshard-groups-response :errors
                                       (dbcluster-not-found-fault
                                        dbshard-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbsnapshot-attributes
                                       :shape-name
                                       "DescribeDBSnapshotAttributes" :input
                                       describe-dbsnapshot-attributes-message
                                       :output
                                       describe-dbsnapshot-attributes-result
                                       :errors (dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbsnapshot-tenant-databases
                                       :shape-name
                                       "DescribeDBSnapshotTenantDatabases"
                                       :input
                                       describe-dbsnapshot-tenant-databases-message
                                       :output
                                       dbsnapshot-tenant-databases-message
                                       :errors (dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation describe-dbsnapshots :shape-name
                                       "DescribeDBSnapshots" :input
                                       describe-dbsnapshots-message :output
                                       dbsnapshot-message :errors
                                       (dbsnapshot-not-found-fault))

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

(smithy/sdk/operation:define-operation describe-export-tasks :shape-name
                                       "DescribeExportTasks" :input
                                       describe-export-tasks-message :output
                                       export-tasks-message :errors
                                       (export-task-not-found-fault))

(smithy/sdk/operation:define-operation describe-global-clusters :shape-name
                                       "DescribeGlobalClusters" :input
                                       describe-global-clusters-message :output
                                       global-clusters-message :errors
                                       (global-cluster-not-found-fault))

(smithy/sdk/operation:define-operation describe-integrations :shape-name
                                       "DescribeIntegrations" :input
                                       describe-integrations-message :output
                                       describe-integrations-response :errors
                                       (integration-not-found-fault))

(smithy/sdk/operation:define-operation describe-option-group-options
                                       :shape-name "DescribeOptionGroupOptions"
                                       :input
                                       describe-option-group-options-message
                                       :output option-group-options-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-option-groups :shape-name
                                       "DescribeOptionGroups" :input
                                       describe-option-groups-message :output
                                       option-groups :errors
                                       (option-group-not-found-fault))

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

(smithy/sdk/operation:define-operation describe-reserved-dbinstances
                                       :shape-name
                                       "DescribeReservedDBInstances" :input
                                       describe-reserved-dbinstances-message
                                       :output reserved-dbinstance-message
                                       :errors
                                       (reserved-dbinstance-not-found-fault))

(smithy/sdk/operation:define-operation describe-reserved-dbinstances-offerings
                                       :shape-name
                                       "DescribeReservedDBInstancesOfferings"
                                       :input
                                       describe-reserved-dbinstances-offerings-message
                                       :output
                                       reserved-dbinstances-offering-message
                                       :errors
                                       (reserved-dbinstances-offering-not-found-fault))

(smithy/sdk/operation:define-operation describe-source-regions :shape-name
                                       "DescribeSourceRegions" :input
                                       describe-source-regions-message :output
                                       source-region-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-tenant-databases :shape-name
                                       "DescribeTenantDatabases" :input
                                       describe-tenant-databases-message
                                       :output tenant-databases-message :errors
                                       (dbinstance-not-found-fault))

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

(smithy/sdk/operation:define-operation disable-http-endpoint :shape-name
                                       "DisableHttpEndpoint" :input
                                       disable-http-endpoint-request :output
                                       disable-http-endpoint-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation download-dblog-file-portion :shape-name
                                       "DownloadDBLogFilePortion" :input
                                       download-dblog-file-portion-message
                                       :output
                                       download-dblog-file-portion-details
                                       :errors
                                       (dbinstance-not-found-fault
                                        dbinstance-not-ready-fault
                                        dblog-file-not-found-fault))

(smithy/sdk/operation:define-operation enable-http-endpoint :shape-name
                                       "EnableHttpEndpoint" :input
                                       enable-http-endpoint-request :output
                                       enable-http-endpoint-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

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
                                       (blue-green-deployment-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        dbsnapshot-not-found-fault
                                        dbsnapshot-tenant-database-not-found-fault
                                        integration-not-found-fault
                                        tenant-database-not-found-fault))

(smithy/sdk/operation:define-operation modify-activity-stream :shape-name
                                       "ModifyActivityStream" :input
                                       modify-activity-stream-request :output
                                       modify-activity-stream-response :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-certificates :shape-name
                                       "ModifyCertificates" :input
                                       modify-certificates-message :output
                                       modify-certificates-result :errors
                                       (certificate-not-found-fault))

(smithy/sdk/operation:define-operation modify-current-dbcluster-capacity
                                       :shape-name
                                       "ModifyCurrentDBClusterCapacity" :input
                                       modify-current-dbcluster-capacity-message
                                       :output dbcluster-capacity-info :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-capacity-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation modify-custom-dbengine-version
                                       :shape-name
                                       "ModifyCustomDBEngineVersion" :input
                                       modify-custom-dbengine-version-message
                                       :output dbengine-version :errors
                                       (custom-dbengine-version-not-found-fault
                                        invalid-custom-dbengine-version-state-fault))

(smithy/sdk/operation:define-operation modify-dbcluster :shape-name
                                       "ModifyDBCluster" :input
                                       modify-dbcluster-message :output
                                       modify-dbcluster-result :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsecurity-group-state-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        option-group-not-found-fault
                                        storage-quota-exceeded-fault
                                        storage-type-not-available-fault))

(smithy/sdk/operation:define-operation modify-dbcluster-endpoint :shape-name
                                       "ModifyDBClusterEndpoint" :input
                                       modify-dbcluster-endpoint-message
                                       :output dbcluster-endpoint :errors
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
                                        backup-policy-not-found-fault
                                        certificate-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbinstance-not-found-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbupgrade-dependency-failure-fault
                                        domain-not-found-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbsecurity-group-state-fault
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation modify-dbparameter-group :shape-name
                                       "ModifyDBParameterGroup" :input
                                       modify-dbparameter-group-message :output
                                       dbparameter-group-name-message :errors
                                       (dbparameter-group-not-found-fault
                                        invalid-dbparameter-group-state-fault))

(smithy/sdk/operation:define-operation modify-dbproxy :shape-name
                                       "ModifyDBProxy" :input
                                       modify-dbproxy-request :output
                                       modify-dbproxy-response :errors
                                       (dbproxy-already-exists-fault
                                        dbproxy-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation modify-dbproxy-endpoint :shape-name
                                       "ModifyDBProxyEndpoint" :input
                                       modify-dbproxy-endpoint-request :output
                                       modify-dbproxy-endpoint-response :errors
                                       (dbproxy-endpoint-already-exists-fault
                                        dbproxy-endpoint-not-found-fault
                                        invalid-dbproxy-endpoint-state-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation modify-dbproxy-target-group :shape-name
                                       "ModifyDBProxyTargetGroup" :input
                                       modify-dbproxy-target-group-request
                                       :output
                                       modify-dbproxy-target-group-response
                                       :errors
                                       (dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        invalid-dbproxy-state-fault))

(smithy/sdk/operation:define-operation modify-dbrecommendation :shape-name
                                       "ModifyDBRecommendation" :input
                                       modify-dbrecommendation-message :output
                                       dbrecommendation-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation modify-dbshard-group :shape-name
                                       "ModifyDBShardGroup" :input
                                       modify-dbshard-group-message :output
                                       dbshard-group :errors
                                       (dbshard-group-already-exists-fault
                                        dbshard-group-not-found-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation modify-dbsnapshot :shape-name
                                       "ModifyDBSnapshot" :input
                                       modify-dbsnapshot-message :output
                                       modify-dbsnapshot-result :errors
                                       (dbsnapshot-not-found-fault))

(smithy/sdk/operation:define-operation modify-dbsnapshot-attribute :shape-name
                                       "ModifyDBSnapshotAttribute" :input
                                       modify-dbsnapshot-attribute-message
                                       :output
                                       modify-dbsnapshot-attribute-result
                                       :errors
                                       (dbsnapshot-not-found-fault
                                        invalid-dbsnapshot-state-fault
                                        shared-snapshot-quota-exceeded-fault))

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
                                       (global-cluster-already-exists-fault
                                        global-cluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation modify-integration :shape-name
                                       "ModifyIntegration" :input
                                       modify-integration-message :output
                                       integration :errors
                                       (integration-conflict-operation-fault
                                        integration-not-found-fault
                                        invalid-integration-state-fault))

(smithy/sdk/operation:define-operation modify-option-group :shape-name
                                       "ModifyOptionGroup" :input
                                       modify-option-group-message :output
                                       modify-option-group-result :errors
                                       (invalid-option-group-state-fault
                                        option-group-not-found-fault))

(smithy/sdk/operation:define-operation modify-tenant-database :shape-name
                                       "ModifyTenantDatabase" :input
                                       modify-tenant-database-message :output
                                       modify-tenant-database-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault
                                        kmskey-not-accessible-fault
                                        tenant-database-already-exists-fault
                                        tenant-database-not-found-fault))

(smithy/sdk/operation:define-operation promote-read-replica :shape-name
                                       "PromoteReadReplica" :input
                                       promote-read-replica-message :output
                                       promote-read-replica-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation promote-read-replica-dbcluster
                                       :shape-name
                                       "PromoteReadReplicaDBCluster" :input
                                       promote-read-replica-dbcluster-message
                                       :output
                                       promote-read-replica-dbcluster-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault))

(smithy/sdk/operation:define-operation purchase-reserved-dbinstances-offering
                                       :shape-name
                                       "PurchaseReservedDBInstancesOffering"
                                       :input
                                       purchase-reserved-dbinstances-offering-message
                                       :output
                                       purchase-reserved-dbinstances-offering-result
                                       :errors
                                       (reserved-dbinstance-already-exists-fault
                                        reserved-dbinstance-quota-exceeded-fault
                                        reserved-dbinstances-offering-not-found-fault))

(smithy/sdk/operation:define-operation reboot-dbcluster :shape-name
                                       "RebootDBCluster" :input
                                       reboot-dbcluster-message :output
                                       reboot-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation reboot-dbinstance :shape-name
                                       "RebootDBInstance" :input
                                       reboot-dbinstance-message :output
                                       reboot-dbinstance-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation reboot-dbshard-group :shape-name
                                       "RebootDBShardGroup" :input
                                       reboot-dbshard-group-message :output
                                       dbshard-group :errors
                                       (dbshard-group-not-found-fault
                                        invalid-dbshard-group-state-fault))

(smithy/sdk/operation:define-operation register-dbproxy-targets :shape-name
                                       "RegisterDBProxyTargets" :input
                                       register-dbproxy-targets-request :output
                                       register-dbproxy-targets-response
                                       :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbproxy-not-found-fault
                                        dbproxy-target-already-registered-fault
                                        dbproxy-target-group-not-found-fault
                                        insufficient-available-ips-in-subnet-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbproxy-state-fault))

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

(smithy/sdk/operation:define-operation remove-role-from-dbinstance :shape-name
                                       "RemoveRoleFromDBInstance" :input
                                       remove-role-from-dbinstance-message
                                       :output common-lisp:null :errors
                                       (dbinstance-not-found-fault
                                        dbinstance-role-not-found-fault
                                        invalid-dbinstance-state-fault))

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
                                       (blue-green-deployment-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbproxy-not-found-fault
                                        dbproxy-target-group-not-found-fault
                                        dbsnapshot-not-found-fault
                                        dbsnapshot-tenant-database-not-found-fault
                                        integration-not-found-fault
                                        tenant-database-not-found-fault))

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

(smithy/sdk/operation:define-operation restore-dbcluster-from-s3 :shape-name
                                       "RestoreDBClusterFromS3" :input
                                       restore-dbcluster-from-s3message :output
                                       restore-dbcluster-from-s3result :errors
                                       (dbcluster-already-exists-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbsubnet-group-state-fault
                                        invalid-s3bucket-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault))

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
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        insufficient-dbcluster-capacity-fault
                                        insufficient-dbinstance-capacity-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbinstance-state-fault
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
                                        dbcluster-automated-backup-not-found-fault
                                        dbcluster-not-found-fault
                                        dbcluster-parameter-group-not-found-fault
                                        dbcluster-quota-exceeded-fault
                                        dbcluster-snapshot-not-found-fault
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        insufficient-dbcluster-capacity-fault
                                        insufficient-dbinstance-capacity-fault
                                        insufficient-storage-cluster-capacity-fault
                                        invalid-dbcluster-snapshot-state-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbsnapshot-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        option-group-not-found-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation restore-dbinstance-from-dbsnapshot
                                       :shape-name
                                       "RestoreDBInstanceFromDBSnapshot" :input
                                       restore-dbinstance-from-dbsnapshot-message
                                       :output
                                       restore-dbinstance-from-dbsnapshot-result
                                       :errors
                                       (authorization-not-found-fault
                                        backup-policy-not-found-fault
                                        certificate-not-found-fault
                                        dbcluster-snapshot-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbsnapshot-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        instance-quota-exceeded-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbsnapshot-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation restore-dbinstance-from-s3 :shape-name
                                       "RestoreDBInstanceFromS3" :input
                                       restore-dbinstance-from-s3message
                                       :output restore-dbinstance-from-s3result
                                       :errors
                                       (authorization-not-found-fault
                                        backup-policy-not-found-fault
                                        certificate-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        instance-quota-exceeded-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-s3bucket-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault))

(smithy/sdk/operation:define-operation restore-dbinstance-to-point-in-time
                                       :shape-name
                                       "RestoreDBInstanceToPointInTime" :input
                                       restore-dbinstance-to-point-in-time-message
                                       :output
                                       restore-dbinstance-to-point-in-time-result
                                       :errors
                                       (authorization-not-found-fault
                                        backup-policy-not-found-fault
                                        certificate-not-found-fault
                                        dbinstance-already-exists-fault
                                        dbinstance-automated-backup-not-found-fault
                                        dbinstance-not-found-fault
                                        dbparameter-group-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        domain-not-found-fault
                                        instance-quota-exceeded-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbinstance-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault
                                        network-type-not-supported
                                        option-group-not-found-fault
                                        point-in-time-restore-not-enabled-fault
                                        provisioned-iops-not-available-in-azfault
                                        storage-quota-exceeded-fault
                                        storage-type-not-supported-fault
                                        tenant-database-quota-exceeded-fault))

(smithy/sdk/operation:define-operation revoke-dbsecurity-group-ingress
                                       :shape-name
                                       "RevokeDBSecurityGroupIngress" :input
                                       revoke-dbsecurity-group-ingress-message
                                       :output
                                       revoke-dbsecurity-group-ingress-result
                                       :errors
                                       (authorization-not-found-fault
                                        dbsecurity-group-not-found-fault
                                        invalid-dbsecurity-group-state-fault))

(smithy/sdk/operation:define-operation start-activity-stream :shape-name
                                       "StartActivityStream" :input
                                       start-activity-stream-request :output
                                       start-activity-stream-response :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        kmskey-not-accessible-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-dbcluster :shape-name
                                       "StartDBCluster" :input
                                       start-dbcluster-message :output
                                       start-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbshard-group-state-fault))

(smithy/sdk/operation:define-operation start-dbinstance :shape-name
                                       "StartDBInstance" :input
                                       start-dbinstance-message :output
                                       start-dbinstance-result :errors
                                       (authorization-not-found-fault
                                        dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        dbsubnet-group-does-not-cover-enough-azs
                                        dbsubnet-group-not-found-fault
                                        insufficient-dbinstance-capacity-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-subnet
                                        invalid-vpcnetwork-state-fault
                                        kmskey-not-accessible-fault))

(smithy/sdk/operation:define-operation
 start-dbinstance-automated-backups-replication :shape-name
 "StartDBInstanceAutomatedBackupsReplication" :input
 start-dbinstance-automated-backups-replication-message :output
 start-dbinstance-automated-backups-replication-result :errors
 (dbinstance-automated-backup-quota-exceeded-fault dbinstance-not-found-fault
  invalid-dbinstance-state-fault kmskey-not-accessible-fault
  storage-type-not-supported-fault))

(smithy/sdk/operation:define-operation start-export-task :shape-name
                                       "StartExportTask" :input
                                       start-export-task-message :output
                                       export-task :errors
                                       (dbcluster-not-found-fault
                                        dbcluster-snapshot-not-found-fault
                                        dbsnapshot-not-found-fault
                                        export-task-already-exists-fault
                                        iam-role-missing-permissions-fault
                                        iam-role-not-found-fault
                                        invalid-export-only-fault
                                        invalid-export-source-state-fault
                                        invalid-s3bucket-fault
                                        kmskey-not-accessible-fault))

(smithy/sdk/operation:define-operation stop-activity-stream :shape-name
                                       "StopActivityStream" :input
                                       stop-activity-stream-request :output
                                       stop-activity-stream-response :errors
                                       (dbcluster-not-found-fault
                                        dbinstance-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation stop-dbcluster :shape-name
                                       "StopDBCluster" :input
                                       stop-dbcluster-message :output
                                       stop-dbcluster-result :errors
                                       (dbcluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        invalid-dbshard-group-state-fault))

(smithy/sdk/operation:define-operation stop-dbinstance :shape-name
                                       "StopDBInstance" :input
                                       stop-dbinstance-message :output
                                       stop-dbinstance-result :errors
                                       (dbinstance-not-found-fault
                                        dbsnapshot-already-exists-fault
                                        invalid-dbcluster-state-fault
                                        invalid-dbinstance-state-fault
                                        snapshot-quota-exceeded-fault))

(smithy/sdk/operation:define-operation
 stop-dbinstance-automated-backups-replication :shape-name
 "StopDBInstanceAutomatedBackupsReplication" :input
 stop-dbinstance-automated-backups-replication-message :output
 stop-dbinstance-automated-backups-replication-result :errors
 (dbinstance-not-found-fault invalid-dbinstance-state-fault))

(smithy/sdk/operation:define-operation switchover-blue-green-deployment
                                       :shape-name
                                       "SwitchoverBlueGreenDeployment" :input
                                       switchover-blue-green-deployment-request
                                       :output
                                       switchover-blue-green-deployment-response
                                       :errors
                                       (blue-green-deployment-not-found-fault
                                        invalid-blue-green-deployment-state-fault))

(smithy/sdk/operation:define-operation switchover-global-cluster :shape-name
                                       "SwitchoverGlobalCluster" :input
                                       switchover-global-cluster-message
                                       :output switchover-global-cluster-result
                                       :errors
                                       (dbcluster-not-found-fault
                                        global-cluster-not-found-fault
                                        invalid-dbcluster-state-fault
                                        invalid-global-cluster-state-fault))

(smithy/sdk/operation:define-operation switchover-read-replica :shape-name
                                       "SwitchoverReadReplica" :input
                                       switchover-read-replica-message :output
                                       switchover-read-replica-result :errors
                                       (dbinstance-not-found-fault
                                        invalid-dbinstance-state-fault))
