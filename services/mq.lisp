(uiop/package:define-package #:pira/mq (:use)
                             (:export #:action-required
                              #:authentication-strategy #:availability-zone
                              #:broker-engine-type #:broker-instance
                              #:broker-instance-option #:broker-state
                              #:broker-storage-type #:broker-summary
                              #:change-type #:configuration #:configuration-id
                              #:configuration-revision #:configurations
                              #:create-broker #:create-configuration
                              #:create-tags #:create-user
                              #:data-replication-counterpart
                              #:data-replication-metadata-output
                              #:data-replication-mode #:day-of-week
                              #:delete-broker #:delete-configuration
                              #:delete-tags #:delete-user #:deployment-mode
                              #:describe-broker #:describe-broker-engine-types
                              #:describe-broker-instance-options
                              #:describe-configuration
                              #:describe-configuration-revision #:describe-user
                              #:encryption-options #:engine-type
                              #:engine-version #:ldap-server-metadata-input
                              #:ldap-server-metadata-output #:list-brokers
                              #:list-configuration-revisions
                              #:list-configurations #:list-tags #:list-users
                              #:logs #:logs-summary #:max-results
                              #:pending-logs #:promote #:promote-mode
                              #:reboot-broker #:sanitization-warning
                              #:sanitization-warning-reason #:update-broker
                              #:update-configuration #:update-user #:user
                              #:user-pending-changes #:user-summary
                              #:weekly-start-time #:boolean #:integer
                              #:integer-min5max100 #:list-of-action-required
                              #:list-of-availability-zone
                              #:list-of-broker-engine-type
                              #:list-of-broker-instance
                              #:list-of-broker-instance-option
                              #:list-of-broker-summary #:list-of-configuration
                              #:list-of-configuration-id
                              #:list-of-configuration-revision
                              #:list-of-deployment-mode
                              #:list-of-engine-version
                              #:list-of-sanitization-warning #:list-of-user
                              #:list-of-user-summary #:list-of-string
                              #:map-of-string #:string #:timestamp-iso8601
                              #:mq))
(common-lisp:in-package #:pira/mq)

(smithy/sdk/service:define-service mq :shape-name "mq" :version "2017-11-27"
                                   :title "AmazonMQ" :operations
                                   '(create-broker create-configuration
                                     create-tags create-user delete-broker
                                     delete-configuration delete-tags
                                     delete-user describe-broker
                                     describe-broker-engine-types
                                     describe-broker-instance-options
                                     describe-configuration
                                     describe-configuration-revision
                                     describe-user list-brokers
                                     list-configuration-revisions
                                     list-configurations list-tags list-users
                                     promote reboot-broker update-broker
                                     update-configuration update-user)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "mq")
                                      ("arnNamespace" . "mq")
                                      ("cloudFormationName" . "AmazonMQ")
                                      ("cloudTrailEventSource"
                                       . "mq.amazonaws.com")
                                      ("endpointPrefix" . "mq"))
                                     ("aws.auth#sigv4" ("name" . "mq"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure action-required common-lisp:nil
                                    ((action-required-code :target-type string
                                      :member-name "ActionRequiredCode"
                                      :json-name "actionRequiredCode")
                                     (action-required-info :target-type string
                                      :member-name "ActionRequiredInfo"
                                      :json-name "actionRequiredInfo"))
                                    (:shape-name "ActionRequired"))

(smithy/sdk/shapes:define-enum authentication-strategy
    common-lisp:nil
  (:simple "SIMPLE")
  (:ldap "LDAP"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure broker-engine-type common-lisp:nil
                                    ((engine-type :target-type engine-type
                                      :member-name "EngineType" :json-name
                                      "engineType")
                                     (engine-versions :target-type
                                      list-of-engine-version :member-name
                                      "EngineVersions" :json-name
                                      "engineVersions"))
                                    (:shape-name "BrokerEngineType"))

(smithy/sdk/shapes:define-structure broker-instance common-lisp:nil
                                    ((console-url :target-type string
                                      :member-name "ConsoleURL" :json-name
                                      "consoleURL")
                                     (endpoints :target-type list-of-string
                                      :member-name "Endpoints" :json-name
                                      "endpoints")
                                     (ip-address :target-type string
                                      :member-name "IpAddress" :json-name
                                      "ipAddress"))
                                    (:shape-name "BrokerInstance"))

(smithy/sdk/shapes:define-structure broker-instance-option common-lisp:nil
                                    ((availability-zones :target-type
                                      list-of-availability-zone :member-name
                                      "AvailabilityZones" :json-name
                                      "availabilityZones")
                                     (engine-type :target-type engine-type
                                      :member-name "EngineType" :json-name
                                      "engineType")
                                     (host-instance-type :target-type string
                                      :member-name "HostInstanceType"
                                      :json-name "hostInstanceType")
                                     (storage-type :target-type
                                      broker-storage-type :member-name
                                      "StorageType" :json-name "storageType")
                                     (supported-deployment-modes :target-type
                                      list-of-deployment-mode :member-name
                                      "SupportedDeploymentModes" :json-name
                                      "supportedDeploymentModes")
                                     (supported-engine-versions :target-type
                                      list-of-string :member-name
                                      "SupportedEngineVersions" :json-name
                                      "supportedEngineVersions"))
                                    (:shape-name "BrokerInstanceOption"))

(smithy/sdk/shapes:define-enum broker-state
    common-lisp:nil
  (:creation-in-progress "CREATION_IN_PROGRESS")
  (:creation-failed "CREATION_FAILED")
  (:deletion-in-progress "DELETION_IN_PROGRESS")
  (:running "RUNNING")
  (:reboot-in-progress "REBOOT_IN_PROGRESS")
  (:critical-action-required "CRITICAL_ACTION_REQUIRED")
  (:replica "REPLICA"))

(smithy/sdk/shapes:define-enum broker-storage-type
    common-lisp:nil
  (:ebs "EBS")
  (:efs "EFS"))

(smithy/sdk/shapes:define-structure broker-summary common-lisp:nil
                                    ((broker-arn :target-type string
                                      :member-name "BrokerArn" :json-name
                                      "brokerArn")
                                     (broker-id :target-type string
                                      :member-name "BrokerId" :json-name
                                      "brokerId")
                                     (broker-name :target-type string
                                      :member-name "BrokerName" :json-name
                                      "brokerName")
                                     (broker-state :target-type broker-state
                                      :member-name "BrokerState" :json-name
                                      "brokerState")
                                     (created :target-type timestamp-iso8601
                                      :member-name "Created" :json-name
                                      "created")
                                     (deployment-mode :target-type
                                      deployment-mode :required common-lisp:t
                                      :member-name "DeploymentMode" :json-name
                                      "deploymentMode")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "EngineType" :json-name "engineType")
                                     (host-instance-type :target-type string
                                      :member-name "HostInstanceType"
                                      :json-name "hostInstanceType"))
                                    (:shape-name "BrokerSummary"))

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:create "CREATE")
  (:update "UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (authentication-strategy :target-type
                                      authentication-strategy :required
                                      common-lisp:t :member-name
                                      "AuthenticationStrategy" :json-name
                                      "authenticationStrategy")
                                     (created :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "Created" :json-name "created")
                                     (description :target-type string :required
                                      common-lisp:t :member-name "Description"
                                      :json-name "description")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "EngineType" :json-name "engineType")
                                     (engine-version :target-type string
                                      :required common-lisp:t :member-name
                                      "EngineVersion" :json-name
                                      "engineVersion")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (latest-revision :target-type
                                      configuration-revision :required
                                      common-lisp:t :member-name
                                      "LatestRevision" :json-name
                                      "latestRevision")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-structure configuration-id common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (revision :target-type integer
                                      :member-name "Revision" :json-name
                                      "revision"))
                                    (:shape-name "ConfigurationId"))

(smithy/sdk/shapes:define-structure configuration-revision common-lisp:nil
                                    ((created :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "Created" :json-name "created")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (revision :target-type integer :required
                                      common-lisp:t :member-name "Revision"
                                      :json-name "revision"))
                                    (:shape-name "ConfigurationRevision"))

(smithy/sdk/shapes:define-structure configurations common-lisp:nil
                                    ((current :target-type configuration-id
                                      :member-name "Current" :json-name
                                      "current")
                                     (history :target-type
                                      list-of-configuration-id :member-name
                                      "History" :json-name "history")
                                     (pending :target-type configuration-id
                                      :member-name "Pending" :json-name
                                      "pending"))
                                    (:shape-name "Configurations"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-broker-request common-lisp:nil
                                ((authentication-strategy :target-type
                                  authentication-strategy :member-name
                                  "AuthenticationStrategy" :json-name
                                  "authenticationStrategy")
                                 (auto-minor-version-upgrade :target-type
                                  boolean :member-name
                                  "AutoMinorVersionUpgrade" :json-name
                                  "autoMinorVersionUpgrade")
                                 (broker-name :target-type string :required
                                  common-lisp:t :member-name "BrokerName"
                                  :json-name "brokerName")
                                 (configuration :target-type configuration-id
                                  :member-name "Configuration" :json-name
                                  "configuration")
                                 (creator-request-id :target-type string
                                  :member-name "CreatorRequestId" :json-name
                                  "creatorRequestId")
                                 (deployment-mode :target-type deployment-mode
                                  :required common-lisp:t :member-name
                                  "DeploymentMode" :json-name "deploymentMode")
                                 (encryption-options :target-type
                                  encryption-options :member-name
                                  "EncryptionOptions" :json-name
                                  "encryptionOptions")
                                 (engine-type :target-type engine-type
                                  :required common-lisp:t :member-name
                                  "EngineType" :json-name "engineType")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion" :json-name
                                  "engineVersion")
                                 (host-instance-type :target-type string
                                  :required common-lisp:t :member-name
                                  "HostInstanceType" :json-name
                                  "hostInstanceType")
                                 (ldap-server-metadata :target-type
                                  ldap-server-metadata-input :member-name
                                  "LdapServerMetadata" :json-name
                                  "ldapServerMetadata")
                                 (logs :target-type logs :member-name "Logs"
                                  :json-name "logs")
                                 (maintenance-window-start-time :target-type
                                  weekly-start-time :member-name
                                  "MaintenanceWindowStartTime" :json-name
                                  "maintenanceWindowStartTime")
                                 (publicly-accessible :target-type boolean
                                  :required common-lisp:t :member-name
                                  "PubliclyAccessible" :json-name
                                  "publiclyAccessible")
                                 (security-groups :target-type list-of-string
                                  :member-name "SecurityGroups" :json-name
                                  "securityGroups")
                                 (storage-type :target-type broker-storage-type
                                  :member-name "StorageType" :json-name
                                  "storageType")
                                 (subnet-ids :target-type list-of-string
                                  :member-name "SubnetIds" :json-name
                                  "subnetIds")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags")
                                 (users :target-type list-of-user :required
                                  common-lisp:t :member-name "Users" :json-name
                                  "users")
                                 (data-replication-mode :target-type
                                  data-replication-mode :member-name
                                  "DataReplicationMode" :json-name
                                  "dataReplicationMode")
                                 (data-replication-primary-broker-arn
                                  :target-type string :member-name
                                  "DataReplicationPrimaryBrokerArn" :json-name
                                  "dataReplicationPrimaryBrokerArn"))
                                (:shape-name "CreateBrokerRequest"))

(smithy/sdk/shapes:define-output create-broker-response common-lisp:nil
                                 ((broker-arn :target-type string :member-name
                                   "BrokerArn" :json-name "brokerArn")
                                  (broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId"))
                                 (:shape-name "CreateBrokerResponse"))

(smithy/sdk/shapes:define-input create-configuration-request common-lisp:nil
                                ((authentication-strategy :target-type
                                  authentication-strategy :member-name
                                  "AuthenticationStrategy" :json-name
                                  "authenticationStrategy")
                                 (engine-type :target-type engine-type
                                  :required common-lisp:t :member-name
                                  "EngineType" :json-name "engineType")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion" :json-name
                                  "engineVersion")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateConfigurationRequest"))

(smithy/sdk/shapes:define-output create-configuration-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authentication-strategy :target-type
                                   authentication-strategy :member-name
                                   "AuthenticationStrategy" :json-name
                                   "authenticationStrategy")
                                  (created :target-type timestamp-iso8601
                                   :member-name "Created" :json-name "created")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name"))
                                 (:shape-name "CreateConfigurationResponse"))

(smithy/sdk/shapes:define-input create-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateTagsRequest"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (console-access :target-type boolean
                                  :member-name "ConsoleAccess" :json-name
                                  "consoleAccess")
                                 (groups :target-type list-of-string
                                  :member-name "Groups" :json-name "groups")
                                 (password :target-type string :required
                                  common-lisp:t :member-name "Password"
                                  :json-name "password")
                                 (username :target-type string :required
                                  common-lisp:t :member-name "Username"
                                  :http-label common-lisp:t)
                                 (replication-user :target-type boolean
                                  :member-name "ReplicationUser" :json-name
                                  "replicationUser"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-structure data-replication-counterpart
                                    common-lisp:nil
                                    ((broker-id :target-type string :required
                                      common-lisp:t :member-name "BrokerId"
                                      :json-name "brokerId")
                                     (region :target-type string :required
                                      common-lisp:t :member-name "Region"
                                      :json-name "region"))
                                    (:shape-name "DataReplicationCounterpart"))

(smithy/sdk/shapes:define-structure data-replication-metadata-output
                                    common-lisp:nil
                                    ((data-replication-counterpart :target-type
                                      data-replication-counterpart :member-name
                                      "DataReplicationCounterpart" :json-name
                                      "dataReplicationCounterpart")
                                     (data-replication-role :target-type string
                                      :required common-lisp:t :member-name
                                      "DataReplicationRole" :json-name
                                      "dataReplicationRole"))
                                    (:shape-name
                                     "DataReplicationMetadataOutput"))

(smithy/sdk/shapes:define-enum data-replication-mode
    common-lisp:nil
  (:none "NONE")
  (:crdr "CRDR"))

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-input delete-broker-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBrokerRequest"))

(smithy/sdk/shapes:define-output delete-broker-response common-lisp:nil
                                 ((broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId"))
                                 (:shape-name "DeleteBrokerResponse"))

(smithy/sdk/shapes:define-input delete-configuration-request common-lisp:nil
                                ((configuration-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationId" :http-label common-lisp:t))
                                (:shape-name "DeleteConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-configuration-response common-lisp:nil
                                 ((configuration-id :target-type string
                                   :member-name "ConfigurationId" :json-name
                                   "configurationId"))
                                 (:shape-name "DeleteConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "DeleteTagsRequest"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (username :target-type string :required
                                  common-lisp:t :member-name "Username"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-enum deployment-mode
    common-lisp:nil
  (:single-instance "SINGLE_INSTANCE")
  (:active-standby-multi-az "ACTIVE_STANDBY_MULTI_AZ")
  (:cluster-multi-az "CLUSTER_MULTI_AZ"))

(smithy/sdk/shapes:define-input describe-broker-engine-types-request
                                common-lisp:nil
                                ((engine-type :target-type string :member-name
                                  "EngineType" :http-query "engineType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name
                                 "DescribeBrokerEngineTypesRequest"))

(smithy/sdk/shapes:define-output describe-broker-engine-types-response
                                 common-lisp:nil
                                 ((broker-engine-types :target-type
                                   list-of-broker-engine-type :member-name
                                   "BrokerEngineTypes" :json-name
                                   "brokerEngineTypes")
                                  (max-results :target-type integer-min5max100
                                   :member-name "MaxResults" :json-name
                                   "maxResults")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "DescribeBrokerEngineTypesResponse"))

(smithy/sdk/shapes:define-input describe-broker-instance-options-request
                                common-lisp:nil
                                ((engine-type :target-type string :member-name
                                  "EngineType" :http-query "engineType")
                                 (host-instance-type :target-type string
                                  :member-name "HostInstanceType" :http-query
                                  "hostInstanceType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (storage-type :target-type string :member-name
                                  "StorageType" :http-query "storageType"))
                                (:shape-name
                                 "DescribeBrokerInstanceOptionsRequest"))

(smithy/sdk/shapes:define-output describe-broker-instance-options-response
                                 common-lisp:nil
                                 ((broker-instance-options :target-type
                                   list-of-broker-instance-option :member-name
                                   "BrokerInstanceOptions" :json-name
                                   "brokerInstanceOptions")
                                  (max-results :target-type integer-min5max100
                                   :member-name "MaxResults" :json-name
                                   "maxResults")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "DescribeBrokerInstanceOptionsResponse"))

(smithy/sdk/shapes:define-input describe-broker-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBrokerRequest"))

(smithy/sdk/shapes:define-output describe-broker-response common-lisp:nil
                                 ((actions-required :target-type
                                   list-of-action-required :member-name
                                   "ActionsRequired" :json-name
                                   "actionsRequired")
                                  (authentication-strategy :target-type
                                   authentication-strategy :member-name
                                   "AuthenticationStrategy" :json-name
                                   "authenticationStrategy")
                                  (auto-minor-version-upgrade :target-type
                                   boolean :member-name
                                   "AutoMinorVersionUpgrade" :json-name
                                   "autoMinorVersionUpgrade")
                                  (broker-arn :target-type string :member-name
                                   "BrokerArn" :json-name "brokerArn")
                                  (broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId")
                                  (broker-instances :target-type
                                   list-of-broker-instance :member-name
                                   "BrokerInstances" :json-name
                                   "brokerInstances")
                                  (broker-name :target-type string :member-name
                                   "BrokerName" :json-name "brokerName")
                                  (broker-state :target-type broker-state
                                   :member-name "BrokerState" :json-name
                                   "brokerState")
                                  (configurations :target-type configurations
                                   :member-name "Configurations" :json-name
                                   "configurations")
                                  (created :target-type timestamp-iso8601
                                   :member-name "Created" :json-name "created")
                                  (deployment-mode :target-type deployment-mode
                                   :member-name "DeploymentMode" :json-name
                                   "deploymentMode")
                                  (encryption-options :target-type
                                   encryption-options :member-name
                                   "EncryptionOptions" :json-name
                                   "encryptionOptions")
                                  (engine-type :target-type engine-type
                                   :member-name "EngineType" :json-name
                                   "engineType")
                                  (engine-version :target-type string
                                   :member-name "EngineVersion" :json-name
                                   "engineVersion")
                                  (host-instance-type :target-type string
                                   :member-name "HostInstanceType" :json-name
                                   "hostInstanceType")
                                  (ldap-server-metadata :target-type
                                   ldap-server-metadata-output :member-name
                                   "LdapServerMetadata" :json-name
                                   "ldapServerMetadata")
                                  (logs :target-type logs-summary :member-name
                                   "Logs" :json-name "logs")
                                  (maintenance-window-start-time :target-type
                                   weekly-start-time :member-name
                                   "MaintenanceWindowStartTime" :json-name
                                   "maintenanceWindowStartTime")
                                  (pending-authentication-strategy :target-type
                                   authentication-strategy :member-name
                                   "PendingAuthenticationStrategy" :json-name
                                   "pendingAuthenticationStrategy")
                                  (pending-engine-version :target-type string
                                   :member-name "PendingEngineVersion"
                                   :json-name "pendingEngineVersion")
                                  (pending-host-instance-type :target-type
                                   string :member-name
                                   "PendingHostInstanceType" :json-name
                                   "pendingHostInstanceType")
                                  (pending-ldap-server-metadata :target-type
                                   ldap-server-metadata-output :member-name
                                   "PendingLdapServerMetadata" :json-name
                                   "pendingLdapServerMetadata")
                                  (pending-security-groups :target-type
                                   list-of-string :member-name
                                   "PendingSecurityGroups" :json-name
                                   "pendingSecurityGroups")
                                  (publicly-accessible :target-type boolean
                                   :member-name "PubliclyAccessible" :json-name
                                   "publiclyAccessible")
                                  (security-groups :target-type list-of-string
                                   :member-name "SecurityGroups" :json-name
                                   "securityGroups")
                                  (storage-type :target-type
                                   broker-storage-type :member-name
                                   "StorageType" :json-name "storageType")
                                  (subnet-ids :target-type list-of-string
                                   :member-name "SubnetIds" :json-name
                                   "subnetIds")
                                  (tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags")
                                  (users :target-type list-of-user-summary
                                   :member-name "Users" :json-name "users")
                                  (data-replication-metadata :target-type
                                   data-replication-metadata-output
                                   :member-name "DataReplicationMetadata"
                                   :json-name "dataReplicationMetadata")
                                  (data-replication-mode :target-type
                                   data-replication-mode :member-name
                                   "DataReplicationMode" :json-name
                                   "dataReplicationMode")
                                  (pending-data-replication-metadata
                                   :target-type
                                   data-replication-metadata-output
                                   :member-name
                                   "PendingDataReplicationMetadata" :json-name
                                   "pendingDataReplicationMetadata")
                                  (pending-data-replication-mode :target-type
                                   data-replication-mode :member-name
                                   "PendingDataReplicationMode" :json-name
                                   "pendingDataReplicationMode"))
                                 (:shape-name "DescribeBrokerResponse"))

(smithy/sdk/shapes:define-input describe-configuration-request common-lisp:nil
                                ((configuration-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationId" :http-label common-lisp:t))
                                (:shape-name "DescribeConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authentication-strategy :target-type
                                   authentication-strategy :member-name
                                   "AuthenticationStrategy" :json-name
                                   "authenticationStrategy")
                                  (created :target-type timestamp-iso8601
                                   :member-name "Created" :json-name "created")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (engine-type :target-type engine-type
                                   :member-name "EngineType" :json-name
                                   "engineType")
                                  (engine-version :target-type string
                                   :member-name "EngineVersion" :json-name
                                   "engineVersion")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "DescribeConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-configuration-revision-request
                                common-lisp:nil
                                ((configuration-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationId" :http-label common-lisp:t)
                                 (configuration-revision :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationRevision" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeConfigurationRevisionRequest"))

(smithy/sdk/shapes:define-output describe-configuration-revision-response
                                 common-lisp:nil
                                 ((configuration-id :target-type string
                                   :member-name "ConfigurationId" :json-name
                                   "configurationId")
                                  (created :target-type timestamp-iso8601
                                   :member-name "Created" :json-name "created")
                                  (data :target-type string :member-name "Data"
                                   :json-name "data")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description"))
                                 (:shape-name
                                  "DescribeConfigurationRevisionResponse"))

(smithy/sdk/shapes:define-input describe-user-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (username :target-type string :required
                                  common-lisp:t :member-name "Username"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeUserRequest"))

(smithy/sdk/shapes:define-output describe-user-response common-lisp:nil
                                 ((broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId")
                                  (console-access :target-type boolean
                                   :member-name "ConsoleAccess" :json-name
                                   "consoleAccess")
                                  (groups :target-type list-of-string
                                   :member-name "Groups" :json-name "groups")
                                  (pending :target-type user-pending-changes
                                   :member-name "Pending" :json-name "pending")
                                  (username :target-type string :member-name
                                   "Username" :json-name "username")
                                  (replication-user :target-type boolean
                                   :member-name "ReplicationUser" :json-name
                                   "replicationUser"))
                                 (:shape-name "DescribeUserResponse"))

(smithy/sdk/shapes:define-structure encryption-options common-lisp:nil
                                    ((kms-key-id :target-type string
                                      :member-name "KmsKeyId" :json-name
                                      "kmsKeyId")
                                     (use-aws-owned-key :target-type boolean
                                      :required common-lisp:t :member-name
                                      "UseAwsOwnedKey" :json-name
                                      "useAwsOwnedKey"))
                                    (:shape-name "EncryptionOptions"))

(smithy/sdk/shapes:define-enum engine-type
    common-lisp:nil
  (:activemq "ACTIVEMQ")
  (:rabbitmq "RABBITMQ"))

(smithy/sdk/shapes:define-structure engine-version common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name"))
                                    (:shape-name "EngineVersion"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure ldap-server-metadata-input common-lisp:nil
                                    ((hosts :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Hosts" :json-name "hosts")
                                     (role-base :target-type string :required
                                      common-lisp:t :member-name "RoleBase"
                                      :json-name "roleBase")
                                     (role-name :target-type string
                                      :member-name "RoleName" :json-name
                                      "roleName")
                                     (role-search-matching :target-type string
                                      :required common-lisp:t :member-name
                                      "RoleSearchMatching" :json-name
                                      "roleSearchMatching")
                                     (role-search-subtree :target-type boolean
                                      :member-name "RoleSearchSubtree"
                                      :json-name "roleSearchSubtree")
                                     (service-account-password :target-type
                                      string :required common-lisp:t
                                      :member-name "ServiceAccountPassword"
                                      :json-name "serviceAccountPassword")
                                     (service-account-username :target-type
                                      string :required common-lisp:t
                                      :member-name "ServiceAccountUsername"
                                      :json-name "serviceAccountUsername")
                                     (user-base :target-type string :required
                                      common-lisp:t :member-name "UserBase"
                                      :json-name "userBase")
                                     (user-role-name :target-type string
                                      :member-name "UserRoleName" :json-name
                                      "userRoleName")
                                     (user-search-matching :target-type string
                                      :required common-lisp:t :member-name
                                      "UserSearchMatching" :json-name
                                      "userSearchMatching")
                                     (user-search-subtree :target-type boolean
                                      :member-name "UserSearchSubtree"
                                      :json-name "userSearchSubtree"))
                                    (:shape-name "LdapServerMetadataInput"))

(smithy/sdk/shapes:define-structure ldap-server-metadata-output common-lisp:nil
                                    ((hosts :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Hosts" :json-name "hosts")
                                     (role-base :target-type string :required
                                      common-lisp:t :member-name "RoleBase"
                                      :json-name "roleBase")
                                     (role-name :target-type string
                                      :member-name "RoleName" :json-name
                                      "roleName")
                                     (role-search-matching :target-type string
                                      :required common-lisp:t :member-name
                                      "RoleSearchMatching" :json-name
                                      "roleSearchMatching")
                                     (role-search-subtree :target-type boolean
                                      :member-name "RoleSearchSubtree"
                                      :json-name "roleSearchSubtree")
                                     (service-account-username :target-type
                                      string :required common-lisp:t
                                      :member-name "ServiceAccountUsername"
                                      :json-name "serviceAccountUsername")
                                     (user-base :target-type string :required
                                      common-lisp:t :member-name "UserBase"
                                      :json-name "userBase")
                                     (user-role-name :target-type string
                                      :member-name "UserRoleName" :json-name
                                      "userRoleName")
                                     (user-search-matching :target-type string
                                      :required common-lisp:t :member-name
                                      "UserSearchMatching" :json-name
                                      "userSearchMatching")
                                     (user-search-subtree :target-type boolean
                                      :member-name "UserSearchSubtree"
                                      :json-name "userSearchSubtree"))
                                    (:shape-name "LdapServerMetadataOutput"))

(smithy/sdk/shapes:define-input list-brokers-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListBrokersRequest"))

(smithy/sdk/shapes:define-output list-brokers-response common-lisp:nil
                                 ((broker-summaries :target-type
                                   list-of-broker-summary :member-name
                                   "BrokerSummaries" :json-name
                                   "brokerSummaries")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListBrokersResponse"))

(smithy/sdk/shapes:define-input list-configuration-revisions-request
                                common-lisp:nil
                                ((configuration-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListConfigurationRevisionsRequest"))

(smithy/sdk/shapes:define-output list-configuration-revisions-response
                                 common-lisp:nil
                                 ((configuration-id :target-type string
                                   :member-name "ConfigurationId" :json-name
                                   "configurationId")
                                  (max-results :target-type integer
                                   :member-name "MaxResults" :json-name
                                   "maxResults")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (revisions :target-type
                                   list-of-configuration-revision :member-name
                                   "Revisions" :json-name "revisions"))
                                 (:shape-name
                                  "ListConfigurationRevisionsResponse"))

(smithy/sdk/shapes:define-input list-configurations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-configurations-response common-lisp:nil
                                 ((configurations :target-type
                                   list-of-configuration :member-name
                                   "Configurations" :json-name
                                   "configurations")
                                  (max-results :target-type integer
                                   :member-name "MaxResults" :json-name
                                   "maxResults")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId")
                                  (max-results :target-type integer-min5max100
                                   :member-name "MaxResults" :json-name
                                   "maxResults")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (users :target-type list-of-user-summary
                                   :member-name "Users" :json-name "users"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-structure logs common-lisp:nil
                                    ((audit :target-type boolean :member-name
                                      "Audit" :json-name "audit")
                                     (general :target-type boolean :member-name
                                      "General" :json-name "general"))
                                    (:shape-name "Logs"))

(smithy/sdk/shapes:define-structure logs-summary common-lisp:nil
                                    ((audit :target-type boolean :member-name
                                      "Audit" :json-name "audit")
                                     (audit-log-group :target-type string
                                      :member-name "AuditLogGroup" :json-name
                                      "auditLogGroup")
                                     (general :target-type boolean :required
                                      common-lisp:t :member-name "General"
                                      :json-name "general")
                                     (general-log-group :target-type string
                                      :required common-lisp:t :member-name
                                      "GeneralLogGroup" :json-name
                                      "generalLogGroup")
                                     (pending :target-type pending-logs
                                      :member-name "Pending" :json-name
                                      "pending"))
                                    (:shape-name "LogsSummary"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure pending-logs common-lisp:nil
                                    ((audit :target-type boolean :member-name
                                      "Audit" :json-name "audit")
                                     (general :target-type boolean :member-name
                                      "General" :json-name "general"))
                                    (:shape-name "PendingLogs"))

(smithy/sdk/shapes:define-enum promote-mode
    common-lisp:nil
  (:switchover "SWITCHOVER")
  (:failover "FAILOVER"))

(smithy/sdk/shapes:define-input promote-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (mode :target-type promote-mode :required
                                  common-lisp:t :member-name "Mode" :json-name
                                  "mode"))
                                (:shape-name "PromoteRequest"))

(smithy/sdk/shapes:define-output promote-response common-lisp:nil
                                 ((broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId"))
                                 (:shape-name "PromoteResponse"))

(smithy/sdk/shapes:define-input reboot-broker-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t))
                                (:shape-name "RebootBrokerRequest"))

(smithy/sdk/shapes:define-output reboot-broker-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RebootBrokerResponse"))

(smithy/sdk/shapes:define-structure sanitization-warning common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "AttributeName" :json-name
                                      "attributeName")
                                     (element-name :target-type string
                                      :member-name "ElementName" :json-name
                                      "elementName")
                                     (reason :target-type
                                      sanitization-warning-reason :required
                                      common-lisp:t :member-name "Reason"
                                      :json-name "reason"))
                                    (:shape-name "SanitizationWarning"))

(smithy/sdk/shapes:define-enum sanitization-warning-reason
    common-lisp:nil
  (:disallowed-element-removed "DISALLOWED_ELEMENT_REMOVED")
  (:disallowed-attribute-removed "DISALLOWED_ATTRIBUTE_REMOVED")
  (:invalid-attribute-value-removed "INVALID_ATTRIBUTE_VALUE_REMOVED"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((error-attribute :target-type string
                                  :member-name "ErrorAttribute" :json-name
                                  "errorAttribute")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input update-broker-request common-lisp:nil
                                ((authentication-strategy :target-type
                                  authentication-strategy :member-name
                                  "AuthenticationStrategy" :json-name
                                  "authenticationStrategy")
                                 (auto-minor-version-upgrade :target-type
                                  boolean :member-name
                                  "AutoMinorVersionUpgrade" :json-name
                                  "autoMinorVersionUpgrade")
                                 (broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (configuration :target-type configuration-id
                                  :member-name "Configuration" :json-name
                                  "configuration")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion" :json-name
                                  "engineVersion")
                                 (host-instance-type :target-type string
                                  :member-name "HostInstanceType" :json-name
                                  "hostInstanceType")
                                 (ldap-server-metadata :target-type
                                  ldap-server-metadata-input :member-name
                                  "LdapServerMetadata" :json-name
                                  "ldapServerMetadata")
                                 (logs :target-type logs :member-name "Logs"
                                  :json-name "logs")
                                 (maintenance-window-start-time :target-type
                                  weekly-start-time :member-name
                                  "MaintenanceWindowStartTime" :json-name
                                  "maintenanceWindowStartTime")
                                 (security-groups :target-type list-of-string
                                  :member-name "SecurityGroups" :json-name
                                  "securityGroups")
                                 (data-replication-mode :target-type
                                  data-replication-mode :member-name
                                  "DataReplicationMode" :json-name
                                  "dataReplicationMode"))
                                (:shape-name "UpdateBrokerRequest"))

(smithy/sdk/shapes:define-output update-broker-response common-lisp:nil
                                 ((authentication-strategy :target-type
                                   authentication-strategy :member-name
                                   "AuthenticationStrategy" :json-name
                                   "authenticationStrategy")
                                  (auto-minor-version-upgrade :target-type
                                   boolean :member-name
                                   "AutoMinorVersionUpgrade" :json-name
                                   "autoMinorVersionUpgrade")
                                  (broker-id :target-type string :member-name
                                   "BrokerId" :json-name "brokerId")
                                  (configuration :target-type configuration-id
                                   :member-name "Configuration" :json-name
                                   "configuration")
                                  (engine-version :target-type string
                                   :member-name "EngineVersion" :json-name
                                   "engineVersion")
                                  (host-instance-type :target-type string
                                   :member-name "HostInstanceType" :json-name
                                   "hostInstanceType")
                                  (ldap-server-metadata :target-type
                                   ldap-server-metadata-output :member-name
                                   "LdapServerMetadata" :json-name
                                   "ldapServerMetadata")
                                  (logs :target-type logs :member-name "Logs"
                                   :json-name "logs")
                                  (maintenance-window-start-time :target-type
                                   weekly-start-time :member-name
                                   "MaintenanceWindowStartTime" :json-name
                                   "maintenanceWindowStartTime")
                                  (security-groups :target-type list-of-string
                                   :member-name "SecurityGroups" :json-name
                                   "securityGroups")
                                  (data-replication-metadata :target-type
                                   data-replication-metadata-output
                                   :member-name "DataReplicationMetadata"
                                   :json-name "dataReplicationMetadata")
                                  (data-replication-mode :target-type
                                   data-replication-mode :member-name
                                   "DataReplicationMode" :json-name
                                   "dataReplicationMode")
                                  (pending-data-replication-metadata
                                   :target-type
                                   data-replication-metadata-output
                                   :member-name
                                   "PendingDataReplicationMetadata" :json-name
                                   "pendingDataReplicationMetadata")
                                  (pending-data-replication-mode :target-type
                                   data-replication-mode :member-name
                                   "PendingDataReplicationMode" :json-name
                                   "pendingDataReplicationMode"))
                                 (:shape-name "UpdateBrokerResponse"))

(smithy/sdk/shapes:define-input update-configuration-request common-lisp:nil
                                ((configuration-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConfigurationId" :http-label common-lisp:t)
                                 (data :target-type string :required
                                  common-lisp:t :member-name "Data" :json-name
                                  "data")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description"))
                                (:shape-name "UpdateConfigurationRequest"))

(smithy/sdk/shapes:define-output update-configuration-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created :target-type timestamp-iso8601
                                   :member-name "Created" :json-name "created")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (warnings :target-type
                                   list-of-sanitization-warning :member-name
                                   "Warnings" :json-name "warnings"))
                                 (:shape-name "UpdateConfigurationResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((broker-id :target-type string :required
                                  common-lisp:t :member-name "BrokerId"
                                  :http-label common-lisp:t)
                                 (console-access :target-type boolean
                                  :member-name "ConsoleAccess" :json-name
                                  "consoleAccess")
                                 (groups :target-type list-of-string
                                  :member-name "Groups" :json-name "groups")
                                 (password :target-type string :member-name
                                  "Password" :json-name "password")
                                 (username :target-type string :required
                                  common-lisp:t :member-name "Username"
                                  :http-label common-lisp:t)
                                 (replication-user :target-type boolean
                                  :member-name "ReplicationUser" :json-name
                                  "replicationUser"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((console-access :target-type boolean
                                      :member-name "ConsoleAccess" :json-name
                                      "consoleAccess")
                                     (groups :target-type list-of-string
                                      :member-name "Groups" :json-name
                                      "groups")
                                     (password :target-type string :required
                                      common-lisp:t :member-name "Password"
                                      :json-name "password")
                                     (username :target-type string :required
                                      common-lisp:t :member-name "Username"
                                      :json-name "username")
                                     (replication-user :target-type boolean
                                      :member-name "ReplicationUser" :json-name
                                      "replicationUser"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-structure user-pending-changes common-lisp:nil
                                    ((console-access :target-type boolean
                                      :member-name "ConsoleAccess" :json-name
                                      "consoleAccess")
                                     (groups :target-type list-of-string
                                      :member-name "Groups" :json-name
                                      "groups")
                                     (pending-change :target-type change-type
                                      :required common-lisp:t :member-name
                                      "PendingChange" :json-name
                                      "pendingChange"))
                                    (:shape-name "UserPendingChanges"))

(smithy/sdk/shapes:define-structure user-summary common-lisp:nil
                                    ((pending-change :target-type change-type
                                      :member-name "PendingChange" :json-name
                                      "pendingChange")
                                     (username :target-type string :required
                                      common-lisp:t :member-name "Username"
                                      :json-name "username"))
                                    (:shape-name "UserSummary"))

(smithy/sdk/shapes:define-structure weekly-start-time common-lisp:nil
                                    ((day-of-week :target-type day-of-week
                                      :required common-lisp:t :member-name
                                      "DayOfWeek" :json-name "dayOfWeek")
                                     (time-of-day :target-type string :required
                                      common-lisp:t :member-name "TimeOfDay"
                                      :json-name "timeOfDay")
                                     (time-zone :target-type string
                                      :member-name "TimeZone" :json-name
                                      "timeZone"))
                                    (:shape-name "WeeklyStartTime"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min5max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-action-required :member action-required)

(smithy/sdk/shapes:define-list list-of-availability-zone :member
                               availability-zone)

(smithy/sdk/shapes:define-list list-of-broker-engine-type :member
                               broker-engine-type)

(smithy/sdk/shapes:define-list list-of-broker-instance :member broker-instance)

(smithy/sdk/shapes:define-list list-of-broker-instance-option :member
                               broker-instance-option)

(smithy/sdk/shapes:define-list list-of-broker-summary :member broker-summary)

(smithy/sdk/shapes:define-list list-of-configuration :member configuration)

(smithy/sdk/shapes:define-list list-of-configuration-id :member
                               configuration-id)

(smithy/sdk/shapes:define-list list-of-configuration-revision :member
                               configuration-revision)

(smithy/sdk/shapes:define-list list-of-deployment-mode :member deployment-mode)

(smithy/sdk/shapes:define-list list-of-engine-version :member engine-version)

(smithy/sdk/shapes:define-list list-of-sanitization-warning :member
                               sanitization-warning)

(smithy/sdk/shapes:define-list list-of-user :member user)

(smithy/sdk/shapes:define-list list-of-user-summary :member user-summary)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/operation:define-operation create-broker :shape-name "CreateBroker"
                                       :input create-broker-request :output
                                       create-broker-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/brokers" :code
                                       200)

(smithy/sdk/operation:define-operation create-configuration :shape-name
                                       "CreateConfiguration" :input
                                       create-configuration-request :output
                                       create-configuration-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri "/v1/configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/brokers/{BrokerId}/users/{Username}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-broker :shape-name "DeleteBroker"
                                       :input delete-broker-request :output
                                       delete-broker-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/brokers/{BrokerId}" :code 200)

(smithy/sdk/operation:define-operation delete-configuration :shape-name
                                       "DeleteConfiguration" :input
                                       delete-configuration-request :output
                                       delete-configuration-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/configurations/{ConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/brokers/{BrokerId}/users/{Username}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-broker :shape-name
                                       "DescribeBroker" :input
                                       describe-broker-request :output
                                       describe-broker-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/brokers/{BrokerId}" :code 200)

(smithy/sdk/operation:define-operation describe-broker-engine-types :shape-name
                                       "DescribeBrokerEngineTypes" :input
                                       describe-broker-engine-types-request
                                       :output
                                       describe-broker-engine-types-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/v1/broker-engine-types" :code 200)

(smithy/sdk/operation:define-operation describe-broker-instance-options
                                       :shape-name
                                       "DescribeBrokerInstanceOptions" :input
                                       describe-broker-instance-options-request
                                       :output
                                       describe-broker-instance-options-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/v1/broker-instance-options" :code 200)

(smithy/sdk/operation:define-operation describe-configuration :shape-name
                                       "DescribeConfiguration" :input
                                       describe-configuration-request :output
                                       describe-configuration-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{ConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-configuration-revision
                                       :shape-name
                                       "DescribeConfigurationRevision" :input
                                       describe-configuration-revision-request
                                       :output
                                       describe-configuration-revision-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{ConfigurationId}/revisions/{ConfigurationRevision}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-user :shape-name "DescribeUser"
                                       :input describe-user-request :output
                                       describe-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/brokers/{BrokerId}/users/{Username}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-brokers :shape-name "ListBrokers"
                                       :input list-brokers-request :output
                                       list-brokers-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/v1/brokers" :code
                                       200)

(smithy/sdk/operation:define-operation list-configuration-revisions :shape-name
                                       "ListConfigurationRevisions" :input
                                       list-configuration-revisions-request
                                       :output
                                       list-configuration-revisions-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{ConfigurationId}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configurations :shape-name
                                       "ListConfigurations" :input
                                       list-configurations-request :output
                                       list-configurations-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/v1/configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/brokers/{BrokerId}/users" :code 200)

(smithy/sdk/operation:define-operation promote :shape-name "Promote" :input
                                       promote-request :output promote-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/brokers/{BrokerId}/promote" :code
                                       200)

(smithy/sdk/operation:define-operation reboot-broker :shape-name "RebootBroker"
                                       :input reboot-broker-request :output
                                       reboot-broker-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/brokers/{BrokerId}/reboot" :code
                                       200)

(smithy/sdk/operation:define-operation update-broker :shape-name "UpdateBroker"
                                       :input update-broker-request :output
                                       update-broker-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/v1/brokers/{BrokerId}" :code 200)

(smithy/sdk/operation:define-operation update-configuration :shape-name
                                       "UpdateConfiguration" :input
                                       update-configuration-request :output
                                       update-configuration-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/v1/configurations/{ConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/v1/brokers/{BrokerId}/users/{Username}"
                                       :code 200)
