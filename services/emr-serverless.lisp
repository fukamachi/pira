(uiop/package:define-package #:pira/emr-serverless (:use)
                             (:export #:application #:application-arn
                              #:application-id #:application-list
                              #:application-name #:application-resource
                              #:application-state #:application-state-set
                              #:application-summary #:architecture #:arn
                              #:attempt-number #:auto-start-config
                              #:auto-stop-config #:aws-toledo-web-service
                              #:cancel-job-run #:cancel-job-run-request
                              #:cancel-job-run-response #:client-token
                              #:cloud-watch-logging-configuration
                              #:configuration #:configuration-list
                              #:configuration-overrides
                              #:configuration-property-key
                              #:configuration-property-value #:cpu-size
                              #:create-application #:create-application-request
                              #:create-application-response #:date
                              #:delete-application #:delete-application-request
                              #:delete-application-response #:disk-size
                              #:disk-type #:duration #:encryption-key-arn
                              #:engine-type #:entry-point-argument
                              #:entry-point-arguments #:entry-point-path
                              #:get-application #:get-application-request
                              #:get-application-response
                              #:get-dashboard-for-job-run
                              #:get-dashboard-for-job-run-request
                              #:get-dashboard-for-job-run-response
                              #:get-job-run #:get-job-run-request
                              #:get-job-run-response #:hive
                              #:hive-cli-parameters #:iamrole-arn
                              #:identity-center-application-arn
                              #:identity-center-configuration
                              #:identity-center-configuration-input
                              #:identity-center-instance-arn
                              #:image-configuration #:image-configuration-input
                              #:image-digest #:image-uri #:init-script-path
                              #:initial-capacity-config
                              #:initial-capacity-config-map
                              #:interactive-configuration #:job-arn
                              #:job-driver #:job-run #:job-run-attempt-summary
                              #:job-run-attempts #:job-run-execution-iam-policy
                              #:job-run-id #:job-run-mode #:job-run-resource
                              #:job-run-state #:job-run-state-set
                              #:job-run-summary #:job-run-type #:job-runs
                              #:list-applications #:list-applications-request
                              #:list-applications-response
                              #:list-job-run-attempts #:list-job-runs
                              #:list-job-runs-request #:list-job-runs-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:log-group-name #:log-stream-name-prefix
                              #:log-type-list #:log-type-map #:log-type-string
                              #:managed-persistence-monitoring-configuration
                              #:maximum-allowed-resources #:memory-size
                              #:monitoring-configuration
                              #:network-configuration #:next-token
                              #:policy-arn-list #:policy-document
                              #:prometheus-monitoring-configuration
                              #:prometheus-url-string #:query #:release-label
                              #:request-identity-user-arn #:resource-arn
                              #:resource-utilization #:retry-policy
                              #:s3monitoring-configuration
                              #:scheduler-configuration #:security-group-ids
                              #:security-group-string
                              #:sensitive-properties-map
                              #:shutdown-grace-period-in-seconds #:spark-submit
                              #:spark-submit-parameters #:start-application
                              #:start-application-request
                              #:start-application-response #:start-job-run
                              #:start-job-run-request #:start-job-run-response
                              #:stop-application #:stop-application-request
                              #:stop-application-response #:string1024
                              #:string256 #:subnet-ids #:subnet-string
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:total-resource-utilization
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-application
                              #:update-application-request
                              #:update-application-response #:uri-string #:url
                              #:worker-counts #:worker-resource-config
                              #:worker-type-specification
                              #:worker-type-specification-input
                              #:worker-type-specification-input-map
                              #:worker-type-specification-map
                              #:worker-type-string))
(common-lisp:in-package #:pira/emr-serverless)

(smithy/sdk/service:define-service aws-toledo-web-service :shape-name
                                   "AwsToledoWebService" :version "2021-07-13"
                                   :title "EMR Serverless" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EMR Serverless")
                                      ("arnNamespace" . "emr-serverless")
                                      ("cloudFormationName" . "EMRServerless"))
                                     ("aws.auth#sigv4"
                                      ("name" . "emr-serverless"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (arn :target-type application-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (type :target-type engine-type :required
                                      common-lisp:t :member-name "type")
                                     (state :target-type application-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (state-details :target-type string256
                                      :member-name "stateDetails")
                                     (initial-capacity :target-type
                                      initial-capacity-config-map :member-name
                                      "initialCapacity")
                                     (maximum-capacity :target-type
                                      maximum-allowed-resources :member-name
                                      "maximumCapacity")
                                     (created-at :target-type date :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type date :required
                                      common-lisp:t :member-name "updatedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (auto-start-configuration :target-type
                                      auto-start-config :member-name
                                      "autoStartConfiguration")
                                     (auto-stop-configuration :target-type
                                      auto-stop-config :member-name
                                      "autoStopConfiguration")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (architecture :target-type architecture
                                      :member-name "architecture")
                                     (image-configuration :target-type
                                      image-configuration :member-name
                                      "imageConfiguration")
                                     (worker-type-specifications :target-type
                                      worker-type-specification-map
                                      :member-name "workerTypeSpecifications")
                                     (runtime-configuration :target-type
                                      configuration-list :member-name
                                      "runtimeConfiguration")
                                     (monitoring-configuration :target-type
                                      monitoring-configuration :member-name
                                      "monitoringConfiguration")
                                     (interactive-configuration :target-type
                                      interactive-configuration :member-name
                                      "interactiveConfiguration")
                                     (scheduler-configuration :target-type
                                      scheduler-configuration :member-name
                                      "schedulerConfiguration")
                                     (identity-center-configuration
                                      :target-type
                                      identity-center-configuration
                                      :member-name
                                      "identityCenterConfiguration"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-list :member application-summary)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type application-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-state-set :member application-state)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((id :target-type application-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (arn :target-type application-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (type :target-type engine-type :required
                                      common-lisp:t :member-name "type")
                                     (state :target-type application-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (state-details :target-type string256
                                      :member-name "stateDetails")
                                     (created-at :target-type date :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type date :required
                                      common-lisp:t :member-name "updatedAt")
                                     (architecture :target-type architecture
                                      :member-name "architecture"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-type architecture smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attempt-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure auto-start-config common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled"))
                                    (:shape-name "AutoStartConfig"))

(smithy/sdk/shapes:define-structure auto-stop-config common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (idle-timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "idleTimeoutMinutes"))
                                    (:shape-name "AutoStopConfig"))

(smithy/sdk/shapes:define-input cancel-job-run-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (job-run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "jobRunId"
                                  :http-label common-lisp:t)
                                 (shutdown-grace-period-in-seconds :target-type
                                  shutdown-grace-period-in-seconds :member-name
                                  "shutdownGracePeriodInSeconds" :http-query
                                  "shutdownGracePeriodInSeconds"))
                                (:shape-name "CancelJobRunRequest"))

(smithy/sdk/shapes:define-structure cancel-job-run-response common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (job-run-id :target-type job-run-id
                                      :required common-lisp:t :member-name
                                      "jobRunId"))
                                    (:shape-name "CancelJobRunResponse"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logging-configuration
                                    common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (log-stream-name-prefix :target-type
                                      log-stream-name-prefix :member-name
                                      "logStreamNamePrefix")
                                     (encryption-key-arn :target-type
                                      encryption-key-arn :member-name
                                      "encryptionKeyArn")
                                     (log-types :target-type log-type-map
                                      :member-name "logTypes"))
                                    (:shape-name
                                     "CloudWatchLoggingConfiguration"))

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((classification :target-type string1024
                                      :required common-lisp:t :member-name
                                      "classification")
                                     (properties :target-type
                                      sensitive-properties-map :member-name
                                      "properties")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "configurations"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-list configuration-list :member configuration)

(smithy/sdk/shapes:define-structure configuration-overrides common-lisp:nil
                                    ((application-configuration :target-type
                                      configuration-list :member-name
                                      "applicationConfiguration")
                                     (monitoring-configuration :target-type
                                      monitoring-configuration :member-name
                                      "monitoringConfiguration"))
                                    (:shape-name "ConfigurationOverrides"))

(smithy/sdk/shapes:define-type configuration-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string1024 :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type cpu-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-application-request common-lisp:nil
                                    ((name :target-type application-name
                                      :member-name "name")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (type :target-type engine-type :required
                                      common-lisp:t :member-name "type")
                                     (client-token :target-type client-token
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (initial-capacity :target-type
                                      initial-capacity-config-map :member-name
                                      "initialCapacity")
                                     (maximum-capacity :target-type
                                      maximum-allowed-resources :member-name
                                      "maximumCapacity")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (auto-start-configuration :target-type
                                      auto-start-config :member-name
                                      "autoStartConfiguration")
                                     (auto-stop-configuration :target-type
                                      auto-stop-config :member-name
                                      "autoStopConfiguration")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (architecture :target-type architecture
                                      :member-name "architecture")
                                     (image-configuration :target-type
                                      image-configuration-input :member-name
                                      "imageConfiguration")
                                     (worker-type-specifications :target-type
                                      worker-type-specification-input-map
                                      :member-name "workerTypeSpecifications")
                                     (runtime-configuration :target-type
                                      configuration-list :member-name
                                      "runtimeConfiguration")
                                     (monitoring-configuration :target-type
                                      monitoring-configuration :member-name
                                      "monitoringConfiguration")
                                     (interactive-configuration :target-type
                                      interactive-configuration :member-name
                                      "interactiveConfiguration")
                                     (scheduler-configuration :target-type
                                      scheduler-configuration :member-name
                                      "schedulerConfiguration")
                                     (identity-center-configuration
                                      :target-type
                                      identity-center-configuration-input
                                      :member-name
                                      "identityCenterConfiguration"))
                                    (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-structure create-application-response common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (arn :target-type application-arn
                                      :required common-lisp:t :member-name
                                      "arn"))
                                    (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-structure delete-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-type disk-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type disk-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type encryption-key-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entry-point-argument
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entry-point-arguments :member
                               entry-point-argument)

(smithy/sdk/shapes:define-type entry-point-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-structure get-application-response common-lisp:nil
                                    ((application :target-type application
                                      :required common-lisp:t :member-name
                                      "application"))
                                    (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-dashboard-for-job-run-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (job-run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "jobRunId"
                                  :http-label common-lisp:t)
                                 (attempt :target-type attempt-number
                                  :member-name "attempt" :http-query "attempt")
                                 (access-system-profile-logs :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "accessSystemProfileLogs" :http-query
                                  "accessSystemProfileLogs"))
                                (:shape-name "GetDashboardForJobRunRequest"))

(smithy/sdk/shapes:define-structure get-dashboard-for-job-run-response
                                    common-lisp:nil
                                    ((url :target-type url :member-name "url"))
                                    (:shape-name
                                     "GetDashboardForJobRunResponse"))

(smithy/sdk/shapes:define-input get-job-run-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (job-run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "jobRunId"
                                  :http-label common-lisp:t)
                                 (attempt :target-type attempt-number
                                  :member-name "attempt" :http-query
                                  "attempt"))
                                (:shape-name "GetJobRunRequest"))

(smithy/sdk/shapes:define-structure get-job-run-response common-lisp:nil
                                    ((job-run :target-type job-run :required
                                      common-lisp:t :member-name "jobRun"))
                                    (:shape-name "GetJobRunResponse"))

(smithy/sdk/shapes:define-structure hive common-lisp:nil
                                    ((query :target-type query :required
                                      common-lisp:t :member-name "query")
                                     (init-query-file :target-type
                                      init-script-path :member-name
                                      "initQueryFile")
                                     (parameters :target-type
                                      hive-cli-parameters :member-name
                                      "parameters"))
                                    (:shape-name "Hive"))

(smithy/sdk/shapes:define-type hive-cli-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-center-configuration
                                    common-lisp:nil
                                    ((identity-center-instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "identityCenterInstanceArn")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn
                                      :member-name
                                      "identityCenterApplicationArn"))
                                    (:shape-name "IdentityCenterConfiguration"))

(smithy/sdk/shapes:define-structure identity-center-configuration-input
                                    common-lisp:nil
                                    ((identity-center-instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "identityCenterInstanceArn"))
                                    (:shape-name
                                     "IdentityCenterConfigurationInput"))

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-configuration common-lisp:nil
                                    ((image-uri :target-type image-uri
                                      :required common-lisp:t :member-name
                                      "imageUri")
                                     (resolved-image-digest :target-type
                                      image-digest :member-name
                                      "resolvedImageDigest"))
                                    (:shape-name "ImageConfiguration"))

(smithy/sdk/shapes:define-structure image-configuration-input common-lisp:nil
                                    ((image-uri :target-type image-uri
                                      :member-name "imageUri"))
                                    (:shape-name "ImageConfigurationInput"))

(smithy/sdk/shapes:define-type image-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type init-script-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure initial-capacity-config common-lisp:nil
                                    ((worker-count :target-type worker-counts
                                      :required common-lisp:t :member-name
                                      "workerCount")
                                     (worker-configuration :target-type
                                      worker-resource-config :member-name
                                      "workerConfiguration"))
                                    (:shape-name "InitialCapacityConfig"))

(smithy/sdk/shapes:define-map initial-capacity-config-map :key
                              worker-type-string :value initial-capacity-config)

(smithy/sdk/shapes:define-structure interactive-configuration common-lisp:nil
                                    ((studio-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "studioEnabled")
                                     (livy-endpoint-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "livyEndpointEnabled"))
                                    (:shape-name "InteractiveConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string1024 :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union job-driver common-lisp:nil
                                ((spark-submit :target-type spark-submit
                                  :member-name "sparkSubmit")
                                 (hive :target-type hive :member-name "hive"))
                                (:shape-name "JobDriver"))

(smithy/sdk/shapes:define-structure job-run common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (job-run-id :target-type job-run-id
                                      :required common-lisp:t :member-name
                                      "jobRunId")
                                     (name :target-type string256 :member-name
                                      "name")
                                     (arn :target-type job-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-by :target-type
                                      request-identity-user-arn :required
                                      common-lisp:t :member-name "createdBy")
                                     (created-at :target-type date :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type date :required
                                      common-lisp:t :member-name "updatedAt")
                                     (execution-role :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "executionRole")
                                     (execution-iam-policy :target-type
                                      job-run-execution-iam-policy :member-name
                                      "executionIamPolicy")
                                     (state :target-type job-run-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (state-details :target-type string256
                                      :required common-lisp:t :member-name
                                      "stateDetails")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (configuration-overrides :target-type
                                      configuration-overrides :member-name
                                      "configurationOverrides")
                                     (job-driver :target-type job-driver
                                      :required common-lisp:t :member-name
                                      "jobDriver")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (total-resource-utilization :target-type
                                      total-resource-utilization :member-name
                                      "totalResourceUtilization")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (total-execution-duration-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "totalExecutionDurationSeconds")
                                     (execution-timeout-minutes :target-type
                                      duration :member-name
                                      "executionTimeoutMinutes")
                                     (billed-resource-utilization :target-type
                                      resource-utilization :member-name
                                      "billedResourceUtilization")
                                     (mode :target-type job-run-mode
                                      :member-name "mode")
                                     (retry-policy :target-type retry-policy
                                      :member-name "retryPolicy")
                                     (attempt :target-type attempt-number
                                      :member-name "attempt")
                                     (attempt-created-at :target-type date
                                      :member-name "attemptCreatedAt")
                                     (attempt-updated-at :target-type date
                                      :member-name "attemptUpdatedAt")
                                     (started-at :target-type date :member-name
                                      "startedAt")
                                     (ended-at :target-type date :member-name
                                      "endedAt")
                                     (queued-duration-milliseconds :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "queuedDurationMilliseconds"))
                                    (:shape-name "JobRun"))

(smithy/sdk/shapes:define-structure job-run-attempt-summary common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (id :target-type job-run-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type string256 :member-name
                                      "name")
                                     (mode :target-type job-run-mode
                                      :member-name "mode")
                                     (arn :target-type job-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-by :target-type
                                      request-identity-user-arn :required
                                      common-lisp:t :member-name "createdBy")
                                     (job-created-at :target-type date
                                      :required common-lisp:t :member-name
                                      "jobCreatedAt")
                                     (created-at :target-type date :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type date :required
                                      common-lisp:t :member-name "updatedAt")
                                     (execution-role :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "executionRole")
                                     (state :target-type job-run-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (state-details :target-type string256
                                      :required common-lisp:t :member-name
                                      "stateDetails")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (type :target-type job-run-type
                                      :member-name "type")
                                     (attempt :target-type attempt-number
                                      :member-name "attempt"))
                                    (:shape-name "JobRunAttemptSummary"))

(smithy/sdk/shapes:define-list job-run-attempts :member job-run-attempt-summary)

(smithy/sdk/shapes:define-structure job-run-execution-iam-policy
                                    common-lisp:nil
                                    ((policy :target-type policy-document
                                      :member-name "policy")
                                     (policy-arns :target-type policy-arn-list
                                      :member-name "policyArns"))
                                    (:shape-name "JobRunExecutionIamPolicy"))

(smithy/sdk/shapes:define-type job-run-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-run-mode smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type job-run-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-run-state-set :member job-run-state)

(smithy/sdk/shapes:define-structure job-run-summary common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (id :target-type job-run-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type string256 :member-name
                                      "name")
                                     (mode :target-type job-run-mode
                                      :member-name "mode")
                                     (arn :target-type job-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-by :target-type
                                      request-identity-user-arn :required
                                      common-lisp:t :member-name "createdBy")
                                     (created-at :target-type date :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type date :required
                                      common-lisp:t :member-name "updatedAt")
                                     (execution-role :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "executionRole")
                                     (state :target-type job-run-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (state-details :target-type string256
                                      :required common-lisp:t :member-name
                                      "stateDetails")
                                     (release-label :target-type release-label
                                      :required common-lisp:t :member-name
                                      "releaseLabel")
                                     (type :target-type job-run-type
                                      :member-name "type")
                                     (attempt :target-type attempt-number
                                      :member-name "attempt")
                                     (attempt-created-at :target-type date
                                      :member-name "attemptCreatedAt")
                                     (attempt-updated-at :target-type date
                                      :member-name "attemptUpdatedAt"))
                                    (:shape-name "JobRunSummary"))

(smithy/sdk/shapes:define-type job-run-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-runs :member job-run-summary)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (states :target-type application-state-set
                                  :member-name "states" :http-query "states"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-structure list-applications-response common-lisp:nil
                                    ((applications :target-type
                                      application-list :required common-lisp:t
                                      :member-name "applications")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-job-run-attempts-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (job-run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "jobRunId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListJobRunAttemptsRequest"))

(smithy/sdk/shapes:define-output list-job-run-attempts-response common-lisp:nil
                                 ((job-run-attempts :target-type
                                   job-run-attempts :required common-lisp:t
                                   :member-name "jobRunAttempts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobRunAttemptsResponse"))

(smithy/sdk/shapes:define-input list-job-runs-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (created-at-after :target-type date
                                  :member-name "createdAtAfter" :http-query
                                  "createdAtAfter")
                                 (created-at-before :target-type date
                                  :member-name "createdAtBefore" :http-query
                                  "createdAtBefore")
                                 (states :target-type job-run-state-set
                                  :member-name "states" :http-query "states")
                                 (mode :target-type job-run-mode :member-name
                                  "mode" :http-query "mode"))
                                (:shape-name "ListJobRunsRequest"))

(smithy/sdk/shapes:define-structure list-job-runs-response common-lisp:nil
                                    ((job-runs :target-type job-runs :required
                                      common-lisp:t :member-name "jobRuns")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListJobRunsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-stream-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-type-list :member log-type-string)

(smithy/sdk/shapes:define-map log-type-map :key worker-type-string :value
                              log-type-list)

(smithy/sdk/shapes:define-type log-type-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 managed-persistence-monitoring-configuration common-lisp:nil
 ((enabled :target-type smithy/sdk/smithy-types:boolean :member-name "enabled")
  (encryption-key-arn :target-type encryption-key-arn :member-name
   "encryptionKeyArn"))
 (:shape-name "ManagedPersistenceMonitoringConfiguration"))

(smithy/sdk/shapes:define-structure maximum-allowed-resources common-lisp:nil
                                    ((cpu :target-type cpu-size :required
                                      common-lisp:t :member-name "cpu")
                                     (memory :target-type memory-size :required
                                      common-lisp:t :member-name "memory")
                                     (disk :target-type disk-size :member-name
                                      "disk"))
                                    (:shape-name "MaximumAllowedResources"))

(smithy/sdk/shapes:define-type memory-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure monitoring-configuration common-lisp:nil
                                    ((s3monitoring-configuration :target-type
                                      s3monitoring-configuration :member-name
                                      "s3MonitoringConfiguration")
                                     (managed-persistence-monitoring-configuration
                                      :target-type
                                      managed-persistence-monitoring-configuration
                                      :member-name
                                      "managedPersistenceMonitoringConfiguration")
                                     (cloud-watch-logging-configuration
                                      :target-type
                                      cloud-watch-logging-configuration
                                      :member-name
                                      "cloudWatchLoggingConfiguration")
                                     (prometheus-monitoring-configuration
                                      :target-type
                                      prometheus-monitoring-configuration
                                      :member-name
                                      "prometheusMonitoringConfiguration"))
                                    (:shape-name "MonitoringConfiguration"))

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-arn-list :member arn)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prometheus-monitoring-configuration
                                    common-lisp:nil
                                    ((remote-write-url :target-type
                                      prometheus-url-string :member-name
                                      "remoteWriteUrl"))
                                    (:shape-name
                                     "PrometheusMonitoringConfiguration"))

(smithy/sdk/shapes:define-type prometheus-url-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type release-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-identity-user-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string1024 :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-utilization common-lisp:nil
                                    ((v-cpuhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "vCPUHour")
                                     (memory-gbhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "memoryGBHour")
                                     (storage-gbhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "storageGBHour"))
                                    (:shape-name "ResourceUtilization"))

(smithy/sdk/shapes:define-structure retry-policy common-lisp:nil
                                    ((max-attempts :target-type attempt-number
                                      :member-name "maxAttempts")
                                     (max-failed-attempts-per-hour :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxFailedAttemptsPerHour"))
                                    (:shape-name "RetryPolicy"))

(smithy/sdk/shapes:define-structure s3monitoring-configuration common-lisp:nil
                                    ((log-uri :target-type uri-string
                                      :member-name "logUri")
                                     (encryption-key-arn :target-type
                                      encryption-key-arn :member-name
                                      "encryptionKeyArn"))
                                    (:shape-name "S3MonitoringConfiguration"))

(smithy/sdk/shapes:define-structure scheduler-configuration common-lisp:nil
                                    ((queue-timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "queueTimeoutMinutes")
                                     (max-concurrent-runs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxConcurrentRuns"))
                                    (:shape-name "SchedulerConfiguration"))

(smithy/sdk/shapes:define-list security-group-ids :member security-group-string)

(smithy/sdk/shapes:define-type security-group-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map sensitive-properties-map :key
                              configuration-property-key :value
                              configuration-property-value)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string1024 :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type shutdown-grace-period-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure spark-submit common-lisp:nil
                                    ((entry-point :target-type entry-point-path
                                      :required common-lisp:t :member-name
                                      "entryPoint")
                                     (entry-point-arguments :target-type
                                      entry-point-arguments :member-name
                                      "entryPointArguments")
                                     (spark-submit-parameters :target-type
                                      spark-submit-parameters :member-name
                                      "sparkSubmitParameters"))
                                    (:shape-name "SparkSubmit"))

(smithy/sdk/shapes:define-type spark-submit-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "StartApplicationRequest"))

(smithy/sdk/shapes:define-structure start-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartApplicationResponse"))

(smithy/sdk/shapes:define-input start-job-run-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (execution-role-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "executionRoleArn")
                                 (execution-iam-policy :target-type
                                  job-run-execution-iam-policy :member-name
                                  "executionIamPolicy")
                                 (job-driver :target-type job-driver
                                  :member-name "jobDriver")
                                 (configuration-overrides :target-type
                                  configuration-overrides :member-name
                                  "configurationOverrides")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (execution-timeout-minutes :target-type
                                  duration :member-name
                                  "executionTimeoutMinutes")
                                 (name :target-type string256 :member-name
                                  "name")
                                 (mode :target-type job-run-mode :member-name
                                  "mode")
                                 (retry-policy :target-type retry-policy
                                  :member-name "retryPolicy"))
                                (:shape-name "StartJobRunRequest"))

(smithy/sdk/shapes:define-structure start-job-run-response common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationId")
                                     (job-run-id :target-type job-run-id
                                      :required common-lisp:t :member-name
                                      "jobRunId")
                                     (arn :target-type job-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "StartJobRunResponse"))

(smithy/sdk/shapes:define-input stop-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "StopApplicationRequest"))

(smithy/sdk/shapes:define-structure stop-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopApplicationResponse"))

(smithy/sdk/shapes:define-type string1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-string)

(smithy/sdk/shapes:define-type subnet-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure total-resource-utilization common-lisp:nil
                                    ((v-cpuhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "vCPUHour")
                                     (memory-gbhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "memoryGBHour")
                                     (storage-gbhour :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "storageGBHour"))
                                    (:shape-name "TotalResourceUtilization"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (initial-capacity :target-type
                                  initial-capacity-config-map :member-name
                                  "initialCapacity")
                                 (maximum-capacity :target-type
                                  maximum-allowed-resources :member-name
                                  "maximumCapacity")
                                 (auto-start-configuration :target-type
                                  auto-start-config :member-name
                                  "autoStartConfiguration")
                                 (auto-stop-configuration :target-type
                                  auto-stop-config :member-name
                                  "autoStopConfiguration")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (architecture :target-type architecture
                                  :member-name "architecture")
                                 (image-configuration :target-type
                                  image-configuration-input :member-name
                                  "imageConfiguration")
                                 (worker-type-specifications :target-type
                                  worker-type-specification-input-map
                                  :member-name "workerTypeSpecifications")
                                 (interactive-configuration :target-type
                                  interactive-configuration :member-name
                                  "interactiveConfiguration")
                                 (release-label :target-type release-label
                                  :member-name "releaseLabel")
                                 (runtime-configuration :target-type
                                  configuration-list :member-name
                                  "runtimeConfiguration")
                                 (monitoring-configuration :target-type
                                  monitoring-configuration :member-name
                                  "monitoringConfiguration")
                                 (scheduler-configuration :target-type
                                  scheduler-configuration :member-name
                                  "schedulerConfiguration")
                                 (identity-center-configuration :target-type
                                  identity-center-configuration-input
                                  :member-name "identityCenterConfiguration"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-structure update-application-response common-lisp:nil
                                    ((application :target-type application
                                      :required common-lisp:t :member-name
                                      "application"))
                                    (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-type uri-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string1024 :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type worker-counts smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure worker-resource-config common-lisp:nil
                                    ((cpu :target-type cpu-size :required
                                      common-lisp:t :member-name "cpu")
                                     (memory :target-type memory-size :required
                                      common-lisp:t :member-name "memory")
                                     (disk :target-type disk-size :member-name
                                      "disk")
                                     (disk-type :target-type disk-type
                                      :member-name "diskType"))
                                    (:shape-name "WorkerResourceConfig"))

(smithy/sdk/shapes:define-structure worker-type-specification common-lisp:nil
                                    ((image-configuration :target-type
                                      image-configuration :member-name
                                      "imageConfiguration"))
                                    (:shape-name "WorkerTypeSpecification"))

(smithy/sdk/shapes:define-structure worker-type-specification-input
                                    common-lisp:nil
                                    ((image-configuration :target-type
                                      image-configuration-input :member-name
                                      "imageConfiguration"))
                                    (:shape-name
                                     "WorkerTypeSpecificationInput"))

(smithy/sdk/shapes:define-map worker-type-specification-input-map :key
                              worker-type-string :value
                              worker-type-specification-input)

(smithy/sdk/shapes:define-map worker-type-specification-map :key
                              worker-type-string :value
                              worker-type-specification)

(smithy/sdk/shapes:define-type worker-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-job-run :shape-name
                                       "CancelJobRun" :input
                                       cancel-job-run-request :output
                                       cancel-job-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/jobruns/{jobRunId}")

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/applications")

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}")

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}")

(smithy/sdk/operation:define-operation get-dashboard-for-job-run :shape-name
                                       "GetDashboardForJobRun" :input
                                       get-dashboard-for-job-run-request
                                       :output
                                       get-dashboard-for-job-run-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/jobruns/{jobRunId}/dashboard")

(smithy/sdk/operation:define-operation get-job-run :shape-name "GetJobRun"
                                       :input get-job-run-request :output
                                       get-job-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/jobruns/{jobRunId}")

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/applications")

(smithy/sdk/operation:define-operation list-job-run-attempts :shape-name
                                       "ListJobRunAttempts" :input
                                       list-job-run-attempts-request :output
                                       list-job-run-attempts-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/jobruns/{jobRunId}/attempts")

(smithy/sdk/operation:define-operation list-job-runs :shape-name "ListJobRuns"
                                       :input list-job-runs-request :output
                                       list-job-runs-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/jobruns")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation start-application :shape-name
                                       "StartApplication" :input
                                       start-application-request :output
                                       start-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/start")

(smithy/sdk/operation:define-operation start-job-run :shape-name "StartJobRun"
                                       :input start-job-run-request :output
                                       start-job-run-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/jobruns")

(smithy/sdk/operation:define-operation stop-application :shape-name
                                       "StopApplication" :input
                                       stop-application-request :output
                                       stop-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/stop")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{applicationId}")
