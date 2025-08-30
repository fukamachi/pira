(uiop/package:define-package #:pira/lookoutequipment (:use)
                             (:export #:awslookout-equipment-frontend-service
                              #:access-denied-exception #:amazon-resource-arn
                              #:auto-promotion-result
                              #:auto-promotion-result-reason #:boolean
                              #:bounded-length-string #:categorical-values
                              #:comments #:component-name
                              #:component-timestamp-delimiter
                              #:conflict-exception #:count-percent
                              #:create-dataset #:create-inference-scheduler
                              #:create-label #:create-label-group
                              #:create-model #:create-retraining-scheduler
                              #:data-delay-offset-in-minutes
                              #:data-ingestion-job-summaries
                              #:data-ingestion-job-summary
                              #:data-pre-processing-configuration
                              #:data-quality-summary #:data-size-in-bytes
                              #:data-upload-frequency #:dataset-arn
                              #:dataset-identifier #:dataset-name
                              #:dataset-schema #:dataset-status
                              #:dataset-summaries #:dataset-summary
                              #:delete-dataset #:delete-inference-scheduler
                              #:delete-label #:delete-label-group
                              #:delete-model #:delete-resource-policy
                              #:delete-retraining-scheduler
                              #:describe-data-ingestion-job #:describe-dataset
                              #:describe-inference-scheduler #:describe-label
                              #:describe-label-group #:describe-model
                              #:describe-model-version
                              #:describe-resource-policy
                              #:describe-retraining-scheduler
                              #:duplicate-timestamps #:equipment
                              #:event-duration-in-seconds #:fault-code
                              #:fault-codes #:file-name-timestamp-format
                              #:float #:iam-role-arn #:idempotence-token
                              #:import-dataset #:import-model-version
                              #:inference-data-import-strategy
                              #:inference-event-summaries
                              #:inference-event-summary
                              #:inference-execution-status
                              #:inference-execution-summaries
                              #:inference-execution-summary
                              #:inference-input-configuration
                              #:inference-input-name-configuration
                              #:inference-output-configuration
                              #:inference-s3input-configuration
                              #:inference-s3output-configuration
                              #:inference-scheduler-arn
                              #:inference-scheduler-identifier
                              #:inference-scheduler-name
                              #:inference-scheduler-status
                              #:inference-scheduler-summaries
                              #:inference-scheduler-summary
                              #:ingested-files-summary
                              #:ingestion-input-configuration
                              #:ingestion-job-id #:ingestion-job-status
                              #:ingestion-s3input-configuration
                              #:inline-data-schema #:insufficient-sensor-data
                              #:integer #:internal-server-exception
                              #:invalid-sensor-data #:key-pattern #:kms-key-arn
                              #:label-group-arn #:label-group-name
                              #:label-group-summaries #:label-group-summary
                              #:label-id #:label-rating #:label-summaries
                              #:label-summary #:labels-input-configuration
                              #:labels-s3input-configuration
                              #:large-timestamp-gaps #:latest-inference-result
                              #:list-data-ingestion-jobs #:list-datasets
                              #:list-inference-events
                              #:list-inference-executions
                              #:list-inference-schedulers #:list-label-groups
                              #:list-labels #:list-model-versions #:list-models
                              #:list-of-discarded-files
                              #:list-retraining-schedulers
                              #:list-sensor-statistics #:list-tags-for-resource
                              #:lookback-window #:max-results
                              #:missing-complete-sensor-data
                              #:missing-sensor-data #:model-arn
                              #:model-diagnostics-output-configuration
                              #:model-diagnostics-s3output-configuration
                              #:model-metrics #:model-name #:model-promote-mode
                              #:model-quality #:model-status #:model-summaries
                              #:model-summary #:model-version
                              #:model-version-arn #:model-version-source-type
                              #:model-version-status #:model-version-summaries
                              #:model-version-summary #:monotonic-values
                              #:monotonicity #:multiple-operating-modes
                              #:name-or-arn #:next-token #:off-condition
                              #:policy #:policy-revision-id
                              #:put-resource-policy #:resource-arn
                              #:resource-not-found-exception
                              #:retraining-frequency
                              #:retraining-scheduler-status
                              #:retraining-scheduler-summaries
                              #:retraining-scheduler-summary #:s3bucket #:s3key
                              #:s3object #:s3prefix #:sensor-name
                              #:sensor-statistics-summaries
                              #:sensor-statistics-summary
                              #:sensors-with-short-date-range
                              #:service-quota-exceeded-exception
                              #:start-data-ingestion-job
                              #:start-inference-scheduler
                              #:start-retraining-scheduler
                              #:statistical-issue-status
                              #:stop-inference-scheduler
                              #:stop-retraining-scheduler
                              #:synthesized-json-inline-data-schema
                              #:synthesized-json-model-metrics #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-sampling-rate
                              #:throttling-exception #:time-zone-offset
                              #:timestamp #:unsupported-timestamps
                              #:untag-resource #:update-active-model-version
                              #:update-inference-scheduler #:update-label-group
                              #:update-model #:update-retraining-scheduler
                              #:validation-exception #:lookoutequipment-error))
(common-lisp:in-package #:pira/lookoutequipment)

(common-lisp:define-condition lookoutequipment-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awslookout-equipment-frontend-service
                                   :shape-name
                                   "AWSLookoutEquipmentFrontendService"
                                   :version "2020-12-15" :title
                                   "Amazon Lookout for Equipment" :operations
                                   '(create-dataset create-inference-scheduler
                                     create-label create-label-group
                                     create-model create-retraining-scheduler
                                     delete-dataset delete-inference-scheduler
                                     delete-label delete-label-group
                                     delete-model delete-resource-policy
                                     delete-retraining-scheduler
                                     describe-data-ingestion-job
                                     describe-dataset
                                     describe-inference-scheduler
                                     describe-label describe-label-group
                                     describe-model describe-model-version
                                     describe-resource-policy
                                     describe-retraining-scheduler
                                     import-dataset import-model-version
                                     list-data-ingestion-jobs list-datasets
                                     list-inference-events
                                     list-inference-executions
                                     list-inference-schedulers
                                     list-label-groups list-labels list-models
                                     list-model-versions
                                     list-retraining-schedulers
                                     list-sensor-statistics
                                     list-tags-for-resource put-resource-policy
                                     start-data-ingestion-job
                                     start-inference-scheduler
                                     start-retraining-scheduler
                                     stop-inference-scheduler
                                     stop-retraining-scheduler tag-resource
                                     untag-resource update-active-model-version
                                     update-inference-scheduler
                                     update-label-group update-model
                                     update-retraining-scheduler)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "LookoutEquipment")
                                      ("arnNamespace" . "lookoutequipment")
                                      ("cloudFormationName"
                                       . "LookoutEquipment")
                                      ("cloudTrailEventSource"
                                       . "lookoutequipment.amazonaws.com")
                                      ("endpointPrefix" . "lookoutequipment"))
                                     ("aws.auth#sigv4"
                                      ("name" . "lookoutequipment"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-type amazon-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum auto-promotion-result
    common-lisp:nil
  (:model-promoted "MODEL_PROMOTED")
  (:model-not-promoted "MODEL_NOT_PROMOTED")
  (:retraining-internal-error "RETRAINING_INTERNAL_ERROR")
  (:retraining-customer-error "RETRAINING_CUSTOMER_ERROR")
  (:retraining-cancelled "RETRAINING_CANCELLED"))

(smithy/sdk/shapes:define-type auto-promotion-result-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure categorical-values common-lisp:nil
                                    ((status :target-type
                                      statistical-issue-status :required
                                      common-lisp:t :member-name "Status")
                                     (number-of-category :target-type integer
                                      :member-name "NumberOfCategory"))
                                    (:shape-name "CategoricalValues"))

(smithy/sdk/shapes:define-type comments smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-timestamp-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-structure count-percent common-lisp:nil
                                    ((count :target-type integer :required
                                      common-lisp:t :member-name "Count")
                                     (percentage :target-type float :required
                                      common-lisp:t :member-name "Percentage"))
                                    (:shape-name "CountPercent"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (dataset-schema :target-type dataset-schema
                                  :member-name "DatasetSchema")
                                 (server-side-kms-key-id :target-type
                                  name-or-arn :member-name
                                  "ServerSideKmsKeyId")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (status :target-type dataset-status
                                   :member-name "Status"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-inference-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (inference-scheduler-name :target-type
                                  inference-scheduler-name :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName")
                                 (data-delay-offset-in-minutes :target-type
                                  data-delay-offset-in-minutes :member-name
                                  "DataDelayOffsetInMinutes")
                                 (data-upload-frequency :target-type
                                  data-upload-frequency :required common-lisp:t
                                  :member-name "DataUploadFrequency")
                                 (data-input-configuration :target-type
                                  inference-input-configuration :required
                                  common-lisp:t :member-name
                                  "DataInputConfiguration")
                                 (data-output-configuration :target-type
                                  inference-output-configuration :required
                                  common-lisp:t :member-name
                                  "DataOutputConfiguration")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (server-side-kms-key-id :target-type
                                  name-or-arn :member-name
                                  "ServerSideKmsKeyId")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-output create-inference-scheduler-response
                                 common-lisp:nil
                                 ((inference-scheduler-arn :target-type
                                   inference-scheduler-arn :member-name
                                   "InferenceSchedulerArn")
                                  (inference-scheduler-name :target-type
                                   inference-scheduler-name :member-name
                                   "InferenceSchedulerName")
                                  (status :target-type
                                   inference-scheduler-status :member-name
                                   "Status")
                                  (model-quality :target-type model-quality
                                   :member-name "ModelQuality"))
                                 (:shape-name
                                  "CreateInferenceSchedulerResponse"))

(smithy/sdk/shapes:define-input create-label-group-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (fault-codes :target-type fault-codes
                                  :member-name "FaultCodes")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLabelGroupRequest"))

(smithy/sdk/shapes:define-output create-label-group-response common-lisp:nil
                                 ((label-group-name :target-type
                                   label-group-name :member-name
                                   "LabelGroupName")
                                  (label-group-arn :target-type label-group-arn
                                   :member-name "LabelGroupArn"))
                                 (:shape-name "CreateLabelGroupResponse"))

(smithy/sdk/shapes:define-input create-label-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (rating :target-type label-rating :required
                                  common-lisp:t :member-name "Rating")
                                 (fault-code :target-type fault-code
                                  :member-name "FaultCode")
                                 (notes :target-type comments :member-name
                                  "Notes")
                                 (equipment :target-type equipment :member-name
                                  "Equipment")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "CreateLabelRequest"))

(smithy/sdk/shapes:define-output create-label-response common-lisp:nil
                                 ((label-id :target-type label-id :member-name
                                   "LabelId"))
                                 (:shape-name "CreateLabelResponse"))

(smithy/sdk/shapes:define-input create-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (dataset-name :target-type dataset-identifier
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (dataset-schema :target-type dataset-schema
                                  :member-name "DatasetSchema")
                                 (labels-input-configuration :target-type
                                  labels-input-configuration :member-name
                                  "LabelsInputConfiguration")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (training-data-start-time :target-type
                                  timestamp :member-name
                                  "TrainingDataStartTime")
                                 (training-data-end-time :target-type timestamp
                                  :member-name "TrainingDataEndTime")
                                 (evaluation-data-start-time :target-type
                                  timestamp :member-name
                                  "EvaluationDataStartTime")
                                 (evaluation-data-end-time :target-type
                                  timestamp :member-name
                                  "EvaluationDataEndTime")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn")
                                 (data-pre-processing-configuration
                                  :target-type
                                  data-pre-processing-configuration
                                  :member-name
                                  "DataPreProcessingConfiguration")
                                 (server-side-kms-key-id :target-type
                                  name-or-arn :member-name
                                  "ServerSideKmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (off-condition :target-type off-condition
                                  :member-name "OffCondition")
                                 (model-diagnostics-output-configuration
                                  :target-type
                                  model-diagnostics-output-configuration
                                  :member-name
                                  "ModelDiagnosticsOutputConfiguration"))
                                (:shape-name "CreateModelRequest"))

(smithy/sdk/shapes:define-output create-model-response common-lisp:nil
                                 ((model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (status :target-type model-status
                                   :member-name "Status"))
                                 (:shape-name "CreateModelResponse"))

(smithy/sdk/shapes:define-input create-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (retraining-start-date :target-type timestamp
                                  :member-name "RetrainingStartDate")
                                 (retraining-frequency :target-type
                                  retraining-frequency :required common-lisp:t
                                  :member-name "RetrainingFrequency")
                                 (lookback-window :target-type lookback-window
                                  :required common-lisp:t :member-name
                                  "LookbackWindow")
                                 (promote-mode :target-type model-promote-mode
                                  :member-name "PromoteMode")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name
                                 "CreateRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-output create-retraining-scheduler-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (status :target-type
                                   retraining-scheduler-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "CreateRetrainingSchedulerResponse"))

(smithy/sdk/shapes:define-type data-delay-offset-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list data-ingestion-job-summaries :member
                               data-ingestion-job-summary)

(smithy/sdk/shapes:define-structure data-ingestion-job-summary common-lisp:nil
                                    ((job-id :target-type ingestion-job-id
                                      :member-name "JobId")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "DatasetArn")
                                     (ingestion-input-configuration
                                      :target-type
                                      ingestion-input-configuration
                                      :member-name
                                      "IngestionInputConfiguration")
                                     (status :target-type ingestion-job-status
                                      :member-name "Status"))
                                    (:shape-name "DataIngestionJobSummary"))

(smithy/sdk/shapes:define-structure data-pre-processing-configuration
                                    common-lisp:nil
                                    ((target-sampling-rate :target-type
                                      target-sampling-rate :member-name
                                      "TargetSamplingRate"))
                                    (:shape-name
                                     "DataPreProcessingConfiguration"))

(smithy/sdk/shapes:define-structure data-quality-summary common-lisp:nil
                                    ((insufficient-sensor-data :target-type
                                      insufficient-sensor-data :required
                                      common-lisp:t :member-name
                                      "InsufficientSensorData")
                                     (missing-sensor-data :target-type
                                      missing-sensor-data :required
                                      common-lisp:t :member-name
                                      "MissingSensorData")
                                     (invalid-sensor-data :target-type
                                      invalid-sensor-data :required
                                      common-lisp:t :member-name
                                      "InvalidSensorData")
                                     (unsupported-timestamps :target-type
                                      unsupported-timestamps :required
                                      common-lisp:t :member-name
                                      "UnsupportedTimestamps")
                                     (duplicate-timestamps :target-type
                                      duplicate-timestamps :required
                                      common-lisp:t :member-name
                                      "DuplicateTimestamps"))
                                    (:shape-name "DataQualitySummary"))

(smithy/sdk/shapes:define-type data-size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum data-upload-frequency
    common-lisp:nil
  (:pt5m "PT5M")
  (:pt10m "PT10M")
  (:pt15m "PT15M")
  (:pt30m "PT30M")
  (:pt1h "PT1H"))

(smithy/sdk/shapes:define-type dataset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-schema common-lisp:nil
                                    ((inline-data-schema :target-type
                                      synthesized-json-inline-data-schema
                                      :member-name "InlineDataSchema"))
                                    (:shape-name "DatasetSchema"))

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:created "CREATED")
  (:ingestion-in-progress "INGESTION_IN_PROGRESS")
  (:active "ACTIVE")
  (:import-in-progress "IMPORT_IN_PROGRESS"))

(smithy/sdk/shapes:define-list dataset-summaries :member dataset-summary)

(smithy/sdk/shapes:define-structure dataset-summary common-lisp:nil
                                    ((dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "DatasetArn")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt"))
                                    (:shape-name "DatasetSummary"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-identifier
                                  :required common-lisp:t :member-name
                                  "DatasetName"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-input delete-inference-scheduler-request
                                common-lisp:nil
                                ((inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName"))
                                (:shape-name "DeleteInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-input delete-label-group-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName"))
                                (:shape-name "DeleteLabelGroupRequest"))

(smithy/sdk/shapes:define-input delete-label-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (label-id :target-type label-id :required
                                  common-lisp:t :member-name "LabelId"))
                                (:shape-name "DeleteLabelRequest"))

(smithy/sdk/shapes:define-input delete-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name "DeleteModelRequest"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-input delete-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name
                                 "DeleteRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-input describe-data-ingestion-job-request
                                common-lisp:nil
                                ((job-id :target-type ingestion-job-id
                                  :required common-lisp:t :member-name
                                  "JobId"))
                                (:shape-name "DescribeDataIngestionJobRequest"))

(smithy/sdk/shapes:define-output describe-data-ingestion-job-response
                                 common-lisp:nil
                                 ((job-id :target-type ingestion-job-id
                                   :member-name "JobId")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (ingestion-input-configuration :target-type
                                   ingestion-input-configuration :member-name
                                   "IngestionInputConfiguration")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (status :target-type ingestion-job-status
                                   :member-name "Status")
                                  (failed-reason :target-type
                                   bounded-length-string :member-name
                                   "FailedReason")
                                  (data-quality-summary :target-type
                                   data-quality-summary :member-name
                                   "DataQualitySummary")
                                  (ingested-files-summary :target-type
                                   ingested-files-summary :member-name
                                   "IngestedFilesSummary")
                                  (status-detail :target-type
                                   bounded-length-string :member-name
                                   "StatusDetail")
                                  (ingested-data-size :target-type
                                   data-size-in-bytes :member-name
                                   "IngestedDataSize")
                                  (data-start-time :target-type timestamp
                                   :member-name "DataStartTime")
                                  (data-end-time :target-type timestamp
                                   :member-name "DataEndTime")
                                  (source-dataset-arn :target-type dataset-arn
                                   :member-name "SourceDatasetArn"))
                                 (:shape-name
                                  "DescribeDataIngestionJobResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-identifier
                                  :required common-lisp:t :member-name
                                  "DatasetName"))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (status :target-type dataset-status
                                   :member-name "Status")
                                  (schema :target-type
                                   synthesized-json-inline-data-schema
                                   :member-name "Schema")
                                  (server-side-kms-key-id :target-type
                                   kms-key-arn :member-name
                                   "ServerSideKmsKeyId")
                                  (ingestion-input-configuration :target-type
                                   ingestion-input-configuration :member-name
                                   "IngestionInputConfiguration")
                                  (data-quality-summary :target-type
                                   data-quality-summary :member-name
                                   "DataQualitySummary")
                                  (ingested-files-summary :target-type
                                   ingested-files-summary :member-name
                                   "IngestedFilesSummary")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (data-start-time :target-type timestamp
                                   :member-name "DataStartTime")
                                  (data-end-time :target-type timestamp
                                   :member-name "DataEndTime")
                                  (source-dataset-arn :target-type dataset-arn
                                   :member-name "SourceDatasetArn"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-inference-scheduler-request
                                common-lisp:nil
                                ((inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName"))
                                (:shape-name
                                 "DescribeInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-output describe-inference-scheduler-response
                                 common-lisp:nil
                                 ((model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (model-name :target-type model-name
                                   :member-name "ModelName")
                                  (inference-scheduler-name :target-type
                                   inference-scheduler-name :member-name
                                   "InferenceSchedulerName")
                                  (inference-scheduler-arn :target-type
                                   inference-scheduler-arn :member-name
                                   "InferenceSchedulerArn")
                                  (status :target-type
                                   inference-scheduler-status :member-name
                                   "Status")
                                  (data-delay-offset-in-minutes :target-type
                                   data-delay-offset-in-minutes :member-name
                                   "DataDelayOffsetInMinutes")
                                  (data-upload-frequency :target-type
                                   data-upload-frequency :member-name
                                   "DataUploadFrequency")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (data-input-configuration :target-type
                                   inference-input-configuration :member-name
                                   "DataInputConfiguration")
                                  (data-output-configuration :target-type
                                   inference-output-configuration :member-name
                                   "DataOutputConfiguration")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (server-side-kms-key-id :target-type
                                   kms-key-arn :member-name
                                   "ServerSideKmsKeyId")
                                  (latest-inference-result :target-type
                                   latest-inference-result :member-name
                                   "LatestInferenceResult"))
                                 (:shape-name
                                  "DescribeInferenceSchedulerResponse"))

(smithy/sdk/shapes:define-input describe-label-group-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName"))
                                (:shape-name "DescribeLabelGroupRequest"))

(smithy/sdk/shapes:define-output describe-label-group-response common-lisp:nil
                                 ((label-group-name :target-type
                                   label-group-name :member-name
                                   "LabelGroupName")
                                  (label-group-arn :target-type label-group-arn
                                   :member-name "LabelGroupArn")
                                  (fault-codes :target-type fault-codes
                                   :member-name "FaultCodes")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt"))
                                 (:shape-name "DescribeLabelGroupResponse"))

(smithy/sdk/shapes:define-input describe-label-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (label-id :target-type label-id :required
                                  common-lisp:t :member-name "LabelId"))
                                (:shape-name "DescribeLabelRequest"))

(smithy/sdk/shapes:define-output describe-label-response common-lisp:nil
                                 ((label-group-name :target-type
                                   label-group-name :member-name
                                   "LabelGroupName")
                                  (label-group-arn :target-type label-group-arn
                                   :member-name "LabelGroupArn")
                                  (label-id :target-type label-id :member-name
                                   "LabelId")
                                  (start-time :target-type timestamp
                                   :member-name "StartTime")
                                  (end-time :target-type timestamp :member-name
                                   "EndTime")
                                  (rating :target-type label-rating
                                   :member-name "Rating")
                                  (fault-code :target-type fault-code
                                   :member-name "FaultCode")
                                  (notes :target-type comments :member-name
                                   "Notes")
                                  (equipment :target-type equipment
                                   :member-name "Equipment")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt"))
                                 (:shape-name "DescribeLabelResponse"))

(smithy/sdk/shapes:define-input describe-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name "DescribeModelRequest"))

(smithy/sdk/shapes:define-output describe-model-response common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (schema :target-type
                                   synthesized-json-inline-data-schema
                                   :member-name "Schema")
                                  (labels-input-configuration :target-type
                                   labels-input-configuration :member-name
                                   "LabelsInputConfiguration")
                                  (training-data-start-time :target-type
                                   timestamp :member-name
                                   "TrainingDataStartTime")
                                  (training-data-end-time :target-type
                                   timestamp :member-name
                                   "TrainingDataEndTime")
                                  (evaluation-data-start-time :target-type
                                   timestamp :member-name
                                   "EvaluationDataStartTime")
                                  (evaluation-data-end-time :target-type
                                   timestamp :member-name
                                   "EvaluationDataEndTime")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (data-pre-processing-configuration
                                   :target-type
                                   data-pre-processing-configuration
                                   :member-name
                                   "DataPreProcessingConfiguration")
                                  (status :target-type model-status
                                   :member-name "Status")
                                  (training-execution-start-time :target-type
                                   timestamp :member-name
                                   "TrainingExecutionStartTime")
                                  (training-execution-end-time :target-type
                                   timestamp :member-name
                                   "TrainingExecutionEndTime")
                                  (failed-reason :target-type
                                   bounded-length-string :member-name
                                   "FailedReason")
                                  (model-metrics :target-type
                                   synthesized-json-model-metrics :member-name
                                   "ModelMetrics")
                                  (last-updated-time :target-type timestamp
                                   :member-name "LastUpdatedTime")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (server-side-kms-key-id :target-type
                                   kms-key-arn :member-name
                                   "ServerSideKmsKeyId")
                                  (off-condition :target-type off-condition
                                   :member-name "OffCondition")
                                  (source-model-version-arn :target-type
                                   model-version-arn :member-name
                                   "SourceModelVersionArn")
                                  (import-job-start-time :target-type timestamp
                                   :member-name "ImportJobStartTime")
                                  (import-job-end-time :target-type timestamp
                                   :member-name "ImportJobEndTime")
                                  (active-model-version :target-type
                                   model-version :member-name
                                   "ActiveModelVersion")
                                  (active-model-version-arn :target-type
                                   model-version-arn :member-name
                                   "ActiveModelVersionArn")
                                  (model-version-activated-at :target-type
                                   timestamp :member-name
                                   "ModelVersionActivatedAt")
                                  (previous-active-model-version :target-type
                                   model-version :member-name
                                   "PreviousActiveModelVersion")
                                  (previous-active-model-version-arn
                                   :target-type model-version-arn :member-name
                                   "PreviousActiveModelVersionArn")
                                  (previous-model-version-activated-at
                                   :target-type timestamp :member-name
                                   "PreviousModelVersionActivatedAt")
                                  (prior-model-metrics :target-type
                                   synthesized-json-model-metrics :member-name
                                   "PriorModelMetrics")
                                  (latest-scheduled-retraining-failed-reason
                                   :target-type bounded-length-string
                                   :member-name
                                   "LatestScheduledRetrainingFailedReason")
                                  (latest-scheduled-retraining-status
                                   :target-type model-version-status
                                   :member-name
                                   "LatestScheduledRetrainingStatus")
                                  (latest-scheduled-retraining-model-version
                                   :target-type model-version :member-name
                                   "LatestScheduledRetrainingModelVersion")
                                  (latest-scheduled-retraining-start-time
                                   :target-type timestamp :member-name
                                   "LatestScheduledRetrainingStartTime")
                                  (latest-scheduled-retraining-available-data-in-days
                                   :target-type integer :member-name
                                   "LatestScheduledRetrainingAvailableDataInDays")
                                  (next-scheduled-retraining-start-date
                                   :target-type timestamp :member-name
                                   "NextScheduledRetrainingStartDate")
                                  (accumulated-inference-data-start-time
                                   :target-type timestamp :member-name
                                   "AccumulatedInferenceDataStartTime")
                                  (accumulated-inference-data-end-time
                                   :target-type timestamp :member-name
                                   "AccumulatedInferenceDataEndTime")
                                  (retraining-scheduler-status :target-type
                                   retraining-scheduler-status :member-name
                                   "RetrainingSchedulerStatus")
                                  (model-diagnostics-output-configuration
                                   :target-type
                                   model-diagnostics-output-configuration
                                   :member-name
                                   "ModelDiagnosticsOutputConfiguration")
                                  (model-quality :target-type model-quality
                                   :member-name "ModelQuality"))
                                 (:shape-name "DescribeModelResponse"))

(smithy/sdk/shapes:define-input describe-model-version-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion"))
                                (:shape-name "DescribeModelVersionRequest"))

(smithy/sdk/shapes:define-output describe-model-version-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (model-version :target-type model-version
                                   :member-name "ModelVersion")
                                  (model-version-arn :target-type
                                   model-version-arn :member-name
                                   "ModelVersionArn")
                                  (status :target-type model-version-status
                                   :member-name "Status")
                                  (source-type :target-type
                                   model-version-source-type :member-name
                                   "SourceType")
                                  (dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (schema :target-type inline-data-schema
                                   :member-name "Schema")
                                  (labels-input-configuration :target-type
                                   labels-input-configuration :member-name
                                   "LabelsInputConfiguration")
                                  (training-data-start-time :target-type
                                   timestamp :member-name
                                   "TrainingDataStartTime")
                                  (training-data-end-time :target-type
                                   timestamp :member-name
                                   "TrainingDataEndTime")
                                  (evaluation-data-start-time :target-type
                                   timestamp :member-name
                                   "EvaluationDataStartTime")
                                  (evaluation-data-end-time :target-type
                                   timestamp :member-name
                                   "EvaluationDataEndTime")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (data-pre-processing-configuration
                                   :target-type
                                   data-pre-processing-configuration
                                   :member-name
                                   "DataPreProcessingConfiguration")
                                  (training-execution-start-time :target-type
                                   timestamp :member-name
                                   "TrainingExecutionStartTime")
                                  (training-execution-end-time :target-type
                                   timestamp :member-name
                                   "TrainingExecutionEndTime")
                                  (failed-reason :target-type
                                   bounded-length-string :member-name
                                   "FailedReason")
                                  (model-metrics :target-type model-metrics
                                   :member-name "ModelMetrics")
                                  (last-updated-time :target-type timestamp
                                   :member-name "LastUpdatedTime")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (server-side-kms-key-id :target-type
                                   kms-key-arn :member-name
                                   "ServerSideKmsKeyId")
                                  (off-condition :target-type off-condition
                                   :member-name "OffCondition")
                                  (source-model-version-arn :target-type
                                   model-version-arn :member-name
                                   "SourceModelVersionArn")
                                  (import-job-start-time :target-type timestamp
                                   :member-name "ImportJobStartTime")
                                  (import-job-end-time :target-type timestamp
                                   :member-name "ImportJobEndTime")
                                  (imported-data-size-in-bytes :target-type
                                   data-size-in-bytes :member-name
                                   "ImportedDataSizeInBytes")
                                  (prior-model-metrics :target-type
                                   model-metrics :member-name
                                   "PriorModelMetrics")
                                  (retraining-available-data-in-days
                                   :target-type integer :member-name
                                   "RetrainingAvailableDataInDays")
                                  (auto-promotion-result :target-type
                                   auto-promotion-result :member-name
                                   "AutoPromotionResult")
                                  (auto-promotion-result-reason :target-type
                                   auto-promotion-result-reason :member-name
                                   "AutoPromotionResultReason")
                                  (model-diagnostics-output-configuration
                                   :target-type
                                   model-diagnostics-output-configuration
                                   :member-name
                                   "ModelDiagnosticsOutputConfiguration")
                                  (model-diagnostics-results-object
                                   :target-type s3object :member-name
                                   "ModelDiagnosticsResultsObject")
                                  (model-quality :target-type model-quality
                                   :member-name "ModelQuality"))
                                 (:shape-name "DescribeModelVersionResponse"))

(smithy/sdk/shapes:define-input describe-resource-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DescribeResourcePolicyRequest"))

(smithy/sdk/shapes:define-output describe-resource-policy-response
                                 common-lisp:nil
                                 ((policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId")
                                  (resource-policy :target-type policy
                                   :member-name "ResourcePolicy")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "DescribeResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name
                                 "DescribeRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-output describe-retraining-scheduler-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (retraining-start-date :target-type timestamp
                                   :member-name "RetrainingStartDate")
                                  (retraining-frequency :target-type
                                   retraining-frequency :member-name
                                   "RetrainingFrequency")
                                  (lookback-window :target-type lookback-window
                                   :member-name "LookbackWindow")
                                  (status :target-type
                                   retraining-scheduler-status :member-name
                                   "Status")
                                  (promote-mode :target-type model-promote-mode
                                   :member-name "PromoteMode")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt"))
                                 (:shape-name
                                  "DescribeRetrainingSchedulerResponse"))

(smithy/sdk/shapes:define-structure duplicate-timestamps common-lisp:nil
                                    ((total-number-of-duplicate-timestamps
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "TotalNumberOfDuplicateTimestamps"))
                                    (:shape-name "DuplicateTimestamps"))

(smithy/sdk/shapes:define-type equipment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-duration-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type fault-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fault-codes :member fault-code)

(smithy/sdk/shapes:define-type file-name-timestamp-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotence-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-dataset-request common-lisp:nil
                                ((source-dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "SourceDatasetArn")
                                 (dataset-name :target-type dataset-name
                                  :member-name "DatasetName")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (server-side-kms-key-id :target-type
                                  name-or-arn :member-name
                                  "ServerSideKmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ImportDatasetRequest"))

(smithy/sdk/shapes:define-output import-dataset-response common-lisp:nil
                                 ((dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn")
                                  (status :target-type dataset-status
                                   :member-name "Status")
                                  (job-id :target-type ingestion-job-id
                                   :member-name "JobId"))
                                 (:shape-name "ImportDatasetResponse"))

(smithy/sdk/shapes:define-input import-model-version-request common-lisp:nil
                                ((source-model-version-arn :target-type
                                  model-version-arn :required common-lisp:t
                                  :member-name "SourceModelVersionArn")
                                 (model-name :target-type model-name
                                  :member-name "ModelName")
                                 (dataset-name :target-type dataset-identifier
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (labels-input-configuration :target-type
                                  labels-input-configuration :member-name
                                  "LabelsInputConfiguration")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn")
                                 (server-side-kms-key-id :target-type
                                  name-or-arn :member-name
                                  "ServerSideKmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (inference-data-import-strategy :target-type
                                  inference-data-import-strategy :member-name
                                  "InferenceDataImportStrategy"))
                                (:shape-name "ImportModelVersionRequest"))

(smithy/sdk/shapes:define-output import-model-version-response common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (model-version-arn :target-type
                                   model-version-arn :member-name
                                   "ModelVersionArn")
                                  (model-version :target-type model-version
                                   :member-name "ModelVersion")
                                  (status :target-type model-version-status
                                   :member-name "Status"))
                                 (:shape-name "ImportModelVersionResponse"))

(smithy/sdk/shapes:define-enum inference-data-import-strategy
    common-lisp:nil
  (:no-import "NO_IMPORT")
  (:add-when-empty "ADD_WHEN_EMPTY")
  (:overwrite "OVERWRITE"))

(smithy/sdk/shapes:define-list inference-event-summaries :member
                               inference-event-summary)

(smithy/sdk/shapes:define-structure inference-event-summary common-lisp:nil
                                    ((inference-scheduler-arn :target-type
                                      inference-scheduler-arn :member-name
                                      "InferenceSchedulerArn")
                                     (inference-scheduler-name :target-type
                                      inference-scheduler-name :member-name
                                      "InferenceSchedulerName")
                                     (event-start-time :target-type timestamp
                                      :member-name "EventStartTime")
                                     (event-end-time :target-type timestamp
                                      :member-name "EventEndTime")
                                     (diagnostics :target-type model-metrics
                                      :member-name "Diagnostics")
                                     (event-duration-in-seconds :target-type
                                      event-duration-in-seconds :member-name
                                      "EventDurationInSeconds"))
                                    (:shape-name "InferenceEventSummary"))

(smithy/sdk/shapes:define-enum inference-execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list inference-execution-summaries :member
                               inference-execution-summary)

(smithy/sdk/shapes:define-structure inference-execution-summary common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (inference-scheduler-name :target-type
                                      inference-scheduler-name :member-name
                                      "InferenceSchedulerName")
                                     (inference-scheduler-arn :target-type
                                      inference-scheduler-arn :member-name
                                      "InferenceSchedulerArn")
                                     (scheduled-start-time :target-type
                                      timestamp :member-name
                                      "ScheduledStartTime")
                                     (data-start-time :target-type timestamp
                                      :member-name "DataStartTime")
                                     (data-end-time :target-type timestamp
                                      :member-name "DataEndTime")
                                     (data-input-configuration :target-type
                                      inference-input-configuration
                                      :member-name "DataInputConfiguration")
                                     (data-output-configuration :target-type
                                      inference-output-configuration
                                      :member-name "DataOutputConfiguration")
                                     (customer-result-object :target-type
                                      s3object :member-name
                                      "CustomerResultObject")
                                     (status :target-type
                                      inference-execution-status :member-name
                                      "Status")
                                     (failed-reason :target-type
                                      bounded-length-string :member-name
                                      "FailedReason")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-version-arn :target-type
                                      model-version-arn :member-name
                                      "ModelVersionArn"))
                                    (:shape-name "InferenceExecutionSummary"))

(smithy/sdk/shapes:define-structure inference-input-configuration
                                    common-lisp:nil
                                    ((s3input-configuration :target-type
                                      inference-s3input-configuration
                                      :member-name "S3InputConfiguration")
                                     (input-time-zone-offset :target-type
                                      time-zone-offset :member-name
                                      "InputTimeZoneOffset")
                                     (inference-input-name-configuration
                                      :target-type
                                      inference-input-name-configuration
                                      :member-name
                                      "InferenceInputNameConfiguration"))
                                    (:shape-name "InferenceInputConfiguration"))

(smithy/sdk/shapes:define-structure inference-input-name-configuration
                                    common-lisp:nil
                                    ((timestamp-format :target-type
                                      file-name-timestamp-format :member-name
                                      "TimestampFormat")
                                     (component-timestamp-delimiter
                                      :target-type
                                      component-timestamp-delimiter
                                      :member-name
                                      "ComponentTimestampDelimiter"))
                                    (:shape-name
                                     "InferenceInputNameConfiguration"))

(smithy/sdk/shapes:define-structure inference-output-configuration
                                    common-lisp:nil
                                    ((s3output-configuration :target-type
                                      inference-s3output-configuration
                                      :required common-lisp:t :member-name
                                      "S3OutputConfiguration")
                                     (kms-key-id :target-type name-or-arn
                                      :member-name "KmsKeyId"))
                                    (:shape-name
                                     "InferenceOutputConfiguration"))

(smithy/sdk/shapes:define-structure inference-s3input-configuration
                                    common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "Prefix"))
                                    (:shape-name
                                     "InferenceS3InputConfiguration"))

(smithy/sdk/shapes:define-structure inference-s3output-configuration
                                    common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "Prefix"))
                                    (:shape-name
                                     "InferenceS3OutputConfiguration"))

(smithy/sdk/shapes:define-type inference-scheduler-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-scheduler-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-scheduler-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum inference-scheduler-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list inference-scheduler-summaries :member
                               inference-scheduler-summary)

(smithy/sdk/shapes:define-structure inference-scheduler-summary common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (inference-scheduler-name :target-type
                                      inference-scheduler-name :member-name
                                      "InferenceSchedulerName")
                                     (inference-scheduler-arn :target-type
                                      inference-scheduler-arn :member-name
                                      "InferenceSchedulerArn")
                                     (status :target-type
                                      inference-scheduler-status :member-name
                                      "Status")
                                     (data-delay-offset-in-minutes :target-type
                                      data-delay-offset-in-minutes :member-name
                                      "DataDelayOffsetInMinutes")
                                     (data-upload-frequency :target-type
                                      data-upload-frequency :member-name
                                      "DataUploadFrequency")
                                     (latest-inference-result :target-type
                                      latest-inference-result :member-name
                                      "LatestInferenceResult"))
                                    (:shape-name "InferenceSchedulerSummary"))

(smithy/sdk/shapes:define-structure ingested-files-summary common-lisp:nil
                                    ((total-number-of-files :target-type
                                      integer :required common-lisp:t
                                      :member-name "TotalNumberOfFiles")
                                     (ingested-number-of-files :target-type
                                      integer :required common-lisp:t
                                      :member-name "IngestedNumberOfFiles")
                                     (discarded-files :target-type
                                      list-of-discarded-files :member-name
                                      "DiscardedFiles"))
                                    (:shape-name "IngestedFilesSummary"))

(smithy/sdk/shapes:define-structure ingestion-input-configuration
                                    common-lisp:nil
                                    ((s3input-configuration :target-type
                                      ingestion-s3input-configuration :required
                                      common-lisp:t :member-name
                                      "S3InputConfiguration"))
                                    (:shape-name "IngestionInputConfiguration"))

(smithy/sdk/shapes:define-type ingestion-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ingestion-job-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:import-in-progress "IMPORT_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure ingestion-s3input-configuration
                                    common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "Prefix")
                                     (key-pattern :target-type key-pattern
                                      :member-name "KeyPattern"))
                                    (:shape-name
                                     "IngestionS3InputConfiguration"))

(smithy/sdk/shapes:define-type inline-data-schema
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insufficient-sensor-data common-lisp:nil
                                    ((missing-complete-sensor-data :target-type
                                      missing-complete-sensor-data :required
                                      common-lisp:t :member-name
                                      "MissingCompleteSensorData")
                                     (sensors-with-short-date-range
                                      :target-type
                                      sensors-with-short-date-range :required
                                      common-lisp:t :member-name
                                      "SensorsWithShortDateRange"))
                                    (:shape-name "InsufficientSensorData"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-structure invalid-sensor-data common-lisp:nil
                                    ((affected-sensor-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "AffectedSensorCount")
                                     (total-number-of-invalid-values
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "TotalNumberOfInvalidValues"))
                                    (:shape-name "InvalidSensorData"))

(smithy/sdk/shapes:define-type key-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list label-group-summaries :member
                               label-group-summary)

(smithy/sdk/shapes:define-structure label-group-summary common-lisp:nil
                                    ((label-group-name :target-type
                                      label-group-name :member-name
                                      "LabelGroupName")
                                     (label-group-arn :target-type
                                      label-group-arn :member-name
                                      "LabelGroupArn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "LabelGroupSummary"))

(smithy/sdk/shapes:define-type label-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum label-rating
    common-lisp:nil
  (:anomaly "ANOMALY")
  (:no-anomaly "NO_ANOMALY")
  (:neutral "NEUTRAL"))

(smithy/sdk/shapes:define-list label-summaries :member label-summary)

(smithy/sdk/shapes:define-structure label-summary common-lisp:nil
                                    ((label-group-name :target-type
                                      label-group-name :member-name
                                      "LabelGroupName")
                                     (label-id :target-type label-id
                                      :member-name "LabelId")
                                     (label-group-arn :target-type
                                      label-group-arn :member-name
                                      "LabelGroupArn")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (rating :target-type label-rating
                                      :member-name "Rating")
                                     (fault-code :target-type fault-code
                                      :member-name "FaultCode")
                                     (equipment :target-type equipment
                                      :member-name "Equipment")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt"))
                                    (:shape-name "LabelSummary"))

(smithy/sdk/shapes:define-structure labels-input-configuration common-lisp:nil
                                    ((s3input-configuration :target-type
                                      labels-s3input-configuration :member-name
                                      "S3InputConfiguration")
                                     (label-group-name :target-type
                                      label-group-name :member-name
                                      "LabelGroupName"))
                                    (:shape-name "LabelsInputConfiguration"))

(smithy/sdk/shapes:define-structure labels-s3input-configuration
                                    common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "Prefix"))
                                    (:shape-name "LabelsS3InputConfiguration"))

(smithy/sdk/shapes:define-structure large-timestamp-gaps common-lisp:nil
                                    ((status :target-type
                                      statistical-issue-status :required
                                      common-lisp:t :member-name "Status")
                                     (number-of-large-timestamp-gaps
                                      :target-type integer :member-name
                                      "NumberOfLargeTimestampGaps")
                                     (max-timestamp-gap-in-days :target-type
                                      integer :member-name
                                      "MaxTimestampGapInDays"))
                                    (:shape-name "LargeTimestampGaps"))

(smithy/sdk/shapes:define-enum latest-inference-result
    common-lisp:nil
  (:anomalous "ANOMALOUS")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-input list-data-ingestion-jobs-request
                                common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :member-name "DatasetName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (status :target-type ingestion-job-status
                                  :member-name "Status"))
                                (:shape-name "ListDataIngestionJobsRequest"))

(smithy/sdk/shapes:define-output list-data-ingestion-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (data-ingestion-job-summaries :target-type
                                   data-ingestion-job-summaries :member-name
                                   "DataIngestionJobSummaries"))
                                 (:shape-name "ListDataIngestionJobsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (dataset-name-begins-with :target-type
                                  dataset-name :member-name
                                  "DatasetNameBeginsWith"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (dataset-summaries :target-type
                                   dataset-summaries :member-name
                                   "DatasetSummaries"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-inference-events-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName")
                                 (interval-start-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "IntervalStartTime")
                                 (interval-end-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "IntervalEndTime"))
                                (:shape-name "ListInferenceEventsRequest"))

(smithy/sdk/shapes:define-output list-inference-events-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (inference-event-summaries :target-type
                                   inference-event-summaries :member-name
                                   "InferenceEventSummaries"))
                                 (:shape-name "ListInferenceEventsResponse"))

(smithy/sdk/shapes:define-input list-inference-executions-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName")
                                 (data-start-time-after :target-type timestamp
                                  :member-name "DataStartTimeAfter")
                                 (data-end-time-before :target-type timestamp
                                  :member-name "DataEndTimeBefore")
                                 (status :target-type
                                  inference-execution-status :member-name
                                  "Status"))
                                (:shape-name "ListInferenceExecutionsRequest"))

(smithy/sdk/shapes:define-output list-inference-executions-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (inference-execution-summaries :target-type
                                   inference-execution-summaries :member-name
                                   "InferenceExecutionSummaries"))
                                 (:shape-name
                                  "ListInferenceExecutionsResponse"))

(smithy/sdk/shapes:define-input list-inference-schedulers-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (inference-scheduler-name-begins-with
                                  :target-type inference-scheduler-identifier
                                  :member-name
                                  "InferenceSchedulerNameBeginsWith")
                                 (model-name :target-type model-name
                                  :member-name "ModelName")
                                 (status :target-type
                                  inference-scheduler-status :member-name
                                  "Status"))
                                (:shape-name "ListInferenceSchedulersRequest"))

(smithy/sdk/shapes:define-output list-inference-schedulers-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (inference-scheduler-summaries :target-type
                                   inference-scheduler-summaries :member-name
                                   "InferenceSchedulerSummaries"))
                                 (:shape-name
                                  "ListInferenceSchedulersResponse"))

(smithy/sdk/shapes:define-input list-label-groups-request common-lisp:nil
                                ((label-group-name-begins-with :target-type
                                  label-group-name :member-name
                                  "LabelGroupNameBeginsWith")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListLabelGroupsRequest"))

(smithy/sdk/shapes:define-output list-label-groups-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (label-group-summaries :target-type
                                   label-group-summaries :member-name
                                   "LabelGroupSummaries"))
                                 (:shape-name "ListLabelGroupsResponse"))

(smithy/sdk/shapes:define-input list-labels-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (interval-start-time :target-type timestamp
                                  :member-name "IntervalStartTime")
                                 (interval-end-time :target-type timestamp
                                  :member-name "IntervalEndTime")
                                 (fault-code :target-type fault-code
                                  :member-name "FaultCode")
                                 (equipment :target-type equipment :member-name
                                  "Equipment")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListLabelsRequest"))

(smithy/sdk/shapes:define-output list-labels-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (label-summaries :target-type label-summaries
                                   :member-name "LabelSummaries"))
                                 (:shape-name "ListLabelsResponse"))

(smithy/sdk/shapes:define-input list-model-versions-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (status :target-type model-version-status
                                  :member-name "Status")
                                 (source-type :target-type
                                  model-version-source-type :member-name
                                  "SourceType")
                                 (created-at-end-time :target-type timestamp
                                  :member-name "CreatedAtEndTime")
                                 (created-at-start-time :target-type timestamp
                                  :member-name "CreatedAtStartTime")
                                 (max-model-version :target-type model-version
                                  :member-name "MaxModelVersion")
                                 (min-model-version :target-type model-version
                                  :member-name "MinModelVersion"))
                                (:shape-name "ListModelVersionsRequest"))

(smithy/sdk/shapes:define-output list-model-versions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (model-version-summaries :target-type
                                   model-version-summaries :member-name
                                   "ModelVersionSummaries"))
                                 (:shape-name "ListModelVersionsResponse"))

(smithy/sdk/shapes:define-input list-models-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (status :target-type model-status :member-name
                                  "Status")
                                 (model-name-begins-with :target-type
                                  model-name :member-name
                                  "ModelNameBeginsWith")
                                 (dataset-name-begins-with :target-type
                                  dataset-name :member-name
                                  "DatasetNameBeginsWith"))
                                (:shape-name "ListModelsRequest"))

(smithy/sdk/shapes:define-output list-models-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (model-summaries :target-type model-summaries
                                   :member-name "ModelSummaries"))
                                 (:shape-name "ListModelsResponse"))

(smithy/sdk/shapes:define-list list-of-discarded-files :member s3object)

(smithy/sdk/shapes:define-input list-retraining-schedulers-request
                                common-lisp:nil
                                ((model-name-begins-with :target-type
                                  model-name :member-name
                                  "ModelNameBeginsWith")
                                 (status :target-type
                                  retraining-scheduler-status :member-name
                                  "Status")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRetrainingSchedulersRequest"))

(smithy/sdk/shapes:define-output list-retraining-schedulers-response
                                 common-lisp:nil
                                 ((retraining-scheduler-summaries :target-type
                                   retraining-scheduler-summaries :member-name
                                   "RetrainingSchedulerSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRetrainingSchedulersResponse"))

(smithy/sdk/shapes:define-input list-sensor-statistics-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (ingestion-job-id :target-type
                                  ingestion-job-id :member-name
                                  "IngestionJobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSensorStatisticsRequest"))

(smithy/sdk/shapes:define-output list-sensor-statistics-response
                                 common-lisp:nil
                                 ((sensor-statistics-summaries :target-type
                                   sensor-statistics-summaries :member-name
                                   "SensorStatisticsSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSensorStatisticsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type amazon-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type lookback-window smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure missing-complete-sensor-data
                                    common-lisp:nil
                                    ((affected-sensor-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "AffectedSensorCount"))
                                    (:shape-name "MissingCompleteSensorData"))

(smithy/sdk/shapes:define-structure missing-sensor-data common-lisp:nil
                                    ((affected-sensor-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "AffectedSensorCount")
                                     (total-number-of-missing-values
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "TotalNumberOfMissingValues"))
                                    (:shape-name "MissingSensorData"))

(smithy/sdk/shapes:define-type model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-diagnostics-output-configuration
                                    common-lisp:nil
                                    ((s3output-configuration :target-type
                                      model-diagnostics-s3output-configuration
                                      :required common-lisp:t :member-name
                                      "S3OutputConfiguration")
                                     (kms-key-id :target-type name-or-arn
                                      :member-name "KmsKeyId"))
                                    (:shape-name
                                     "ModelDiagnosticsOutputConfiguration"))

(smithy/sdk/shapes:define-structure model-diagnostics-s3output-configuration
                                    common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "Prefix"))
                                    (:shape-name
                                     "ModelDiagnosticsS3OutputConfiguration"))

(smithy/sdk/shapes:define-type model-metrics smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-promote-mode
    common-lisp:nil
  (:managed "MANAGED")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-enum model-quality
    common-lisp:nil
  (:quality-threshold-met "QUALITY_THRESHOLD_MET")
  (:cannot-determine-quality "CANNOT_DETERMINE_QUALITY")
  (:poor-quality-detected "POOR_QUALITY_DETECTED"))

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:import-in-progress "IMPORT_IN_PROGRESS"))

(smithy/sdk/shapes:define-list model-summaries :member model-summary)

(smithy/sdk/shapes:define-structure model-summary common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "DatasetArn")
                                     (status :target-type model-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (active-model-version :target-type
                                      model-version :member-name
                                      "ActiveModelVersion")
                                     (active-model-version-arn :target-type
                                      model-version-arn :member-name
                                      "ActiveModelVersionArn")
                                     (latest-scheduled-retraining-status
                                      :target-type model-version-status
                                      :member-name
                                      "LatestScheduledRetrainingStatus")
                                     (latest-scheduled-retraining-model-version
                                      :target-type model-version :member-name
                                      "LatestScheduledRetrainingModelVersion")
                                     (latest-scheduled-retraining-start-time
                                      :target-type timestamp :member-name
                                      "LatestScheduledRetrainingStartTime")
                                     (next-scheduled-retraining-start-date
                                      :target-type timestamp :member-name
                                      "NextScheduledRetrainingStartDate")
                                     (retraining-scheduler-status :target-type
                                      retraining-scheduler-status :member-name
                                      "RetrainingSchedulerStatus")
                                     (model-diagnostics-output-configuration
                                      :target-type
                                      model-diagnostics-output-configuration
                                      :member-name
                                      "ModelDiagnosticsOutputConfiguration")
                                     (model-quality :target-type model-quality
                                      :member-name "ModelQuality"))
                                    (:shape-name "ModelSummary"))

(smithy/sdk/shapes:define-type model-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type model-version-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-version-source-type
    common-lisp:nil
  (:training "TRAINING")
  (:retraining "RETRAINING")
  (:import "IMPORT"))

(smithy/sdk/shapes:define-enum model-version-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:import-in-progress "IMPORT_IN_PROGRESS")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-list model-version-summaries :member
                               model-version-summary)

(smithy/sdk/shapes:define-structure model-version-summary common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-version-arn :target-type
                                      model-version-arn :member-name
                                      "ModelVersionArn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (status :target-type model-version-status
                                      :member-name "Status")
                                     (source-type :target-type
                                      model-version-source-type :member-name
                                      "SourceType")
                                     (model-quality :target-type model-quality
                                      :member-name "ModelQuality"))
                                    (:shape-name "ModelVersionSummary"))

(smithy/sdk/shapes:define-structure monotonic-values common-lisp:nil
                                    ((status :target-type
                                      statistical-issue-status :required
                                      common-lisp:t :member-name "Status")
                                     (monotonicity :target-type monotonicity
                                      :member-name "Monotonicity"))
                                    (:shape-name "MonotonicValues"))

(smithy/sdk/shapes:define-enum monotonicity
    common-lisp:nil
  (:decreasing "DECREASING")
  (:increasing "INCREASING")
  (:static "STATIC"))

(smithy/sdk/shapes:define-structure multiple-operating-modes common-lisp:nil
                                    ((status :target-type
                                      statistical-issue-status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "MultipleOperatingModes"))

(smithy/sdk/shapes:define-type name-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type off-condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (resource-policy :target-type policy :required
                                  common-lisp:t :member-name "ResourcePolicy")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-type retraining-frequency
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum retraining-scheduler-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list retraining-scheduler-summaries :member
                               retraining-scheduler-summary)

(smithy/sdk/shapes:define-structure retraining-scheduler-summary
                                    common-lisp:nil
                                    ((model-name :target-type model-name
                                      :member-name "ModelName")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (status :target-type
                                      retraining-scheduler-status :member-name
                                      "Status")
                                     (retraining-start-date :target-type
                                      timestamp :member-name
                                      "RetrainingStartDate")
                                     (retraining-frequency :target-type
                                      retraining-frequency :member-name
                                      "RetrainingFrequency")
                                     (lookback-window :target-type
                                      lookback-window :member-name
                                      "LookbackWindow"))
                                    (:shape-name "RetrainingSchedulerSummary"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensor-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sensor-statistics-summaries :member
                               sensor-statistics-summary)

(smithy/sdk/shapes:define-structure sensor-statistics-summary common-lisp:nil
                                    ((component-name :target-type
                                      component-name :member-name
                                      "ComponentName")
                                     (sensor-name :target-type sensor-name
                                      :member-name "SensorName")
                                     (data-exists :target-type boolean
                                      :member-name "DataExists")
                                     (missing-values :target-type count-percent
                                      :member-name "MissingValues")
                                     (invalid-values :target-type count-percent
                                      :member-name "InvalidValues")
                                     (invalid-date-entries :target-type
                                      count-percent :member-name
                                      "InvalidDateEntries")
                                     (duplicate-timestamps :target-type
                                      count-percent :member-name
                                      "DuplicateTimestamps")
                                     (categorical-values :target-type
                                      categorical-values :member-name
                                      "CategoricalValues")
                                     (multiple-operating-modes :target-type
                                      multiple-operating-modes :member-name
                                      "MultipleOperatingModes")
                                     (large-timestamp-gaps :target-type
                                      large-timestamp-gaps :member-name
                                      "LargeTimestampGaps")
                                     (monotonic-values :target-type
                                      monotonic-values :member-name
                                      "MonotonicValues")
                                     (data-start-time :target-type timestamp
                                      :member-name "DataStartTime")
                                     (data-end-time :target-type timestamp
                                      :member-name "DataEndTime"))
                                    (:shape-name "SensorStatisticsSummary"))

(smithy/sdk/shapes:define-structure sensors-with-short-date-range
                                    common-lisp:nil
                                    ((affected-sensor-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "AffectedSensorCount"))
                                    (:shape-name "SensorsWithShortDateRange"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-input start-data-ingestion-job-request
                                common-lisp:nil
                                ((dataset-name :target-type dataset-identifier
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (ingestion-input-configuration :target-type
                                  ingestion-input-configuration :required
                                  common-lisp:t :member-name
                                  "IngestionInputConfiguration")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (client-token :target-type idempotence-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "StartDataIngestionJobRequest"))

(smithy/sdk/shapes:define-output start-data-ingestion-job-response
                                 common-lisp:nil
                                 ((job-id :target-type ingestion-job-id
                                   :member-name "JobId")
                                  (status :target-type ingestion-job-status
                                   :member-name "Status"))
                                 (:shape-name "StartDataIngestionJobResponse"))

(smithy/sdk/shapes:define-input start-inference-scheduler-request
                                common-lisp:nil
                                ((inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName"))
                                (:shape-name "StartInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-output start-inference-scheduler-response
                                 common-lisp:nil
                                 ((model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (model-name :target-type model-name
                                   :member-name "ModelName")
                                  (inference-scheduler-name :target-type
                                   inference-scheduler-name :member-name
                                   "InferenceSchedulerName")
                                  (inference-scheduler-arn :target-type
                                   inference-scheduler-arn :member-name
                                   "InferenceSchedulerArn")
                                  (status :target-type
                                   inference-scheduler-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "StartInferenceSchedulerResponse"))

(smithy/sdk/shapes:define-input start-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name "StartRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-output start-retraining-scheduler-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (status :target-type
                                   retraining-scheduler-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "StartRetrainingSchedulerResponse"))

(smithy/sdk/shapes:define-enum statistical-issue-status
    common-lisp:nil
  (:potential-issue-detected "POTENTIAL_ISSUE_DETECTED")
  (:no-issue-detected "NO_ISSUE_DETECTED"))

(smithy/sdk/shapes:define-input stop-inference-scheduler-request
                                common-lisp:nil
                                ((inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName"))
                                (:shape-name "StopInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-output stop-inference-scheduler-response
                                 common-lisp:nil
                                 ((model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (model-name :target-type model-name
                                   :member-name "ModelName")
                                  (inference-scheduler-name :target-type
                                   inference-scheduler-name :member-name
                                   "InferenceSchedulerName")
                                  (inference-scheduler-arn :target-type
                                   inference-scheduler-arn :member-name
                                   "InferenceSchedulerArn")
                                  (status :target-type
                                   inference-scheduler-status :member-name
                                   "Status"))
                                 (:shape-name "StopInferenceSchedulerResponse"))

(smithy/sdk/shapes:define-input stop-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName"))
                                (:shape-name "StopRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-output stop-retraining-scheduler-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (status :target-type
                                   retraining-scheduler-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "StopRetrainingSchedulerResponse"))

(smithy/sdk/shapes:define-type synthesized-json-inline-data-schema
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-model-metrics
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type amazon-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-sampling-rate
    common-lisp:nil
  (:pt1s "PT1S")
  (:pt5s "PT5S")
  (:pt10s "PT10S")
  (:pt15s "PT15S")
  (:pt30s "PT30S")
  (:pt1m "PT1M")
  (:pt5m "PT5M")
  (:pt10m "PT10M")
  (:pt15m "PT15M")
  (:pt30m "PT30M")
  (:pt1h "PT1H"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class lookoutequipment-error))

(smithy/sdk/shapes:define-type time-zone-offset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure unsupported-timestamps common-lisp:nil
                                    ((total-number-of-unsupported-timestamps
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "TotalNumberOfUnsupportedTimestamps"))
                                    (:shape-name "UnsupportedTimestamps"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type amazon-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-active-model-version-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion"))
                                (:shape-name "UpdateActiveModelVersionRequest"))

(smithy/sdk/shapes:define-output update-active-model-version-response
                                 common-lisp:nil
                                 ((model-name :target-type model-name
                                   :member-name "ModelName")
                                  (model-arn :target-type model-arn
                                   :member-name "ModelArn")
                                  (current-active-version :target-type
                                   model-version :member-name
                                   "CurrentActiveVersion")
                                  (previous-active-version :target-type
                                   model-version :member-name
                                   "PreviousActiveVersion")
                                  (current-active-version-arn :target-type
                                   model-version-arn :member-name
                                   "CurrentActiveVersionArn")
                                  (previous-active-version-arn :target-type
                                   model-version-arn :member-name
                                   "PreviousActiveVersionArn"))
                                 (:shape-name
                                  "UpdateActiveModelVersionResponse"))

(smithy/sdk/shapes:define-input update-inference-scheduler-request
                                common-lisp:nil
                                ((inference-scheduler-name :target-type
                                  inference-scheduler-identifier :required
                                  common-lisp:t :member-name
                                  "InferenceSchedulerName")
                                 (data-delay-offset-in-minutes :target-type
                                  data-delay-offset-in-minutes :member-name
                                  "DataDelayOffsetInMinutes")
                                 (data-upload-frequency :target-type
                                  data-upload-frequency :member-name
                                  "DataUploadFrequency")
                                 (data-input-configuration :target-type
                                  inference-input-configuration :member-name
                                  "DataInputConfiguration")
                                 (data-output-configuration :target-type
                                  inference-output-configuration :member-name
                                  "DataOutputConfiguration")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn"))
                                (:shape-name "UpdateInferenceSchedulerRequest"))

(smithy/sdk/shapes:define-input update-label-group-request common-lisp:nil
                                ((label-group-name :target-type
                                  label-group-name :required common-lisp:t
                                  :member-name "LabelGroupName")
                                 (fault-codes :target-type fault-codes
                                  :member-name "FaultCodes"))
                                (:shape-name "UpdateLabelGroupRequest"))

(smithy/sdk/shapes:define-input update-model-request common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (labels-input-configuration :target-type
                                  labels-input-configuration :member-name
                                  "LabelsInputConfiguration")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn")
                                 (model-diagnostics-output-configuration
                                  :target-type
                                  model-diagnostics-output-configuration
                                  :member-name
                                  "ModelDiagnosticsOutputConfiguration"))
                                (:shape-name "UpdateModelRequest"))

(smithy/sdk/shapes:define-input update-retraining-scheduler-request
                                common-lisp:nil
                                ((model-name :target-type model-name :required
                                  common-lisp:t :member-name "ModelName")
                                 (retraining-start-date :target-type timestamp
                                  :member-name "RetrainingStartDate")
                                 (retraining-frequency :target-type
                                  retraining-frequency :member-name
                                  "RetrainingFrequency")
                                 (lookback-window :target-type lookback-window
                                  :member-name "LookbackWindow")
                                 (promote-mode :target-type model-promote-mode
                                  :member-name "PromoteMode"))
                                (:shape-name
                                 "UpdateRetrainingSchedulerRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type bounded-length-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class lookoutequipment-error))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-inference-scheduler :shape-name
                                       "CreateInferenceScheduler" :input
                                       create-inference-scheduler-request
                                       :output
                                       create-inference-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-label :shape-name "CreateLabel"
                                       :input create-label-request :output
                                       create-label-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-label-group :shape-name
                                       "CreateLabelGroup" :input
                                       create-label-group-request :output
                                       create-label-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-model :shape-name "CreateModel"
                                       :input create-model-request :output
                                       create-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-retraining-scheduler :shape-name
                                       "CreateRetrainingScheduler" :input
                                       create-retraining-scheduler-request
                                       :output
                                       create-retraining-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-inference-scheduler :shape-name
                                       "DeleteInferenceScheduler" :input
                                       delete-inference-scheduler-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-label :shape-name "DeleteLabel"
                                       :input delete-label-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-label-group :shape-name
                                       "DeleteLabelGroup" :input
                                       delete-label-group-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-model :shape-name "DeleteModel"
                                       :input delete-model-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-retraining-scheduler :shape-name
                                       "DeleteRetrainingScheduler" :input
                                       delete-retraining-scheduler-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-data-ingestion-job :shape-name
                                       "DescribeDataIngestionJob" :input
                                       describe-data-ingestion-job-request
                                       :output
                                       describe-data-ingestion-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-inference-scheduler :shape-name
                                       "DescribeInferenceScheduler" :input
                                       describe-inference-scheduler-request
                                       :output
                                       describe-inference-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-label :shape-name
                                       "DescribeLabel" :input
                                       describe-label-request :output
                                       describe-label-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-label-group :shape-name
                                       "DescribeLabelGroup" :input
                                       describe-label-group-request :output
                                       describe-label-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-model :shape-name
                                       "DescribeModel" :input
                                       describe-model-request :output
                                       describe-model-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-model-version :shape-name
                                       "DescribeModelVersion" :input
                                       describe-model-version-request :output
                                       describe-model-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-resource-policy :shape-name
                                       "DescribeResourcePolicy" :input
                                       describe-resource-policy-request :output
                                       describe-resource-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-retraining-scheduler
                                       :shape-name
                                       "DescribeRetrainingScheduler" :input
                                       describe-retraining-scheduler-request
                                       :output
                                       describe-retraining-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation import-dataset :shape-name
                                       "ImportDataset" :input
                                       import-dataset-request :output
                                       import-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation import-model-version :shape-name
                                       "ImportModelVersion" :input
                                       import-model-version-request :output
                                       import-model-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-data-ingestion-jobs :shape-name
                                       "ListDataIngestionJobs" :input
                                       list-data-ingestion-jobs-request :output
                                       list-data-ingestion-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-inference-events :shape-name
                                       "ListInferenceEvents" :input
                                       list-inference-events-request :output
                                       list-inference-events-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-inference-executions :shape-name
                                       "ListInferenceExecutions" :input
                                       list-inference-executions-request
                                       :output
                                       list-inference-executions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-inference-schedulers :shape-name
                                       "ListInferenceSchedulers" :input
                                       list-inference-schedulers-request
                                       :output
                                       list-inference-schedulers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-label-groups :shape-name
                                       "ListLabelGroups" :input
                                       list-label-groups-request :output
                                       list-label-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-labels :shape-name "ListLabels"
                                       :input list-labels-request :output
                                       list-labels-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-model-versions :shape-name
                                       "ListModelVersions" :input
                                       list-model-versions-request :output
                                       list-model-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-models :shape-name "ListModels"
                                       :input list-models-request :output
                                       list-models-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-retraining-schedulers :shape-name
                                       "ListRetrainingSchedulers" :input
                                       list-retraining-schedulers-request
                                       :output
                                       list-retraining-schedulers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-sensor-statistics :shape-name
                                       "ListSensorStatistics" :input
                                       list-sensor-statistics-request :output
                                       list-sensor-statistics-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-data-ingestion-job :shape-name
                                       "StartDataIngestionJob" :input
                                       start-data-ingestion-job-request :output
                                       start-data-ingestion-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-inference-scheduler :shape-name
                                       "StartInferenceScheduler" :input
                                       start-inference-scheduler-request
                                       :output
                                       start-inference-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-retraining-scheduler :shape-name
                                       "StartRetrainingScheduler" :input
                                       start-retraining-scheduler-request
                                       :output
                                       start-retraining-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-inference-scheduler :shape-name
                                       "StopInferenceScheduler" :input
                                       stop-inference-scheduler-request :output
                                       stop-inference-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-retraining-scheduler :shape-name
                                       "StopRetrainingScheduler" :input
                                       stop-retraining-scheduler-request
                                       :output
                                       stop-retraining-scheduler-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-active-model-version :shape-name
                                       "UpdateActiveModelVersion" :input
                                       update-active-model-version-request
                                       :output
                                       update-active-model-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-inference-scheduler :shape-name
                                       "UpdateInferenceScheduler" :input
                                       update-inference-scheduler-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-label-group :shape-name
                                       "UpdateLabelGroup" :input
                                       update-label-group-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-model :shape-name "UpdateModel"
                                       :input update-model-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-retraining-scheduler :shape-name
                                       "UpdateRetrainingScheduler" :input
                                       update-retraining-scheduler-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
