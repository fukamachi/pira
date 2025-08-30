(uiop/package:define-package #:pira/braket (:use)
                             (:export #:access-denied-exception
                              #:algorithm-specification #:association
                              #:association-type #:associations #:braket
                              #:braket-resource-arn #:cancel-job
                              #:cancel-job-request #:cancel-job-response
                              #:cancel-quantum-task
                              #:cancel-quantum-task-request
                              #:cancel-quantum-task-response
                              #:cancellation-status #:compression-type
                              #:conflict-exception #:container-image
                              #:create-job #:create-job-request
                              #:create-job-response #:create-quantum-task
                              #:create-quantum-task-request
                              #:create-quantum-task-response #:data-source
                              #:device-arn #:device-config
                              #:device-offline-exception #:device-queue-info
                              #:device-queue-info-list #:device-resource
                              #:device-retired-exception #:device-status
                              #:device-summary #:device-summary-list
                              #:device-type #:get-device #:get-device-request
                              #:get-device-response #:get-job #:get-job-request
                              #:get-job-response #:get-quantum-task
                              #:get-quantum-task-request
                              #:get-quantum-task-response
                              #:hybrid-job-additional-attribute-name
                              #:hybrid-job-additional-attribute-names-list
                              #:hybrid-job-queue-info #:hyper-parameters
                              #:input-config-list #:input-file-config
                              #:instance-config #:instance-type
                              #:internal-service-exception #:job-arn
                              #:job-checkpoint-config #:job-event-details
                              #:job-event-type #:job-events
                              #:job-output-data-config #:job-primary-status
                              #:job-resource #:job-stopping-condition
                              #:job-summary #:job-summary-list #:job-token
                              #:json-value #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:quantum-task-additional-attribute-name
                              #:quantum-task-additional-attribute-names-list
                              #:quantum-task-arn #:quantum-task-queue-info
                              #:quantum-task-resource #:quantum-task-status
                              #:quantum-task-summary
                              #:quantum-task-summary-list #:queue-name
                              #:queue-priority #:resource-not-found-exception
                              #:role-arn #:s3data-source #:s3path
                              #:script-mode-config #:search-devices
                              #:search-devices-filter
                              #:search-devices-filter-list
                              #:search-devices-request
                              #:search-devices-response #:search-jobs
                              #:search-jobs-filter #:search-jobs-filter-list
                              #:search-jobs-filter-operator
                              #:search-jobs-request #:search-jobs-response
                              #:search-quantum-tasks
                              #:search-quantum-tasks-filter
                              #:search-quantum-tasks-filter-list
                              #:search-quantum-tasks-filter-operator
                              #:search-quantum-tasks-request
                              #:search-quantum-tasks-response
                              #:service-quota-exceeded-exception #:string1024
                              #:string2048 #:string256 #:string256list
                              #:string4096 #:string64 #:tag-keys #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tags-map #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:uri
                              #:validation-exception #:braket-error))
(common-lisp:in-package #:pira/braket)

(common-lisp:define-condition braket-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service braket :shape-name "Braket" :version
                                   "2019-09-01" :title "Braket" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Braket")
                                      ("cloudTrailEventSource"
                                       . "braket.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "braket"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class braket-error))

(smithy/sdk/shapes:define-structure algorithm-specification common-lisp:nil
                                    ((script-mode-config :target-type
                                      script-mode-config :member-name
                                      "scriptModeConfig")
                                     (container-image :target-type
                                      container-image :member-name
                                      "containerImage"))
                                    (:shape-name "AlgorithmSpecification"))

(smithy/sdk/shapes:define-structure association common-lisp:nil
                                    ((arn :target-type braket-resource-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (type :target-type association-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "Association"))

(smithy/sdk/shapes:define-type association-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list associations :member association)

(smithy/sdk/shapes:define-type braket-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((job-arn :target-type job-arn :required
                                  common-lisp:t :member-name "jobArn"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-structure cancel-job-response common-lisp:nil
                                    ((job-arn :target-type job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (cancellation-status :target-type
                                      cancellation-status :required
                                      common-lisp:t :member-name
                                      "cancellationStatus"))
                                    (:shape-name "CancelJobResponse"))

(smithy/sdk/shapes:define-input cancel-quantum-task-request common-lisp:nil
                                ((quantum-task-arn :target-type
                                  quantum-task-arn :required common-lisp:t
                                  :member-name "quantumTaskArn" :http-label
                                  common-lisp:t)
                                 (client-token :target-type string64 :required
                                  common-lisp:t :member-name "clientToken"))
                                (:shape-name "CancelQuantumTaskRequest"))

(smithy/sdk/shapes:define-structure cancel-quantum-task-response
                                    common-lisp:nil
                                    ((quantum-task-arn :target-type
                                      quantum-task-arn :required common-lisp:t
                                      :member-name "quantumTaskArn")
                                     (cancellation-status :target-type
                                      cancellation-status :required
                                      common-lisp:t :member-name
                                      "cancellationStatus"))
                                    (:shape-name "CancelQuantumTaskResponse"))

(smithy/sdk/shapes:define-type cancellation-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compression-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class braket-error))

(smithy/sdk/shapes:define-structure container-image common-lisp:nil
                                    ((uri :target-type uri :required
                                      common-lisp:t :member-name "uri"))
                                    (:shape-name "ContainerImage"))

(smithy/sdk/shapes:define-structure create-job-request common-lisp:nil
                                    ((client-token :target-type string64
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (algorithm-specification :target-type
                                      algorithm-specification :required
                                      common-lisp:t :member-name
                                      "algorithmSpecification")
                                     (input-data-config :target-type
                                      input-config-list :member-name
                                      "inputDataConfig")
                                     (output-data-config :target-type
                                      job-output-data-config :required
                                      common-lisp:t :member-name
                                      "outputDataConfig")
                                     (checkpoint-config :target-type
                                      job-checkpoint-config :member-name
                                      "checkpointConfig")
                                     (job-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "jobName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (stopping-condition :target-type
                                      job-stopping-condition :member-name
                                      "stoppingCondition")
                                     (instance-config :target-type
                                      instance-config :required common-lisp:t
                                      :member-name "instanceConfig")
                                     (hyper-parameters :target-type
                                      hyper-parameters :member-name
                                      "hyperParameters")
                                     (device-config :target-type device-config
                                      :required common-lisp:t :member-name
                                      "deviceConfig")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (associations :target-type associations
                                      :member-name "associations"))
                                    (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-structure create-job-response common-lisp:nil
                                    ((job-arn :target-type job-arn :required
                                      common-lisp:t :member-name "jobArn"))
                                    (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-structure create-quantum-task-request common-lisp:nil
                                    ((client-token :target-type string64
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (device-arn :target-type device-arn
                                      :required common-lisp:t :member-name
                                      "deviceArn")
                                     (device-parameters :target-type json-value
                                      :member-name "deviceParameters")
                                     (shots :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "shots")
                                     (output-s3bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3Bucket")
                                     (output-s3key-prefix :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3KeyPrefix")
                                     (action :target-type json-value :required
                                      common-lisp:t :member-name "action")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (job-token :target-type job-token
                                      :member-name "jobToken")
                                     (associations :target-type associations
                                      :member-name "associations"))
                                    (:shape-name "CreateQuantumTaskRequest"))

(smithy/sdk/shapes:define-structure create-quantum-task-response
                                    common-lisp:nil
                                    ((quantum-task-arn :target-type
                                      quantum-task-arn :required common-lisp:t
                                      :member-name "quantumTaskArn"))
                                    (:shape-name "CreateQuantumTaskResponse"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((s3data-source :target-type s3data-source
                                      :required common-lisp:t :member-name
                                      "s3DataSource"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-type device-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-config common-lisp:nil
                                    ((device :target-type string256 :required
                                      common-lisp:t :member-name "device"))
                                    (:shape-name "DeviceConfig"))

(smithy/sdk/shapes:define-error device-offline-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "DeviceOfflineException")
                                (:error-code 424) (:base-class braket-error))

(smithy/sdk/shapes:define-structure device-queue-info common-lisp:nil
                                    ((queue :target-type queue-name :required
                                      common-lisp:t :member-name "queue")
                                     (queue-size :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "queueSize")
                                     (queue-priority :target-type
                                      queue-priority :member-name
                                      "queuePriority"))
                                    (:shape-name "DeviceQueueInfo"))

(smithy/sdk/shapes:define-list device-queue-info-list :member device-queue-info)

common-lisp:nil

(smithy/sdk/shapes:define-error device-retired-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "DeviceRetiredException")
                                (:error-code 410) (:base-class braket-error))

(smithy/sdk/shapes:define-type device-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-summary common-lisp:nil
                                    ((device-arn :target-type device-arn
                                      :required common-lisp:t :member-name
                                      "deviceArn")
                                     (device-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "deviceName")
                                     (provider-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "providerName")
                                     (device-type :target-type device-type
                                      :required common-lisp:t :member-name
                                      "deviceType")
                                     (device-status :target-type device-status
                                      :required common-lisp:t :member-name
                                      "deviceStatus"))
                                    (:shape-name "DeviceSummary"))

(smithy/sdk/shapes:define-list device-summary-list :member device-summary)

(smithy/sdk/shapes:define-type device-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-device-request common-lisp:nil
                                ((device-arn :target-type device-arn :required
                                  common-lisp:t :member-name "deviceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDeviceRequest"))

(smithy/sdk/shapes:define-structure get-device-response common-lisp:nil
                                    ((device-arn :target-type device-arn
                                      :required common-lisp:t :member-name
                                      "deviceArn")
                                     (device-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "deviceName")
                                     (provider-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "providerName")
                                     (device-type :target-type device-type
                                      :required common-lisp:t :member-name
                                      "deviceType")
                                     (device-status :target-type device-status
                                      :required common-lisp:t :member-name
                                      "deviceStatus")
                                     (device-capabilities :target-type
                                      json-value :required common-lisp:t
                                      :member-name "deviceCapabilities")
                                     (device-queue-info :target-type
                                      device-queue-info-list :member-name
                                      "deviceQueueInfo"))
                                    (:shape-name "GetDeviceResponse"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((job-arn :target-type job-arn :required
                                  common-lisp:t :member-name "jobArn"
                                  :http-label common-lisp:t)
                                 (additional-attribute-names :target-type
                                  hybrid-job-additional-attribute-names-list
                                  :member-name "additionalAttributeNames"
                                  :http-query "additionalAttributeNames"))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-structure get-job-response common-lisp:nil
                                    ((status :target-type job-primary-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (job-arn :target-type job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (failure-reason :target-type string1024
                                      :member-name "failureReason")
                                     (job-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "jobName")
                                     (hyper-parameters :target-type
                                      hyper-parameters :member-name
                                      "hyperParameters")
                                     (input-data-config :target-type
                                      input-config-list :member-name
                                      "inputDataConfig")
                                     (output-data-config :target-type
                                      job-output-data-config :required
                                      common-lisp:t :member-name
                                      "outputDataConfig")
                                     (stopping-condition :target-type
                                      job-stopping-condition :member-name
                                      "stoppingCondition")
                                     (checkpoint-config :target-type
                                      job-checkpoint-config :member-name
                                      "checkpointConfig")
                                     (algorithm-specification :target-type
                                      algorithm-specification :required
                                      common-lisp:t :member-name
                                      "algorithmSpecification")
                                     (instance-config :target-type
                                      instance-config :required common-lisp:t
                                      :member-name "instanceConfig")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedAt"
                                      :timestamp-format "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedAt" :timestamp-format
                                      "date-time")
                                     (billable-duration :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "billableDuration")
                                     (device-config :target-type device-config
                                      :member-name "deviceConfig")
                                     (events :target-type job-events
                                      :member-name "events")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (queue-info :target-type
                                      hybrid-job-queue-info :member-name
                                      "queueInfo")
                                     (associations :target-type associations
                                      :member-name "associations"))
                                    (:shape-name "GetJobResponse"))

(smithy/sdk/shapes:define-input get-quantum-task-request common-lisp:nil
                                ((quantum-task-arn :target-type
                                  quantum-task-arn :required common-lisp:t
                                  :member-name "quantumTaskArn" :http-label
                                  common-lisp:t)
                                 (additional-attribute-names :target-type
                                  quantum-task-additional-attribute-names-list
                                  :member-name "additionalAttributeNames"
                                  :http-query "additionalAttributeNames"))
                                (:shape-name "GetQuantumTaskRequest"))

(smithy/sdk/shapes:define-structure get-quantum-task-response common-lisp:nil
                                    ((quantum-task-arn :target-type
                                      quantum-task-arn :required common-lisp:t
                                      :member-name "quantumTaskArn")
                                     (status :target-type quantum-task-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (failure-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureReason")
                                     (device-arn :target-type device-arn
                                      :required common-lisp:t :member-name
                                      "deviceArn")
                                     (device-parameters :target-type json-value
                                      :required common-lisp:t :member-name
                                      "deviceParameters")
                                     (shots :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "shots")
                                     (output-s3bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3Bucket")
                                     (output-s3directory :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3Directory")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedAt" :timestamp-format
                                      "date-time")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (job-arn :target-type job-arn :member-name
                                      "jobArn")
                                     (queue-info :target-type
                                      quantum-task-queue-info :member-name
                                      "queueInfo")
                                     (associations :target-type associations
                                      :member-name "associations"))
                                    (:shape-name "GetQuantumTaskResponse"))

(smithy/sdk/shapes:define-type hybrid-job-additional-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hybrid-job-additional-attribute-names-list
                               :member hybrid-job-additional-attribute-name)

(smithy/sdk/shapes:define-structure hybrid-job-queue-info common-lisp:nil
                                    ((queue :target-type queue-name :required
                                      common-lisp:t :member-name "queue")
                                     (position :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "position")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "HybridJobQueueInfo"))

(smithy/sdk/shapes:define-map hyper-parameters :key string256 :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list input-config-list :member input-file-config)

(smithy/sdk/shapes:define-structure input-file-config common-lisp:nil
                                    ((channel-name :target-type string64
                                      :required common-lisp:t :member-name
                                      "channelName")
                                     (content-type :target-type string256
                                      :member-name "contentType")
                                     (data-source :target-type data-source
                                      :required common-lisp:t :member-name
                                      "dataSource"))
                                    (:shape-name "InputFileConfig"))

(smithy/sdk/shapes:define-structure instance-config common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (volume-size-in-gb :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "volumeSizeInGb")
                                     (instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "instanceCount"))
                                    (:shape-name "InstanceConfig"))

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500) (:base-class braket-error))

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-checkpoint-config common-lisp:nil
                                    ((local-path :target-type string4096
                                      :member-name "localPath")
                                     (s3uri :target-type s3path :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "JobCheckpointConfig"))

(smithy/sdk/shapes:define-structure job-event-details common-lisp:nil
                                    ((event-type :target-type job-event-type
                                      :member-name "eventType")
                                     (time-of-event :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timeOfEvent"
                                      :timestamp-format "date-time")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "JobEventDetails"))

(smithy/sdk/shapes:define-type job-event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-events :member job-event-details)

(smithy/sdk/shapes:define-structure job-output-data-config common-lisp:nil
                                    ((kms-key-id :target-type string2048
                                      :member-name "kmsKeyId")
                                     (s3path :target-type s3path :required
                                      common-lisp:t :member-name "s3Path"))
                                    (:shape-name "JobOutputDataConfig"))

(smithy/sdk/shapes:define-type job-primary-status
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure job-stopping-condition common-lisp:nil
                                    ((max-runtime-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxRuntimeInSeconds"))
                                    (:shape-name "JobStoppingCondition"))

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((status :target-type job-primary-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (job-arn :target-type job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (job-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "jobName")
                                     (device :target-type string256 :required
                                      common-lisp:t :member-name "device")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedAt"
                                      :timestamp-format "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedAt" :timestamp-format
                                      "date-time")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-list job-summary-list :member job-summary)

(smithy/sdk/shapes:define-type job-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type quantum-task-additional-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list quantum-task-additional-attribute-names-list
                               :member quantum-task-additional-attribute-name)

(smithy/sdk/shapes:define-type quantum-task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quantum-task-queue-info common-lisp:nil
                                    ((queue :target-type queue-name :required
                                      common-lisp:t :member-name "queue")
                                     (position :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "position")
                                     (queue-priority :target-type
                                      queue-priority :member-name
                                      "queuePriority")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "QuantumTaskQueueInfo"))

common-lisp:nil

(smithy/sdk/shapes:define-type quantum-task-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quantum-task-summary common-lisp:nil
                                    ((quantum-task-arn :target-type
                                      quantum-task-arn :required common-lisp:t
                                      :member-name "quantumTaskArn")
                                     (status :target-type quantum-task-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (device-arn :target-type device-arn
                                      :required common-lisp:t :member-name
                                      "deviceArn")
                                     (shots :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "shots")
                                     (output-s3bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3Bucket")
                                     (output-s3directory :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "outputS3Directory")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedAt" :timestamp-format
                                      "date-time")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "QuantumTaskSummary"))

(smithy/sdk/shapes:define-list quantum-task-summary-list :member
                               quantum-task-summary)

(smithy/sdk/shapes:define-type queue-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type queue-priority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class braket-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3data-source common-lisp:nil
                                    ((s3uri :target-type s3path :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "S3DataSource"))

(smithy/sdk/shapes:define-type s3path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure script-mode-config common-lisp:nil
                                    ((entry-point :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "entryPoint")
                                     (s3uri :target-type s3path :required
                                      common-lisp:t :member-name "s3Uri")
                                     (compression-type :target-type
                                      compression-type :member-name
                                      "compressionType"))
                                    (:shape-name "ScriptModeConfig"))

(smithy/sdk/shapes:define-structure search-devices-filter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type string256list
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "SearchDevicesFilter"))

(smithy/sdk/shapes:define-list search-devices-filter-list :member
                               search-devices-filter)

(smithy/sdk/shapes:define-structure search-devices-request common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults")
                                     (filters :target-type
                                      search-devices-filter-list :required
                                      common-lisp:t :member-name "filters"))
                                    (:shape-name "SearchDevicesRequest"))

(smithy/sdk/shapes:define-structure search-devices-response common-lisp:nil
                                    ((devices :target-type device-summary-list
                                      :required common-lisp:t :member-name
                                      "devices")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "SearchDevicesResponse"))

(smithy/sdk/shapes:define-structure search-jobs-filter common-lisp:nil
                                    ((name :target-type string64 :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type string256list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      search-jobs-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "SearchJobsFilter"))

(smithy/sdk/shapes:define-list search-jobs-filter-list :member
                               search-jobs-filter)

(smithy/sdk/shapes:define-type search-jobs-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure search-jobs-request common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults")
                                     (filters :target-type
                                      search-jobs-filter-list :required
                                      common-lisp:t :member-name "filters"))
                                    (:shape-name "SearchJobsRequest"))

(smithy/sdk/shapes:define-structure search-jobs-response common-lisp:nil
                                    ((jobs :target-type job-summary-list
                                      :required common-lisp:t :member-name
                                      "jobs")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "SearchJobsResponse"))

(smithy/sdk/shapes:define-structure search-quantum-tasks-filter common-lisp:nil
                                    ((name :target-type string64 :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type string256list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (operator :target-type
                                      search-quantum-tasks-filter-operator
                                      :required common-lisp:t :member-name
                                      "operator"))
                                    (:shape-name "SearchQuantumTasksFilter"))

(smithy/sdk/shapes:define-list search-quantum-tasks-filter-list :member
                               search-quantum-tasks-filter)

(smithy/sdk/shapes:define-type search-quantum-tasks-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure search-quantum-tasks-request
                                    common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults")
                                     (filters :target-type
                                      search-quantum-tasks-filter-list
                                      :required common-lisp:t :member-name
                                      "filters"))
                                    (:shape-name "SearchQuantumTasksRequest"))

(smithy/sdk/shapes:define-structure search-quantum-tasks-response
                                    common-lisp:nil
                                    ((quantum-tasks :target-type
                                      quantum-task-summary-list :required
                                      common-lisp:t :member-name
                                      "quantumTasks")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "SearchQuantumTasksResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class braket-error))

(smithy/sdk/shapes:define-type string1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string256list :member string256)

(smithy/sdk/shapes:define-type string4096 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class braket-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class braket-error))

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/job/{jobArn}/cancel")

(smithy/sdk/operation:define-operation cancel-quantum-task :shape-name
                                       "CancelQuantumTask" :input
                                       cancel-quantum-task-request :output
                                       cancel-quantum-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/quantum-task/{quantumTaskArn}/cancel")

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        device-offline-exception
                                        device-retired-exception
                                        internal-service-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/job" :code 201)

(smithy/sdk/operation:define-operation create-quantum-task :shape-name
                                       "CreateQuantumTask" :input
                                       create-quantum-task-request :output
                                       create-quantum-task-response :errors
                                       (access-denied-exception
                                        device-offline-exception
                                        device-retired-exception
                                        internal-service-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/quantum-task"
                                       :code 201)

(smithy/sdk/operation:define-operation get-device :shape-name "GetDevice"
                                       :input get-device-request :output
                                       get-device-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/device/{deviceArn}")

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/job/{jobArn}")

(smithy/sdk/operation:define-operation get-quantum-task :shape-name
                                       "GetQuantumTask" :input
                                       get-quantum-task-request :output
                                       get-quantum-task-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/quantum-task/{quantumTaskArn}")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation search-devices :shape-name
                                       "SearchDevices" :input
                                       search-devices-request :output
                                       search-devices-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/devices")

(smithy/sdk/operation:define-operation search-jobs :shape-name "SearchJobs"
                                       :input search-jobs-request :output
                                       search-jobs-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/jobs")

(smithy/sdk/operation:define-operation search-quantum-tasks :shape-name
                                       "SearchQuantumTasks" :input
                                       search-quantum-tasks-request :output
                                       search-quantum-tasks-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/quantum-tasks")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")
