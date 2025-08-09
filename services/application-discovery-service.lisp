(uiop/package:define-package #:pira/application-discovery-service (:use)
                             (:export #:awsposeidon-service-v2015-11-01
                              #:agent-configuration-status
                              #:agent-configuration-status-list #:agent-id
                              #:agent-ids #:agent-info #:agent-network-info
                              #:agent-network-info-list #:agent-status
                              #:agents-info #:application-description
                              #:application-id #:application-ids-list
                              #:application-name #:application-wave
                              #:associate-configuration-items-to-application
                              #:batch-delete-agent-error
                              #:batch-delete-agent-errors #:batch-delete-agents
                              #:batch-delete-configuration-task
                              #:batch-delete-configuration-task-status
                              #:batch-delete-import-data
                              #:batch-delete-import-data-error
                              #:batch-delete-import-data-error-code
                              #:batch-delete-import-data-error-description
                              #:batch-delete-import-data-error-list #:boolean
                              #:boxed-integer #:client-request-token
                              #:condition #:configuration #:configuration-id
                              #:configuration-id-list #:configuration-item-type
                              #:configuration-tag #:configuration-tag-set
                              #:configurations #:configurations-download-url
                              #:configurations-export-id
                              #:continuous-export-description
                              #:continuous-export-descriptions
                              #:continuous-export-ids
                              #:continuous-export-status #:create-application
                              #:create-tags #:customer-agent-info
                              #:customer-agentless-collector-info
                              #:customer-connector-info
                              #:customer-me-collector-info #:data-source
                              #:database-name #:delete-agent
                              #:delete-agent-error-code #:delete-agents
                              #:delete-applications #:delete-tags
                              #:deletion-configuration-item-type
                              #:deletion-warning #:deletion-warnings-list
                              #:describe-agents
                              #:describe-batch-delete-configuration-task
                              #:describe-configurations
                              #:describe-configurations-attribute
                              #:describe-configurations-attributes
                              #:describe-continuous-exports
                              #:describe-continuous-exports-max-results
                              #:describe-export-configurations
                              #:describe-export-tasks #:describe-import-tasks
                              #:describe-import-tasks-filter-list
                              #:describe-import-tasks-max-results
                              #:describe-tags
                              #:disassociate-configuration-items-from-application
                              #:ec2instance-type
                              #:ec2recommendations-export-preferences
                              #:error-message #:error-status-code
                              #:excluded-instance-types #:export-configurations
                              #:export-data-format #:export-data-formats
                              #:export-enabled #:export-filter #:export-filters
                              #:export-ids #:export-info #:export-preferences
                              #:export-request-time #:export-status
                              #:export-status-message #:exports-info
                              #:failed-configuration
                              #:failed-configuration-list #:file-classification
                              #:filter #:filter-name #:filter-value
                              #:filter-values #:filters #:get-discovery-summary
                              #:import-status #:import-task
                              #:import-task-filter #:import-task-filter-name
                              #:import-task-filter-value
                              #:import-task-filter-value-list
                              #:import-task-identifier #:import-task-list
                              #:import-task-name #:import-url #:integer
                              #:list-configurations #:list-server-neighbors
                              #:long #:message #:neighbor-connection-detail
                              #:neighbor-details-list #:next-token
                              #:offering-class #:order-by-element
                              #:order-by-element-field-name #:order-by-list
                              #:purchasing-option #:reserved-instance-options
                              #:s3bucket #:s3presigned-url
                              #:schema-storage-config
                              #:start-batch-delete-configuration-task
                              #:start-continuous-export
                              #:start-data-collection-by-agent-ids
                              #:start-export-task #:start-import-task
                              #:stop-continuous-export
                              #:stop-data-collection-by-agent-ids #:string
                              #:string-max255 #:tag #:tag-filter #:tag-filters
                              #:tag-key #:tag-set #:tag-value #:tenancy
                              #:term-length #:time-stamp
                              #:to-delete-identifier-list #:uuid
                              #:update-application #:usage-metric-basis
                              #:usage-metric-basis-name
                              #:usage-metric-percentage-adjust
                              #:user-preferred-region #:warning-code
                              #:warning-text #:order-string))
(common-lisp:in-package #:pira/application-discovery-service)

(smithy/sdk/service:define-service awsposeidon-service-v2015-11-01 :shape-name
                                   "AWSPoseidonService_V2015_11_01" :version
                                   "2015-11-01" :title
                                   "AWS Application Discovery Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://ec2.amazon.com/awsposiedon/V2015_11_01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Application Discovery Service")
                                      ("arnNamespace" . "discovery")
                                      ("cloudFormationName"
                                       . "ApplicationDiscoveryService")
                                      ("cloudTrailEventSource"
                                       . "applicationdiscoveryservice.amazonaws.com")
                                      ("docId" . "discovery-2015-11-01")
                                      ("endpointPrefix" . "discovery"))
                                     ("aws.auth#sigv4" ("name" . "discovery"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure agent-configuration-status common-lisp:nil
                                    ((agent-id :target-type string :member-name
                                      "agentId")
                                     (operation-succeeded :target-type boolean
                                      :member-name "operationSucceeded")
                                     (description :target-type string
                                      :member-name "description"))
                                    (:shape-name "AgentConfigurationStatus"))

(smithy/sdk/shapes:define-list agent-configuration-status-list :member
                               agent-configuration-status)

(smithy/sdk/shapes:define-type agent-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list agent-ids :member agent-id)

(smithy/sdk/shapes:define-structure agent-info common-lisp:nil
                                    ((agent-id :target-type agent-id
                                      :member-name "agentId")
                                     (host-name :target-type string
                                      :member-name "hostName")
                                     (agent-network-info-list :target-type
                                      agent-network-info-list :member-name
                                      "agentNetworkInfoList")
                                     (connector-id :target-type string
                                      :member-name "connectorId")
                                     (version :target-type string :member-name
                                      "version")
                                     (health :target-type agent-status
                                      :member-name "health")
                                     (last-health-ping-time :target-type string
                                      :member-name "lastHealthPingTime")
                                     (collection-status :target-type string
                                      :member-name "collectionStatus")
                                     (agent-type :target-type string
                                      :member-name "agentType")
                                     (registered-time :target-type string
                                      :member-name "registeredTime"))
                                    (:shape-name "AgentInfo"))

(smithy/sdk/shapes:define-structure agent-network-info common-lisp:nil
                                    ((ip-address :target-type string
                                      :member-name "ipAddress")
                                     (mac-address :target-type string
                                      :member-name "macAddress"))
                                    (:shape-name "AgentNetworkInfo"))

(smithy/sdk/shapes:define-list agent-network-info-list :member
                               agent-network-info)

(smithy/sdk/shapes:define-enum agent-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY")
  (:running "RUNNING")
  (:unknown "UNKNOWN")
  (:blacklisted "BLACKLISTED")
  (:shutdown "SHUTDOWN"))

(smithy/sdk/shapes:define-list agents-info :member agent-info)

(smithy/sdk/shapes:define-type application-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-ids-list :member application-id)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-wave smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 associate-configuration-items-to-application-request common-lisp:nil
 ((application-configuration-id :target-type application-id :required
   common-lisp:t :member-name "applicationConfigurationId")
  (configuration-ids :target-type configuration-id-list :required common-lisp:t
   :member-name "configurationIds"))
 (:shape-name "AssociateConfigurationItemsToApplicationRequest"))

(smithy/sdk/shapes:define-output
 associate-configuration-items-to-application-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateConfigurationItemsToApplicationResponse"))

(smithy/sdk/shapes:define-error authorization-error-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "AuthorizationErrorException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure batch-delete-agent-error common-lisp:nil
                                    ((agent-id :target-type agent-id :required
                                      common-lisp:t :member-name "agentId")
                                     (error-message :target-type string
                                      :required common-lisp:t :member-name
                                      "errorMessage")
                                     (error-code :target-type
                                      delete-agent-error-code :required
                                      common-lisp:t :member-name "errorCode"))
                                    (:shape-name "BatchDeleteAgentError"))

(smithy/sdk/shapes:define-list batch-delete-agent-errors :member
                               batch-delete-agent-error)

(smithy/sdk/shapes:define-input batch-delete-agents-request common-lisp:nil
                                ((delete-agents :target-type delete-agents
                                  :required common-lisp:t :member-name
                                  "deleteAgents"))
                                (:shape-name "BatchDeleteAgentsRequest"))

(smithy/sdk/shapes:define-output batch-delete-agents-response common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-agent-errors :member-name
                                   "errors"))
                                 (:shape-name "BatchDeleteAgentsResponse"))

(smithy/sdk/shapes:define-structure batch-delete-configuration-task
                                    common-lisp:nil
                                    ((task-id :target-type uuid :member-name
                                      "taskId")
                                     (status :target-type
                                      batch-delete-configuration-task-status
                                      :member-name "status")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (end-time :target-type time-stamp
                                      :member-name "endTime")
                                     (configuration-type :target-type
                                      deletion-configuration-item-type
                                      :member-name "configurationType")
                                     (requested-configurations :target-type
                                      configuration-id-list :member-name
                                      "requestedConfigurations")
                                     (deleted-configurations :target-type
                                      configuration-id-list :member-name
                                      "deletedConfigurations")
                                     (failed-configurations :target-type
                                      failed-configuration-list :member-name
                                      "failedConfigurations")
                                     (deletion-warnings :target-type
                                      deletion-warnings-list :member-name
                                      "deletionWarnings"))
                                    (:shape-name
                                     "BatchDeleteConfigurationTask"))

(smithy/sdk/shapes:define-enum batch-delete-configuration-task-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:validating "VALIDATING")
  (:deleting "DELETING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure batch-delete-import-data-error
                                    common-lisp:nil
                                    ((import-task-id :target-type
                                      import-task-identifier :member-name
                                      "importTaskId")
                                     (error-code :target-type
                                      batch-delete-import-data-error-code
                                      :member-name "errorCode")
                                     (error-description :target-type
                                      batch-delete-import-data-error-description
                                      :member-name "errorDescription"))
                                    (:shape-name "BatchDeleteImportDataError"))

(smithy/sdk/shapes:define-enum batch-delete-import-data-error-code
    common-lisp:nil
  (:not-found "NOT_FOUND")
  (:internal-server-error "INTERNAL_SERVER_ERROR")
  (:over-limit "OVER_LIMIT"))

(smithy/sdk/shapes:define-type batch-delete-import-data-error-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batch-delete-import-data-error-list :member
                               batch-delete-import-data-error)

(smithy/sdk/shapes:define-input batch-delete-import-data-request
                                common-lisp:nil
                                ((import-task-ids :target-type
                                  to-delete-identifier-list :required
                                  common-lisp:t :member-name "importTaskIds")
                                 (delete-history :target-type boolean
                                  :member-name "deleteHistory"))
                                (:shape-name "BatchDeleteImportDataRequest"))

(smithy/sdk/shapes:define-output batch-delete-import-data-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-import-data-error-list
                                   :member-name "errors"))
                                 (:shape-name "BatchDeleteImportDataResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map configuration :key string :value string)

(smithy/sdk/shapes:define-type configuration-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-id-list :member configuration-id)

(smithy/sdk/shapes:define-enum configuration-item-type
    common-lisp:nil
  (:server "SERVER")
  (:process "PROCESS")
  (:connections "CONNECTION")
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-structure configuration-tag common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-item-type :member-name
                                      "configurationType")
                                     (configuration-id :target-type
                                      configuration-id :member-name
                                      "configurationId")
                                     (key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value")
                                     (time-of-creation :target-type time-stamp
                                      :member-name "timeOfCreation"))
                                    (:shape-name "ConfigurationTag"))

(smithy/sdk/shapes:define-list configuration-tag-set :member
                               (configuration-tag :xml-name "item"))

(smithy/sdk/shapes:define-list configurations :member configuration)

(smithy/sdk/shapes:define-type configurations-download-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configurations-export-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-error-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConflictErrorException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure continuous-export-description
                                    common-lisp:nil
                                    ((export-id :target-type
                                      configurations-export-id :member-name
                                      "exportId")
                                     (status :target-type
                                      continuous-export-status :member-name
                                      "status")
                                     (status-detail :target-type string-max255
                                      :member-name "statusDetail")
                                     (s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (stop-time :target-type time-stamp
                                      :member-name "stopTime")
                                     (data-source :target-type data-source
                                      :member-name "dataSource")
                                     (schema-storage-config :target-type
                                      schema-storage-config :member-name
                                      "schemaStorageConfig"))
                                    (:shape-name "ContinuousExportDescription"))

(smithy/sdk/shapes:define-list continuous-export-descriptions :member
                               continuous-export-description)

(smithy/sdk/shapes:define-list continuous-export-ids :member
                               configurations-export-id)

(smithy/sdk/shapes:define-enum continuous-export-status
    common-lisp:nil
  (:start-in-progress "START_IN_PROGRESS")
  (:start-failed "START_FAILED")
  (:active "ACTIVE")
  (:error "ERROR")
  (:stop-in-progress "STOP_IN_PROGRESS")
  (:stop-failed "STOP_FAILED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type application-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  application-description :member-name
                                  "description")
                                 (wave :target-type application-wave
                                  :member-name "wave"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((configuration-id :target-type string
                                   :member-name "configurationId"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-tags-request common-lisp:nil
                                ((configuration-ids :target-type
                                  configuration-id-list :required common-lisp:t
                                  :member-name "configurationIds")
                                 (tags :target-type tag-set :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "CreateTagsRequest"))

(smithy/sdk/shapes:define-output create-tags-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateTagsResponse"))

(smithy/sdk/shapes:define-structure customer-agent-info common-lisp:nil
                                    ((active-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "activeAgents")
                                     (healthy-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "healthyAgents")
                                     (black-listed-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "blackListedAgents")
                                     (shutdown-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "shutdownAgents")
                                     (unhealthy-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "unhealthyAgents")
                                     (total-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "totalAgents")
                                     (unknown-agents :target-type integer
                                      :required common-lisp:t :member-name
                                      "unknownAgents"))
                                    (:shape-name "CustomerAgentInfo"))

(smithy/sdk/shapes:define-structure customer-agentless-collector-info
                                    common-lisp:nil
                                    ((active-agentless-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "activeAgentlessCollectors")
                                     (healthy-agentless-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name
                                      "healthyAgentlessCollectors")
                                     (deny-listed-agentless-collectors
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "denyListedAgentlessCollectors")
                                     (shutdown-agentless-collectors
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "shutdownAgentlessCollectors")
                                     (unhealthy-agentless-collectors
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "unhealthyAgentlessCollectors")
                                     (total-agentless-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "totalAgentlessCollectors")
                                     (unknown-agentless-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name
                                      "unknownAgentlessCollectors"))
                                    (:shape-name
                                     "CustomerAgentlessCollectorInfo"))

(smithy/sdk/shapes:define-structure customer-connector-info common-lisp:nil
                                    ((active-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "activeConnectors")
                                     (healthy-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "healthyConnectors")
                                     (black-listed-connectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "blackListedConnectors")
                                     (shutdown-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "shutdownConnectors")
                                     (unhealthy-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "unhealthyConnectors")
                                     (total-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "totalConnectors")
                                     (unknown-connectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "unknownConnectors"))
                                    (:shape-name "CustomerConnectorInfo"))

(smithy/sdk/shapes:define-structure customer-me-collector-info common-lisp:nil
                                    ((active-me-collectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "activeMeCollectors")
                                     (healthy-me-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "healthyMeCollectors")
                                     (deny-listed-me-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "denyListedMeCollectors")
                                     (shutdown-me-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "shutdownMeCollectors")
                                     (unhealthy-me-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "unhealthyMeCollectors")
                                     (total-me-collectors :target-type integer
                                      :required common-lisp:t :member-name
                                      "totalMeCollectors")
                                     (unknown-me-collectors :target-type
                                      integer :required common-lisp:t
                                      :member-name "unknownMeCollectors"))
                                    (:shape-name "CustomerMeCollectorInfo"))

(smithy/sdk/shapes:define-enum data-source
    common-lisp:nil
  (:agent "AGENT"))

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-agent common-lisp:nil
                                    ((agent-id :target-type agent-id :required
                                      common-lisp:t :member-name "agentId")
                                     (force :target-type boolean :member-name
                                      "force"))
                                    (:shape-name "DeleteAgent"))

(smithy/sdk/shapes:define-enum delete-agent-error-code
    common-lisp:nil
  (:not-found "NOT_FOUND")
  (:internal-server-error "INTERNAL_SERVER_ERROR")
  (:agent-in-use "AGENT_IN_USE"))

(smithy/sdk/shapes:define-list delete-agents :member delete-agent)

(smithy/sdk/shapes:define-input delete-applications-request common-lisp:nil
                                ((configuration-ids :target-type
                                  application-ids-list :required common-lisp:t
                                  :member-name "configurationIds"))
                                (:shape-name "DeleteApplicationsRequest"))

(smithy/sdk/shapes:define-output delete-applications-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationsResponse"))

(smithy/sdk/shapes:define-input delete-tags-request common-lisp:nil
                                ((configuration-ids :target-type
                                  configuration-id-list :required common-lisp:t
                                  :member-name "configurationIds")
                                 (tags :target-type tag-set :member-name
                                  "tags"))
                                (:shape-name "DeleteTagsRequest"))

(smithy/sdk/shapes:define-output delete-tags-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTagsResponse"))

(smithy/sdk/shapes:define-enum deletion-configuration-item-type
    common-lisp:nil
  (:server "SERVER"))

(smithy/sdk/shapes:define-structure deletion-warning common-lisp:nil
                                    ((configuration-id :target-type
                                      configuration-id :member-name
                                      "configurationId")
                                     (warning-code :target-type warning-code
                                      :member-name "warningCode")
                                     (warning-text :target-type warning-text
                                      :member-name "warningText"))
                                    (:shape-name "DeletionWarning"))

(smithy/sdk/shapes:define-list deletion-warnings-list :member deletion-warning)

(smithy/sdk/shapes:define-input describe-agents-request common-lisp:nil
                                ((agent-ids :target-type agent-ids :member-name
                                  "agentIds")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeAgentsRequest"))

(smithy/sdk/shapes:define-output describe-agents-response common-lisp:nil
                                 ((agents-info :target-type agents-info
                                   :member-name "agentsInfo")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeAgentsResponse"))

(smithy/sdk/shapes:define-input
 describe-batch-delete-configuration-task-request common-lisp:nil
 ((task-id :target-type uuid :required common-lisp:t :member-name "taskId"))
 (:shape-name "DescribeBatchDeleteConfigurationTaskRequest"))

(smithy/sdk/shapes:define-output
 describe-batch-delete-configuration-task-response common-lisp:nil
 ((task :target-type batch-delete-configuration-task :member-name "task"))
 (:shape-name "DescribeBatchDeleteConfigurationTaskResponse"))

(smithy/sdk/shapes:define-map describe-configurations-attribute :key string
                              :value string)

(smithy/sdk/shapes:define-list describe-configurations-attributes :member
                               describe-configurations-attribute)

(smithy/sdk/shapes:define-input describe-configurations-request common-lisp:nil
                                ((configuration-ids :target-type
                                  configuration-id-list :required common-lisp:t
                                  :member-name "configurationIds"))
                                (:shape-name "DescribeConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-configurations-response
                                 common-lisp:nil
                                 ((configurations :target-type
                                   describe-configurations-attributes
                                   :member-name "configurations"))
                                 (:shape-name "DescribeConfigurationsResponse"))

(smithy/sdk/shapes:define-type describe-continuous-exports-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-continuous-exports-request
                                common-lisp:nil
                                ((export-ids :target-type continuous-export-ids
                                  :member-name "exportIds")
                                 (max-results :target-type
                                  describe-continuous-exports-max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "DescribeContinuousExportsRequest"))

(smithy/sdk/shapes:define-output describe-continuous-exports-response
                                 common-lisp:nil
                                 ((descriptions :target-type
                                   continuous-export-descriptions :member-name
                                   "descriptions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeContinuousExportsResponse"))

(smithy/sdk/shapes:define-input describe-export-configurations-request
                                common-lisp:nil
                                ((export-ids :target-type export-ids
                                  :member-name "exportIds")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "DescribeExportConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-export-configurations-response
                                 common-lisp:nil
                                 ((exports-info :target-type exports-info
                                   :member-name "exportsInfo")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeExportConfigurationsResponse"))

(smithy/sdk/shapes:define-input describe-export-tasks-request common-lisp:nil
                                ((export-ids :target-type export-ids
                                  :member-name "exportIds")
                                 (filters :target-type export-filters
                                  :member-name "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeExportTasksRequest"))

(smithy/sdk/shapes:define-output describe-export-tasks-response common-lisp:nil
                                 ((exports-info :target-type exports-info
                                   :member-name "exportsInfo")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeExportTasksResponse"))

(smithy/sdk/shapes:define-list describe-import-tasks-filter-list :member
                               import-task-filter)

(smithy/sdk/shapes:define-type describe-import-tasks-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-import-tasks-request common-lisp:nil
                                ((filters :target-type
                                  describe-import-tasks-filter-list
                                  :member-name "filters")
                                 (max-results :target-type
                                  describe-import-tasks-max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeImportTasksRequest"))

(smithy/sdk/shapes:define-output describe-import-tasks-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (tasks :target-type import-task-list
                                   :member-name "tasks"))
                                 (:shape-name "DescribeImportTasksResponse"))

(smithy/sdk/shapes:define-input describe-tags-request common-lisp:nil
                                ((filters :target-type tag-filters :member-name
                                  "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeTagsRequest"))

(smithy/sdk/shapes:define-output describe-tags-response common-lisp:nil
                                 ((tags :target-type configuration-tag-set
                                   :member-name "tags")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeTagsResponse"))

(smithy/sdk/shapes:define-input
 disassociate-configuration-items-from-application-request common-lisp:nil
 ((application-configuration-id :target-type application-id :required
   common-lisp:t :member-name "applicationConfigurationId")
  (configuration-ids :target-type configuration-id-list :required common-lisp:t
   :member-name "configurationIds"))
 (:shape-name "DisassociateConfigurationItemsFromApplicationRequest"))

(smithy/sdk/shapes:define-output
 disassociate-configuration-items-from-application-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateConfigurationItemsFromApplicationResponse"))

(smithy/sdk/shapes:define-type ec2instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ec2recommendations-export-preferences
                                    common-lisp:nil
                                    ((enabled :target-type export-enabled
                                      :member-name "enabled")
                                     (cpu-performance-metric-basis :target-type
                                      usage-metric-basis :member-name
                                      "cpuPerformanceMetricBasis")
                                     (ram-performance-metric-basis :target-type
                                      usage-metric-basis :member-name
                                      "ramPerformanceMetricBasis")
                                     (tenancy :target-type tenancy :member-name
                                      "tenancy")
                                     (excluded-instance-types :target-type
                                      excluded-instance-types :member-name
                                      "excludedInstanceTypes")
                                     (preferred-region :target-type
                                      user-preferred-region :member-name
                                      "preferredRegion")
                                     (reserved-instance-options :target-type
                                      reserved-instance-options :member-name
                                      "reservedInstanceOptions"))
                                    (:shape-name
                                     "Ec2RecommendationsExportPreferences"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-status-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list excluded-instance-types :member ec2instance-type)

(smithy/sdk/shapes:define-output export-configurations-response common-lisp:nil
                                 ((export-id :target-type
                                   configurations-export-id :member-name
                                   "exportId"))
                                 (:shape-name "ExportConfigurationsResponse"))

(smithy/sdk/shapes:define-enum export-data-format
    common-lisp:nil
  (:csv "CSV"))

(smithy/sdk/shapes:define-list export-data-formats :member export-data-format)

(smithy/sdk/shapes:define-type export-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure export-filter common-lisp:nil
                                    ((name :target-type filter-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition"))
                                    (:shape-name "ExportFilter"))

(smithy/sdk/shapes:define-list export-filters :member export-filter)

(smithy/sdk/shapes:define-list export-ids :member configurations-export-id)

(smithy/sdk/shapes:define-structure export-info common-lisp:nil
                                    ((export-id :target-type
                                      configurations-export-id :required
                                      common-lisp:t :member-name "exportId")
                                     (export-status :target-type export-status
                                      :required common-lisp:t :member-name
                                      "exportStatus")
                                     (status-message :target-type
                                      export-status-message :required
                                      common-lisp:t :member-name
                                      "statusMessage")
                                     (configurations-download-url :target-type
                                      configurations-download-url :member-name
                                      "configurationsDownloadUrl")
                                     (export-request-time :target-type
                                      export-request-time :required
                                      common-lisp:t :member-name
                                      "exportRequestTime")
                                     (is-truncated :target-type boolean
                                      :member-name "isTruncated")
                                     (requested-start-time :target-type
                                      time-stamp :member-name
                                      "requestedStartTime")
                                     (requested-end-time :target-type
                                      time-stamp :member-name
                                      "requestedEndTime"))
                                    (:shape-name "ExportInfo"))

(smithy/sdk/shapes:define-union export-preferences common-lisp:nil
                                ((ec2recommendations-preferences :target-type
                                  ec2recommendations-export-preferences
                                  :member-name
                                  "ec2RecommendationsPreferences"))
                                (:shape-name "ExportPreferences"))

(smithy/sdk/shapes:define-type export-request-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum export-status
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-type export-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exports-info :member export-info)

(smithy/sdk/shapes:define-structure failed-configuration common-lisp:nil
                                    ((configuration-id :target-type
                                      configuration-id :member-name
                                      "configurationId")
                                     (error-status-code :target-type
                                      error-status-code :member-name
                                      "errorStatusCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "FailedConfiguration"))

(smithy/sdk/shapes:define-list failed-configuration-list :member
                               failed-configuration)

(smithy/sdk/shapes:define-enum file-classification
    common-lisp:nil
  (:modelizeit-export "MODELIZEIT_EXPORT")
  (:rvtools-export "RVTOOLS_EXPORT")
  (:vmware-nsx-export "VMWARE_NSX_EXPORT")
  (:import-template "IMPORT_TEMPLATE"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member
                               (filter-value :xml-name "item"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-input get-discovery-summary-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetDiscoverySummaryRequest"))

(smithy/sdk/shapes:define-output get-discovery-summary-response common-lisp:nil
                                 ((servers :target-type long :member-name
                                   "servers")
                                  (applications :target-type long :member-name
                                   "applications")
                                  (servers-mapped-to-applications :target-type
                                   long :member-name
                                   "serversMappedToApplications")
                                  (servers-mappedto-tags :target-type long
                                   :member-name "serversMappedtoTags")
                                  (agent-summary :target-type
                                   customer-agent-info :member-name
                                   "agentSummary")
                                  (connector-summary :target-type
                                   customer-connector-info :member-name
                                   "connectorSummary")
                                  (me-collector-summary :target-type
                                   customer-me-collector-info :member-name
                                   "meCollectorSummary")
                                  (agentless-collector-summary :target-type
                                   customer-agentless-collector-info
                                   :member-name "agentlessCollectorSummary"))
                                 (:shape-name "GetDiscoverySummaryResponse"))

(smithy/sdk/shapes:define-error home-region-not-set-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "HomeRegionNotSetException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum import-status
    common-lisp:nil
  (:import-in-progress "IMPORT_IN_PROGRESS")
  (:import-complete "IMPORT_COMPLETE")
  (:import-complete-with-errors "IMPORT_COMPLETE_WITH_ERRORS")
  (:import-failed "IMPORT_FAILED")
  (:import-failed-server-limit-exceeded "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED")
  (:import-failed-record-limit-exceeded "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED")
  (:import-failed-unsupported-file-type "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED")
  (:delete-failed-limit-exceeded "DELETE_FAILED_LIMIT_EXCEEDED")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-structure import-task common-lisp:nil
                                    ((import-task-id :target-type
                                      import-task-identifier :member-name
                                      "importTaskId")
                                     (client-request-token :target-type
                                      client-request-token :member-name
                                      "clientRequestToken")
                                     (name :target-type import-task-name
                                      :member-name "name")
                                     (import-url :target-type import-url
                                      :member-name "importUrl")
                                     (status :target-type import-status
                                      :member-name "status")
                                     (import-request-time :target-type
                                      time-stamp :member-name
                                      "importRequestTime")
                                     (import-completion-time :target-type
                                      time-stamp :member-name
                                      "importCompletionTime")
                                     (import-deleted-time :target-type
                                      time-stamp :member-name
                                      "importDeletedTime")
                                     (file-classification :target-type
                                      file-classification :member-name
                                      "fileClassification")
                                     (server-import-success :target-type
                                      integer :member-name
                                      "serverImportSuccess")
                                     (server-import-failure :target-type
                                      integer :member-name
                                      "serverImportFailure")
                                     (application-import-success :target-type
                                      integer :member-name
                                      "applicationImportSuccess")
                                     (application-import-failure :target-type
                                      integer :member-name
                                      "applicationImportFailure")
                                     (errors-and-failed-entries-zip
                                      :target-type s3presigned-url :member-name
                                      "errorsAndFailedEntriesZip"))
                                    (:shape-name "ImportTask"))

(smithy/sdk/shapes:define-structure import-task-filter common-lisp:nil
                                    ((name :target-type import-task-filter-name
                                      :member-name "name")
                                     (values :target-type
                                      import-task-filter-value-list
                                      :member-name "values"))
                                    (:shape-name "ImportTaskFilter"))

(smithy/sdk/shapes:define-enum import-task-filter-name
    common-lisp:nil
  (:import-task-id "IMPORT_TASK_ID")
  (:status "STATUS")
  (:name "NAME")
  (:file-classification "FILE_CLASSIFICATION"))

(smithy/sdk/shapes:define-type import-task-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list import-task-filter-value-list :member
                               import-task-filter-value)

(smithy/sdk/shapes:define-type import-task-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list import-task-list :member import-task)

(smithy/sdk/shapes:define-type import-task-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type import-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-configurations-request common-lisp:nil
                                ((configuration-type :target-type
                                  configuration-item-type :required
                                  common-lisp:t :member-name
                                  "configurationType")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (order-by :target-type order-by-list
                                  :member-name "orderBy"))
                                (:shape-name "ListConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-configurations-response common-lisp:nil
                                 ((configurations :target-type configurations
                                   :member-name "configurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-server-neighbors-request common-lisp:nil
                                ((configuration-id :target-type
                                  configuration-id :required common-lisp:t
                                  :member-name "configurationId")
                                 (port-information-needed :target-type boolean
                                  :member-name "portInformationNeeded")
                                 (neighbor-configuration-ids :target-type
                                  configuration-id-list :member-name
                                  "neighborConfigurationIds")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListServerNeighborsRequest"))

(smithy/sdk/shapes:define-output list-server-neighbors-response common-lisp:nil
                                 ((neighbors :target-type neighbor-details-list
                                   :required common-lisp:t :member-name
                                   "neighbors")
                                  (next-token :target-type string :member-name
                                   "nextToken")
                                  (known-dependency-count :target-type long
                                   :member-name "knownDependencyCount"))
                                 (:shape-name "ListServerNeighborsResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure neighbor-connection-detail common-lisp:nil
                                    ((source-server-id :target-type
                                      configuration-id :required common-lisp:t
                                      :member-name "sourceServerId")
                                     (destination-server-id :target-type
                                      configuration-id :required common-lisp:t
                                      :member-name "destinationServerId")
                                     (destination-port :target-type
                                      boxed-integer :member-name
                                      "destinationPort")
                                     (transport-protocol :target-type string
                                      :member-name "transportProtocol")
                                     (connections-count :target-type long
                                      :required common-lisp:t :member-name
                                      "connectionsCount"))
                                    (:shape-name "NeighborConnectionDetail"))

(smithy/sdk/shapes:define-list neighbor-details-list :member
                               neighbor-connection-detail)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum offering-class
    common-lisp:nil
  (:standard "STANDARD")
  (:convertible "CONVERTIBLE"))

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure order-by-element common-lisp:nil
                                    ((field-name :target-type
                                      order-by-element-field-name :required
                                      common-lisp:t :member-name "fieldName")
                                     (sort-order :target-type order-string
                                      :member-name "sortOrder"))
                                    (:shape-name "OrderByElement"))

(smithy/sdk/shapes:define-type order-by-element-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list order-by-list :member order-by-element)

(smithy/sdk/shapes:define-enum purchasing-option
    common-lisp:nil
  (:all-upfront "ALL_UPFRONT")
  (:partial-upfront "PARTIAL_UPFRONT")
  (:no-upfront "NO_UPFRONT"))

(smithy/sdk/shapes:define-structure reserved-instance-options common-lisp:nil
                                    ((purchasing-option :target-type
                                      purchasing-option :required common-lisp:t
                                      :member-name "purchasingOption")
                                     (offering-class :target-type
                                      offering-class :required common-lisp:t
                                      :member-name "offeringClass")
                                     (term-length :target-type term-length
                                      :required common-lisp:t :member-name
                                      "termLength"))
                                    (:shape-name "ReservedInstanceOptions"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3presigned-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map schema-storage-config :key database-name :value
                              string)

(smithy/sdk/shapes:define-error server-internal-error-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ServerInternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input start-batch-delete-configuration-task-request
                                common-lisp:nil
                                ((configuration-type :target-type
                                  deletion-configuration-item-type :required
                                  common-lisp:t :member-name
                                  "configurationType")
                                 (configuration-ids :target-type
                                  configuration-id-list :required common-lisp:t
                                  :member-name "configurationIds"))
                                (:shape-name
                                 "StartBatchDeleteConfigurationTaskRequest"))

(smithy/sdk/shapes:define-output start-batch-delete-configuration-task-response
                                 common-lisp:nil
                                 ((task-id :target-type uuid :member-name
                                   "taskId"))
                                 (:shape-name
                                  "StartBatchDeleteConfigurationTaskResponse"))

(smithy/sdk/shapes:define-input start-continuous-export-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "StartContinuousExportRequest"))

(smithy/sdk/shapes:define-output start-continuous-export-response
                                 common-lisp:nil
                                 ((export-id :target-type
                                   configurations-export-id :member-name
                                   "exportId")
                                  (s3bucket :target-type s3bucket :member-name
                                   "s3Bucket")
                                  (start-time :target-type time-stamp
                                   :member-name "startTime")
                                  (data-source :target-type data-source
                                   :member-name "dataSource")
                                  (schema-storage-config :target-type
                                   schema-storage-config :member-name
                                   "schemaStorageConfig"))
                                 (:shape-name "StartContinuousExportResponse"))

(smithy/sdk/shapes:define-input start-data-collection-by-agent-ids-request
                                common-lisp:nil
                                ((agent-ids :target-type agent-ids :required
                                  common-lisp:t :member-name "agentIds"))
                                (:shape-name
                                 "StartDataCollectionByAgentIdsRequest"))

(smithy/sdk/shapes:define-output start-data-collection-by-agent-ids-response
                                 common-lisp:nil
                                 ((agents-configuration-status :target-type
                                   agent-configuration-status-list :member-name
                                   "agentsConfigurationStatus"))
                                 (:shape-name
                                  "StartDataCollectionByAgentIdsResponse"))

(smithy/sdk/shapes:define-input start-export-task-request common-lisp:nil
                                ((export-data-format :target-type
                                  export-data-formats :member-name
                                  "exportDataFormat")
                                 (filters :target-type export-filters
                                  :member-name "filters")
                                 (start-time :target-type time-stamp
                                  :member-name "startTime")
                                 (end-time :target-type time-stamp :member-name
                                  "endTime")
                                 (preferences :target-type export-preferences
                                  :member-name "preferences"))
                                (:shape-name "StartExportTaskRequest"))

(smithy/sdk/shapes:define-output start-export-task-response common-lisp:nil
                                 ((export-id :target-type
                                   configurations-export-id :member-name
                                   "exportId"))
                                 (:shape-name "StartExportTaskResponse"))

(smithy/sdk/shapes:define-input start-import-task-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (name :target-type import-task-name :required
                                  common-lisp:t :member-name "name")
                                 (import-url :target-type import-url :required
                                  common-lisp:t :member-name "importUrl"))
                                (:shape-name "StartImportTaskRequest"))

(smithy/sdk/shapes:define-output start-import-task-response common-lisp:nil
                                 ((task :target-type import-task :member-name
                                   "task"))
                                 (:shape-name "StartImportTaskResponse"))

(smithy/sdk/shapes:define-input stop-continuous-export-request common-lisp:nil
                                ((export-id :target-type
                                  configurations-export-id :required
                                  common-lisp:t :member-name "exportId"))
                                (:shape-name "StopContinuousExportRequest"))

(smithy/sdk/shapes:define-output stop-continuous-export-response
                                 common-lisp:nil
                                 ((start-time :target-type time-stamp
                                   :member-name "startTime")
                                  (stop-time :target-type time-stamp
                                   :member-name "stopTime"))
                                 (:shape-name "StopContinuousExportResponse"))

(smithy/sdk/shapes:define-input stop-data-collection-by-agent-ids-request
                                common-lisp:nil
                                ((agent-ids :target-type agent-ids :required
                                  common-lisp:t :member-name "agentIds"))
                                (:shape-name
                                 "StopDataCollectionByAgentIdsRequest"))

(smithy/sdk/shapes:define-output stop-data-collection-by-agent-ids-response
                                 common-lisp:nil
                                 ((agents-configuration-status :target-type
                                   agent-configuration-status-list :member-name
                                   "agentsConfigurationStatus"))
                                 (:shape-name
                                  "StopDataCollectionByAgentIdsResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((name :target-type filter-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-filters :member tag-filter)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-set :member (tag :xml-name "item"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tenancy
    common-lisp:nil
  (:dedicated "DEDICATED")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-enum term-length
    common-lisp:nil
  (:one-year "ONE_YEAR")
  (:three-year "THREE_YEAR"))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list to-delete-identifier-list :member
                               import-task-identifier)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((configuration-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "configurationId")
                                 (name :target-type application-name
                                  :member-name "name")
                                 (description :target-type
                                  application-description :member-name
                                  "description")
                                 (wave :target-type application-wave
                                  :member-name "wave"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-structure usage-metric-basis common-lisp:nil
                                    ((name :target-type usage-metric-basis-name
                                      :member-name "name")
                                     (percentage-adjust :target-type
                                      usage-metric-percentage-adjust
                                      :member-name "percentageAdjust"))
                                    (:shape-name "UsageMetricBasis"))

(smithy/sdk/shapes:define-type usage-metric-basis-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type usage-metric-percentage-adjust
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type user-preferred-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type warning-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type warning-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum order-string
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/operation:define-operation
 associate-configuration-items-to-application :shape-name
 "AssociateConfigurationItemsToApplication" :input
 associate-configuration-items-to-application-request :output
 associate-configuration-items-to-application-response :errors
 (authorization-error-exception home-region-not-set-exception
  invalid-parameter-exception invalid-parameter-value-exception
  server-internal-error-exception))

(smithy/sdk/operation:define-operation batch-delete-agents :shape-name
                                       "BatchDeleteAgents" :input
                                       batch-delete-agents-request :output
                                       batch-delete-agents-response :errors
                                       (authorization-error-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation batch-delete-import-data :shape-name
                                       "BatchDeleteImportData" :input
                                       batch-delete-import-data-request :output
                                       batch-delete-import-data-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-request :output
                                       create-tags-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation delete-applications :shape-name
                                       "DeleteApplications" :input
                                       delete-applications-request :output
                                       delete-applications-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-request :output
                                       delete-tags-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-agents :shape-name
                                       "DescribeAgents" :input
                                       describe-agents-request :output
                                       describe-agents-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-batch-delete-configuration-task
                                       :shape-name
                                       "DescribeBatchDeleteConfigurationTask"
                                       :input
                                       describe-batch-delete-configuration-task-request
                                       :output
                                       describe-batch-delete-configuration-task-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-configurations :shape-name
                                       "DescribeConfigurations" :input
                                       describe-configurations-request :output
                                       describe-configurations-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-continuous-exports :shape-name
                                       "DescribeContinuousExports" :input
                                       describe-continuous-exports-request
                                       :output
                                       describe-continuous-exports-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-export-configurations
                                       :shape-name
                                       "DescribeExportConfigurations" :input
                                       describe-export-configurations-request
                                       :output
                                       describe-export-configurations-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-export-tasks :shape-name
                                       "DescribeExportTasks" :input
                                       describe-export-tasks-request :output
                                       describe-export-tasks-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-import-tasks :shape-name
                                       "DescribeImportTasks" :input
                                       describe-import-tasks-request :output
                                       describe-import-tasks-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-request :output
                                       describe-tags-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation
 disassociate-configuration-items-from-application :shape-name
 "DisassociateConfigurationItemsFromApplication" :input
 disassociate-configuration-items-from-application-request :output
 disassociate-configuration-items-from-application-response :errors
 (authorization-error-exception home-region-not-set-exception
  invalid-parameter-exception invalid-parameter-value-exception
  server-internal-error-exception))

(smithy/sdk/operation:define-operation export-configurations :shape-name
                                       "ExportConfigurations" :input
                                       common-lisp:null :output
                                       export-configurations-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        operation-not-permitted-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation get-discovery-summary :shape-name
                                       "GetDiscoverySummary" :input
                                       get-discovery-summary-request :output
                                       get-discovery-summary-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation list-configurations :shape-name
                                       "ListConfigurations" :input
                                       list-configurations-request :output
                                       list-configurations-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation list-server-neighbors :shape-name
                                       "ListServerNeighbors" :input
                                       list-server-neighbors-request :output
                                       list-server-neighbors-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation start-batch-delete-configuration-task
                                       :shape-name
                                       "StartBatchDeleteConfigurationTask"
                                       :input
                                       start-batch-delete-configuration-task-request
                                       :output
                                       start-batch-delete-configuration-task-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation start-continuous-export :shape-name
                                       "StartContinuousExport" :input
                                       start-continuous-export-request :output
                                       start-continuous-export-response :errors
                                       (authorization-error-exception
                                        conflict-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation start-data-collection-by-agent-ids
                                       :shape-name
                                       "StartDataCollectionByAgentIds" :input
                                       start-data-collection-by-agent-ids-request
                                       :output
                                       start-data-collection-by-agent-ids-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation start-export-task :shape-name
                                       "StartExportTask" :input
                                       start-export-task-request :output
                                       start-export-task-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        operation-not-permitted-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation start-import-task :shape-name
                                       "StartImportTask" :input
                                       start-import-task-request :output
                                       start-import-task-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        resource-in-use-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation stop-continuous-export :shape-name
                                       "StopContinuousExport" :input
                                       stop-continuous-export-request :output
                                       stop-continuous-export-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation stop-data-collection-by-agent-ids
                                       :shape-name
                                       "StopDataCollectionByAgentIds" :input
                                       stop-data-collection-by-agent-ids-request
                                       :output
                                       stop-data-collection-by-agent-ids-response
                                       :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (authorization-error-exception
                                        home-region-not-set-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        server-internal-error-exception))
