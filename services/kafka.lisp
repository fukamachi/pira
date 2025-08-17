(uiop/package:define-package #:pira/kafka (:use)
                             (:export #:amazon-msk-cluster
                              #:batch-associate-scram-secret
                              #:batch-disassociate-scram-secret
                              #:broker-azdistribution
                              #:broker-count-update-info
                              #:broker-ebsvolume-info #:broker-logs
                              #:broker-node-group-info #:broker-node-info
                              #:broker-software-info #:client-authentication
                              #:client-broker #:client-vpc-connection
                              #:cloud-watch-logs #:cluster #:cluster-info
                              #:cluster-operation-info #:cluster-operation-step
                              #:cluster-operation-step-info
                              #:cluster-operation-v2
                              #:cluster-operation-v2provisioned
                              #:cluster-operation-v2serverless
                              #:cluster-operation-v2summary #:cluster-state
                              #:cluster-type #:compatible-kafka-version
                              #:configuration #:configuration-info
                              #:configuration-revision #:configuration-state
                              #:connectivity-info #:consumer-group-replication
                              #:consumer-group-replication-update
                              #:controller-node-info #:create-cluster
                              #:create-cluster-v2 #:create-configuration
                              #:create-replicator #:create-vpc-connection
                              #:customer-action-status #:delete-cluster
                              #:delete-cluster-policy #:delete-configuration
                              #:delete-replicator #:delete-vpc-connection
                              #:describe-cluster #:describe-cluster-operation
                              #:describe-cluster-operation-v2
                              #:describe-cluster-v2 #:describe-configuration
                              #:describe-configuration-revision
                              #:describe-replicator #:describe-vpc-connection
                              #:ebsstorage-info #:encryption-at-rest
                              #:encryption-in-transit #:encryption-info
                              #:enhanced-monitoring #:error-info #:firehose
                              #:get-bootstrap-brokers #:get-cluster-policy
                              #:get-compatible-kafka-versions #:iam
                              #:jmx-exporter #:jmx-exporter-info #:kafka
                              #:kafka-cluster #:kafka-cluster-client-vpc-config
                              #:kafka-cluster-description
                              #:kafka-cluster-summary #:kafka-version
                              #:kafka-version-status
                              #:list-client-vpc-connections
                              #:list-cluster-operations
                              #:list-cluster-operations-v2 #:list-clusters
                              #:list-clusters-v2 #:list-configuration-revisions
                              #:list-configurations #:list-kafka-versions
                              #:list-nodes #:list-replicators
                              #:list-scram-secrets #:list-tags-for-resource
                              #:list-vpc-connections #:logging-info
                              #:max-results #:mutable-cluster-info
                              #:node-exporter #:node-exporter-info #:node-info
                              #:node-type #:open-monitoring
                              #:open-monitoring-info #:prometheus
                              #:prometheus-info #:provisioned
                              #:provisioned-request #:provisioned-throughput
                              #:public-access #:put-cluster-policy
                              #:reboot-broker #:reject-client-vpc-connection
                              #:replication-info #:replication-info-description
                              #:replication-info-summary
                              #:replication-starting-position
                              #:replication-starting-position-type
                              #:replication-state-info
                              #:replication-topic-name-configuration
                              #:replication-topic-name-configuration-type
                              #:replicator-state #:replicator-summary #:s3
                              #:sasl #:scram #:serverless
                              #:serverless-client-authentication
                              #:serverless-request #:serverless-sasl
                              #:state-info #:storage-info #:storage-mode
                              #:tag-resource #:target-compression-type #:tls
                              #:topic-replication #:topic-replication-update
                              #:unauthenticated #:unprocessed-scram-secret
                              #:untag-resource #:update-broker-count
                              #:update-broker-storage #:update-broker-type
                              #:update-cluster-configuration
                              #:update-cluster-kafka-version
                              #:update-configuration #:update-connectivity
                              #:update-monitoring #:update-replication-info
                              #:update-security #:update-storage
                              #:user-identity #:user-identity-type #:vpc-config
                              #:vpc-connection #:vpc-connection-info
                              #:vpc-connection-info-serverless
                              #:vpc-connection-state #:vpc-connectivity
                              #:vpc-connectivity-client-authentication
                              #:vpc-connectivity-iam #:vpc-connectivity-sasl
                              #:vpc-connectivity-scram #:vpc-connectivity-tls
                              #:zookeeper-node-info #:blob #:boolean #:double
                              #:integer #:integer-min1max15
                              #:integer-min1max16384
                              #:list-of-broker-ebsvolume-info
                              #:list-of-client-vpc-connection #:list-of-cluster
                              #:list-of-cluster-info
                              #:list-of-cluster-operation-info
                              #:list-of-cluster-operation-step
                              #:list-of-cluster-operation-v2summary
                              #:list-of-compatible-kafka-version
                              #:list-of-configuration
                              #:list-of-configuration-revision
                              #:list-of-kafka-cluster
                              #:list-of-kafka-cluster-description
                              #:list-of-kafka-cluster-summary
                              #:list-of-kafka-version #:list-of-node-info
                              #:list-of-replication-info
                              #:list-of-replication-info-description
                              #:list-of-replication-info-summary
                              #:list-of-replicator-summary
                              #:list-of-unprocessed-scram-secret
                              #:list-of-vpc-config #:list-of-vpc-connection
                              #:list-of-double #:list-of-string
                              #:list-of-string-max249 #:list-of-string-max256
                              #:long #:map-of-string #:string #:string-max1024
                              #:string-max249 #:string-max256
                              #:string-min1max128
                              #:string-min1max128pattern09aza-z09aza-z0
                              #:string-min1max64 #:string-min5max32
                              #:timestamp-iso8601))
(common-lisp:in-package #:pira/kafka)

(smithy/sdk/service:define-service kafka :shape-name "Kafka" :version
                                   "2018-11-14" :title
                                   "Managed Streaming for Kafka" :operations
                                   '(batch-associate-scram-secret
                                     batch-disassociate-scram-secret
                                     create-cluster create-cluster-v2
                                     create-configuration create-replicator
                                     create-vpc-connection delete-cluster
                                     delete-cluster-policy delete-configuration
                                     delete-replicator delete-vpc-connection
                                     describe-cluster
                                     describe-cluster-operation
                                     describe-cluster-operation-v2
                                     describe-cluster-v2 describe-configuration
                                     describe-configuration-revision
                                     describe-replicator
                                     describe-vpc-connection
                                     get-bootstrap-brokers get-cluster-policy
                                     get-compatible-kafka-versions
                                     list-client-vpc-connections
                                     list-cluster-operations
                                     list-cluster-operations-v2 list-clusters
                                     list-clusters-v2
                                     list-configuration-revisions
                                     list-configurations list-kafka-versions
                                     list-nodes list-replicators
                                     list-scram-secrets list-tags-for-resource
                                     list-vpc-connections put-cluster-policy
                                     reboot-broker reject-client-vpc-connection
                                     tag-resource untag-resource
                                     update-broker-count update-broker-storage
                                     update-broker-type
                                     update-cluster-configuration
                                     update-cluster-kafka-version
                                     update-configuration update-connectivity
                                     update-monitoring update-replication-info
                                     update-security update-storage)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Kafka")
                                      ("arnNamespace" . "kafka")
                                      ("cloudFormationName" . "MSK")
                                      ("cloudTrailEventSource"
                                       . "kafka.amazonaws.com")
                                      ("endpointPrefix" . "kafka"))
                                     ("aws.auth#sigv4" ("name" . "kafka"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure amazon-msk-cluster common-lisp:nil
                                    ((msk-cluster-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "MskClusterArn" :json-name
                                      "mskClusterArn"))
                                    (:shape-name "AmazonMskCluster"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input batch-associate-scram-secret-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (secret-arn-list :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "SecretArnList" :json-name "secretArnList"))
                                (:shape-name
                                 "BatchAssociateScramSecretRequest"))

(smithy/sdk/shapes:define-output batch-associate-scram-secret-response
                                 common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (unprocessed-scram-secrets :target-type
                                   list-of-unprocessed-scram-secret
                                   :member-name "UnprocessedScramSecrets"
                                   :json-name "unprocessedScramSecrets"))
                                 (:shape-name
                                  "BatchAssociateScramSecretResponse"))

(smithy/sdk/shapes:define-input batch-disassociate-scram-secret-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (secret-arn-list :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "SecretArnList" :json-name "secretArnList"))
                                (:shape-name
                                 "BatchDisassociateScramSecretRequest"))

(smithy/sdk/shapes:define-output batch-disassociate-scram-secret-response
                                 common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (unprocessed-scram-secrets :target-type
                                   list-of-unprocessed-scram-secret
                                   :member-name "UnprocessedScramSecrets"
                                   :json-name "unprocessedScramSecrets"))
                                 (:shape-name
                                  "BatchDisassociateScramSecretResponse"))

(smithy/sdk/shapes:define-enum broker-azdistribution
    common-lisp:nil
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-structure broker-count-update-info common-lisp:nil
                                    ((created-broker-ids :target-type
                                      list-of-double :member-name
                                      "CreatedBrokerIds" :json-name
                                      "createdBrokerIds")
                                     (deleted-broker-ids :target-type
                                      list-of-double :member-name
                                      "DeletedBrokerIds" :json-name
                                      "deletedBrokerIds"))
                                    (:shape-name "BrokerCountUpdateInfo"))

(smithy/sdk/shapes:define-structure broker-ebsvolume-info common-lisp:nil
                                    ((kafka-broker-node-id :target-type string
                                      :required common-lisp:t :member-name
                                      "KafkaBrokerNodeId" :json-name
                                      "kafkaBrokerNodeId")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput" :json-name
                                      "provisionedThroughput")
                                     (volume-size-gb :target-type integer
                                      :member-name "VolumeSizeGB" :json-name
                                      "volumeSizeGB"))
                                    (:shape-name "BrokerEBSVolumeInfo"))

(smithy/sdk/shapes:define-structure broker-logs common-lisp:nil
                                    ((cloud-watch-logs :target-type
                                      cloud-watch-logs :member-name
                                      "CloudWatchLogs" :json-name
                                      "cloudWatchLogs")
                                     (firehose :target-type firehose
                                      :member-name "Firehose" :json-name
                                      "firehose")
                                     (s3 :target-type s3 :member-name "S3"
                                      :json-name "s3"))
                                    (:shape-name "BrokerLogs"))

(smithy/sdk/shapes:define-structure broker-node-group-info common-lisp:nil
                                    ((broker-azdistribution :target-type
                                      broker-azdistribution :member-name
                                      "BrokerAZDistribution" :json-name
                                      "brokerAZDistribution")
                                     (client-subnets :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "ClientSubnets" :json-name
                                      "clientSubnets")
                                     (instance-type :target-type
                                      string-min5max32 :required common-lisp:t
                                      :member-name "InstanceType" :json-name
                                      "instanceType")
                                     (security-groups :target-type
                                      list-of-string :member-name
                                      "SecurityGroups" :json-name
                                      "securityGroups")
                                     (storage-info :target-type storage-info
                                      :member-name "StorageInfo" :json-name
                                      "storageInfo")
                                     (connectivity-info :target-type
                                      connectivity-info :member-name
                                      "ConnectivityInfo" :json-name
                                      "connectivityInfo")
                                     (zone-ids :target-type list-of-string
                                      :member-name "ZoneIds" :json-name
                                      "zoneIds"))
                                    (:shape-name "BrokerNodeGroupInfo"))

(smithy/sdk/shapes:define-structure broker-node-info common-lisp:nil
                                    ((attached-eniid :target-type string
                                      :member-name "AttachedENIId" :json-name
                                      "attachedENIId")
                                     (broker-id :target-type double
                                      :member-name "BrokerId" :json-name
                                      "brokerId")
                                     (client-subnet :target-type string
                                      :member-name "ClientSubnet" :json-name
                                      "clientSubnet")
                                     (client-vpc-ip-address :target-type string
                                      :member-name "ClientVpcIpAddress"
                                      :json-name "clientVpcIpAddress")
                                     (current-broker-software-info :target-type
                                      broker-software-info :member-name
                                      "CurrentBrokerSoftwareInfo" :json-name
                                      "currentBrokerSoftwareInfo")
                                     (endpoints :target-type list-of-string
                                      :member-name "Endpoints" :json-name
                                      "endpoints"))
                                    (:shape-name "BrokerNodeInfo"))

(smithy/sdk/shapes:define-structure broker-software-info common-lisp:nil
                                    ((configuration-arn :target-type string
                                      :member-name "ConfigurationArn"
                                      :json-name "configurationArn")
                                     (configuration-revision :target-type long
                                      :member-name "ConfigurationRevision"
                                      :json-name "configurationRevision")
                                     (kafka-version :target-type string
                                      :member-name "KafkaVersion" :json-name
                                      "kafkaVersion"))
                                    (:shape-name "BrokerSoftwareInfo"))

(smithy/sdk/shapes:define-structure client-authentication common-lisp:nil
                                    ((sasl :target-type sasl :member-name
                                      "Sasl" :json-name "sasl")
                                     (tls :target-type tls :member-name "Tls"
                                      :json-name "tls")
                                     (unauthenticated :target-type
                                      unauthenticated :member-name
                                      "Unauthenticated" :json-name
                                      "unauthenticated"))
                                    (:shape-name "ClientAuthentication"))

(smithy/sdk/shapes:define-enum client-broker
    common-lisp:nil
  (:tls "TLS")
  (:tls-plaintext "TLS_PLAINTEXT")
  (:plaintext "PLAINTEXT"))

(smithy/sdk/shapes:define-structure client-vpc-connection common-lisp:nil
                                    ((authentication :target-type string
                                      :member-name "Authentication" :json-name
                                      "authentication")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (state :target-type vpc-connection-state
                                      :member-name "State" :json-name "state")
                                     (vpc-connection-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "VpcConnectionArn" :json-name
                                      "vpcConnectionArn")
                                     (owner :target-type string :member-name
                                      "Owner" :json-name "owner"))
                                    (:shape-name "ClientVpcConnection"))

(smithy/sdk/shapes:define-structure cloud-watch-logs common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"
                                      :json-name "enabled")
                                     (log-group :target-type string
                                      :member-name "LogGroup" :json-name
                                      "logGroup"))
                                    (:shape-name "CloudWatchLogs"))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((active-operation-arn :target-type string
                                      :member-name "ActiveOperationArn"
                                      :json-name "activeOperationArn")
                                     (cluster-type :target-type cluster-type
                                      :member-name "ClusterType" :json-name
                                      "clusterType")
                                     (cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (cluster-name :target-type string
                                      :member-name "ClusterName" :json-name
                                      "clusterName")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (current-version :target-type string
                                      :member-name "CurrentVersion" :json-name
                                      "currentVersion")
                                     (state :target-type cluster-state
                                      :member-name "State" :json-name "state")
                                     (state-info :target-type state-info
                                      :member-name "StateInfo" :json-name
                                      "stateInfo")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (provisioned :target-type provisioned
                                      :member-name "Provisioned" :json-name
                                      "provisioned")
                                     (serverless :target-type serverless
                                      :member-name "Serverless" :json-name
                                      "serverless"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-info common-lisp:nil
                                    ((active-operation-arn :target-type string
                                      :member-name "ActiveOperationArn"
                                      :json-name "activeOperationArn")
                                     (broker-node-group-info :target-type
                                      broker-node-group-info :member-name
                                      "BrokerNodeGroupInfo" :json-name
                                      "brokerNodeGroupInfo")
                                     (client-authentication :target-type
                                      client-authentication :member-name
                                      "ClientAuthentication" :json-name
                                      "clientAuthentication")
                                     (cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (cluster-name :target-type string
                                      :member-name "ClusterName" :json-name
                                      "clusterName")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (current-broker-software-info :target-type
                                      broker-software-info :member-name
                                      "CurrentBrokerSoftwareInfo" :json-name
                                      "currentBrokerSoftwareInfo")
                                     (current-version :target-type string
                                      :member-name "CurrentVersion" :json-name
                                      "currentVersion")
                                     (encryption-info :target-type
                                      encryption-info :member-name
                                      "EncryptionInfo" :json-name
                                      "encryptionInfo")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring :member-name
                                      "EnhancedMonitoring" :json-name
                                      "enhancedMonitoring")
                                     (open-monitoring :target-type
                                      open-monitoring :member-name
                                      "OpenMonitoring" :json-name
                                      "openMonitoring")
                                     (logging-info :target-type logging-info
                                      :member-name "LoggingInfo" :json-name
                                      "loggingInfo")
                                     (number-of-broker-nodes :target-type
                                      integer :member-name
                                      "NumberOfBrokerNodes" :json-name
                                      "numberOfBrokerNodes")
                                     (state :target-type cluster-state
                                      :member-name "State" :json-name "state")
                                     (state-info :target-type state-info
                                      :member-name "StateInfo" :json-name
                                      "stateInfo")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (zookeeper-connect-string :target-type
                                      string :member-name
                                      "ZookeeperConnectString" :json-name
                                      "zookeeperConnectString")
                                     (zookeeper-connect-string-tls :target-type
                                      string :member-name
                                      "ZookeeperConnectStringTls" :json-name
                                      "zookeeperConnectStringTls")
                                     (storage-mode :target-type storage-mode
                                      :member-name "StorageMode" :json-name
                                      "storageMode")
                                     (customer-action-status :target-type
                                      customer-action-status :member-name
                                      "CustomerActionStatus" :json-name
                                      "customerActionStatus"))
                                    (:shape-name "ClusterInfo"))

(smithy/sdk/shapes:define-structure cluster-operation-info common-lisp:nil
                                    ((client-request-id :target-type string
                                      :member-name "ClientRequestId" :json-name
                                      "clientRequestId")
                                     (cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (end-time :target-type timestamp-iso8601
                                      :member-name "EndTime" :json-name
                                      "endTime")
                                     (error-info :target-type error-info
                                      :member-name "ErrorInfo" :json-name
                                      "errorInfo")
                                     (operation-arn :target-type string
                                      :member-name "OperationArn" :json-name
                                      "operationArn")
                                     (operation-state :target-type string
                                      :member-name "OperationState" :json-name
                                      "operationState")
                                     (operation-steps :target-type
                                      list-of-cluster-operation-step
                                      :member-name "OperationSteps" :json-name
                                      "operationSteps")
                                     (operation-type :target-type string
                                      :member-name "OperationType" :json-name
                                      "operationType")
                                     (source-cluster-info :target-type
                                      mutable-cluster-info :member-name
                                      "SourceClusterInfo" :json-name
                                      "sourceClusterInfo")
                                     (target-cluster-info :target-type
                                      mutable-cluster-info :member-name
                                      "TargetClusterInfo" :json-name
                                      "targetClusterInfo")
                                     (vpc-connection-info :target-type
                                      vpc-connection-info :member-name
                                      "VpcConnectionInfo" :json-name
                                      "vpcConnectionInfo"))
                                    (:shape-name "ClusterOperationInfo"))

(smithy/sdk/shapes:define-structure cluster-operation-step common-lisp:nil
                                    ((step-info :target-type
                                      cluster-operation-step-info :member-name
                                      "StepInfo" :json-name "stepInfo")
                                     (step-name :target-type string
                                      :member-name "StepName" :json-name
                                      "stepName"))
                                    (:shape-name "ClusterOperationStep"))

(smithy/sdk/shapes:define-structure cluster-operation-step-info common-lisp:nil
                                    ((step-status :target-type string
                                      :member-name "StepStatus" :json-name
                                      "stepStatus"))
                                    (:shape-name "ClusterOperationStepInfo"))

(smithy/sdk/shapes:define-structure cluster-operation-v2 common-lisp:nil
                                    ((cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (cluster-type :target-type cluster-type
                                      :member-name "ClusterType" :json-name
                                      "clusterType")
                                     (start-time :target-type timestamp-iso8601
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (end-time :target-type timestamp-iso8601
                                      :member-name "EndTime" :json-name
                                      "endTime")
                                     (error-info :target-type error-info
                                      :member-name "ErrorInfo" :json-name
                                      "errorInfo")
                                     (operation-arn :target-type string
                                      :member-name "OperationArn" :json-name
                                      "operationArn")
                                     (operation-state :target-type string
                                      :member-name "OperationState" :json-name
                                      "operationState")
                                     (operation-type :target-type string
                                      :member-name "OperationType" :json-name
                                      "operationType")
                                     (provisioned :target-type
                                      cluster-operation-v2provisioned
                                      :member-name "Provisioned" :json-name
                                      "provisioned")
                                     (serverless :target-type
                                      cluster-operation-v2serverless
                                      :member-name "Serverless" :json-name
                                      "serverless"))
                                    (:shape-name "ClusterOperationV2"))

(smithy/sdk/shapes:define-structure cluster-operation-v2provisioned
                                    common-lisp:nil
                                    ((operation-steps :target-type
                                      list-of-cluster-operation-step
                                      :member-name "OperationSteps" :json-name
                                      "operationSteps")
                                     (source-cluster-info :target-type
                                      mutable-cluster-info :member-name
                                      "SourceClusterInfo" :json-name
                                      "sourceClusterInfo")
                                     (target-cluster-info :target-type
                                      mutable-cluster-info :member-name
                                      "TargetClusterInfo" :json-name
                                      "targetClusterInfo")
                                     (vpc-connection-info :target-type
                                      vpc-connection-info :member-name
                                      "VpcConnectionInfo" :json-name
                                      "vpcConnectionInfo"))
                                    (:shape-name
                                     "ClusterOperationV2Provisioned"))

(smithy/sdk/shapes:define-structure cluster-operation-v2serverless
                                    common-lisp:nil
                                    ((vpc-connection-info :target-type
                                      vpc-connection-info-serverless
                                      :member-name "VpcConnectionInfo"
                                      :json-name "vpcConnectionInfo"))
                                    (:shape-name
                                     "ClusterOperationV2Serverless"))

(smithy/sdk/shapes:define-structure cluster-operation-v2summary common-lisp:nil
                                    ((cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (cluster-type :target-type cluster-type
                                      :member-name "ClusterType" :json-name
                                      "clusterType")
                                     (start-time :target-type timestamp-iso8601
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (end-time :target-type timestamp-iso8601
                                      :member-name "EndTime" :json-name
                                      "endTime")
                                     (operation-arn :target-type string
                                      :member-name "OperationArn" :json-name
                                      "operationArn")
                                     (operation-state :target-type string
                                      :member-name "OperationState" :json-name
                                      "operationState")
                                     (operation-type :target-type string
                                      :member-name "OperationType" :json-name
                                      "operationType"))
                                    (:shape-name "ClusterOperationV2Summary"))

(smithy/sdk/shapes:define-enum cluster-state
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:healing "HEALING")
  (:maintenance "MAINTENANCE")
  (:rebooting-broker "REBOOTING_BROKER")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum cluster-type
    common-lisp:nil
  (:provisioned "PROVISIONED")
  (:serverless "SERVERLESS"))

(smithy/sdk/shapes:define-structure compatible-kafka-version common-lisp:nil
                                    ((source-version :target-type string
                                      :member-name "SourceVersion" :json-name
                                      "sourceVersion")
                                     (target-versions :target-type
                                      list-of-string :member-name
                                      "TargetVersions" :json-name
                                      "targetVersions"))
                                    (:shape-name "CompatibleKafkaVersion"))

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (creation-time :target-type
                                      timestamp-iso8601 :required common-lisp:t
                                      :member-name "CreationTime" :json-name
                                      "creationTime")
                                     (description :target-type string :required
                                      common-lisp:t :member-name "Description"
                                      :json-name "description")
                                     (kafka-versions :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "KafkaVersions" :json-name
                                      "kafkaVersions")
                                     (latest-revision :target-type
                                      configuration-revision :required
                                      common-lisp:t :member-name
                                      "LatestRevision" :json-name
                                      "latestRevision")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (state :target-type configuration-state
                                      :required common-lisp:t :member-name
                                      "State" :json-name "state"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-structure configuration-info common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (revision :target-type long :required
                                      common-lisp:t :member-name "Revision"
                                      :json-name "revision"))
                                    (:shape-name "ConfigurationInfo"))

(smithy/sdk/shapes:define-structure configuration-revision common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :required common-lisp:t
                                      :member-name "CreationTime" :json-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (revision :target-type long :required
                                      common-lisp:t :member-name "Revision"
                                      :json-name "revision"))
                                    (:shape-name "ConfigurationRevision"))

(smithy/sdk/shapes:define-enum configuration-state
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connectivity-info common-lisp:nil
                                    ((public-access :target-type public-access
                                      :member-name "PublicAccess" :json-name
                                      "publicAccess")
                                     (vpc-connectivity :target-type
                                      vpc-connectivity :member-name
                                      "VpcConnectivity" :json-name
                                      "vpcConnectivity"))
                                    (:shape-name "ConnectivityInfo"))

(smithy/sdk/shapes:define-structure consumer-group-replication common-lisp:nil
                                    ((consumer-groups-to-exclude :target-type
                                      list-of-string-max256 :member-name
                                      "ConsumerGroupsToExclude" :json-name
                                      "consumerGroupsToExclude")
                                     (consumer-groups-to-replicate :target-type
                                      list-of-string-max256 :required
                                      common-lisp:t :member-name
                                      "ConsumerGroupsToReplicate" :json-name
                                      "consumerGroupsToReplicate")
                                     (detect-and-copy-new-consumer-groups
                                      :target-type boolean :member-name
                                      "DetectAndCopyNewConsumerGroups"
                                      :json-name
                                      "detectAndCopyNewConsumerGroups")
                                     (synchronise-consumer-group-offsets
                                      :target-type boolean :member-name
                                      "SynchroniseConsumerGroupOffsets"
                                      :json-name
                                      "synchroniseConsumerGroupOffsets"))
                                    (:shape-name "ConsumerGroupReplication"))

(smithy/sdk/shapes:define-structure consumer-group-replication-update
                                    common-lisp:nil
                                    ((consumer-groups-to-exclude :target-type
                                      list-of-string-max256 :required
                                      common-lisp:t :member-name
                                      "ConsumerGroupsToExclude" :json-name
                                      "consumerGroupsToExclude")
                                     (consumer-groups-to-replicate :target-type
                                      list-of-string-max256 :required
                                      common-lisp:t :member-name
                                      "ConsumerGroupsToReplicate" :json-name
                                      "consumerGroupsToReplicate")
                                     (detect-and-copy-new-consumer-groups
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "DetectAndCopyNewConsumerGroups"
                                      :json-name
                                      "detectAndCopyNewConsumerGroups")
                                     (synchronise-consumer-group-offsets
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "SynchroniseConsumerGroupOffsets"
                                      :json-name
                                      "synchroniseConsumerGroupOffsets"))
                                    (:shape-name
                                     "ConsumerGroupReplicationUpdate"))

(smithy/sdk/shapes:define-structure controller-node-info common-lisp:nil
                                    ((endpoints :target-type list-of-string
                                      :member-name "Endpoints" :json-name
                                      "endpoints"))
                                    (:shape-name "ControllerNodeInfo"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((broker-node-group-info :target-type
                                  broker-node-group-info :required
                                  common-lisp:t :member-name
                                  "BrokerNodeGroupInfo" :json-name
                                  "brokerNodeGroupInfo")
                                 (client-authentication :target-type
                                  client-authentication :member-name
                                  "ClientAuthentication" :json-name
                                  "clientAuthentication")
                                 (cluster-name :target-type string-min1max64
                                  :required common-lisp:t :member-name
                                  "ClusterName" :json-name "clusterName")
                                 (configuration-info :target-type
                                  configuration-info :member-name
                                  "ConfigurationInfo" :json-name
                                  "configurationInfo")
                                 (encryption-info :target-type encryption-info
                                  :member-name "EncryptionInfo" :json-name
                                  "encryptionInfo")
                                 (enhanced-monitoring :target-type
                                  enhanced-monitoring :member-name
                                  "EnhancedMonitoring" :json-name
                                  "enhancedMonitoring")
                                 (open-monitoring :target-type
                                  open-monitoring-info :member-name
                                  "OpenMonitoring" :json-name "openMonitoring")
                                 (kafka-version :target-type string-min1max128
                                  :required common-lisp:t :member-name
                                  "KafkaVersion" :json-name "kafkaVersion")
                                 (logging-info :target-type logging-info
                                  :member-name "LoggingInfo" :json-name
                                  "loggingInfo")
                                 (number-of-broker-nodes :target-type
                                  integer-min1max15 :required common-lisp:t
                                  :member-name "NumberOfBrokerNodes" :json-name
                                  "numberOfBrokerNodes")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags")
                                 (storage-mode :target-type storage-mode
                                  :member-name "StorageMode" :json-name
                                  "storageMode"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-name :target-type string
                                   :member-name "ClusterName" :json-name
                                   "clusterName")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-cluster-v2request common-lisp:nil
                                ((cluster-name :target-type string-min1max64
                                  :required common-lisp:t :member-name
                                  "ClusterName" :json-name "clusterName")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags")
                                 (provisioned :target-type provisioned-request
                                  :member-name "Provisioned" :json-name
                                  "provisioned")
                                 (serverless :target-type serverless-request
                                  :member-name "Serverless" :json-name
                                  "serverless"))
                                (:shape-name "CreateClusterV2Request"))

(smithy/sdk/shapes:define-output create-cluster-v2response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-name :target-type string
                                   :member-name "ClusterName" :json-name
                                   "clusterName")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state")
                                  (cluster-type :target-type cluster-type
                                   :member-name "ClusterType" :json-name
                                   "clusterType"))
                                 (:shape-name "CreateClusterV2Response"))

(smithy/sdk/shapes:define-input create-configuration-request common-lisp:nil
                                ((description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (kafka-versions :target-type list-of-string
                                  :member-name "KafkaVersions" :json-name
                                  "kafkaVersions")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (server-properties :target-type blob :required
                                  common-lisp:t :member-name "ServerProperties"
                                  :json-name "serverProperties"))
                                (:shape-name "CreateConfigurationRequest"))

(smithy/sdk/shapes:define-output create-configuration-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (state :target-type configuration-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "CreateConfigurationResponse"))

(smithy/sdk/shapes:define-input create-replicator-request common-lisp:nil
                                ((description :target-type string-max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (kafka-clusters :target-type
                                  list-of-kafka-cluster :required common-lisp:t
                                  :member-name "KafkaClusters" :json-name
                                  "kafkaClusters")
                                 (replication-info-list :target-type
                                  list-of-replication-info :required
                                  common-lisp:t :member-name
                                  "ReplicationInfoList" :json-name
                                  "replicationInfoList")
                                 (replicator-name :target-type
                                  string-min1max128pattern09aza-z09aza-z0
                                  :required common-lisp:t :member-name
                                  "ReplicatorName" :json-name "replicatorName")
                                 (service-execution-role-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "ServiceExecutionRoleArn" :json-name
                                  "serviceExecutionRoleArn")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateReplicatorRequest"))

(smithy/sdk/shapes:define-output create-replicator-response common-lisp:nil
                                 ((replicator-arn :target-type string
                                   :member-name "ReplicatorArn" :json-name
                                   "replicatorArn")
                                  (replicator-name :target-type string
                                   :member-name "ReplicatorName" :json-name
                                   "replicatorName")
                                  (replicator-state :target-type
                                   replicator-state :member-name
                                   "ReplicatorState" :json-name
                                   "replicatorState"))
                                 (:shape-name "CreateReplicatorResponse"))

(smithy/sdk/shapes:define-input create-vpc-connection-request common-lisp:nil
                                ((target-cluster-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetClusterArn" :json-name
                                  "targetClusterArn")
                                 (authentication :target-type string :required
                                  common-lisp:t :member-name "Authentication"
                                  :json-name "authentication")
                                 (vpc-id :target-type string :required
                                  common-lisp:t :member-name "VpcId" :json-name
                                  "vpcId")
                                 (client-subnets :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "ClientSubnets" :json-name "clientSubnets")
                                 (security-groups :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "SecurityGroups" :json-name "securityGroups")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateVpcConnectionRequest"))

(smithy/sdk/shapes:define-output create-vpc-connection-response common-lisp:nil
                                 ((vpc-connection-arn :target-type string
                                   :member-name "VpcConnectionArn" :json-name
                                   "vpcConnectionArn")
                                  (state :target-type vpc-connection-state
                                   :member-name "State" :json-name "state")
                                  (authentication :target-type string
                                   :member-name "Authentication" :json-name
                                   "authentication")
                                  (vpc-id :target-type string :member-name
                                   "VpcId" :json-name "vpcId")
                                  (client-subnets :target-type list-of-string
                                   :member-name "ClientSubnets" :json-name
                                   "clientSubnets")
                                  (security-groups :target-type list-of-string
                                   :member-name "SecurityGroups" :json-name
                                   "securityGroups")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "CreateVpcConnectionResponse"))

(smithy/sdk/shapes:define-enum customer-action-status
    common-lisp:nil
  (:critical-action-required "CRITICAL_ACTION_REQUIRED")
  (:action-recommended "ACTION_RECOMMENDED")
  (:none "NONE"))

(smithy/sdk/shapes:define-input delete-cluster-policy-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteClusterPolicyRequest"))

(smithy/sdk/shapes:define-output delete-cluster-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteClusterPolicyResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string
                                  :member-name "CurrentVersion" :http-query
                                  "currentVersion"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-configuration-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-configuration-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (state :target-type configuration-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DeleteConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-replicator-request common-lisp:nil
                                ((current-version :target-type string
                                  :member-name "CurrentVersion" :http-query
                                  "currentVersion")
                                 (replicator-arn :target-type string :required
                                  common-lisp:t :member-name "ReplicatorArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteReplicatorRequest"))

(smithy/sdk/shapes:define-output delete-replicator-response common-lisp:nil
                                 ((replicator-arn :target-type string
                                   :member-name "ReplicatorArn" :json-name
                                   "replicatorArn")
                                  (replicator-state :target-type
                                   replicator-state :member-name
                                   "ReplicatorState" :json-name
                                   "replicatorState"))
                                 (:shape-name "DeleteReplicatorResponse"))

(smithy/sdk/shapes:define-input delete-vpc-connection-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteVpcConnectionRequest"))

(smithy/sdk/shapes:define-output delete-vpc-connection-response common-lisp:nil
                                 ((vpc-connection-arn :target-type string
                                   :member-name "VpcConnectionArn" :json-name
                                   "vpcConnectionArn")
                                  (state :target-type vpc-connection-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DeleteVpcConnectionResponse"))

(smithy/sdk/shapes:define-input describe-cluster-operation-request
                                common-lisp:nil
                                ((cluster-operation-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterOperationArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeClusterOperationRequest"))

(smithy/sdk/shapes:define-output describe-cluster-operation-response
                                 common-lisp:nil
                                 ((cluster-operation-info :target-type
                                   cluster-operation-info :member-name
                                   "ClusterOperationInfo" :json-name
                                   "clusterOperationInfo"))
                                 (:shape-name
                                  "DescribeClusterOperationResponse"))

(smithy/sdk/shapes:define-input describe-cluster-operation-v2request
                                common-lisp:nil
                                ((cluster-operation-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterOperationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeClusterOperationV2Request"))

(smithy/sdk/shapes:define-output describe-cluster-operation-v2response
                                 common-lisp:nil
                                 ((cluster-operation-info :target-type
                                   cluster-operation-v2 :member-name
                                   "ClusterOperationInfo" :json-name
                                   "clusterOperationInfo"))
                                 (:shape-name
                                  "DescribeClusterOperationV2Response"))

(smithy/sdk/shapes:define-input describe-cluster-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeClusterRequest"))

(smithy/sdk/shapes:define-output describe-cluster-response common-lisp:nil
                                 ((cluster-info :target-type cluster-info
                                   :member-name "ClusterInfo" :json-name
                                   "clusterInfo"))
                                 (:shape-name "DescribeClusterResponse"))

(smithy/sdk/shapes:define-input describe-cluster-v2request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeClusterV2Request"))

(smithy/sdk/shapes:define-output describe-cluster-v2response common-lisp:nil
                                 ((cluster-info :target-type cluster
                                   :member-name "ClusterInfo" :json-name
                                   "clusterInfo"))
                                 (:shape-name "DescribeClusterV2Response"))

(smithy/sdk/shapes:define-input describe-configuration-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (kafka-versions :target-type list-of-string
                                   :member-name "KafkaVersions" :json-name
                                   "kafkaVersions")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (state :target-type configuration-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DescribeConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-configuration-revision-request
                                common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (revision :target-type long :required
                                  common-lisp:t :member-name "Revision"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeConfigurationRevisionRequest"))

(smithy/sdk/shapes:define-output describe-configuration-revision-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (revision :target-type long :member-name
                                   "Revision" :json-name "revision")
                                  (server-properties :target-type blob
                                   :member-name "ServerProperties" :json-name
                                   "serverProperties"))
                                 (:shape-name
                                  "DescribeConfigurationRevisionResponse"))

(smithy/sdk/shapes:define-input describe-replicator-request common-lisp:nil
                                ((replicator-arn :target-type string :required
                                  common-lisp:t :member-name "ReplicatorArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeReplicatorRequest"))

(smithy/sdk/shapes:define-output describe-replicator-response common-lisp:nil
                                 ((creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (current-version :target-type string
                                   :member-name "CurrentVersion" :json-name
                                   "currentVersion")
                                  (is-replicator-reference :target-type boolean
                                   :member-name "IsReplicatorReference"
                                   :json-name "isReplicatorReference")
                                  (kafka-clusters :target-type
                                   list-of-kafka-cluster-description
                                   :member-name "KafkaClusters" :json-name
                                   "kafkaClusters")
                                  (replication-info-list :target-type
                                   list-of-replication-info-description
                                   :member-name "ReplicationInfoList"
                                   :json-name "replicationInfoList")
                                  (replicator-arn :target-type string
                                   :member-name "ReplicatorArn" :json-name
                                   "replicatorArn")
                                  (replicator-description :target-type string
                                   :member-name "ReplicatorDescription"
                                   :json-name "replicatorDescription")
                                  (replicator-name :target-type string
                                   :member-name "ReplicatorName" :json-name
                                   "replicatorName")
                                  (replicator-resource-arn :target-type string
                                   :member-name "ReplicatorResourceArn"
                                   :json-name "replicatorResourceArn")
                                  (replicator-state :target-type
                                   replicator-state :member-name
                                   "ReplicatorState" :json-name
                                   "replicatorState")
                                  (service-execution-role-arn :target-type
                                   string :member-name
                                   "ServiceExecutionRoleArn" :json-name
                                   "serviceExecutionRoleArn")
                                  (state-info :target-type
                                   replication-state-info :member-name
                                   "StateInfo" :json-name "stateInfo")
                                  (tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "DescribeReplicatorResponse"))

(smithy/sdk/shapes:define-input describe-vpc-connection-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeVpcConnectionRequest"))

(smithy/sdk/shapes:define-output describe-vpc-connection-response
                                 common-lisp:nil
                                 ((vpc-connection-arn :target-type string
                                   :member-name "VpcConnectionArn" :json-name
                                   "vpcConnectionArn")
                                  (target-cluster-arn :target-type string
                                   :member-name "TargetClusterArn" :json-name
                                   "targetClusterArn")
                                  (state :target-type vpc-connection-state
                                   :member-name "State" :json-name "state")
                                  (authentication :target-type string
                                   :member-name "Authentication" :json-name
                                   "authentication")
                                  (vpc-id :target-type string :member-name
                                   "VpcId" :json-name "vpcId")
                                  (subnets :target-type list-of-string
                                   :member-name "Subnets" :json-name "subnets")
                                  (security-groups :target-type list-of-string
                                   :member-name "SecurityGroups" :json-name
                                   "securityGroups")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "CreationTime" :json-name
                                   "creationTime")
                                  (tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "DescribeVpcConnectionResponse"))

(smithy/sdk/shapes:define-structure ebsstorage-info common-lisp:nil
                                    ((provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput" :json-name
                                      "provisionedThroughput")
                                     (volume-size :target-type
                                      integer-min1max16384 :member-name
                                      "VolumeSize" :json-name "volumeSize"))
                                    (:shape-name "EBSStorageInfo"))

(smithy/sdk/shapes:define-structure encryption-at-rest common-lisp:nil
                                    ((data-volume-kmskey-id :target-type string
                                      :required common-lisp:t :member-name
                                      "DataVolumeKMSKeyId" :json-name
                                      "dataVolumeKMSKeyId"))
                                    (:shape-name "EncryptionAtRest"))

(smithy/sdk/shapes:define-structure encryption-in-transit common-lisp:nil
                                    ((client-broker :target-type client-broker
                                      :member-name "ClientBroker" :json-name
                                      "clientBroker")
                                     (in-cluster :target-type boolean
                                      :member-name "InCluster" :json-name
                                      "inCluster"))
                                    (:shape-name "EncryptionInTransit"))

(smithy/sdk/shapes:define-structure encryption-info common-lisp:nil
                                    ((encryption-at-rest :target-type
                                      encryption-at-rest :member-name
                                      "EncryptionAtRest" :json-name
                                      "encryptionAtRest")
                                     (encryption-in-transit :target-type
                                      encryption-in-transit :member-name
                                      "EncryptionInTransit" :json-name
                                      "encryptionInTransit"))
                                    (:shape-name "EncryptionInfo"))

(smithy/sdk/shapes:define-enum enhanced-monitoring
    common-lisp:nil
  (:default "DEFAULT")
  (:per-broker "PER_BROKER")
  (:per-topic-per-broker "PER_TOPIC_PER_BROKER")
  (:per-topic-per-partition "PER_TOPIC_PER_PARTITION"))

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode" :json-name
                                      "errorCode")
                                     (error-string :target-type string
                                      :member-name "ErrorString" :json-name
                                      "errorString"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-structure firehose common-lisp:nil
                                    ((delivery-stream :target-type string
                                      :member-name "DeliveryStream" :json-name
                                      "deliveryStream")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"
                                      :json-name "enabled"))
                                    (:shape-name "Firehose"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-bootstrap-brokers-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBootstrapBrokersRequest"))

(smithy/sdk/shapes:define-output get-bootstrap-brokers-response common-lisp:nil
                                 ((bootstrap-broker-string :target-type string
                                   :member-name "BootstrapBrokerString"
                                   :json-name "bootstrapBrokerString")
                                  (bootstrap-broker-string-tls :target-type
                                   string :member-name
                                   "BootstrapBrokerStringTls" :json-name
                                   "bootstrapBrokerStringTls")
                                  (bootstrap-broker-string-sasl-scram
                                   :target-type string :member-name
                                   "BootstrapBrokerStringSaslScram" :json-name
                                   "bootstrapBrokerStringSaslScram")
                                  (bootstrap-broker-string-sasl-iam
                                   :target-type string :member-name
                                   "BootstrapBrokerStringSaslIam" :json-name
                                   "bootstrapBrokerStringSaslIam")
                                  (bootstrap-broker-string-public-tls
                                   :target-type string :member-name
                                   "BootstrapBrokerStringPublicTls" :json-name
                                   "bootstrapBrokerStringPublicTls")
                                  (bootstrap-broker-string-public-sasl-scram
                                   :target-type string :member-name
                                   "BootstrapBrokerStringPublicSaslScram"
                                   :json-name
                                   "bootstrapBrokerStringPublicSaslScram")
                                  (bootstrap-broker-string-public-sasl-iam
                                   :target-type string :member-name
                                   "BootstrapBrokerStringPublicSaslIam"
                                   :json-name
                                   "bootstrapBrokerStringPublicSaslIam")
                                  (bootstrap-broker-string-vpc-connectivity-tls
                                   :target-type string :member-name
                                   "BootstrapBrokerStringVpcConnectivityTls"
                                   :json-name
                                   "bootstrapBrokerStringVpcConnectivityTls")
                                  (bootstrap-broker-string-vpc-connectivity-sasl-scram
                                   :target-type string :member-name
                                   "BootstrapBrokerStringVpcConnectivitySaslScram"
                                   :json-name
                                   "bootstrapBrokerStringVpcConnectivitySaslScram")
                                  (bootstrap-broker-string-vpc-connectivity-sasl-iam
                                   :target-type string :member-name
                                   "BootstrapBrokerStringVpcConnectivitySaslIam"
                                   :json-name
                                   "bootstrapBrokerStringVpcConnectivitySaslIam"))
                                 (:shape-name "GetBootstrapBrokersResponse"))

(smithy/sdk/shapes:define-input get-cluster-policy-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetClusterPolicyRequest"))

(smithy/sdk/shapes:define-output get-cluster-policy-response common-lisp:nil
                                 ((current-version :target-type string
                                   :member-name "CurrentVersion" :json-name
                                   "currentVersion")
                                  (policy :target-type string :member-name
                                   "Policy" :json-name "policy"))
                                 (:shape-name "GetClusterPolicyResponse"))

(smithy/sdk/shapes:define-input get-compatible-kafka-versions-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :member-name
                                  "ClusterArn" :http-query "clusterArn"))
                                (:shape-name
                                 "GetCompatibleKafkaVersionsRequest"))

(smithy/sdk/shapes:define-output get-compatible-kafka-versions-response
                                 common-lisp:nil
                                 ((compatible-kafka-versions :target-type
                                   list-of-compatible-kafka-version
                                   :member-name "CompatibleKafkaVersions"
                                   :json-name "compatibleKafkaVersions"))
                                 (:shape-name
                                  "GetCompatibleKafkaVersionsResponse"))

(smithy/sdk/shapes:define-structure iam common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "Iam"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure jmx-exporter common-lisp:nil
                                    ((enabled-in-broker :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EnabledInBroker" :json-name
                                      "enabledInBroker"))
                                    (:shape-name "JmxExporter"))

(smithy/sdk/shapes:define-structure jmx-exporter-info common-lisp:nil
                                    ((enabled-in-broker :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EnabledInBroker" :json-name
                                      "enabledInBroker"))
                                    (:shape-name "JmxExporterInfo"))

(smithy/sdk/shapes:define-structure kafka-cluster common-lisp:nil
                                    ((amazon-msk-cluster :target-type
                                      amazon-msk-cluster :required
                                      common-lisp:t :member-name
                                      "AmazonMskCluster" :json-name
                                      "amazonMskCluster")
                                     (vpc-config :target-type
                                      kafka-cluster-client-vpc-config :required
                                      common-lisp:t :member-name "VpcConfig"
                                      :json-name "vpcConfig"))
                                    (:shape-name "KafkaCluster"))

(smithy/sdk/shapes:define-structure kafka-cluster-client-vpc-config
                                    common-lisp:nil
                                    ((security-group-ids :target-type
                                      list-of-string :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "SubnetIds" :json-name "subnetIds"))
                                    (:shape-name "KafkaClusterClientVpcConfig"))

(smithy/sdk/shapes:define-structure kafka-cluster-description common-lisp:nil
                                    ((amazon-msk-cluster :target-type
                                      amazon-msk-cluster :member-name
                                      "AmazonMskCluster" :json-name
                                      "amazonMskCluster")
                                     (kafka-cluster-alias :target-type string
                                      :member-name "KafkaClusterAlias"
                                      :json-name "kafkaClusterAlias")
                                     (vpc-config :target-type
                                      kafka-cluster-client-vpc-config
                                      :member-name "VpcConfig" :json-name
                                      "vpcConfig"))
                                    (:shape-name "KafkaClusterDescription"))

(smithy/sdk/shapes:define-structure kafka-cluster-summary common-lisp:nil
                                    ((amazon-msk-cluster :target-type
                                      amazon-msk-cluster :member-name
                                      "AmazonMskCluster" :json-name
                                      "amazonMskCluster")
                                     (kafka-cluster-alias :target-type string
                                      :member-name "KafkaClusterAlias"
                                      :json-name "kafkaClusterAlias"))
                                    (:shape-name "KafkaClusterSummary"))

(smithy/sdk/shapes:define-structure kafka-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version" :json-name "version")
                                     (status :target-type kafka-version-status
                                      :member-name "Status" :json-name
                                      "status"))
                                    (:shape-name "KafkaVersion"))

(smithy/sdk/shapes:define-enum kafka-version-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-input list-client-vpc-connections-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClientVpcConnectionsRequest"))

(smithy/sdk/shapes:define-output list-client-vpc-connections-response
                                 common-lisp:nil
                                 ((client-vpc-connections :target-type
                                   list-of-client-vpc-connection :member-name
                                   "ClientVpcConnections" :json-name
                                   "clientVpcConnections")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListClientVpcConnectionsResponse"))

(smithy/sdk/shapes:define-input list-cluster-operations-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClusterOperationsRequest"))

(smithy/sdk/shapes:define-output list-cluster-operations-response
                                 common-lisp:nil
                                 ((cluster-operation-info-list :target-type
                                   list-of-cluster-operation-info :member-name
                                   "ClusterOperationInfoList" :json-name
                                   "clusterOperationInfoList")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListClusterOperationsResponse"))

(smithy/sdk/shapes:define-input list-cluster-operations-v2request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClusterOperationsV2Request"))

(smithy/sdk/shapes:define-output list-cluster-operations-v2response
                                 common-lisp:nil
                                 ((cluster-operation-info-list :target-type
                                   list-of-cluster-operation-v2summary
                                   :member-name "ClusterOperationInfoList"
                                   :json-name "clusterOperationInfoList")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListClusterOperationsV2Response"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((cluster-name-filter :target-type string
                                  :member-name "ClusterNameFilter" :http-query
                                  "clusterNameFilter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((cluster-info-list :target-type
                                   list-of-cluster-info :member-name
                                   "ClusterInfoList" :json-name
                                   "clusterInfoList")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-clusters-v2request common-lisp:nil
                                ((cluster-name-filter :target-type string
                                  :member-name "ClusterNameFilter" :http-query
                                  "clusterNameFilter")
                                 (cluster-type-filter :target-type string
                                  :member-name "ClusterTypeFilter" :http-query
                                  "clusterTypeFilter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClustersV2Request"))

(smithy/sdk/shapes:define-output list-clusters-v2response common-lisp:nil
                                 ((cluster-info-list :target-type
                                   list-of-cluster :member-name
                                   "ClusterInfoList" :json-name
                                   "clusterInfoList")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListClustersV2Response"))

(smithy/sdk/shapes:define-input list-configuration-revisions-request
                                common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListConfigurationRevisionsRequest"))

(smithy/sdk/shapes:define-output list-configuration-revisions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
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
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-kafka-versions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListKafkaVersionsRequest"))

(smithy/sdk/shapes:define-output list-kafka-versions-response common-lisp:nil
                                 ((kafka-versions :target-type
                                   list-of-kafka-version :member-name
                                   "KafkaVersions" :json-name "kafkaVersions")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListKafkaVersionsResponse"))

(smithy/sdk/shapes:define-input list-nodes-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListNodesRequest"))

(smithy/sdk/shapes:define-output list-nodes-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (node-info-list :target-type
                                   list-of-node-info :member-name
                                   "NodeInfoList" :json-name "nodeInfoList"))
                                 (:shape-name "ListNodesResponse"))

(smithy/sdk/shapes:define-input list-replicators-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (replicator-name-filter :target-type string
                                  :member-name "ReplicatorNameFilter"
                                  :http-query "replicatorNameFilter"))
                                (:shape-name "ListReplicatorsRequest"))

(smithy/sdk/shapes:define-output list-replicators-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (replicators :target-type
                                   list-of-replicator-summary :member-name
                                   "Replicators" :json-name "replicators"))
                                 (:shape-name "ListReplicatorsResponse"))

(smithy/sdk/shapes:define-input list-scram-secrets-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListScramSecretsRequest"))

(smithy/sdk/shapes:define-output list-scram-secrets-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (secret-arn-list :target-type list-of-string
                                   :member-name "SecretArnList" :json-name
                                   "secretArnList"))
                                 (:shape-name "ListScramSecretsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-vpc-connections-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListVpcConnectionsRequest"))

(smithy/sdk/shapes:define-output list-vpc-connections-response common-lisp:nil
                                 ((vpc-connections :target-type
                                   list-of-vpc-connection :member-name
                                   "VpcConnections" :json-name
                                   "vpcConnections")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListVpcConnectionsResponse"))

(smithy/sdk/shapes:define-structure logging-info common-lisp:nil
                                    ((broker-logs :target-type broker-logs
                                      :required common-lisp:t :member-name
                                      "BrokerLogs" :json-name "brokerLogs"))
                                    (:shape-name "LoggingInfo"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mutable-cluster-info common-lisp:nil
                                    ((broker-ebsvolume-info :target-type
                                      list-of-broker-ebsvolume-info
                                      :member-name "BrokerEBSVolumeInfo"
                                      :json-name "brokerEBSVolumeInfo")
                                     (configuration-info :target-type
                                      configuration-info :member-name
                                      "ConfigurationInfo" :json-name
                                      "configurationInfo")
                                     (number-of-broker-nodes :target-type
                                      integer :member-name
                                      "NumberOfBrokerNodes" :json-name
                                      "numberOfBrokerNodes")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring :member-name
                                      "EnhancedMonitoring" :json-name
                                      "enhancedMonitoring")
                                     (open-monitoring :target-type
                                      open-monitoring :member-name
                                      "OpenMonitoring" :json-name
                                      "openMonitoring")
                                     (kafka-version :target-type string
                                      :member-name "KafkaVersion" :json-name
                                      "kafkaVersion")
                                     (logging-info :target-type logging-info
                                      :member-name "LoggingInfo" :json-name
                                      "loggingInfo")
                                     (instance-type :target-type
                                      string-min5max32 :member-name
                                      "InstanceType" :json-name "instanceType")
                                     (client-authentication :target-type
                                      client-authentication :member-name
                                      "ClientAuthentication" :json-name
                                      "clientAuthentication")
                                     (encryption-info :target-type
                                      encryption-info :member-name
                                      "EncryptionInfo" :json-name
                                      "encryptionInfo")
                                     (connectivity-info :target-type
                                      connectivity-info :member-name
                                      "ConnectivityInfo" :json-name
                                      "connectivityInfo")
                                     (storage-mode :target-type storage-mode
                                      :member-name "StorageMode" :json-name
                                      "storageMode")
                                     (broker-count-update-info :target-type
                                      broker-count-update-info :member-name
                                      "BrokerCountUpdateInfo" :json-name
                                      "brokerCountUpdateInfo"))
                                    (:shape-name "MutableClusterInfo"))

(smithy/sdk/shapes:define-structure node-exporter common-lisp:nil
                                    ((enabled-in-broker :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EnabledInBroker" :json-name
                                      "enabledInBroker"))
                                    (:shape-name "NodeExporter"))

(smithy/sdk/shapes:define-structure node-exporter-info common-lisp:nil
                                    ((enabled-in-broker :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EnabledInBroker" :json-name
                                      "enabledInBroker"))
                                    (:shape-name "NodeExporterInfo"))

(smithy/sdk/shapes:define-structure node-info common-lisp:nil
                                    ((added-to-cluster-time :target-type string
                                      :member-name "AddedToClusterTime"
                                      :json-name "addedToClusterTime")
                                     (broker-node-info :target-type
                                      broker-node-info :member-name
                                      "BrokerNodeInfo" :json-name
                                      "brokerNodeInfo")
                                     (controller-node-info :target-type
                                      controller-node-info :member-name
                                      "ControllerNodeInfo" :json-name
                                      "controllerNodeInfo")
                                     (instance-type :target-type string
                                      :member-name "InstanceType" :json-name
                                      "instanceType")
                                     (node-arn :target-type string :member-name
                                      "NodeARN" :json-name "nodeARN")
                                     (node-type :target-type node-type
                                      :member-name "NodeType" :json-name
                                      "nodeType")
                                     (zookeeper-node-info :target-type
                                      zookeeper-node-info :member-name
                                      "ZookeeperNodeInfo" :json-name
                                      "zookeeperNodeInfo"))
                                    (:shape-name "NodeInfo"))

(smithy/sdk/shapes:define-enum node-type
    common-lisp:nil
  (:broker "BROKER"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure open-monitoring common-lisp:nil
                                    ((prometheus :target-type prometheus
                                      :required common-lisp:t :member-name
                                      "Prometheus" :json-name "prometheus"))
                                    (:shape-name "OpenMonitoring"))

(smithy/sdk/shapes:define-structure open-monitoring-info common-lisp:nil
                                    ((prometheus :target-type prometheus-info
                                      :required common-lisp:t :member-name
                                      "Prometheus" :json-name "prometheus"))
                                    (:shape-name "OpenMonitoringInfo"))

(smithy/sdk/shapes:define-structure prometheus common-lisp:nil
                                    ((jmx-exporter :target-type jmx-exporter
                                      :member-name "JmxExporter" :json-name
                                      "jmxExporter")
                                     (node-exporter :target-type node-exporter
                                      :member-name "NodeExporter" :json-name
                                      "nodeExporter"))
                                    (:shape-name "Prometheus"))

(smithy/sdk/shapes:define-structure prometheus-info common-lisp:nil
                                    ((jmx-exporter :target-type
                                      jmx-exporter-info :member-name
                                      "JmxExporter" :json-name "jmxExporter")
                                     (node-exporter :target-type
                                      node-exporter-info :member-name
                                      "NodeExporter" :json-name
                                      "nodeExporter"))
                                    (:shape-name "PrometheusInfo"))

(smithy/sdk/shapes:define-structure provisioned common-lisp:nil
                                    ((broker-node-group-info :target-type
                                      broker-node-group-info :required
                                      common-lisp:t :member-name
                                      "BrokerNodeGroupInfo" :json-name
                                      "brokerNodeGroupInfo")
                                     (current-broker-software-info :target-type
                                      broker-software-info :member-name
                                      "CurrentBrokerSoftwareInfo" :json-name
                                      "currentBrokerSoftwareInfo")
                                     (client-authentication :target-type
                                      client-authentication :member-name
                                      "ClientAuthentication" :json-name
                                      "clientAuthentication")
                                     (encryption-info :target-type
                                      encryption-info :member-name
                                      "EncryptionInfo" :json-name
                                      "encryptionInfo")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring :member-name
                                      "EnhancedMonitoring" :json-name
                                      "enhancedMonitoring")
                                     (open-monitoring :target-type
                                      open-monitoring-info :member-name
                                      "OpenMonitoring" :json-name
                                      "openMonitoring")
                                     (logging-info :target-type logging-info
                                      :member-name "LoggingInfo" :json-name
                                      "loggingInfo")
                                     (number-of-broker-nodes :target-type
                                      integer-min1max15 :required common-lisp:t
                                      :member-name "NumberOfBrokerNodes"
                                      :json-name "numberOfBrokerNodes")
                                     (zookeeper-connect-string :target-type
                                      string :member-name
                                      "ZookeeperConnectString" :json-name
                                      "zookeeperConnectString")
                                     (zookeeper-connect-string-tls :target-type
                                      string :member-name
                                      "ZookeeperConnectStringTls" :json-name
                                      "zookeeperConnectStringTls")
                                     (storage-mode :target-type storage-mode
                                      :member-name "StorageMode" :json-name
                                      "storageMode")
                                     (customer-action-status :target-type
                                      customer-action-status :member-name
                                      "CustomerActionStatus" :json-name
                                      "customerActionStatus"))
                                    (:shape-name "Provisioned"))

(smithy/sdk/shapes:define-structure provisioned-request common-lisp:nil
                                    ((broker-node-group-info :target-type
                                      broker-node-group-info :required
                                      common-lisp:t :member-name
                                      "BrokerNodeGroupInfo" :json-name
                                      "brokerNodeGroupInfo")
                                     (client-authentication :target-type
                                      client-authentication :member-name
                                      "ClientAuthentication" :json-name
                                      "clientAuthentication")
                                     (configuration-info :target-type
                                      configuration-info :member-name
                                      "ConfigurationInfo" :json-name
                                      "configurationInfo")
                                     (encryption-info :target-type
                                      encryption-info :member-name
                                      "EncryptionInfo" :json-name
                                      "encryptionInfo")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring :member-name
                                      "EnhancedMonitoring" :json-name
                                      "enhancedMonitoring")
                                     (open-monitoring :target-type
                                      open-monitoring-info :member-name
                                      "OpenMonitoring" :json-name
                                      "openMonitoring")
                                     (kafka-version :target-type
                                      string-min1max128 :required common-lisp:t
                                      :member-name "KafkaVersion" :json-name
                                      "kafkaVersion")
                                     (logging-info :target-type logging-info
                                      :member-name "LoggingInfo" :json-name
                                      "loggingInfo")
                                     (number-of-broker-nodes :target-type
                                      integer-min1max15 :required common-lisp:t
                                      :member-name "NumberOfBrokerNodes"
                                      :json-name "numberOfBrokerNodes")
                                     (storage-mode :target-type storage-mode
                                      :member-name "StorageMode" :json-name
                                      "storageMode"))
                                    (:shape-name "ProvisionedRequest"))

(smithy/sdk/shapes:define-structure provisioned-throughput common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled")
                                     (volume-throughput :target-type integer
                                      :member-name "VolumeThroughput"
                                      :json-name "volumeThroughput"))
                                    (:shape-name "ProvisionedThroughput"))

(smithy/sdk/shapes:define-structure public-access common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "PublicAccess"))

(smithy/sdk/shapes:define-input put-cluster-policy-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string
                                  :member-name "CurrentVersion" :json-name
                                  "currentVersion")
                                 (policy :target-type string :required
                                  common-lisp:t :member-name "Policy"
                                  :json-name "policy"))
                                (:shape-name "PutClusterPolicyRequest"))

(smithy/sdk/shapes:define-output put-cluster-policy-response common-lisp:nil
                                 ((current-version :target-type string
                                   :member-name "CurrentVersion" :json-name
                                   "currentVersion"))
                                 (:shape-name "PutClusterPolicyResponse"))

(smithy/sdk/shapes:define-input reboot-broker-request common-lisp:nil
                                ((broker-ids :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "BrokerIds" :json-name "brokerIds")
                                 (cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "RebootBrokerRequest"))

(smithy/sdk/shapes:define-output reboot-broker-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "RebootBrokerResponse"))

(smithy/sdk/shapes:define-input reject-client-vpc-connection-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (vpc-connection-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "VpcConnectionArn" :json-name
                                  "vpcConnectionArn"))
                                (:shape-name
                                 "RejectClientVpcConnectionRequest"))

(smithy/sdk/shapes:define-output reject-client-vpc-connection-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RejectClientVpcConnectionResponse"))

(smithy/sdk/shapes:define-structure replication-info common-lisp:nil
                                    ((consumer-group-replication :target-type
                                      consumer-group-replication :required
                                      common-lisp:t :member-name
                                      "ConsumerGroupReplication" :json-name
                                      "consumerGroupReplication")
                                     (source-kafka-cluster-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "SourceKafkaClusterArn"
                                      :json-name "sourceKafkaClusterArn")
                                     (target-compression-type :target-type
                                      target-compression-type :required
                                      common-lisp:t :member-name
                                      "TargetCompressionType" :json-name
                                      "targetCompressionType")
                                     (target-kafka-cluster-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "TargetKafkaClusterArn"
                                      :json-name "targetKafkaClusterArn")
                                     (topic-replication :target-type
                                      topic-replication :required common-lisp:t
                                      :member-name "TopicReplication"
                                      :json-name "topicReplication"))
                                    (:shape-name "ReplicationInfo"))

(smithy/sdk/shapes:define-structure replication-info-description
                                    common-lisp:nil
                                    ((consumer-group-replication :target-type
                                      consumer-group-replication :member-name
                                      "ConsumerGroupReplication" :json-name
                                      "consumerGroupReplication")
                                     (source-kafka-cluster-alias :target-type
                                      string :member-name
                                      "SourceKafkaClusterAlias" :json-name
                                      "sourceKafkaClusterAlias")
                                     (target-compression-type :target-type
                                      target-compression-type :member-name
                                      "TargetCompressionType" :json-name
                                      "targetCompressionType")
                                     (target-kafka-cluster-alias :target-type
                                      string :member-name
                                      "TargetKafkaClusterAlias" :json-name
                                      "targetKafkaClusterAlias")
                                     (topic-replication :target-type
                                      topic-replication :member-name
                                      "TopicReplication" :json-name
                                      "topicReplication"))
                                    (:shape-name "ReplicationInfoDescription"))

(smithy/sdk/shapes:define-structure replication-info-summary common-lisp:nil
                                    ((source-kafka-cluster-alias :target-type
                                      string :member-name
                                      "SourceKafkaClusterAlias" :json-name
                                      "sourceKafkaClusterAlias")
                                     (target-kafka-cluster-alias :target-type
                                      string :member-name
                                      "TargetKafkaClusterAlias" :json-name
                                      "targetKafkaClusterAlias"))
                                    (:shape-name "ReplicationInfoSummary"))

(smithy/sdk/shapes:define-structure replication-starting-position
                                    common-lisp:nil
                                    ((type :target-type
                                      replication-starting-position-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "ReplicationStartingPosition"))

(smithy/sdk/shapes:define-enum replication-starting-position-type
    common-lisp:nil
  (:latest "LATEST")
  (:earliest "EARLIEST"))

(smithy/sdk/shapes:define-structure replication-state-info common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code" :json-name "code")
                                     (message :target-type string :member-name
                                      "Message" :json-name "message"))
                                    (:shape-name "ReplicationStateInfo"))

(smithy/sdk/shapes:define-structure replication-topic-name-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      replication-topic-name-configuration-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name
                                     "ReplicationTopicNameConfiguration"))

(smithy/sdk/shapes:define-enum replication-topic-name-configuration-type
    common-lisp:nil
  (:prefixed-with-source-cluster-alias "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS")
  (:identical "IDENTICAL"))

(smithy/sdk/shapes:define-enum replicator-state
    common-lisp:nil
  (:running "RUNNING")
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure replicator-summary common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (current-version :target-type string
                                      :member-name "CurrentVersion" :json-name
                                      "currentVersion")
                                     (is-replicator-reference :target-type
                                      boolean :member-name
                                      "IsReplicatorReference" :json-name
                                      "isReplicatorReference")
                                     (kafka-clusters-summary :target-type
                                      list-of-kafka-cluster-summary
                                      :member-name "KafkaClustersSummary"
                                      :json-name "kafkaClustersSummary")
                                     (replication-info-summary-list
                                      :target-type
                                      list-of-replication-info-summary
                                      :member-name "ReplicationInfoSummaryList"
                                      :json-name "replicationInfoSummaryList")
                                     (replicator-arn :target-type string
                                      :member-name "ReplicatorArn" :json-name
                                      "replicatorArn")
                                     (replicator-name :target-type string
                                      :member-name "ReplicatorName" :json-name
                                      "replicatorName")
                                     (replicator-resource-arn :target-type
                                      string :member-name
                                      "ReplicatorResourceArn" :json-name
                                      "replicatorResourceArn")
                                     (replicator-state :target-type
                                      replicator-state :member-name
                                      "ReplicatorState" :json-name
                                      "replicatorState"))
                                    (:shape-name "ReplicatorSummary"))

(smithy/sdk/shapes:define-structure s3 common-lisp:nil
                                    ((bucket :target-type string :member-name
                                      "Bucket" :json-name "bucket")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"
                                      :json-name "enabled")
                                     (prefix :target-type string :member-name
                                      "Prefix" :json-name "prefix"))
                                    (:shape-name "S3"))

(smithy/sdk/shapes:define-structure sasl common-lisp:nil
                                    ((scram :target-type scram :member-name
                                      "Scram" :json-name "scram")
                                     (iam :target-type iam :member-name "Iam"
                                      :json-name "iam"))
                                    (:shape-name "Sasl"))

(smithy/sdk/shapes:define-structure scram common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "Scram"))

(smithy/sdk/shapes:define-structure serverless common-lisp:nil
                                    ((vpc-configs :target-type
                                      list-of-vpc-config :required
                                      common-lisp:t :member-name "VpcConfigs"
                                      :json-name "vpcConfigs")
                                     (client-authentication :target-type
                                      serverless-client-authentication
                                      :member-name "ClientAuthentication"
                                      :json-name "clientAuthentication"))
                                    (:shape-name "Serverless"))

(smithy/sdk/shapes:define-structure serverless-client-authentication
                                    common-lisp:nil
                                    ((sasl :target-type serverless-sasl
                                      :member-name "Sasl" :json-name "sasl"))
                                    (:shape-name
                                     "ServerlessClientAuthentication"))

(smithy/sdk/shapes:define-structure serverless-request common-lisp:nil
                                    ((vpc-configs :target-type
                                      list-of-vpc-config :required
                                      common-lisp:t :member-name "VpcConfigs"
                                      :json-name "vpcConfigs")
                                     (client-authentication :target-type
                                      serverless-client-authentication
                                      :member-name "ClientAuthentication"
                                      :json-name "clientAuthentication"))
                                    (:shape-name "ServerlessRequest"))

(smithy/sdk/shapes:define-structure serverless-sasl common-lisp:nil
                                    ((iam :target-type iam :member-name "Iam"
                                      :json-name "iam"))
                                    (:shape-name "ServerlessSasl"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure state-info common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code" :json-name "code")
                                     (message :target-type string :member-name
                                      "Message" :json-name "message"))
                                    (:shape-name "StateInfo"))

(smithy/sdk/shapes:define-structure storage-info common-lisp:nil
                                    ((ebs-storage-info :target-type
                                      ebsstorage-info :member-name
                                      "EbsStorageInfo" :json-name
                                      "ebsStorageInfo"))
                                    (:shape-name "StorageInfo"))

(smithy/sdk/shapes:define-enum storage-mode
    common-lisp:nil
  (:local "LOCAL")
  (:tiered "TIERED"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-enum target-compression-type
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP")
  (:snappy "SNAPPY")
  (:lz4 "LZ4")
  (:zstd "ZSTD"))

(smithy/sdk/shapes:define-structure tls common-lisp:nil
                                    ((certificate-authority-arn-list
                                      :target-type list-of-string :member-name
                                      "CertificateAuthorityArnList" :json-name
                                      "certificateAuthorityArnList")
                                     (enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "Tls"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure topic-replication common-lisp:nil
                                    ((copy-access-control-lists-for-topics
                                      :target-type boolean :member-name
                                      "CopyAccessControlListsForTopics"
                                      :json-name
                                      "copyAccessControlListsForTopics")
                                     (copy-topic-configurations :target-type
                                      boolean :member-name
                                      "CopyTopicConfigurations" :json-name
                                      "copyTopicConfigurations")
                                     (detect-and-copy-new-topics :target-type
                                      boolean :member-name
                                      "DetectAndCopyNewTopics" :json-name
                                      "detectAndCopyNewTopics")
                                     (starting-position :target-type
                                      replication-starting-position
                                      :member-name "StartingPosition"
                                      :json-name "startingPosition")
                                     (topic-name-configuration :target-type
                                      replication-topic-name-configuration
                                      :member-name "TopicNameConfiguration"
                                      :json-name "topicNameConfiguration")
                                     (topics-to-exclude :target-type
                                      list-of-string-max249 :member-name
                                      "TopicsToExclude" :json-name
                                      "topicsToExclude")
                                     (topics-to-replicate :target-type
                                      list-of-string-max249 :required
                                      common-lisp:t :member-name
                                      "TopicsToReplicate" :json-name
                                      "topicsToReplicate"))
                                    (:shape-name "TopicReplication"))

(smithy/sdk/shapes:define-structure topic-replication-update common-lisp:nil
                                    ((copy-access-control-lists-for-topics
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "CopyAccessControlListsForTopics"
                                      :json-name
                                      "copyAccessControlListsForTopics")
                                     (copy-topic-configurations :target-type
                                      boolean :required common-lisp:t
                                      :member-name "CopyTopicConfigurations"
                                      :json-name "copyTopicConfigurations")
                                     (detect-and-copy-new-topics :target-type
                                      boolean :required common-lisp:t
                                      :member-name "DetectAndCopyNewTopics"
                                      :json-name "detectAndCopyNewTopics")
                                     (topics-to-exclude :target-type
                                      list-of-string-max249 :required
                                      common-lisp:t :member-name
                                      "TopicsToExclude" :json-name
                                      "topicsToExclude")
                                     (topics-to-replicate :target-type
                                      list-of-string-max249 :required
                                      common-lisp:t :member-name
                                      "TopicsToReplicate" :json-name
                                      "topicsToReplicate"))
                                    (:shape-name "TopicReplicationUpdate"))

(smithy/sdk/shapes:define-structure unauthenticated common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "Unauthenticated"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((invalid-parameter :target-type string
                                  :member-name "InvalidParameter" :json-name
                                  "invalidParameter")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure unprocessed-scram-secret common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode" :json-name
                                      "errorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage" :json-name
                                      "errorMessage")
                                     (secret-arn :target-type string
                                      :member-name "SecretArn" :json-name
                                      "secretArn"))
                                    (:shape-name "UnprocessedScramSecret"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-broker-count-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (target-number-of-broker-nodes :target-type
                                  integer-min1max15 :required common-lisp:t
                                  :member-name "TargetNumberOfBrokerNodes"
                                  :json-name "targetNumberOfBrokerNodes"))
                                (:shape-name "UpdateBrokerCountRequest"))

(smithy/sdk/shapes:define-output update-broker-count-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateBrokerCountResponse"))

(smithy/sdk/shapes:define-input update-broker-storage-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (target-broker-ebsvolume-info :target-type
                                  list-of-broker-ebsvolume-info :required
                                  common-lisp:t :member-name
                                  "TargetBrokerEBSVolumeInfo" :json-name
                                  "targetBrokerEBSVolumeInfo"))
                                (:shape-name "UpdateBrokerStorageRequest"))

(smithy/sdk/shapes:define-output update-broker-storage-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateBrokerStorageResponse"))

(smithy/sdk/shapes:define-input update-broker-type-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (target-instance-type :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetInstanceType" :json-name
                                  "targetInstanceType"))
                                (:shape-name "UpdateBrokerTypeRequest"))

(smithy/sdk/shapes:define-output update-broker-type-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateBrokerTypeResponse"))

(smithy/sdk/shapes:define-input update-cluster-configuration-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (configuration-info :target-type
                                  configuration-info :required common-lisp:t
                                  :member-name "ConfigurationInfo" :json-name
                                  "configurationInfo")
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion"))
                                (:shape-name
                                 "UpdateClusterConfigurationRequest"))

(smithy/sdk/shapes:define-output update-cluster-configuration-response
                                 common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name
                                  "UpdateClusterConfigurationResponse"))

(smithy/sdk/shapes:define-input update-cluster-kafka-version-request
                                common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (configuration-info :target-type
                                  configuration-info :member-name
                                  "ConfigurationInfo" :json-name
                                  "configurationInfo")
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (target-kafka-version :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetKafkaVersion" :json-name
                                  "targetKafkaVersion"))
                                (:shape-name
                                 "UpdateClusterKafkaVersionRequest"))

(smithy/sdk/shapes:define-output update-cluster-kafka-version-response
                                 common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name
                                  "UpdateClusterKafkaVersionResponse"))

(smithy/sdk/shapes:define-input update-configuration-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (server-properties :target-type blob :required
                                  common-lisp:t :member-name "ServerProperties"
                                  :json-name "serverProperties"))
                                (:shape-name "UpdateConfigurationRequest"))

(smithy/sdk/shapes:define-output update-configuration-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (latest-revision :target-type
                                   configuration-revision :member-name
                                   "LatestRevision" :json-name
                                   "latestRevision"))
                                 (:shape-name "UpdateConfigurationResponse"))

(smithy/sdk/shapes:define-input update-connectivity-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (connectivity-info :target-type
                                  connectivity-info :required common-lisp:t
                                  :member-name "ConnectivityInfo" :json-name
                                  "connectivityInfo")
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion"))
                                (:shape-name "UpdateConnectivityRequest"))

(smithy/sdk/shapes:define-output update-connectivity-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateConnectivityResponse"))

(smithy/sdk/shapes:define-input update-monitoring-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (enhanced-monitoring :target-type
                                  enhanced-monitoring :member-name
                                  "EnhancedMonitoring" :json-name
                                  "enhancedMonitoring")
                                 (open-monitoring :target-type
                                  open-monitoring-info :member-name
                                  "OpenMonitoring" :json-name "openMonitoring")
                                 (logging-info :target-type logging-info
                                  :member-name "LoggingInfo" :json-name
                                  "loggingInfo"))
                                (:shape-name "UpdateMonitoringRequest"))

(smithy/sdk/shapes:define-output update-monitoring-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateMonitoringResponse"))

(smithy/sdk/shapes:define-input update-replication-info-request common-lisp:nil
                                ((consumer-group-replication :target-type
                                  consumer-group-replication-update
                                  :member-name "ConsumerGroupReplication"
                                  :json-name "consumerGroupReplication")
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (replicator-arn :target-type string :required
                                  common-lisp:t :member-name "ReplicatorArn"
                                  :http-label common-lisp:t)
                                 (source-kafka-cluster-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceKafkaClusterArn" :json-name
                                  "sourceKafkaClusterArn")
                                 (target-kafka-cluster-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetKafkaClusterArn" :json-name
                                  "targetKafkaClusterArn")
                                 (topic-replication :target-type
                                  topic-replication-update :member-name
                                  "TopicReplication" :json-name
                                  "topicReplication"))
                                (:shape-name "UpdateReplicationInfoRequest"))

(smithy/sdk/shapes:define-output update-replication-info-response
                                 common-lisp:nil
                                 ((replicator-arn :target-type string
                                   :member-name "ReplicatorArn" :json-name
                                   "replicatorArn")
                                  (replicator-state :target-type
                                   replicator-state :member-name
                                   "ReplicatorState" :json-name
                                   "replicatorState"))
                                 (:shape-name "UpdateReplicationInfoResponse"))

(smithy/sdk/shapes:define-input update-security-request common-lisp:nil
                                ((client-authentication :target-type
                                  client-authentication :member-name
                                  "ClientAuthentication" :json-name
                                  "clientAuthentication")
                                 (cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (encryption-info :target-type encryption-info
                                  :member-name "EncryptionInfo" :json-name
                                  "encryptionInfo"))
                                (:shape-name "UpdateSecurityRequest"))

(smithy/sdk/shapes:define-output update-security-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateSecurityResponse"))

(smithy/sdk/shapes:define-input update-storage-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "CurrentVersion"
                                  :json-name "currentVersion")
                                 (provisioned-throughput :target-type
                                  provisioned-throughput :member-name
                                  "ProvisionedThroughput" :json-name
                                  "provisionedThroughput")
                                 (storage-mode :target-type storage-mode
                                  :member-name "StorageMode" :json-name
                                  "storageMode")
                                 (volume-size-gb :target-type integer
                                  :member-name "VolumeSizeGB" :json-name
                                  "volumeSizeGB"))
                                (:shape-name "UpdateStorageRequest"))

(smithy/sdk/shapes:define-output update-storage-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "ClusterArn" :json-name "clusterArn")
                                  (cluster-operation-arn :target-type string
                                   :member-name "ClusterOperationArn"
                                   :json-name "clusterOperationArn"))
                                 (:shape-name "UpdateStorageResponse"))

(smithy/sdk/shapes:define-structure user-identity common-lisp:nil
                                    ((type :target-type user-identity-type
                                      :member-name "Type" :json-name "type")
                                     (principal-id :target-type string
                                      :member-name "PrincipalId" :json-name
                                      "principalId"))
                                    (:shape-name "UserIdentity"))

(smithy/sdk/shapes:define-enum user-identity-type
    common-lisp:nil
  (:awsaccount "AWSACCOUNT")
  (:awsservice "AWSSERVICE"))

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((subnet-ids :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "SubnetIds" :json-name "subnetIds")
                                     (security-group-ids :target-type
                                      list-of-string :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-structure vpc-connection common-lisp:nil
                                    ((vpc-connection-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "VpcConnectionArn" :json-name
                                      "vpcConnectionArn")
                                     (target-cluster-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "TargetClusterArn" :json-name
                                      "targetClusterArn")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (authentication :target-type string
                                      :member-name "Authentication" :json-name
                                      "authentication")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId")
                                     (state :target-type vpc-connection-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name "VpcConnection"))

(smithy/sdk/shapes:define-structure vpc-connection-info common-lisp:nil
                                    ((vpc-connection-arn :target-type string
                                      :member-name "VpcConnectionArn"
                                      :json-name "vpcConnectionArn")
                                     (owner :target-type string :member-name
                                      "Owner" :json-name "owner")
                                     (user-identity :target-type user-identity
                                      :member-name "UserIdentity" :json-name
                                      "userIdentity")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name
                                      "creationTime"))
                                    (:shape-name "VpcConnectionInfo"))

(smithy/sdk/shapes:define-structure vpc-connection-info-serverless
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "CreationTime" :json-name "creationTime")
                                     (owner :target-type string :member-name
                                      "Owner" :json-name "owner")
                                     (user-identity :target-type user-identity
                                      :member-name "UserIdentity" :json-name
                                      "userIdentity")
                                     (vpc-connection-arn :target-type string
                                      :member-name "VpcConnectionArn"
                                      :json-name "vpcConnectionArn"))
                                    (:shape-name "VpcConnectionInfoServerless"))

(smithy/sdk/shapes:define-enum vpc-connection-state
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:inactive "INACTIVE")
  (:deactivating "DEACTIVATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:rejecting "REJECTING"))

(smithy/sdk/shapes:define-structure vpc-connectivity common-lisp:nil
                                    ((client-authentication :target-type
                                      vpc-connectivity-client-authentication
                                      :member-name "ClientAuthentication"
                                      :json-name "clientAuthentication"))
                                    (:shape-name "VpcConnectivity"))

(smithy/sdk/shapes:define-structure vpc-connectivity-client-authentication
                                    common-lisp:nil
                                    ((sasl :target-type vpc-connectivity-sasl
                                      :member-name "Sasl" :json-name "sasl")
                                     (tls :target-type vpc-connectivity-tls
                                      :member-name "Tls" :json-name "tls"))
                                    (:shape-name
                                     "VpcConnectivityClientAuthentication"))

(smithy/sdk/shapes:define-structure vpc-connectivity-iam common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "VpcConnectivityIam"))

(smithy/sdk/shapes:define-structure vpc-connectivity-sasl common-lisp:nil
                                    ((scram :target-type vpc-connectivity-scram
                                      :member-name "Scram" :json-name "scram")
                                     (iam :target-type vpc-connectivity-iam
                                      :member-name "Iam" :json-name "iam"))
                                    (:shape-name "VpcConnectivitySasl"))

(smithy/sdk/shapes:define-structure vpc-connectivity-scram common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "VpcConnectivityScram"))

(smithy/sdk/shapes:define-structure vpc-connectivity-tls common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled" :json-name "enabled"))
                                    (:shape-name "VpcConnectivityTls"))

(smithy/sdk/shapes:define-structure zookeeper-node-info common-lisp:nil
                                    ((attached-eniid :target-type string
                                      :member-name "AttachedENIId" :json-name
                                      "attachedENIId")
                                     (client-vpc-ip-address :target-type string
                                      :member-name "ClientVpcIpAddress"
                                      :json-name "clientVpcIpAddress")
                                     (endpoints :target-type list-of-string
                                      :member-name "Endpoints" :json-name
                                      "endpoints")
                                     (zookeeper-id :target-type double
                                      :member-name "ZookeeperId" :json-name
                                      "zookeeperId")
                                     (zookeeper-version :target-type string
                                      :member-name "ZookeeperVersion"
                                      :json-name "zookeeperVersion"))
                                    (:shape-name "ZookeeperNodeInfo"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max15
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max16384
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-broker-ebsvolume-info :member
                               broker-ebsvolume-info)

(smithy/sdk/shapes:define-list list-of-client-vpc-connection :member
                               client-vpc-connection)

(smithy/sdk/shapes:define-list list-of-cluster :member cluster)

(smithy/sdk/shapes:define-list list-of-cluster-info :member cluster-info)

(smithy/sdk/shapes:define-list list-of-cluster-operation-info :member
                               cluster-operation-info)

(smithy/sdk/shapes:define-list list-of-cluster-operation-step :member
                               cluster-operation-step)

(smithy/sdk/shapes:define-list list-of-cluster-operation-v2summary :member
                               cluster-operation-v2summary)

(smithy/sdk/shapes:define-list list-of-compatible-kafka-version :member
                               compatible-kafka-version)

(smithy/sdk/shapes:define-list list-of-configuration :member configuration)

(smithy/sdk/shapes:define-list list-of-configuration-revision :member
                               configuration-revision)

(smithy/sdk/shapes:define-list list-of-kafka-cluster :member kafka-cluster)

(smithy/sdk/shapes:define-list list-of-kafka-cluster-description :member
                               kafka-cluster-description)

(smithy/sdk/shapes:define-list list-of-kafka-cluster-summary :member
                               kafka-cluster-summary)

(smithy/sdk/shapes:define-list list-of-kafka-version :member kafka-version)

(smithy/sdk/shapes:define-list list-of-node-info :member node-info)

(smithy/sdk/shapes:define-list list-of-replication-info :member
                               replication-info)

(smithy/sdk/shapes:define-list list-of-replication-info-description :member
                               replication-info-description)

(smithy/sdk/shapes:define-list list-of-replication-info-summary :member
                               replication-info-summary)

(smithy/sdk/shapes:define-list list-of-replicator-summary :member
                               replicator-summary)

(smithy/sdk/shapes:define-list list-of-unprocessed-scram-secret :member
                               unprocessed-scram-secret)

(smithy/sdk/shapes:define-list list-of-vpc-config :member vpc-config)

(smithy/sdk/shapes:define-list list-of-vpc-connection :member vpc-connection)

(smithy/sdk/shapes:define-list list-of-double :member double)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-list list-of-string-max249 :member string-max249)

(smithy/sdk/shapes:define-list list-of-string-max256 :member string-max256)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max249 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128pattern09aza-z09aza-z0
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min5max32 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation batch-associate-scram-secret :shape-name
                                       "BatchAssociateScramSecret" :input
                                       batch-associate-scram-secret-request
                                       :output
                                       batch-associate-scram-secret-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/clusters/{ClusterArn}/scram-secrets"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-disassociate-scram-secret
                                       :shape-name
                                       "BatchDisassociateScramSecret" :input
                                       batch-disassociate-scram-secret-request
                                       :output
                                       batch-disassociate-scram-secret-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/v1/clusters/{ClusterArn}/scram-secrets"
                                       :code 200)

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/clusters" :code
                                       200)

(smithy/sdk/operation:define-operation create-cluster-v2 :shape-name
                                       "CreateClusterV2" :input
                                       create-cluster-v2request :output
                                       create-cluster-v2response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/api/v2/clusters"
                                       :code 200)

(smithy/sdk/operation:define-operation create-configuration :shape-name
                                       "CreateConfiguration" :input
                                       create-configuration-request :output
                                       create-configuration-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-replicator :shape-name
                                       "CreateReplicator" :input
                                       create-replicator-request :output
                                       create-replicator-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/replication/v1/replicators" :code 200)

(smithy/sdk/operation:define-operation create-vpc-connection :shape-name
                                       "CreateVpcConnection" :input
                                       create-vpc-connection-request :output
                                       create-vpc-connection-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/vpc-connection"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/clusters/{ClusterArn}" :code 200)

(smithy/sdk/operation:define-operation delete-cluster-policy :shape-name
                                       "DeleteClusterPolicy" :input
                                       delete-cluster-policy-request :output
                                       delete-cluster-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/clusters/{ClusterArn}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation delete-configuration :shape-name
                                       "DeleteConfiguration" :input
                                       delete-configuration-request :output
                                       delete-configuration-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/configurations/{Arn}" :code 200)

(smithy/sdk/operation:define-operation delete-replicator :shape-name
                                       "DeleteReplicator" :input
                                       delete-replicator-request :output
                                       delete-replicator-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/replication/v1/replicators/{ReplicatorArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-vpc-connection :shape-name
                                       "DeleteVpcConnection" :input
                                       delete-vpc-connection-request :output
                                       delete-vpc-connection-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/vpc-connection/{Arn}" :code 200)

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-request :output
                                       describe-cluster-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}" :code 200)

(smithy/sdk/operation:define-operation describe-cluster-operation :shape-name
                                       "DescribeClusterOperation" :input
                                       describe-cluster-operation-request
                                       :output
                                       describe-cluster-operation-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/operations/{ClusterOperationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-cluster-operation-v2
                                       :shape-name "DescribeClusterOperationV2"
                                       :input
                                       describe-cluster-operation-v2request
                                       :output
                                       describe-cluster-operation-v2response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/api/v2/operations/{ClusterOperationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-cluster-v2 :shape-name
                                       "DescribeClusterV2" :input
                                       describe-cluster-v2request :output
                                       describe-cluster-v2response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/api/v2/clusters/{ClusterArn}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-configuration :shape-name
                                       "DescribeConfiguration" :input
                                       describe-configuration-request :output
                                       describe-configuration-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{Arn}" :code 200)

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
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{Arn}/revisions/{Revision}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-replicator :shape-name
                                       "DescribeReplicator" :input
                                       describe-replicator-request :output
                                       describe-replicator-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/replication/v1/replicators/{ReplicatorArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-vpc-connection :shape-name
                                       "DescribeVpcConnection" :input
                                       describe-vpc-connection-request :output
                                       describe-vpc-connection-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/vpc-connection/{Arn}" :code 200)

(smithy/sdk/operation:define-operation get-bootstrap-brokers :shape-name
                                       "GetBootstrapBrokers" :input
                                       get-bootstrap-brokers-request :output
                                       get-bootstrap-brokers-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/bootstrap-brokers"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cluster-policy :shape-name
                                       "GetClusterPolicy" :input
                                       get-cluster-policy-request :output
                                       get-cluster-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation get-compatible-kafka-versions
                                       :shape-name "GetCompatibleKafkaVersions"
                                       :input
                                       get-compatible-kafka-versions-request
                                       :output
                                       get-compatible-kafka-versions-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/compatible-kafka-versions" :code
                                       200)

(smithy/sdk/operation:define-operation list-client-vpc-connections :shape-name
                                       "ListClientVpcConnections" :input
                                       list-client-vpc-connections-request
                                       :output
                                       list-client-vpc-connections-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/client-vpc-connections"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cluster-operations :shape-name
                                       "ListClusterOperations" :input
                                       list-cluster-operations-request :output
                                       list-cluster-operations-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/operations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cluster-operations-v2 :shape-name
                                       "ListClusterOperationsV2" :input
                                       list-cluster-operations-v2request
                                       :output
                                       list-cluster-operations-v2response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/api/v2/clusters/{ClusterArn}/operations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/clusters" :code
                                       200)

(smithy/sdk/operation:define-operation list-clusters-v2 :shape-name
                                       "ListClustersV2" :input
                                       list-clusters-v2request :output
                                       list-clusters-v2response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/api/v2/clusters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configuration-revisions :shape-name
                                       "ListConfigurationRevisions" :input
                                       list-configuration-revisions-request
                                       :output
                                       list-configuration-revisions-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/configurations/{Arn}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configurations :shape-name
                                       "ListConfigurations" :input
                                       list-configurations-request :output
                                       list-configurations-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kafka-versions :shape-name
                                       "ListKafkaVersions" :input
                                       list-kafka-versions-request :output
                                       list-kafka-versions-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/kafka-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-nodes :shape-name "ListNodes"
                                       :input list-nodes-request :output
                                       list-nodes-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/nodes" :code
                                       200)

(smithy/sdk/operation:define-operation list-replicators :shape-name
                                       "ListReplicators" :input
                                       list-replicators-request :output
                                       list-replicators-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/replication/v1/replicators" :code 200)

(smithy/sdk/operation:define-operation list-scram-secrets :shape-name
                                       "ListScramSecrets" :input
                                       list-scram-secrets-request :output
                                       list-scram-secrets-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/clusters/{ClusterArn}/scram-secrets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-vpc-connections :shape-name
                                       "ListVpcConnections" :input
                                       list-vpc-connections-request :output
                                       list-vpc-connections-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/vpc-connections"
                                       :code 200)

(smithy/sdk/operation:define-operation put-cluster-policy :shape-name
                                       "PutClusterPolicy" :input
                                       put-cluster-policy-request :output
                                       put-cluster-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation reboot-broker :shape-name "RebootBroker"
                                       :input reboot-broker-request :output
                                       reboot-broker-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/reboot-broker"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-client-vpc-connection :shape-name
                                       "RejectClientVpcConnection" :input
                                       reject-client-vpc-connection-request
                                       :output
                                       reject-client-vpc-connection-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/client-vpc-connection"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-broker-count :shape-name
                                       "UpdateBrokerCount" :input
                                       update-broker-count-request :output
                                       update-broker-count-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/nodes/count"
                                       :code 200)

(smithy/sdk/operation:define-operation update-broker-storage :shape-name
                                       "UpdateBrokerStorage" :input
                                       update-broker-storage-request :output
                                       update-broker-storage-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/nodes/storage"
                                       :code 200)

(smithy/sdk/operation:define-operation update-broker-type :shape-name
                                       "UpdateBrokerType" :input
                                       update-broker-type-request :output
                                       update-broker-type-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/nodes/type"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cluster-configuration :shape-name
                                       "UpdateClusterConfiguration" :input
                                       update-cluster-configuration-request
                                       :output
                                       update-cluster-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cluster-kafka-version :shape-name
                                       "UpdateClusterKafkaVersion" :input
                                       update-cluster-kafka-version-request
                                       :output
                                       update-cluster-kafka-version-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/version"
                                       :code 200)

(smithy/sdk/operation:define-operation update-configuration :shape-name
                                       "UpdateConfiguration" :input
                                       update-configuration-request :output
                                       update-configuration-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/configurations/{Arn}" :code 200)

(smithy/sdk/operation:define-operation update-connectivity :shape-name
                                       "UpdateConnectivity" :input
                                       update-connectivity-request :output
                                       update-connectivity-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/connectivity"
                                       :code 200)

(smithy/sdk/operation:define-operation update-monitoring :shape-name
                                       "UpdateMonitoring" :input
                                       update-monitoring-request :output
                                       update-monitoring-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/monitoring"
                                       :code 200)

(smithy/sdk/operation:define-operation update-replication-info :shape-name
                                       "UpdateReplicationInfo" :input
                                       update-replication-info-request :output
                                       update-replication-info-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/replication/v1/replicators/{ReplicatorArn}/replication-info"
                                       :code 200)

(smithy/sdk/operation:define-operation update-security :shape-name
                                       "UpdateSecurity" :input
                                       update-security-request :output
                                       update-security-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/v1/clusters/{ClusterArn}/security"
                                       :code 200)

(smithy/sdk/operation:define-operation update-storage :shape-name
                                       "UpdateStorage" :input
                                       update-storage-request :output
                                       update-storage-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/clusters/{ClusterArn}/storage"
                                       :code 200)
