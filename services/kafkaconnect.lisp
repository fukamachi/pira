(uiop/package:define-package #:pira/kafkaconnect (:use)
                             (:export #:apache-kafka-cluster
                              #:apache-kafka-cluster-description #:auto-scaling
                              #:auto-scaling-description #:auto-scaling-update
                              #:bad-request-exception #:capacity
                              #:capacity-description #:capacity-update
                              #:cloud-watch-logs-log-delivery
                              #:cloud-watch-logs-log-delivery-description
                              #:conflict-exception #:connector-configuration
                              #:connector-configuration-update
                              #:connector-operation-state
                              #:connector-operation-step
                              #:connector-operation-step-state
                              #:connector-operation-step-type
                              #:connector-operation-summary
                              #:connector-operation-type #:connector-state
                              #:connector-summary #:create-connector
                              #:create-connector-request
                              #:create-connector-response
                              #:create-custom-plugin
                              #:create-custom-plugin-request
                              #:create-custom-plugin-response
                              #:create-worker-configuration
                              #:create-worker-configuration-request
                              #:create-worker-configuration-response
                              #:custom-plugin #:custom-plugin-content-type
                              #:custom-plugin-description
                              #:custom-plugin-file-description
                              #:custom-plugin-location
                              #:custom-plugin-location-description
                              #:custom-plugin-revision-summary
                              #:custom-plugin-state #:custom-plugin-summary
                              #:delete-connector #:delete-connector-request
                              #:delete-connector-response
                              #:delete-custom-plugin
                              #:delete-custom-plugin-request
                              #:delete-custom-plugin-response
                              #:delete-worker-configuration
                              #:delete-worker-configuration-request
                              #:delete-worker-configuration-response
                              #:describe-connector
                              #:describe-connector-operation
                              #:describe-connector-operation-request
                              #:describe-connector-operation-response
                              #:describe-connector-request
                              #:describe-connector-response
                              #:describe-custom-plugin
                              #:describe-custom-plugin-request
                              #:describe-custom-plugin-response
                              #:describe-worker-configuration
                              #:describe-worker-configuration-request
                              #:describe-worker-configuration-response
                              #:firehose-log-delivery
                              #:firehose-log-delivery-description
                              #:forbidden-exception
                              #:internal-server-error-exception #:kafka-cluster
                              #:kafka-cluster-client-authentication
                              #:kafka-cluster-client-authentication-description
                              #:kafka-cluster-client-authentication-type
                              #:kafka-cluster-description
                              #:kafka-cluster-encryption-in-transit
                              #:kafka-cluster-encryption-in-transit-description
                              #:kafka-cluster-encryption-in-transit-type
                              #:kafka-connect #:list-connector-operations
                              #:list-connector-operations-request
                              #:list-connector-operations-response
                              #:list-connectors #:list-connectors-request
                              #:list-connectors-response #:list-custom-plugins
                              #:list-custom-plugins-request
                              #:list-custom-plugins-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-worker-configurations
                              #:list-worker-configurations-request
                              #:list-worker-configurations-response
                              #:log-delivery #:log-delivery-description
                              #:max-results #:not-found-exception #:plugin
                              #:plugin-description #:provisioned-capacity
                              #:provisioned-capacity-description
                              #:provisioned-capacity-update #:s3location
                              #:s3location-description #:s3log-delivery
                              #:s3log-delivery-description #:scale-in-policy
                              #:scale-in-policy-description
                              #:scale-in-policy-update #:scale-out-policy
                              #:scale-out-policy-description
                              #:scale-out-policy-update
                              #:service-unavailable-exception
                              #:state-description #:tag-key #:tag-key-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:tags
                              #:too-many-requests-exception
                              #:unauthorized-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-connector
                              #:update-connector-request
                              #:update-connector-response #:vpc
                              #:vpc-description #:worker-configuration
                              #:worker-configuration-description
                              #:worker-configuration-revision-description
                              #:worker-configuration-revision-summary
                              #:worker-configuration-state
                              #:worker-configuration-summary
                              #:worker-log-delivery
                              #:worker-log-delivery-description
                              #:worker-setting #:boolean #:integer
                              #:integer-min1max100 #:integer-min1max8
                              #:list-of-connector-operation-step
                              #:list-of-connector-operation-summary
                              #:list-of-connector-summary
                              #:list-of-custom-plugin-summary #:list-of-plugin
                              #:list-of-plugin-description
                              #:list-of-worker-configuration-summary
                              #:list-of-string #:long #:long-min1
                              #:sensitive-string #:string #:string-max1024
                              #:string-min1max128 #:timestamp-iso8601))
(common-lisp:in-package #:pira/kafkaconnect)

(smithy/sdk/service:define-service kafka-connect :shape-name "KafkaConnect"
                                   :version "2021-09-14" :title
                                   "Managed Streaming for Kafka Connect"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "KafkaConnect")
                                      ("name" . "kafkaconnect")
                                      ("arnNamespace" . "kafkaconnect")
                                      ("cloudFormationName" . "KafkaConnect")
                                      ("cloudTrailEventSource"
                                       . "kafkaconnect.amazonaws.com")
                                      ("endpointPrefix" . "kafkaconnect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kafkaconnect"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure apache-kafka-cluster common-lisp:nil
                                    ((bootstrap-servers :target-type string
                                      :required common-lisp:t :member-name
                                      "bootstrapServers")
                                     (vpc :target-type vpc :required
                                      common-lisp:t :member-name "vpc"))
                                    (:shape-name "ApacheKafkaCluster"))

(smithy/sdk/shapes:define-structure apache-kafka-cluster-description
                                    common-lisp:nil
                                    ((bootstrap-servers :target-type string
                                      :member-name "bootstrapServers")
                                     (vpc :target-type vpc-description
                                      :member-name "vpc"))
                                    (:shape-name
                                     "ApacheKafkaClusterDescription"))

(smithy/sdk/shapes:define-structure auto-scaling common-lisp:nil
                                    ((max-worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "maxWorkerCount")
                                     (mcu-count :target-type integer-min1max8
                                      :required common-lisp:t :member-name
                                      "mcuCount")
                                     (min-worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "minWorkerCount")
                                     (scale-in-policy :target-type
                                      scale-in-policy :member-name
                                      "scaleInPolicy")
                                     (scale-out-policy :target-type
                                      scale-out-policy :member-name
                                      "scaleOutPolicy"))
                                    (:shape-name "AutoScaling"))

(smithy/sdk/shapes:define-structure auto-scaling-description common-lisp:nil
                                    ((max-worker-count :target-type integer
                                      :member-name "maxWorkerCount")
                                     (mcu-count :target-type integer
                                      :member-name "mcuCount")
                                     (min-worker-count :target-type integer
                                      :member-name "minWorkerCount")
                                     (scale-in-policy :target-type
                                      scale-in-policy-description :member-name
                                      "scaleInPolicy")
                                     (scale-out-policy :target-type
                                      scale-out-policy-description :member-name
                                      "scaleOutPolicy"))
                                    (:shape-name "AutoScalingDescription"))

(smithy/sdk/shapes:define-structure auto-scaling-update common-lisp:nil
                                    ((max-worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "maxWorkerCount")
                                     (mcu-count :target-type integer-min1max8
                                      :required common-lisp:t :member-name
                                      "mcuCount")
                                     (min-worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "minWorkerCount")
                                     (scale-in-policy :target-type
                                      scale-in-policy-update :required
                                      common-lisp:t :member-name
                                      "scaleInPolicy")
                                     (scale-out-policy :target-type
                                      scale-out-policy-update :required
                                      common-lisp:t :member-name
                                      "scaleOutPolicy"))
                                    (:shape-name "AutoScalingUpdate"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure capacity common-lisp:nil
                                    ((auto-scaling :target-type auto-scaling
                                      :member-name "autoScaling")
                                     (provisioned-capacity :target-type
                                      provisioned-capacity :member-name
                                      "provisionedCapacity"))
                                    (:shape-name "Capacity"))

(smithy/sdk/shapes:define-structure capacity-description common-lisp:nil
                                    ((auto-scaling :target-type
                                      auto-scaling-description :member-name
                                      "autoScaling")
                                     (provisioned-capacity :target-type
                                      provisioned-capacity-description
                                      :member-name "provisionedCapacity"))
                                    (:shape-name "CapacityDescription"))

(smithy/sdk/shapes:define-structure capacity-update common-lisp:nil
                                    ((auto-scaling :target-type
                                      auto-scaling-update :member-name
                                      "autoScaling")
                                     (provisioned-capacity :target-type
                                      provisioned-capacity-update :member-name
                                      "provisionedCapacity"))
                                    (:shape-name "CapacityUpdate"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-log-delivery
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (log-group :target-type string
                                      :member-name "logGroup"))
                                    (:shape-name "CloudWatchLogsLogDelivery"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-log-delivery-description
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (log-group :target-type string
                                      :member-name "logGroup"))
                                    (:shape-name
                                     "CloudWatchLogsLogDeliveryDescription"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-map connector-configuration :key string :value string)

(smithy/sdk/shapes:define-map connector-configuration-update :key string :value
                              string)

(smithy/sdk/shapes:define-type connector-operation-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-operation-step common-lisp:nil
                                    ((step-type :target-type
                                      connector-operation-step-type
                                      :member-name "stepType")
                                     (step-state :target-type
                                      connector-operation-step-state
                                      :member-name "stepState"))
                                    (:shape-name "ConnectorOperationStep"))

(smithy/sdk/shapes:define-type connector-operation-step-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-operation-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-operation-summary common-lisp:nil
                                    ((connector-operation-arn :target-type
                                      string :member-name
                                      "connectorOperationArn")
                                     (connector-operation-type :target-type
                                      connector-operation-type :member-name
                                      "connectorOperationType")
                                     (connector-operation-state :target-type
                                      connector-operation-state :member-name
                                      "connectorOperationState")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (end-time :target-type timestamp-iso8601
                                      :member-name "endTime"))
                                    (:shape-name "ConnectorOperationSummary"))

(smithy/sdk/shapes:define-type connector-operation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-summary common-lisp:nil
                                    ((capacity :target-type
                                      capacity-description :member-name
                                      "capacity")
                                     (connector-arn :target-type string
                                      :member-name "connectorArn")
                                     (connector-description :target-type string
                                      :member-name "connectorDescription")
                                     (connector-name :target-type string
                                      :member-name "connectorName")
                                     (connector-state :target-type
                                      connector-state :member-name
                                      "connectorState")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (current-version :target-type string
                                      :member-name "currentVersion")
                                     (kafka-cluster :target-type
                                      kafka-cluster-description :member-name
                                      "kafkaCluster")
                                     (kafka-cluster-client-authentication
                                      :target-type
                                      kafka-cluster-client-authentication-description
                                      :member-name
                                      "kafkaClusterClientAuthentication")
                                     (kafka-cluster-encryption-in-transit
                                      :target-type
                                      kafka-cluster-encryption-in-transit-description
                                      :member-name
                                      "kafkaClusterEncryptionInTransit")
                                     (kafka-connect-version :target-type string
                                      :member-name "kafkaConnectVersion")
                                     (log-delivery :target-type
                                      log-delivery-description :member-name
                                      "logDelivery")
                                     (plugins :target-type
                                      list-of-plugin-description :member-name
                                      "plugins")
                                     (service-execution-role-arn :target-type
                                      string :member-name
                                      "serviceExecutionRoleArn")
                                     (worker-configuration :target-type
                                      worker-configuration-description
                                      :member-name "workerConfiguration"))
                                    (:shape-name "ConnectorSummary"))

(smithy/sdk/shapes:define-input create-connector-request common-lisp:nil
                                ((capacity :target-type capacity :required
                                  common-lisp:t :member-name "capacity")
                                 (connector-configuration :target-type
                                  connector-configuration :required
                                  common-lisp:t :member-name
                                  "connectorConfiguration")
                                 (connector-description :target-type
                                  string-max1024 :member-name
                                  "connectorDescription")
                                 (connector-name :target-type string-min1max128
                                  :required common-lisp:t :member-name
                                  "connectorName")
                                 (kafka-cluster :target-type kafka-cluster
                                  :required common-lisp:t :member-name
                                  "kafkaCluster")
                                 (kafka-cluster-client-authentication
                                  :target-type
                                  kafka-cluster-client-authentication :required
                                  common-lisp:t :member-name
                                  "kafkaClusterClientAuthentication")
                                 (kafka-cluster-encryption-in-transit
                                  :target-type
                                  kafka-cluster-encryption-in-transit :required
                                  common-lisp:t :member-name
                                  "kafkaClusterEncryptionInTransit")
                                 (kafka-connect-version :target-type string
                                  :required common-lisp:t :member-name
                                  "kafkaConnectVersion")
                                 (log-delivery :target-type log-delivery
                                  :member-name "logDelivery")
                                 (plugins :target-type list-of-plugin :required
                                  common-lisp:t :member-name "plugins")
                                 (service-execution-role-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "serviceExecutionRoleArn")
                                 (worker-configuration :target-type
                                  worker-configuration :member-name
                                  "workerConfiguration")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateConnectorRequest"))

(smithy/sdk/shapes:define-structure create-connector-response common-lisp:nil
                                    ((connector-arn :target-type string
                                      :member-name "connectorArn")
                                     (connector-name :target-type string
                                      :member-name "connectorName")
                                     (connector-state :target-type
                                      connector-state :member-name
                                      "connectorState"))
                                    (:shape-name "CreateConnectorResponse"))

(smithy/sdk/shapes:define-input create-custom-plugin-request common-lisp:nil
                                ((content-type :target-type
                                  custom-plugin-content-type :required
                                  common-lisp:t :member-name "contentType")
                                 (description :target-type string-max1024
                                  :member-name "description")
                                 (location :target-type custom-plugin-location
                                  :required common-lisp:t :member-name
                                  "location")
                                 (name :target-type string-min1max128 :required
                                  common-lisp:t :member-name "name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateCustomPluginRequest"))

(smithy/sdk/shapes:define-structure create-custom-plugin-response
                                    common-lisp:nil
                                    ((custom-plugin-arn :target-type string
                                      :member-name "customPluginArn")
                                     (custom-plugin-state :target-type
                                      custom-plugin-state :member-name
                                      "customPluginState")
                                     (name :target-type string :member-name
                                      "name")
                                     (revision :target-type long :member-name
                                      "revision"))
                                    (:shape-name "CreateCustomPluginResponse"))

(smithy/sdk/shapes:define-input create-worker-configuration-request
                                common-lisp:nil
                                ((description :target-type string-max1024
                                  :member-name "description")
                                 (name :target-type string-min1max128 :required
                                  common-lisp:t :member-name "name")
                                 (properties-file-content :target-type
                                  sensitive-string :required common-lisp:t
                                  :member-name "propertiesFileContent")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateWorkerConfigurationRequest"))

(smithy/sdk/shapes:define-structure create-worker-configuration-response
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (latest-revision :target-type
                                      worker-configuration-revision-summary
                                      :member-name "latestRevision")
                                     (name :target-type string :member-name
                                      "name")
                                     (worker-configuration-arn :target-type
                                      string :member-name
                                      "workerConfigurationArn")
                                     (worker-configuration-state :target-type
                                      worker-configuration-state :member-name
                                      "workerConfigurationState"))
                                    (:shape-name
                                     "CreateWorkerConfigurationResponse"))

(smithy/sdk/shapes:define-structure custom-plugin common-lisp:nil
                                    ((custom-plugin-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "customPluginArn")
                                     (revision :target-type long-min1 :required
                                      common-lisp:t :member-name "revision"))
                                    (:shape-name "CustomPlugin"))

(smithy/sdk/shapes:define-type custom-plugin-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-plugin-description common-lisp:nil
                                    ((custom-plugin-arn :target-type string
                                      :member-name "customPluginArn")
                                     (revision :target-type long :member-name
                                      "revision"))
                                    (:shape-name "CustomPluginDescription"))

(smithy/sdk/shapes:define-structure custom-plugin-file-description
                                    common-lisp:nil
                                    ((file-md5 :target-type string :member-name
                                      "fileMd5")
                                     (file-size :target-type long :member-name
                                      "fileSize"))
                                    (:shape-name "CustomPluginFileDescription"))

(smithy/sdk/shapes:define-structure custom-plugin-location common-lisp:nil
                                    ((s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "s3Location"))
                                    (:shape-name "CustomPluginLocation"))

(smithy/sdk/shapes:define-structure custom-plugin-location-description
                                    common-lisp:nil
                                    ((s3location :target-type
                                      s3location-description :member-name
                                      "s3Location"))
                                    (:shape-name
                                     "CustomPluginLocationDescription"))

(smithy/sdk/shapes:define-structure custom-plugin-revision-summary
                                    common-lisp:nil
                                    ((content-type :target-type
                                      custom-plugin-content-type :member-name
                                      "contentType")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (file-description :target-type
                                      custom-plugin-file-description
                                      :member-name "fileDescription")
                                     (location :target-type
                                      custom-plugin-location-description
                                      :member-name "location")
                                     (revision :target-type long :member-name
                                      "revision"))
                                    (:shape-name "CustomPluginRevisionSummary"))

(smithy/sdk/shapes:define-type custom-plugin-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-plugin-summary common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (custom-plugin-arn :target-type string
                                      :member-name "customPluginArn")
                                     (custom-plugin-state :target-type
                                      custom-plugin-state :member-name
                                      "customPluginState")
                                     (description :target-type string
                                      :member-name "description")
                                     (latest-revision :target-type
                                      custom-plugin-revision-summary
                                      :member-name "latestRevision")
                                     (name :target-type string :member-name
                                      "name"))
                                    (:shape-name "CustomPluginSummary"))

(smithy/sdk/shapes:define-input delete-connector-request common-lisp:nil
                                ((connector-arn :target-type string :required
                                  common-lisp:t :member-name "connectorArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string
                                  :member-name "currentVersion" :http-query
                                  "currentVersion"))
                                (:shape-name "DeleteConnectorRequest"))

(smithy/sdk/shapes:define-structure delete-connector-response common-lisp:nil
                                    ((connector-arn :target-type string
                                      :member-name "connectorArn")
                                     (connector-state :target-type
                                      connector-state :member-name
                                      "connectorState"))
                                    (:shape-name "DeleteConnectorResponse"))

(smithy/sdk/shapes:define-input delete-custom-plugin-request common-lisp:nil
                                ((custom-plugin-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "customPluginArn" :http-label common-lisp:t))
                                (:shape-name "DeleteCustomPluginRequest"))

(smithy/sdk/shapes:define-structure delete-custom-plugin-response
                                    common-lisp:nil
                                    ((custom-plugin-arn :target-type string
                                      :member-name "customPluginArn")
                                     (custom-plugin-state :target-type
                                      custom-plugin-state :member-name
                                      "customPluginState"))
                                    (:shape-name "DeleteCustomPluginResponse"))

(smithy/sdk/shapes:define-input delete-worker-configuration-request
                                common-lisp:nil
                                ((worker-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "workerConfigurationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteWorkerConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-worker-configuration-response
                                    common-lisp:nil
                                    ((worker-configuration-arn :target-type
                                      string :member-name
                                      "workerConfigurationArn")
                                     (worker-configuration-state :target-type
                                      worker-configuration-state :member-name
                                      "workerConfigurationState"))
                                    (:shape-name
                                     "DeleteWorkerConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-connector-operation-request
                                common-lisp:nil
                                ((connector-operation-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "connectorOperationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeConnectorOperationRequest"))

(smithy/sdk/shapes:define-output describe-connector-operation-response
                                 common-lisp:nil
                                 ((connector-arn :target-type string
                                   :member-name "connectorArn")
                                  (connector-operation-arn :target-type string
                                   :member-name "connectorOperationArn")
                                  (connector-operation-state :target-type
                                   connector-operation-state :member-name
                                   "connectorOperationState")
                                  (connector-operation-type :target-type
                                   connector-operation-type :member-name
                                   "connectorOperationType")
                                  (operation-steps :target-type
                                   list-of-connector-operation-step
                                   :member-name "operationSteps")
                                  (origin-worker-setting :target-type
                                   worker-setting :member-name
                                   "originWorkerSetting")
                                  (origin-connector-configuration :target-type
                                   connector-configuration :member-name
                                   "originConnectorConfiguration")
                                  (target-worker-setting :target-type
                                   worker-setting :member-name
                                   "targetWorkerSetting")
                                  (target-connector-configuration :target-type
                                   connector-configuration :member-name
                                   "targetConnectorConfiguration")
                                  (error-info :target-type state-description
                                   :member-name "errorInfo")
                                  (creation-time :target-type timestamp-iso8601
                                   :member-name "creationTime")
                                  (end-time :target-type timestamp-iso8601
                                   :member-name "endTime"))
                                 (:shape-name
                                  "DescribeConnectorOperationResponse"))

(smithy/sdk/shapes:define-input describe-connector-request common-lisp:nil
                                ((connector-arn :target-type string :required
                                  common-lisp:t :member-name "connectorArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeConnectorRequest"))

(smithy/sdk/shapes:define-structure describe-connector-response common-lisp:nil
                                    ((capacity :target-type
                                      capacity-description :member-name
                                      "capacity")
                                     (connector-arn :target-type string
                                      :member-name "connectorArn")
                                     (connector-configuration :target-type
                                      connector-configuration :member-name
                                      "connectorConfiguration")
                                     (connector-description :target-type string
                                      :member-name "connectorDescription")
                                     (connector-name :target-type string
                                      :member-name "connectorName")
                                     (connector-state :target-type
                                      connector-state :member-name
                                      "connectorState")
                                     (creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (current-version :target-type string
                                      :member-name "currentVersion")
                                     (kafka-cluster :target-type
                                      kafka-cluster-description :member-name
                                      "kafkaCluster")
                                     (kafka-cluster-client-authentication
                                      :target-type
                                      kafka-cluster-client-authentication-description
                                      :member-name
                                      "kafkaClusterClientAuthentication")
                                     (kafka-cluster-encryption-in-transit
                                      :target-type
                                      kafka-cluster-encryption-in-transit-description
                                      :member-name
                                      "kafkaClusterEncryptionInTransit")
                                     (kafka-connect-version :target-type string
                                      :member-name "kafkaConnectVersion")
                                     (log-delivery :target-type
                                      log-delivery-description :member-name
                                      "logDelivery")
                                     (plugins :target-type
                                      list-of-plugin-description :member-name
                                      "plugins")
                                     (service-execution-role-arn :target-type
                                      string :member-name
                                      "serviceExecutionRoleArn")
                                     (worker-configuration :target-type
                                      worker-configuration-description
                                      :member-name "workerConfiguration")
                                     (state-description :target-type
                                      state-description :member-name
                                      "stateDescription"))
                                    (:shape-name "DescribeConnectorResponse"))

(smithy/sdk/shapes:define-input describe-custom-plugin-request common-lisp:nil
                                ((custom-plugin-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "customPluginArn" :http-label common-lisp:t))
                                (:shape-name "DescribeCustomPluginRequest"))

(smithy/sdk/shapes:define-structure describe-custom-plugin-response
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (custom-plugin-arn :target-type string
                                      :member-name "customPluginArn")
                                     (custom-plugin-state :target-type
                                      custom-plugin-state :member-name
                                      "customPluginState")
                                     (description :target-type string
                                      :member-name "description")
                                     (latest-revision :target-type
                                      custom-plugin-revision-summary
                                      :member-name "latestRevision")
                                     (name :target-type string :member-name
                                      "name")
                                     (state-description :target-type
                                      state-description :member-name
                                      "stateDescription"))
                                    (:shape-name
                                     "DescribeCustomPluginResponse"))

(smithy/sdk/shapes:define-input describe-worker-configuration-request
                                common-lisp:nil
                                ((worker-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "workerConfigurationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeWorkerConfigurationRequest"))

(smithy/sdk/shapes:define-structure describe-worker-configuration-response
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (latest-revision :target-type
                                      worker-configuration-revision-description
                                      :member-name "latestRevision")
                                     (name :target-type string :member-name
                                      "name")
                                     (worker-configuration-arn :target-type
                                      string :member-name
                                      "workerConfigurationArn")
                                     (worker-configuration-state :target-type
                                      worker-configuration-state :member-name
                                      "workerConfigurationState"))
                                    (:shape-name
                                     "DescribeWorkerConfigurationResponse"))

(smithy/sdk/shapes:define-structure firehose-log-delivery common-lisp:nil
                                    ((delivery-stream :target-type string
                                      :member-name "deliveryStream")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "FirehoseLogDelivery"))

(smithy/sdk/shapes:define-structure firehose-log-delivery-description
                                    common-lisp:nil
                                    ((delivery-stream :target-type string
                                      :member-name "deliveryStream")
                                     (enabled :target-type boolean :member-name
                                      "enabled"))
                                    (:shape-name
                                     "FirehoseLogDeliveryDescription"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure kafka-cluster common-lisp:nil
                                    ((apache-kafka-cluster :target-type
                                      apache-kafka-cluster :required
                                      common-lisp:t :member-name
                                      "apacheKafkaCluster"))
                                    (:shape-name "KafkaCluster"))

(smithy/sdk/shapes:define-structure kafka-cluster-client-authentication
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      kafka-cluster-client-authentication-type
                                      :required common-lisp:t :member-name
                                      "authenticationType"))
                                    (:shape-name
                                     "KafkaClusterClientAuthentication"))

(smithy/sdk/shapes:define-structure
 kafka-cluster-client-authentication-description common-lisp:nil
 ((authentication-type :target-type kafka-cluster-client-authentication-type
   :member-name "authenticationType"))
 (:shape-name "KafkaClusterClientAuthenticationDescription"))

(smithy/sdk/shapes:define-type kafka-cluster-client-authentication-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kafka-cluster-description common-lisp:nil
                                    ((apache-kafka-cluster :target-type
                                      apache-kafka-cluster-description
                                      :member-name "apacheKafkaCluster"))
                                    (:shape-name "KafkaClusterDescription"))

(smithy/sdk/shapes:define-structure kafka-cluster-encryption-in-transit
                                    common-lisp:nil
                                    ((encryption-type :target-type
                                      kafka-cluster-encryption-in-transit-type
                                      :required common-lisp:t :member-name
                                      "encryptionType"))
                                    (:shape-name
                                     "KafkaClusterEncryptionInTransit"))

(smithy/sdk/shapes:define-structure
 kafka-cluster-encryption-in-transit-description common-lisp:nil
 ((encryption-type :target-type kafka-cluster-encryption-in-transit-type
   :member-name "encryptionType"))
 (:shape-name "KafkaClusterEncryptionInTransitDescription"))

(smithy/sdk/shapes:define-type kafka-cluster-encryption-in-transit-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-connector-operations-request
                                common-lisp:nil
                                ((connector-arn :target-type string :required
                                  common-lisp:t :member-name "connectorArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListConnectorOperationsRequest"))

(smithy/sdk/shapes:define-output list-connector-operations-response
                                 common-lisp:nil
                                 ((connector-operations :target-type
                                   list-of-connector-operation-summary
                                   :member-name "connectorOperations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListConnectorOperationsResponse"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((connector-name-prefix :target-type string
                                  :member-name "connectorNamePrefix"
                                  :http-query "connectorNamePrefix")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-structure list-connectors-response common-lisp:nil
                                    ((connectors :target-type
                                      list-of-connector-summary :member-name
                                      "connectors")
                                     (next-token :target-type string
                                      :member-name "nextToken"))
                                    (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-input list-custom-plugins-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (name-prefix :target-type string :member-name
                                  "namePrefix" :http-query "namePrefix"))
                                (:shape-name "ListCustomPluginsRequest"))

(smithy/sdk/shapes:define-structure list-custom-plugins-response
                                    common-lisp:nil
                                    ((custom-plugins :target-type
                                      list-of-custom-plugin-summary
                                      :member-name "customPlugins")
                                     (next-token :target-type string
                                      :member-name "nextToken"))
                                    (:shape-name "ListCustomPluginsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-worker-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (name-prefix :target-type string :member-name
                                  "namePrefix" :http-query "namePrefix"))
                                (:shape-name "ListWorkerConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-worker-configurations-response
                                    common-lisp:nil
                                    ((next-token :target-type string
                                      :member-name "nextToken")
                                     (worker-configurations :target-type
                                      list-of-worker-configuration-summary
                                      :member-name "workerConfigurations"))
                                    (:shape-name
                                     "ListWorkerConfigurationsResponse"))

(smithy/sdk/shapes:define-structure log-delivery common-lisp:nil
                                    ((worker-log-delivery :target-type
                                      worker-log-delivery :required
                                      common-lisp:t :member-name
                                      "workerLogDelivery"))
                                    (:shape-name "LogDelivery"))

(smithy/sdk/shapes:define-structure log-delivery-description common-lisp:nil
                                    ((worker-log-delivery :target-type
                                      worker-log-delivery-description
                                      :member-name "workerLogDelivery"))
                                    (:shape-name "LogDeliveryDescription"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure plugin common-lisp:nil
                                    ((custom-plugin :target-type custom-plugin
                                      :required common-lisp:t :member-name
                                      "customPlugin"))
                                    (:shape-name "Plugin"))

(smithy/sdk/shapes:define-structure plugin-description common-lisp:nil
                                    ((custom-plugin :target-type
                                      custom-plugin-description :member-name
                                      "customPlugin"))
                                    (:shape-name "PluginDescription"))

(smithy/sdk/shapes:define-structure provisioned-capacity common-lisp:nil
                                    ((mcu-count :target-type integer-min1max8
                                      :required common-lisp:t :member-name
                                      "mcuCount")
                                     (worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "workerCount"))
                                    (:shape-name "ProvisionedCapacity"))

(smithy/sdk/shapes:define-structure provisioned-capacity-description
                                    common-lisp:nil
                                    ((mcu-count :target-type integer
                                      :member-name "mcuCount")
                                     (worker-count :target-type integer
                                      :member-name "workerCount"))
                                    (:shape-name
                                     "ProvisionedCapacityDescription"))

(smithy/sdk/shapes:define-structure provisioned-capacity-update common-lisp:nil
                                    ((mcu-count :target-type integer-min1max8
                                      :required common-lisp:t :member-name
                                      "mcuCount")
                                     (worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "workerCount"))
                                    (:shape-name "ProvisionedCapacityUpdate"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-arn :target-type string :required
                                      common-lisp:t :member-name "bucketArn")
                                     (file-key :target-type string :required
                                      common-lisp:t :member-name "fileKey")
                                     (object-version :target-type string
                                      :member-name "objectVersion"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure s3location-description common-lisp:nil
                                    ((bucket-arn :target-type string
                                      :member-name "bucketArn")
                                     (file-key :target-type string :member-name
                                      "fileKey")
                                     (object-version :target-type string
                                      :member-name "objectVersion"))
                                    (:shape-name "S3LocationDescription"))

(smithy/sdk/shapes:define-structure s3log-delivery common-lisp:nil
                                    ((bucket :target-type string :member-name
                                      "bucket")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (prefix :target-type string :member-name
                                      "prefix"))
                                    (:shape-name "S3LogDelivery"))

(smithy/sdk/shapes:define-structure s3log-delivery-description common-lisp:nil
                                    ((bucket :target-type string :member-name
                                      "bucket")
                                     (enabled :target-type boolean :member-name
                                      "enabled")
                                     (prefix :target-type string :member-name
                                      "prefix"))
                                    (:shape-name "S3LogDeliveryDescription"))

(smithy/sdk/shapes:define-structure scale-in-policy common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer-min1max100 :required
                                      common-lisp:t :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleInPolicy"))

(smithy/sdk/shapes:define-structure scale-in-policy-description common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleInPolicyDescription"))

(smithy/sdk/shapes:define-structure scale-in-policy-update common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer-min1max100 :required
                                      common-lisp:t :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleInPolicyUpdate"))

(smithy/sdk/shapes:define-structure scale-out-policy common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer-min1max100 :required
                                      common-lisp:t :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleOutPolicy"))

(smithy/sdk/shapes:define-structure scale-out-policy-description
                                    common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleOutPolicyDescription"))

(smithy/sdk/shapes:define-structure scale-out-policy-update common-lisp:nil
                                    ((cpu-utilization-percentage :target-type
                                      integer-min1max100 :required
                                      common-lisp:t :member-name
                                      "cpuUtilizationPercentage"))
                                    (:shape-name "ScaleOutPolicyUpdate"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure state-description common-lisp:nil
                                    ((code :target-type string :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "StateDescription"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-connector-request common-lisp:nil
                                ((capacity :target-type capacity-update
                                  :member-name "capacity")
                                 (connector-configuration :target-type
                                  connector-configuration-update :member-name
                                  "connectorConfiguration")
                                 (connector-arn :target-type string :required
                                  common-lisp:t :member-name "connectorArn"
                                  :http-label common-lisp:t)
                                 (current-version :target-type string :required
                                  common-lisp:t :member-name "currentVersion"
                                  :http-query "currentVersion"))
                                (:shape-name "UpdateConnectorRequest"))

(smithy/sdk/shapes:define-structure update-connector-response common-lisp:nil
                                    ((connector-arn :target-type string
                                      :member-name "connectorArn")
                                     (connector-state :target-type
                                      connector-state :member-name
                                      "connectorState")
                                     (connector-operation-arn :target-type
                                      string :member-name
                                      "connectorOperationArn"))
                                    (:shape-name "UpdateConnectorResponse"))

(smithy/sdk/shapes:define-structure vpc common-lisp:nil
                                    ((security-groups :target-type
                                      list-of-string :member-name
                                      "securityGroups")
                                     (subnets :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "subnets"))
                                    (:shape-name "Vpc"))

(smithy/sdk/shapes:define-structure vpc-description common-lisp:nil
                                    ((security-groups :target-type
                                      list-of-string :member-name
                                      "securityGroups")
                                     (subnets :target-type list-of-string
                                      :member-name "subnets"))
                                    (:shape-name "VpcDescription"))

(smithy/sdk/shapes:define-structure worker-configuration common-lisp:nil
                                    ((revision :target-type long-min1 :required
                                      common-lisp:t :member-name "revision")
                                     (worker-configuration-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "workerConfigurationArn"))
                                    (:shape-name "WorkerConfiguration"))

(smithy/sdk/shapes:define-structure worker-configuration-description
                                    common-lisp:nil
                                    ((revision :target-type long :member-name
                                      "revision")
                                     (worker-configuration-arn :target-type
                                      string :member-name
                                      "workerConfigurationArn"))
                                    (:shape-name
                                     "WorkerConfigurationDescription"))

(smithy/sdk/shapes:define-structure worker-configuration-revision-description
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (properties-file-content :target-type
                                      sensitive-string :member-name
                                      "propertiesFileContent")
                                     (revision :target-type long :member-name
                                      "revision"))
                                    (:shape-name
                                     "WorkerConfigurationRevisionDescription"))

(smithy/sdk/shapes:define-structure worker-configuration-revision-summary
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (revision :target-type long :member-name
                                      "revision"))
                                    (:shape-name
                                     "WorkerConfigurationRevisionSummary"))

(smithy/sdk/shapes:define-type worker-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure worker-configuration-summary
                                    common-lisp:nil
                                    ((creation-time :target-type
                                      timestamp-iso8601 :member-name
                                      "creationTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (latest-revision :target-type
                                      worker-configuration-revision-summary
                                      :member-name "latestRevision")
                                     (name :target-type string :member-name
                                      "name")
                                     (worker-configuration-arn :target-type
                                      string :member-name
                                      "workerConfigurationArn")
                                     (worker-configuration-state :target-type
                                      worker-configuration-state :member-name
                                      "workerConfigurationState"))
                                    (:shape-name "WorkerConfigurationSummary"))

(smithy/sdk/shapes:define-structure worker-log-delivery common-lisp:nil
                                    ((cloud-watch-logs :target-type
                                      cloud-watch-logs-log-delivery
                                      :member-name "cloudWatchLogs")
                                     (firehose :target-type
                                      firehose-log-delivery :member-name
                                      "firehose")
                                     (s3 :target-type s3log-delivery
                                      :member-name "s3"))
                                    (:shape-name "WorkerLogDelivery"))

(smithy/sdk/shapes:define-structure worker-log-delivery-description
                                    common-lisp:nil
                                    ((cloud-watch-logs :target-type
                                      cloud-watch-logs-log-delivery-description
                                      :member-name "cloudWatchLogs")
                                     (firehose :target-type
                                      firehose-log-delivery-description
                                      :member-name "firehose")
                                     (s3 :target-type
                                      s3log-delivery-description :member-name
                                      "s3"))
                                    (:shape-name
                                     "WorkerLogDeliveryDescription"))

(smithy/sdk/shapes:define-structure worker-setting common-lisp:nil
                                    ((capacity :target-type
                                      capacity-description :member-name
                                      "capacity"))
                                    (:shape-name "WorkerSetting"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max8 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-connector-operation-step :member
                               connector-operation-step)

(smithy/sdk/shapes:define-list list-of-connector-operation-summary :member
                               connector-operation-summary)

(smithy/sdk/shapes:define-list list-of-connector-summary :member
                               connector-summary)

(smithy/sdk/shapes:define-list list-of-custom-plugin-summary :member
                               custom-plugin-summary)

(smithy/sdk/shapes:define-list list-of-plugin :member plugin)

(smithy/sdk/shapes:define-list list-of-plugin-description :member
                               plugin-description)

(smithy/sdk/shapes:define-list list-of-worker-configuration-summary :member
                               worker-configuration-summary)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-min1 smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation create-connector :shape-name
                                       "CreateConnector" :input
                                       create-connector-request :output
                                       create-connector-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation create-custom-plugin :shape-name
                                       "CreateCustomPlugin" :input
                                       create-custom-plugin-request :output
                                       create-custom-plugin-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/custom-plugins"
                                       :code 200)

(smithy/sdk/operation:define-operation create-worker-configuration :shape-name
                                       "CreateWorkerConfiguration" :input
                                       create-worker-configuration-request
                                       :output
                                       create-worker-configuration-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/worker-configurations" :code 200)

(smithy/sdk/operation:define-operation delete-connector :shape-name
                                       "DeleteConnector" :input
                                       delete-connector-request :output
                                       delete-connector-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/connectors/{connectorArn}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-custom-plugin :shape-name
                                       "DeleteCustomPlugin" :input
                                       delete-custom-plugin-request :output
                                       delete-custom-plugin-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/custom-plugins/{customPluginArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-worker-configuration :shape-name
                                       "DeleteWorkerConfiguration" :input
                                       delete-worker-configuration-request
                                       :output
                                       delete-worker-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/worker-configurations/{workerConfigurationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-connector :shape-name
                                       "DescribeConnector" :input
                                       describe-connector-request :output
                                       describe-connector-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/connectors/{connectorArn}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-connector-operation :shape-name
                                       "DescribeConnectorOperation" :input
                                       describe-connector-operation-request
                                       :output
                                       describe-connector-operation-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/connectorOperations/{connectorOperationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-custom-plugin :shape-name
                                       "DescribeCustomPlugin" :input
                                       describe-custom-plugin-request :output
                                       describe-custom-plugin-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/custom-plugins/{customPluginArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-worker-configuration
                                       :shape-name
                                       "DescribeWorkerConfiguration" :input
                                       describe-worker-configuration-request
                                       :output
                                       describe-worker-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/worker-configurations/{workerConfigurationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connector-operations :shape-name
                                       "ListConnectorOperations" :input
                                       list-connector-operations-request
                                       :output
                                       list-connector-operations-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/connectors/{connectorArn}/operations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-custom-plugins :shape-name
                                       "ListCustomPlugins" :input
                                       list-custom-plugins-request :output
                                       list-custom-plugins-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/custom-plugins"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-worker-configurations :shape-name
                                       "ListWorkerConfigurations" :input
                                       list-worker-configurations-request
                                       :output
                                       list-worker-configurations-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/worker-configurations" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-connector :shape-name
                                       "UpdateConnector" :input
                                       update-connector-request :output
                                       update-connector-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/connectors/{connectorArn}" :code
                                       200)
