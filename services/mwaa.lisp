(uiop/package:define-package #:pira/mwaa (:use)
                             (:export #:airflow-configuration-options
                              #:airflow-identity #:airflow-version
                              #:amazon-mwaa #:celery-executor-queue
                              #:cloud-watch-log-group-arn #:config-key
                              #:config-value #:create-cli-token
                              #:create-cli-token-request
                              #:create-cli-token-response #:create-environment
                              #:create-environment-input
                              #:create-environment-output
                              #:create-web-login-token
                              #:create-web-login-token-request
                              #:create-web-login-token-response #:created-at
                              #:delete-environment #:delete-environment-input
                              #:delete-environment-output #:dimension
                              #:dimensions #:endpoint-management #:environment
                              #:environment-arn #:environment-class
                              #:environment-list #:environment-name
                              #:environment-status #:error-code #:error-message
                              #:get-environment #:get-environment-input
                              #:get-environment-output #:hostname
                              #:iam-identity #:iam-role-arn #:invoke-rest-api
                              #:kms-key #:last-update #:list-environments
                              #:list-environments-input
                              #:list-environments-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:logging-configuration
                              #:logging-configuration-input #:logging-enabled
                              #:logging-level #:max-webservers #:max-workers
                              #:metric-data #:metric-datum #:min-webservers
                              #:min-workers #:module-logging-configuration
                              #:module-logging-configuration-input
                              #:network-configuration #:next-token
                              #:publish-metrics #:publish-metrics-input
                              #:publish-metrics-output #:relative-path
                              #:rest-api-method #:rest-api-path
                              #:rest-api-request-body #:rest-api-response
                              #:s3bucket-arn #:s3object-version #:schedulers
                              #:security-group-id #:security-group-list
                              #:statistic-set #:subnet-id #:subnet-list
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:token #:unit #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-created-at #:update-environment
                              #:update-environment-input
                              #:update-environment-output #:update-error
                              #:update-network-configuration-input
                              #:update-source #:update-status
                              #:vpc-endpoint-service-name
                              #:webserver-access-mode #:webserver-url
                              #:weekly-maintenance-window-start
                              #:worker-replacement-strategy))
(common-lisp:in-package #:pira/mwaa)

(smithy/sdk/service:define-service amazon-mwaa :shape-name "AmazonMWAA"
                                   :version "2020-07-01" :title "AmazonMWAA"
                                   :operations
                                   '(create-cli-token create-environment
                                     create-web-login-token delete-environment
                                     get-environment invoke-rest-api
                                     list-environments list-tags-for-resource
                                     publish-metrics tag-resource
                                     untag-resource update-environment)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "MWAA")
                                      ("arnNamespace" . "airflow"))
                                     ("aws.auth#sigv4" ("name" . "airflow"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-map airflow-configuration-options :key config-key
                              :value config-value)

(smithy/sdk/shapes:define-type airflow-identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type airflow-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type celery-executor-queue
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type config-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type config-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-cli-token-request common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "CreateCliTokenRequest"))

(smithy/sdk/shapes:define-structure create-cli-token-response common-lisp:nil
                                    ((cli-token :target-type token :member-name
                                      "CliToken")
                                     (web-server-hostname :target-type hostname
                                      :member-name "WebServerHostname"))
                                    (:shape-name "CreateCliTokenResponse"))

(smithy/sdk/shapes:define-structure create-environment-input common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (execution-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "ExecutionRoleArn")
                                     (source-bucket-arn :target-type
                                      s3bucket-arn :required common-lisp:t
                                      :member-name "SourceBucketArn")
                                     (dag-s3path :target-type relative-path
                                      :required common-lisp:t :member-name
                                      "DagS3Path")
                                     (network-configuration :target-type
                                      network-configuration :required
                                      common-lisp:t :member-name
                                      "NetworkConfiguration")
                                     (plugins-s3path :target-type relative-path
                                      :member-name "PluginsS3Path")
                                     (plugins-s3object-version :target-type
                                      s3object-version :member-name
                                      "PluginsS3ObjectVersion")
                                     (requirements-s3path :target-type
                                      relative-path :member-name
                                      "RequirementsS3Path")
                                     (requirements-s3object-version
                                      :target-type s3object-version
                                      :member-name
                                      "RequirementsS3ObjectVersion")
                                     (startup-script-s3path :target-type
                                      relative-path :member-name
                                      "StartupScriptS3Path")
                                     (startup-script-s3object-version
                                      :target-type s3object-version
                                      :member-name
                                      "StartupScriptS3ObjectVersion")
                                     (airflow-configuration-options
                                      :target-type
                                      airflow-configuration-options
                                      :member-name
                                      "AirflowConfigurationOptions")
                                     (environment-class :target-type
                                      environment-class :member-name
                                      "EnvironmentClass")
                                     (max-workers :target-type max-workers
                                      :member-name "MaxWorkers")
                                     (kms-key :target-type kms-key :member-name
                                      "KmsKey")
                                     (airflow-version :target-type
                                      airflow-version :member-name
                                      "AirflowVersion")
                                     (logging-configuration :target-type
                                      logging-configuration-input :member-name
                                      "LoggingConfiguration")
                                     (weekly-maintenance-window-start
                                      :target-type
                                      weekly-maintenance-window-start
                                      :member-name
                                      "WeeklyMaintenanceWindowStart")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (webserver-access-mode :target-type
                                      webserver-access-mode :member-name
                                      "WebserverAccessMode")
                                     (min-workers :target-type min-workers
                                      :member-name "MinWorkers")
                                     (schedulers :target-type schedulers
                                      :member-name "Schedulers")
                                     (endpoint-management :target-type
                                      endpoint-management :member-name
                                      "EndpointManagement")
                                     (min-webservers :target-type
                                      min-webservers :member-name
                                      "MinWebservers")
                                     (max-webservers :target-type
                                      max-webservers :member-name
                                      "MaxWebservers"))
                                    (:shape-name "CreateEnvironmentInput"))

(smithy/sdk/shapes:define-structure create-environment-output common-lisp:nil
                                    ((arn :target-type environment-arn
                                      :member-name "Arn"))
                                    (:shape-name "CreateEnvironmentOutput"))

(smithy/sdk/shapes:define-structure create-web-login-token-request
                                    common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "CreateWebLoginTokenRequest"))

(smithy/sdk/shapes:define-structure create-web-login-token-response
                                    common-lisp:nil
                                    ((web-token :target-type token :member-name
                                      "WebToken")
                                     (web-server-hostname :target-type hostname
                                      :member-name "WebServerHostname")
                                     (iam-identity :target-type iam-identity
                                      :member-name "IamIdentity")
                                     (airflow-identity :target-type
                                      airflow-identity :member-name
                                      "AirflowIdentity"))
                                    (:shape-name "CreateWebLoginTokenResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure delete-environment-input common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "DeleteEnvironmentInput"))

(smithy/sdk/shapes:define-structure delete-environment-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteEnvironmentOutput"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-type endpoint-management
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "Name")
                                     (status :target-type environment-status
                                      :member-name "Status")
                                     (arn :target-type environment-arn
                                      :member-name "Arn")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt")
                                     (webserver-url :target-type webserver-url
                                      :member-name "WebserverUrl")
                                     (execution-role-arn :target-type
                                      iam-role-arn :member-name
                                      "ExecutionRoleArn")
                                     (service-role-arn :target-type
                                      iam-role-arn :member-name
                                      "ServiceRoleArn")
                                     (kms-key :target-type kms-key :member-name
                                      "KmsKey")
                                     (airflow-version :target-type
                                      airflow-version :member-name
                                      "AirflowVersion")
                                     (source-bucket-arn :target-type
                                      s3bucket-arn :member-name
                                      "SourceBucketArn")
                                     (dag-s3path :target-type relative-path
                                      :member-name "DagS3Path")
                                     (plugins-s3path :target-type relative-path
                                      :member-name "PluginsS3Path")
                                     (plugins-s3object-version :target-type
                                      s3object-version :member-name
                                      "PluginsS3ObjectVersion")
                                     (requirements-s3path :target-type
                                      relative-path :member-name
                                      "RequirementsS3Path")
                                     (requirements-s3object-version
                                      :target-type s3object-version
                                      :member-name
                                      "RequirementsS3ObjectVersion")
                                     (startup-script-s3path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StartupScriptS3Path")
                                     (startup-script-s3object-version
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "StartupScriptS3ObjectVersion")
                                     (airflow-configuration-options
                                      :target-type
                                      airflow-configuration-options
                                      :member-name
                                      "AirflowConfigurationOptions")
                                     (environment-class :target-type
                                      environment-class :member-name
                                      "EnvironmentClass")
                                     (max-workers :target-type max-workers
                                      :member-name "MaxWorkers")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "NetworkConfiguration")
                                     (logging-configuration :target-type
                                      logging-configuration :member-name
                                      "LoggingConfiguration")
                                     (last-update :target-type last-update
                                      :member-name "LastUpdate")
                                     (weekly-maintenance-window-start
                                      :target-type
                                      weekly-maintenance-window-start
                                      :member-name
                                      "WeeklyMaintenanceWindowStart")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (webserver-access-mode :target-type
                                      webserver-access-mode :member-name
                                      "WebserverAccessMode")
                                     (min-workers :target-type min-workers
                                      :member-name "MinWorkers")
                                     (schedulers :target-type schedulers
                                      :member-name "Schedulers")
                                     (webserver-vpc-endpoint-service
                                      :target-type vpc-endpoint-service-name
                                      :member-name
                                      "WebserverVpcEndpointService")
                                     (database-vpc-endpoint-service
                                      :target-type vpc-endpoint-service-name
                                      :member-name
                                      "DatabaseVpcEndpointService")
                                     (celery-executor-queue :target-type
                                      celery-executor-queue :member-name
                                      "CeleryExecutorQueue")
                                     (endpoint-management :target-type
                                      endpoint-management :member-name
                                      "EndpointManagement")
                                     (min-webservers :target-type
                                      min-webservers :member-name
                                      "MinWebservers")
                                     (max-webservers :target-type
                                      max-webservers :member-name
                                      "MaxWebservers"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-list :member environment-name)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-environment-input common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "GetEnvironmentInput"))

(smithy/sdk/shapes:define-structure get-environment-output common-lisp:nil
                                    ((environment :target-type environment
                                      :member-name "Environment"))
                                    (:shape-name "GetEnvironmentOutput"))

(smithy/sdk/shapes:define-type hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input invoke-rest-api-request common-lisp:nil
                                ((name :target-type environment-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (path :target-type rest-api-path :required
                                  common-lisp:t :member-name "Path")
                                 (method :target-type rest-api-method :required
                                  common-lisp:t :member-name "Method")
                                 (query-parameters :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "QueryParameters")
                                 (body :target-type rest-api-request-body
                                  :member-name "Body"))
                                (:shape-name "InvokeRestApiRequest"))

(smithy/sdk/shapes:define-output invoke-rest-api-response common-lisp:nil
                                 ((rest-api-status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "RestApiStatusCode")
                                  (rest-api-response :target-type
                                   rest-api-response :member-name
                                   "RestApiResponse"))
                                 (:shape-name "InvokeRestApiResponse"))

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure last-update common-lisp:nil
                                    ((status :target-type update-status
                                      :member-name "Status")
                                     (created-at :target-type update-created-at
                                      :member-name "CreatedAt")
                                     (error :target-type update-error
                                      :member-name "Error")
                                     (source :target-type update-source
                                      :member-name "Source")
                                     (worker-replacement-strategy :target-type
                                      worker-replacement-strategy :member-name
                                      "WorkerReplacementStrategy"))
                                    (:shape-name "LastUpdate"))

(smithy/sdk/shapes:define-structure list-environments-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name "ListEnvironmentsInput"))

(smithy/sdk/shapes:define-structure list-environments-output common-lisp:nil
                                    ((environments :target-type
                                      environment-list :required common-lisp:t
                                      :member-name "Environments")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListEnvironmentsOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type environment-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((dag-processing-logs :target-type
                                      module-logging-configuration :member-name
                                      "DagProcessingLogs")
                                     (scheduler-logs :target-type
                                      module-logging-configuration :member-name
                                      "SchedulerLogs")
                                     (webserver-logs :target-type
                                      module-logging-configuration :member-name
                                      "WebserverLogs")
                                     (worker-logs :target-type
                                      module-logging-configuration :member-name
                                      "WorkerLogs")
                                     (task-logs :target-type
                                      module-logging-configuration :member-name
                                      "TaskLogs"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-structure logging-configuration-input common-lisp:nil
                                    ((dag-processing-logs :target-type
                                      module-logging-configuration-input
                                      :member-name "DagProcessingLogs")
                                     (scheduler-logs :target-type
                                      module-logging-configuration-input
                                      :member-name "SchedulerLogs")
                                     (webserver-logs :target-type
                                      module-logging-configuration-input
                                      :member-name "WebserverLogs")
                                     (worker-logs :target-type
                                      module-logging-configuration-input
                                      :member-name "WorkerLogs")
                                     (task-logs :target-type
                                      module-logging-configuration-input
                                      :member-name "TaskLogs"))
                                    (:shape-name "LoggingConfigurationInput"))

(smithy/sdk/shapes:define-type logging-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type logging-level smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-webservers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-workers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list metric-data :member metric-datum)

(smithy/sdk/shapes:define-structure metric-datum common-lisp:nil
                                    ((metric-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "MetricName")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (value :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Value")
                                     (unit :target-type unit :member-name
                                      "Unit")
                                     (statistic-values :target-type
                                      statistic-set :member-name
                                      "StatisticValues"))
                                    (:shape-name "MetricDatum"))

(smithy/sdk/shapes:define-type min-webservers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-workers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure module-logging-configuration
                                    common-lisp:nil
                                    ((enabled :target-type logging-enabled
                                      :member-name "Enabled")
                                     (log-level :target-type logging-level
                                      :member-name "LogLevel")
                                     (cloud-watch-log-group-arn :target-type
                                      cloud-watch-log-group-arn :member-name
                                      "CloudWatchLogGroupArn"))
                                    (:shape-name "ModuleLoggingConfiguration"))

(smithy/sdk/shapes:define-structure module-logging-configuration-input
                                    common-lisp:nil
                                    ((enabled :target-type logging-enabled
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (log-level :target-type logging-level
                                      :required common-lisp:t :member-name
                                      "LogLevel"))
                                    (:shape-name
                                     "ModuleLoggingConfigurationInput"))

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((subnet-ids :target-type subnet-list
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-list :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure publish-metrics-input common-lisp:nil
                                    ((environment-name :target-type
                                      environment-name :required common-lisp:t
                                      :member-name "EnvironmentName")
                                     (metric-data :target-type metric-data
                                      :required common-lisp:t :member-name
                                      "MetricData"))
                                    (:shape-name "PublishMetricsInput"))

(smithy/sdk/shapes:define-structure publish-metrics-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PublishMetricsOutput"))

(smithy/sdk/shapes:define-type relative-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error rest-api-client-exception common-lisp:nil
                                ((rest-api-status-code :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "RestApiStatusCode")
                                 (rest-api-response :target-type
                                  rest-api-response :member-name
                                  "RestApiResponse"))
                                (:shape-name "RestApiClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type rest-api-method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rest-api-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rest-api-request-body
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type rest-api-response
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-error rest-api-server-exception common-lisp:nil
                                ((rest-api-status-code :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "RestApiStatusCode")
                                 (rest-api-response :target-type
                                  rest-api-response :member-name
                                  "RestApiResponse"))
                                (:shape-name "RestApiServerException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedulers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-list :member security-group-id)

(smithy/sdk/shapes:define-structure statistic-set common-lisp:nil
                                    ((sample-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SampleCount")
                                     (sum :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Sum")
                                     (minimum :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Minimum")
                                     (maximum :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Maximum"))
                                    (:shape-name "StatisticSet"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-list :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type environment-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type environment-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-type update-created-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure update-environment-input common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (execution-role-arn :target-type
                                      iam-role-arn :member-name
                                      "ExecutionRoleArn")
                                     (airflow-configuration-options
                                      :target-type
                                      airflow-configuration-options
                                      :member-name
                                      "AirflowConfigurationOptions")
                                     (airflow-version :target-type
                                      airflow-version :member-name
                                      "AirflowVersion")
                                     (dag-s3path :target-type relative-path
                                      :member-name "DagS3Path")
                                     (environment-class :target-type
                                      environment-class :member-name
                                      "EnvironmentClass")
                                     (logging-configuration :target-type
                                      logging-configuration-input :member-name
                                      "LoggingConfiguration")
                                     (max-workers :target-type max-workers
                                      :member-name "MaxWorkers")
                                     (min-workers :target-type min-workers
                                      :member-name "MinWorkers")
                                     (max-webservers :target-type
                                      max-webservers :member-name
                                      "MaxWebservers")
                                     (min-webservers :target-type
                                      min-webservers :member-name
                                      "MinWebservers")
                                     (worker-replacement-strategy :target-type
                                      worker-replacement-strategy :member-name
                                      "WorkerReplacementStrategy")
                                     (network-configuration :target-type
                                      update-network-configuration-input
                                      :member-name "NetworkConfiguration")
                                     (plugins-s3path :target-type relative-path
                                      :member-name "PluginsS3Path")
                                     (plugins-s3object-version :target-type
                                      s3object-version :member-name
                                      "PluginsS3ObjectVersion")
                                     (requirements-s3path :target-type
                                      relative-path :member-name
                                      "RequirementsS3Path")
                                     (requirements-s3object-version
                                      :target-type s3object-version
                                      :member-name
                                      "RequirementsS3ObjectVersion")
                                     (schedulers :target-type schedulers
                                      :member-name "Schedulers")
                                     (source-bucket-arn :target-type
                                      s3bucket-arn :member-name
                                      "SourceBucketArn")
                                     (startup-script-s3path :target-type
                                      relative-path :member-name
                                      "StartupScriptS3Path")
                                     (startup-script-s3object-version
                                      :target-type s3object-version
                                      :member-name
                                      "StartupScriptS3ObjectVersion")
                                     (webserver-access-mode :target-type
                                      webserver-access-mode :member-name
                                      "WebserverAccessMode")
                                     (weekly-maintenance-window-start
                                      :target-type
                                      weekly-maintenance-window-start
                                      :member-name
                                      "WeeklyMaintenanceWindowStart"))
                                    (:shape-name "UpdateEnvironmentInput"))

(smithy/sdk/shapes:define-structure update-environment-output common-lisp:nil
                                    ((arn :target-type environment-arn
                                      :member-name "Arn"))
                                    (:shape-name "UpdateEnvironmentOutput"))

(smithy/sdk/shapes:define-structure update-error common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UpdateError"))

(smithy/sdk/shapes:define-structure update-network-configuration-input
                                    common-lisp:nil
                                    ((security-group-ids :target-type
                                      security-group-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name
                                     "UpdateNetworkConfigurationInput"))

(smithy/sdk/shapes:define-type update-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type update-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpc-endpoint-service-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webserver-access-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webserver-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type weekly-maintenance-window-start
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type worker-replacement-strategy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-cli-token :shape-name
                                       "CreateCliToken" :input
                                       create-cli-token-request :output
                                       create-cli-token-response :errors
                                       (resource-not-found-exception) :method
                                       "POST" :uri "/clitoken/{Name}" :code 200
                                       :endpoint-host-prefix "env.")

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-input :output
                                       create-environment-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/environments/{Name}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-web-login-token :shape-name
                                       "CreateWebLoginToken" :input
                                       create-web-login-token-request :output
                                       create-web-login-token-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/webtoken/{Name}"
                                       :code 200 :endpoint-host-prefix "env.")

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-input :output
                                       delete-environment-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{Name}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-input :output
                                       get-environment-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{Name}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation invoke-rest-api :shape-name
                                       "InvokeRestApi" :input
                                       invoke-rest-api-request :output
                                       invoke-rest-api-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        rest-api-client-exception
                                        rest-api-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/restapi/{Name}"
                                       :code 200 :endpoint-host-prefix "env.")

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-input :output
                                       list-environments-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/environments" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation publish-metrics :shape-name
                                       "PublishMetrics" :input
                                       publish-metrics-input :output
                                       publish-metrics-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/metrics/environments/{EnvironmentName}"
                                       :code 200 :endpoint-host-prefix "ops.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-input :output
                                       update-environment-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/environments/{Name}" :code 200
                                       :endpoint-host-prefix "api.")
