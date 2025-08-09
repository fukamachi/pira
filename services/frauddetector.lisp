(uiop/package:define-package #:pira/frauddetector (:use)
                             (:export #:atimetric-data-point
                              #:atimetric-data-points-list
                              #:atimodel-performance
                              #:atitraining-metrics-value
                              #:awshawks-nest-service-facade
                              #:access-denied-exception
                              #:aggregated-log-odds-metric
                              #:aggregated-variables-impact-explanation
                              #:aggregated-variables-importance-metrics
                              #:allow-deny-list #:allow-deny-lists
                              #:async-job-status #:batch-create-variable
                              #:batch-create-variable-error
                              #:batch-create-variable-error-list
                              #:batch-create-variable-request
                              #:batch-create-variable-result
                              #:batch-get-variable #:batch-get-variable-error
                              #:batch-get-variable-error-list
                              #:batch-get-variable-request
                              #:batch-get-variable-result #:batch-import
                              #:batch-import-list #:batch-prediction
                              #:batch-prediction-list #:boolean
                              #:cancel-batch-import-job
                              #:cancel-batch-import-job-request
                              #:cancel-batch-import-job-result
                              #:cancel-batch-prediction-job
                              #:cancel-batch-prediction-job-request
                              #:cancel-batch-prediction-job-result
                              #:conflict-exception #:create-batch-import-job
                              #:create-batch-import-job-request
                              #:create-batch-import-job-result
                              #:create-batch-prediction-job
                              #:create-batch-prediction-job-request
                              #:create-batch-prediction-job-result
                              #:create-detector-version
                              #:create-detector-version-request
                              #:create-detector-version-result #:create-list
                              #:create-list-request #:create-list-result
                              #:create-model #:create-model-request
                              #:create-model-result #:create-model-version
                              #:create-model-version-request
                              #:create-model-version-result #:create-rule
                              #:create-rule-request #:create-rule-result
                              #:create-variable #:create-variable-request
                              #:create-variable-result
                              #:csv-index-to-variable-map #:data-source
                              #:data-type #:data-validation-metrics
                              #:delete-audit-history #:delete-batch-import-job
                              #:delete-batch-import-job-request
                              #:delete-batch-import-job-result
                              #:delete-batch-prediction-job
                              #:delete-batch-prediction-job-request
                              #:delete-batch-prediction-job-result
                              #:delete-detector #:delete-detector-request
                              #:delete-detector-result
                              #:delete-detector-version
                              #:delete-detector-version-request
                              #:delete-detector-version-result
                              #:delete-entity-type #:delete-entity-type-request
                              #:delete-entity-type-result #:delete-event
                              #:delete-event-request #:delete-event-result
                              #:delete-event-type #:delete-event-type-request
                              #:delete-event-type-result
                              #:delete-events-by-event-type
                              #:delete-events-by-event-type-request
                              #:delete-events-by-event-type-result
                              #:delete-external-model
                              #:delete-external-model-request
                              #:delete-external-model-result #:delete-label
                              #:delete-label-request #:delete-label-result
                              #:delete-list #:delete-list-request
                              #:delete-list-result #:delete-model
                              #:delete-model-request #:delete-model-result
                              #:delete-model-version
                              #:delete-model-version-request
                              #:delete-model-version-result #:delete-outcome
                              #:delete-outcome-request #:delete-outcome-result
                              #:delete-rule #:delete-rule-request
                              #:delete-rule-result #:delete-variable
                              #:delete-variable-request
                              #:delete-variable-result #:describe-detector
                              #:describe-detector-request
                              #:describe-detector-result
                              #:describe-model-versions
                              #:describe-model-versions-request
                              #:describe-model-versions-result #:detector
                              #:detector-list #:detector-version-max-results
                              #:detector-version-status
                              #:detector-version-summary
                              #:detector-version-summary-list
                              #:detectors-max-results #:elements
                              #:elements-list #:entity #:entity-type
                              #:evaluated-external-model
                              #:evaluated-model-version #:evaluated-rule
                              #:evaluated-rule-list #:event
                              #:event-attribute-map #:event-ingestion
                              #:event-orchestration #:event-prediction-summary
                              #:event-predictions-max-results #:event-type
                              #:event-variable-map #:event-variable-summary
                              #:external-events-detail #:external-model
                              #:external-model-endpoint-data-blob-map
                              #:external-model-list #:external-model-outputs
                              #:external-model-prediction-map
                              #:external-model-summary
                              #:external-models-max-results
                              #:field-validation-message
                              #:file-validation-message #:filter-condition
                              #:get-batch-import-jobs
                              #:get-batch-import-jobs-request
                              #:get-batch-import-jobs-result
                              #:get-batch-prediction-jobs
                              #:get-batch-prediction-jobs-request
                              #:get-batch-prediction-jobs-result
                              #:get-delete-events-by-event-type-status
                              #:get-delete-events-by-event-type-status-request
                              #:get-delete-events-by-event-type-status-result
                              #:get-detector-version
                              #:get-detector-version-request
                              #:get-detector-version-result #:get-detectors
                              #:get-detectors-request #:get-detectors-result
                              #:get-entity-types #:get-entity-types-request
                              #:get-entity-types-result #:get-event
                              #:get-event-prediction
                              #:get-event-prediction-metadata
                              #:get-event-prediction-metadata-request
                              #:get-event-prediction-metadata-result
                              #:get-event-prediction-request
                              #:get-event-prediction-result #:get-event-request
                              #:get-event-result #:get-event-types
                              #:get-event-types-request
                              #:get-event-types-result #:get-external-models
                              #:get-external-models-request
                              #:get-external-models-result
                              #:get-kmsencryption-key
                              #:get-kmsencryption-key-result #:get-labels
                              #:get-labels-request #:get-labels-result
                              #:get-list-elements #:get-list-elements-request
                              #:get-list-elements-result #:get-lists-metadata
                              #:get-lists-metadata-request
                              #:get-lists-metadata-result #:get-model-version
                              #:get-model-version-request
                              #:get-model-version-result #:get-models
                              #:get-models-request #:get-models-result
                              #:get-outcomes #:get-outcomes-request
                              #:get-outcomes-result #:get-rules
                              #:get-rules-request #:get-rules-result
                              #:get-variables #:get-variables-request
                              #:get-variables-result
                              #:ingested-event-statistics
                              #:ingested-events-detail
                              #:ingested-events-time-window #:integer
                              #:integer2 #:internal-server-exception
                              #:json-key-to-variable-map #:kmskey
                              #:kms-encryption-key-arn #:label #:label-schema
                              #:language #:list-event-predictions
                              #:list-event-predictions-request
                              #:list-event-predictions-result
                              #:list-of-aggregated-log-odds-metrics
                              #:list-of-aggregated-variables-impact-explanations
                              #:list-of-evaluated-external-models
                              #:list-of-evaluated-model-versions
                              #:list-of-event-prediction-summaries
                              #:list-of-event-variable-summaries
                              #:list-of-external-model-outputs
                              #:list-of-log-odds-metrics #:list-of-model-scores
                              #:list-of-model-version-evaluations
                              #:list-of-model-versions #:list-of-rule-results
                              #:list-of-strings #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-result
                              #:list-update-mode #:lists-elements-max-results
                              #:lists-metadata-max-results #:log-odds-metric
                              #:long #:map-of-strings #:metric-data-point
                              #:model #:model-endpoint-data-blob
                              #:model-endpoint-status
                              #:model-input-configuration
                              #:model-input-data-format
                              #:model-output-configuration
                              #:model-output-data-format #:model-prediction-map
                              #:model-scores #:model-source #:model-type-enum
                              #:model-version #:model-version-detail
                              #:model-version-evaluation #:model-version-status
                              #:name-list #:non-empty-list-of-strings
                              #:ofimetric-data-point
                              #:ofimetric-data-points-list
                              #:ofimodel-performance
                              #:ofitraining-metrics-value #:outcome
                              #:outcome-list #:outcomes-max-results
                              #:prediction-explanations #:prediction-time-range
                              #:put-detector #:put-detector-request
                              #:put-detector-result #:put-entity-type
                              #:put-entity-type-request
                              #:put-entity-type-result #:put-event-type
                              #:put-event-type-request #:put-event-type-result
                              #:put-external-model #:put-external-model-request
                              #:put-external-model-result
                              #:put-kmsencryption-key
                              #:put-kmsencryption-key-request
                              #:put-kmsencryption-key-result #:put-label
                              #:put-label-request #:put-label-result
                              #:put-outcome #:put-outcome-request
                              #:put-outcome-result
                              #:resource-not-found-exception
                              #:resource-unavailable-exception #:rule
                              #:rule-detail #:rule-detail-list
                              #:rule-execution-mode #:rule-list #:rule-result
                              #:rules-max-results #:send-event
                              #:send-event-request #:send-event-result
                              #:tfimetric-data-point
                              #:tfimetric-data-points-list
                              #:tfimodel-performance
                              #:tfitraining-metrics-value #:tag #:tag-resource
                              #:tag-resource-request #:tag-resource-result
                              #:tags-max-results #:throttling-exception
                              #:training-data-schema
                              #:training-data-source-enum #:training-metrics
                              #:training-metrics-v2 #:training-result
                              #:training-result-v2 #:uncertainty-range
                              #:unlabeled-events-treatment #:untag-resource
                              #:untag-resource-request #:untag-resource-result
                              #:update-detector-version
                              #:update-detector-version-metadata
                              #:update-detector-version-metadata-request
                              #:update-detector-version-metadata-result
                              #:update-detector-version-request
                              #:update-detector-version-result
                              #:update-detector-version-status
                              #:update-detector-version-status-request
                              #:update-detector-version-status-result
                              #:update-event-label #:update-event-label-request
                              #:update-event-label-result #:update-list
                              #:update-list-request #:update-list-result
                              #:update-model #:update-model-request
                              #:update-model-result #:update-model-version
                              #:update-model-version-request
                              #:update-model-version-result
                              #:update-model-version-status
                              #:update-model-version-status-request
                              #:update-model-version-status-result
                              #:update-rule-metadata
                              #:update-rule-metadata-request
                              #:update-rule-metadata-result
                              #:update-rule-version
                              #:update-rule-version-request
                              #:update-rule-version-result #:update-variable
                              #:update-variable-request
                              #:update-variable-result #:use-event-variables
                              #:validation-exception #:variable
                              #:variable-entry #:variable-entry-list
                              #:variable-impact-explanation
                              #:variable-importance-metrics #:variable-list
                              #:variables-max-results #:attribute-key
                              #:attribute-value #:batch-imports-max-page-size
                              #:batch-predictions-max-page-size #:blob
                              #:content-type #:description
                              #:entity-restricted-string #:entity-type-list
                              #:entity-types-max-results #:event-type-list
                              #:event-types-max-results
                              #:field-validation-message-list
                              #:file-validation-message-list #:filter-string
                              #:float #:float-version-string
                              #:fraud-detector-arn #:iam-role-arn #:identifier
                              #:label-list #:label-mapper #:labels-max-results
                              #:list-of-entities
                              #:list-of-variable-impact-explanations
                              #:metric-data-points-list #:model-identifier
                              #:model-input-template #:model-list
                              #:model-version-detail-list
                              #:models-max-page-size #:next-token
                              #:no-dash-identifier #:rule-expression
                              #:s3bucket-location
                              #:sage-maker-endpoint-identifier
                              #:sensitive-string #:string #:tag-key
                              #:tag-key-list #:tag-list #:tag-value #:time
                              #:utc-timestamp-iso8601 #:variable-name
                              #:variable-type #:variable-value
                              #:whole-number-version-string))
(common-lisp:in-package #:pira/frauddetector)

(smithy/sdk/service:define-service awshawks-nest-service-facade :shape-name
                                   "AWSHawksNestServiceFacade" :version
                                   "2019-11-15" :title "Amazon Fraud Detector"
                                   :xml-namespace
                                   '(:uri
                                     "http://hawksnest.amazonaws.com/doc/2019-11-15"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "FraudDetector")
                                      ("arnNamespace" . "frauddetector")
                                      ("cloudFormationName" . "FraudDetector")
                                      ("cloudTrailEventSource"
                                       . "frauddetector.amazonaws.com")
                                      ("endpointPrefix" . "frauddetector"))
                                     ("aws.auth#sigv4"
                                      ("name" . "frauddetector"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure atimetric-data-point common-lisp:nil
                                    ((cr :target-type float :member-name "cr")
                                     (adr :target-type float :member-name
                                      "adr")
                                     (threshold :target-type float :member-name
                                      "threshold")
                                     (atodr :target-type float :member-name
                                      "atodr"))
                                    (:shape-name "ATIMetricDataPoint"))

(smithy/sdk/shapes:define-list atimetric-data-points-list :member
                               atimetric-data-point)

(smithy/sdk/shapes:define-structure atimodel-performance common-lisp:nil
                                    ((asi :target-type float :member-name
                                      "asi"))
                                    (:shape-name "ATIModelPerformance"))

(smithy/sdk/shapes:define-structure atitraining-metrics-value common-lisp:nil
                                    ((metric-data-points :target-type
                                      atimetric-data-points-list :member-name
                                      "metricDataPoints")
                                     (model-performance :target-type
                                      atimodel-performance :member-name
                                      "modelPerformance"))
                                    (:shape-name "ATITrainingMetricsValue"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure aggregated-log-odds-metric common-lisp:nil
                                    ((variable-names :target-type
                                      list-of-strings :required common-lisp:t
                                      :member-name "variableNames")
                                     (aggregated-variables-importance
                                      :target-type float :required
                                      common-lisp:t :member-name
                                      "aggregatedVariablesImportance"))
                                    (:shape-name "AggregatedLogOddsMetric"))

(smithy/sdk/shapes:define-structure aggregated-variables-impact-explanation
                                    common-lisp:nil
                                    ((event-variable-names :target-type
                                      list-of-strings :member-name
                                      "eventVariableNames")
                                     (relative-impact :target-type string
                                      :member-name "relativeImpact")
                                     (log-odds-impact :target-type float
                                      :member-name "logOddsImpact"))
                                    (:shape-name
                                     "AggregatedVariablesImpactExplanation"))

(smithy/sdk/shapes:define-structure aggregated-variables-importance-metrics
                                    common-lisp:nil
                                    ((log-odds-metrics :target-type
                                      list-of-aggregated-log-odds-metrics
                                      :member-name "logOddsMetrics"))
                                    (:shape-name
                                     "AggregatedVariablesImportanceMetrics"))

(smithy/sdk/shapes:define-structure allow-deny-list common-lisp:nil
                                    ((name :target-type no-dash-identifier
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (variable-type :target-type variable-type
                                      :member-name "variableType")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (updated-time :target-type time
                                      :member-name "updatedTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "AllowDenyList"))

(smithy/sdk/shapes:define-list allow-deny-lists :member allow-deny-list)

(smithy/sdk/shapes:define-enum async-job-status
    common-lisp:nil
  (:in-progress-initializing "IN_PROGRESS_INITIALIZING")
  (:in-progress "IN_PROGRESS")
  (:cancel-in-progress "CANCEL_IN_PROGRESS")
  (:canceled "CANCELED")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure batch-create-variable-error common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (code :target-type integer2 :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "BatchCreateVariableError"))

(smithy/sdk/shapes:define-list batch-create-variable-error-list :member
                               batch-create-variable-error)

(smithy/sdk/shapes:define-input batch-create-variable-request common-lisp:nil
                                ((variable-entries :target-type
                                  variable-entry-list :required common-lisp:t
                                  :member-name "variableEntries")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "BatchCreateVariableRequest"))

(smithy/sdk/shapes:define-output batch-create-variable-result common-lisp:nil
                                 ((errors :target-type
                                   batch-create-variable-error-list
                                   :member-name "errors"))
                                 (:shape-name "BatchCreateVariableResult"))

(smithy/sdk/shapes:define-structure batch-get-variable-error common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (code :target-type integer2 :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "BatchGetVariableError"))

(smithy/sdk/shapes:define-list batch-get-variable-error-list :member
                               batch-get-variable-error)

(smithy/sdk/shapes:define-input batch-get-variable-request common-lisp:nil
                                ((names :target-type name-list :required
                                  common-lisp:t :member-name "names"))
                                (:shape-name "BatchGetVariableRequest"))

(smithy/sdk/shapes:define-output batch-get-variable-result common-lisp:nil
                                 ((variables :target-type variable-list
                                   :member-name "variables")
                                  (errors :target-type
                                   batch-get-variable-error-list :member-name
                                   "errors"))
                                 (:shape-name "BatchGetVariableResult"))

(smithy/sdk/shapes:define-structure batch-import common-lisp:nil
                                    ((job-id :target-type identifier
                                      :member-name "jobId")
                                     (status :target-type async-job-status
                                      :member-name "status")
                                     (failure-reason :target-type string
                                      :member-name "failureReason")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (completion-time :target-type time
                                      :member-name "completionTime")
                                     (input-path :target-type s3bucket-location
                                      :member-name "inputPath")
                                     (output-path :target-type
                                      s3bucket-location :member-name
                                      "outputPath")
                                     (event-type-name :target-type identifier
                                      :member-name "eventTypeName")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "iamRoleArn")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn")
                                     (processed-records-count :target-type
                                      integer :member-name
                                      "processedRecordsCount")
                                     (failed-records-count :target-type integer
                                      :member-name "failedRecordsCount")
                                     (total-records-count :target-type integer
                                      :member-name "totalRecordsCount"))
                                    (:shape-name "BatchImport"))

(smithy/sdk/shapes:define-list batch-import-list :member batch-import)

(smithy/sdk/shapes:define-structure batch-prediction common-lisp:nil
                                    ((job-id :target-type identifier
                                      :member-name "jobId")
                                     (status :target-type async-job-status
                                      :member-name "status")
                                     (failure-reason :target-type string
                                      :member-name "failureReason")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (completion-time :target-type time
                                      :member-name "completionTime")
                                     (last-heartbeat-time :target-type time
                                      :member-name "lastHeartbeatTime")
                                     (input-path :target-type s3bucket-location
                                      :member-name "inputPath")
                                     (output-path :target-type
                                      s3bucket-location :member-name
                                      "outputPath")
                                     (event-type-name :target-type identifier
                                      :member-name "eventTypeName")
                                     (detector-name :target-type identifier
                                      :member-name "detectorName")
                                     (detector-version :target-type
                                      float-version-string :member-name
                                      "detectorVersion")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "iamRoleArn")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn")
                                     (processed-records-count :target-type
                                      integer :member-name
                                      "processedRecordsCount")
                                     (total-records-count :target-type integer
                                      :member-name "totalRecordsCount"))
                                    (:shape-name "BatchPrediction"))

(smithy/sdk/shapes:define-list batch-prediction-list :member batch-prediction)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-batch-import-job-request common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "CancelBatchImportJobRequest"))

(smithy/sdk/shapes:define-output cancel-batch-import-job-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelBatchImportJobResult"))

(smithy/sdk/shapes:define-input cancel-batch-prediction-job-request
                                common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "CancelBatchPredictionJobRequest"))

(smithy/sdk/shapes:define-output cancel-batch-prediction-job-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CancelBatchPredictionJobResult"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-batch-import-job-request common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId")
                                 (input-path :target-type s3bucket-location
                                  :required common-lisp:t :member-name
                                  "inputPath")
                                 (output-path :target-type s3bucket-location
                                  :required common-lisp:t :member-name
                                  "outputPath")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (iam-role-arn :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "iamRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateBatchImportJobRequest"))

(smithy/sdk/shapes:define-output create-batch-import-job-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateBatchImportJobResult"))

(smithy/sdk/shapes:define-input create-batch-prediction-job-request
                                common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId")
                                 (input-path :target-type s3bucket-location
                                  :required common-lisp:t :member-name
                                  "inputPath")
                                 (output-path :target-type s3bucket-location
                                  :required common-lisp:t :member-name
                                  "outputPath")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (detector-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "detectorName")
                                 (detector-version :target-type
                                  whole-number-version-string :member-name
                                  "detectorVersion")
                                 (iam-role-arn :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "iamRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateBatchPredictionJobRequest"))

(smithy/sdk/shapes:define-output create-batch-prediction-job-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateBatchPredictionJobResult"))

(smithy/sdk/shapes:define-input create-detector-version-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (description :target-type description
                                  :member-name "description")
                                 (external-model-endpoints :target-type
                                  list-of-strings :member-name
                                  "externalModelEndpoints")
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "rules")
                                 (model-versions :target-type
                                  list-of-model-versions :member-name
                                  "modelVersions")
                                 (rule-execution-mode :target-type
                                  rule-execution-mode :member-name
                                  "ruleExecutionMode")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDetectorVersionRequest"))

(smithy/sdk/shapes:define-output create-detector-version-result common-lisp:nil
                                 ((detector-id :target-type identifier
                                   :member-name "detectorId")
                                  (detector-version-id :target-type
                                   whole-number-version-string :member-name
                                   "detectorVersionId")
                                  (status :target-type detector-version-status
                                   :member-name "status"))
                                 (:shape-name "CreateDetectorVersionResult"))

(smithy/sdk/shapes:define-input create-list-request common-lisp:nil
                                ((name :target-type no-dash-identifier
                                  :required common-lisp:t :member-name "name")
                                 (elements :target-type elements-list
                                  :member-name "elements")
                                 (variable-type :target-type variable-type
                                  :member-name "variableType")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateListRequest"))

(smithy/sdk/shapes:define-output create-list-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateListResult"))

(smithy/sdk/shapes:define-input create-model-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (description :target-type description
                                  :member-name "description")
                                 (event-type-name :target-type string :required
                                  common-lisp:t :member-name "eventTypeName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateModelRequest"))

(smithy/sdk/shapes:define-output create-model-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateModelResult"))

(smithy/sdk/shapes:define-input create-model-version-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (training-data-source :target-type
                                  training-data-source-enum :required
                                  common-lisp:t :member-name
                                  "trainingDataSource")
                                 (training-data-schema :target-type
                                  training-data-schema :required common-lisp:t
                                  :member-name "trainingDataSchema")
                                 (external-events-detail :target-type
                                  external-events-detail :member-name
                                  "externalEventsDetail")
                                 (ingested-events-detail :target-type
                                  ingested-events-detail :member-name
                                  "ingestedEventsDetail")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateModelVersionRequest"))

(smithy/sdk/shapes:define-output create-model-version-result common-lisp:nil
                                 ((model-id :target-type model-identifier
                                   :member-name "modelId")
                                  (model-type :target-type model-type-enum
                                   :member-name "modelType")
                                  (model-version-number :target-type
                                   float-version-string :member-name
                                   "modelVersionNumber")
                                  (status :target-type string :member-name
                                   "status"))
                                 (:shape-name "CreateModelVersionResult"))

(smithy/sdk/shapes:define-input create-rule-request common-lisp:nil
                                ((rule-id :target-type identifier :required
                                  common-lisp:t :member-name "ruleId")
                                 (detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (description :target-type description
                                  :member-name "description")
                                 (expression :target-type rule-expression
                                  :required common-lisp:t :member-name
                                  "expression")
                                 (language :target-type language :required
                                  common-lisp:t :member-name "language")
                                 (outcomes :target-type
                                  non-empty-list-of-strings :required
                                  common-lisp:t :member-name "outcomes")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateRuleRequest"))

(smithy/sdk/shapes:define-output create-rule-result common-lisp:nil
                                 ((rule :target-type rule :member-name "rule"))
                                 (:shape-name "CreateRuleResult"))

(smithy/sdk/shapes:define-input create-variable-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (data-type :target-type data-type :required
                                  common-lisp:t :member-name "dataType")
                                 (data-source :target-type data-source
                                  :required common-lisp:t :member-name
                                  "dataSource")
                                 (default-value :target-type string :required
                                  common-lisp:t :member-name "defaultValue")
                                 (description :target-type string :member-name
                                  "description")
                                 (variable-type :target-type string
                                  :member-name "variableType")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateVariableRequest"))

(smithy/sdk/shapes:define-output create-variable-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateVariableResult"))

(smithy/sdk/shapes:define-map csv-index-to-variable-map :key string :value
                              string)

(smithy/sdk/shapes:define-enum data-source
    common-lisp:nil
  (:event "EVENT")
  (:model-score "MODEL_SCORE")
  (:external-model-score "EXTERNAL_MODEL_SCORE"))

(smithy/sdk/shapes:define-enum data-type
    common-lisp:nil
  (:string "STRING")
  (:integer "INTEGER")
  (:float "FLOAT")
  (:boolean "BOOLEAN")
  (:datetime "DATETIME"))

(smithy/sdk/shapes:define-structure data-validation-metrics common-lisp:nil
                                    ((file-level-messages :target-type
                                      file-validation-message-list :member-name
                                      "fileLevelMessages")
                                     (field-level-messages :target-type
                                      field-validation-message-list
                                      :member-name "fieldLevelMessages"))
                                    (:shape-name "DataValidationMetrics"))

(smithy/sdk/shapes:define-type delete-audit-history
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-batch-import-job-request common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "DeleteBatchImportJobRequest"))

(smithy/sdk/shapes:define-output delete-batch-import-job-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBatchImportJobResult"))

(smithy/sdk/shapes:define-input delete-batch-prediction-job-request
                                common-lisp:nil
                                ((job-id :target-type identifier :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "DeleteBatchPredictionJobRequest"))

(smithy/sdk/shapes:define-output delete-batch-prediction-job-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteBatchPredictionJobResult"))

(smithy/sdk/shapes:define-input delete-detector-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId"))
                                (:shape-name "DeleteDetectorRequest"))

(smithy/sdk/shapes:define-output delete-detector-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDetectorResult"))

(smithy/sdk/shapes:define-input delete-detector-version-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId"))
                                (:shape-name "DeleteDetectorVersionRequest"))

(smithy/sdk/shapes:define-output delete-detector-version-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDetectorVersionResult"))

(smithy/sdk/shapes:define-input delete-entity-type-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteEntityTypeRequest"))

(smithy/sdk/shapes:define-output delete-entity-type-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEntityTypeResult"))

(smithy/sdk/shapes:define-input delete-event-request common-lisp:nil
                                ((event-id :target-type identifier :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (delete-audit-history :target-type
                                  delete-audit-history :member-name
                                  "deleteAuditHistory"))
                                (:shape-name "DeleteEventRequest"))

(smithy/sdk/shapes:define-output delete-event-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEventResult"))

(smithy/sdk/shapes:define-input delete-event-type-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteEventTypeRequest"))

(smithy/sdk/shapes:define-output delete-event-type-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEventTypeResult"))

(smithy/sdk/shapes:define-input delete-events-by-event-type-request
                                common-lisp:nil
                                ((event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName"))
                                (:shape-name "DeleteEventsByEventTypeRequest"))

(smithy/sdk/shapes:define-output delete-events-by-event-type-result
                                 common-lisp:nil
                                 ((event-type-name :target-type identifier
                                   :member-name "eventTypeName")
                                  (events-deletion-status :target-type string
                                   :member-name "eventsDeletionStatus"))
                                 (:shape-name "DeleteEventsByEventTypeResult"))

(smithy/sdk/shapes:define-input delete-external-model-request common-lisp:nil
                                ((model-endpoint :target-type
                                  sage-maker-endpoint-identifier :required
                                  common-lisp:t :member-name "modelEndpoint"))
                                (:shape-name "DeleteExternalModelRequest"))

(smithy/sdk/shapes:define-output delete-external-model-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteExternalModelResult"))

(smithy/sdk/shapes:define-input delete-label-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteLabelRequest"))

(smithy/sdk/shapes:define-output delete-label-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLabelResult"))

(smithy/sdk/shapes:define-input delete-list-request common-lisp:nil
                                ((name :target-type no-dash-identifier
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "DeleteListRequest"))

(smithy/sdk/shapes:define-output delete-list-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteListResult"))

(smithy/sdk/shapes:define-input delete-model-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType"))
                                (:shape-name "DeleteModelRequest"))

(smithy/sdk/shapes:define-output delete-model-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteModelResult"))

(smithy/sdk/shapes:define-input delete-model-version-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (model-version-number :target-type
                                  float-version-string :required common-lisp:t
                                  :member-name "modelVersionNumber"))
                                (:shape-name "DeleteModelVersionRequest"))

(smithy/sdk/shapes:define-output delete-model-version-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteModelVersionResult"))

(smithy/sdk/shapes:define-input delete-outcome-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteOutcomeRequest"))

(smithy/sdk/shapes:define-output delete-outcome-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOutcomeResult"))

(smithy/sdk/shapes:define-input delete-rule-request common-lisp:nil
                                ((rule :target-type rule :required
                                  common-lisp:t :member-name "rule"))
                                (:shape-name "DeleteRuleRequest"))

(smithy/sdk/shapes:define-output delete-rule-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleResult"))

(smithy/sdk/shapes:define-input delete-variable-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteVariableRequest"))

(smithy/sdk/shapes:define-output delete-variable-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteVariableResult"))

(smithy/sdk/shapes:define-input describe-detector-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  detector-version-max-results :member-name
                                  "maxResults"))
                                (:shape-name "DescribeDetectorRequest"))

(smithy/sdk/shapes:define-output describe-detector-result common-lisp:nil
                                 ((detector-id :target-type identifier
                                   :member-name "detectorId")
                                  (detector-version-summaries :target-type
                                   detector-version-summary-list :member-name
                                   "detectorVersionSummaries")
                                  (next-token :target-type string :member-name
                                   "nextToken")
                                  (arn :target-type fraud-detector-arn
                                   :member-name "arn"))
                                 (:shape-name "DescribeDetectorResult"))

(smithy/sdk/shapes:define-input describe-model-versions-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :member-name "modelId")
                                 (model-version-number :target-type
                                  float-version-string :member-name
                                  "modelVersionNumber")
                                 (model-type :target-type model-type-enum
                                  :member-name "modelType")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type models-max-page-size
                                  :member-name "maxResults"))
                                (:shape-name "DescribeModelVersionsRequest"))

(smithy/sdk/shapes:define-output describe-model-versions-result common-lisp:nil
                                 ((model-version-details :target-type
                                   model-version-detail-list :member-name
                                   "modelVersionDetails")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "DescribeModelVersionsResult"))

(smithy/sdk/shapes:define-structure detector common-lisp:nil
                                    ((detector-id :target-type identifier
                                      :member-name "detectorId")
                                     (description :target-type description
                                      :member-name "description")
                                     (event-type-name :target-type identifier
                                      :member-name "eventTypeName")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "Detector"))

(smithy/sdk/shapes:define-list detector-list :member detector)

(smithy/sdk/shapes:define-type detector-version-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum detector-version-status
    common-lisp:nil
  (:draft "DRAFT")
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure detector-version-summary common-lisp:nil
                                    ((detector-version-id :target-type
                                      whole-number-version-string :member-name
                                      "detectorVersionId")
                                     (status :target-type
                                      detector-version-status :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime"))
                                    (:shape-name "DetectorVersionSummary"))

(smithy/sdk/shapes:define-list detector-version-summary-list :member
                               detector-version-summary)

(smithy/sdk/shapes:define-type detectors-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type elements smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list elements-list :member elements)

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((entity-type :target-type string :required
                                      common-lisp:t :member-name "entityType")
                                     (entity-id :target-type
                                      entity-restricted-string :required
                                      common-lisp:t :member-name "entityId"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-structure entity-type common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "EntityType"))

(smithy/sdk/shapes:define-structure evaluated-external-model common-lisp:nil
                                    ((model-endpoint :target-type string
                                      :member-name "modelEndpoint")
                                     (use-event-variables :target-type boolean
                                      :member-name "useEventVariables")
                                     (input-variables :target-type
                                      map-of-strings :member-name
                                      "inputVariables")
                                     (output-variables :target-type
                                      map-of-strings :member-name
                                      "outputVariables"))
                                    (:shape-name "EvaluatedExternalModel"))

(smithy/sdk/shapes:define-structure evaluated-model-version common-lisp:nil
                                    ((model-id :target-type string :member-name
                                      "modelId")
                                     (model-version :target-type string
                                      :member-name "modelVersion")
                                     (model-type :target-type string
                                      :member-name "modelType")
                                     (evaluations :target-type
                                      list-of-model-version-evaluations
                                      :member-name "evaluations"))
                                    (:shape-name "EvaluatedModelVersion"))

(smithy/sdk/shapes:define-structure evaluated-rule common-lisp:nil
                                    ((rule-id :target-type identifier
                                      :member-name "ruleId")
                                     (rule-version :target-type
                                      whole-number-version-string :member-name
                                      "ruleVersion")
                                     (expression :target-type sensitive-string
                                      :member-name "expression")
                                     (expression-with-values :target-type
                                      sensitive-string :member-name
                                      "expressionWithValues")
                                     (outcomes :target-type list-of-strings
                                      :member-name "outcomes")
                                     (evaluated :target-type boolean
                                      :member-name "evaluated")
                                     (matched :target-type boolean :member-name
                                      "matched"))
                                    (:shape-name "EvaluatedRule"))

(smithy/sdk/shapes:define-list evaluated-rule-list :member evaluated-rule)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((event-id :target-type string :member-name
                                      "eventId")
                                     (event-type-name :target-type string
                                      :member-name "eventTypeName")
                                     (event-timestamp :target-type string
                                      :member-name "eventTimestamp")
                                     (event-variables :target-type
                                      event-attribute-map :member-name
                                      "eventVariables")
                                     (current-label :target-type string
                                      :member-name "currentLabel")
                                     (label-timestamp :target-type string
                                      :member-name "labelTimestamp")
                                     (entities :target-type list-of-entities
                                      :member-name "entities"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-map event-attribute-map :key attribute-key :value
                              attribute-value)

(smithy/sdk/shapes:define-enum event-ingestion
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure event-orchestration common-lisp:nil
                                    ((event-bridge-enabled :target-type boolean
                                      :required common-lisp:t :member-name
                                      "eventBridgeEnabled"))
                                    (:shape-name "EventOrchestration"))

(smithy/sdk/shapes:define-structure event-prediction-summary common-lisp:nil
                                    ((event-id :target-type identifier
                                      :member-name "eventId")
                                     (event-type-name :target-type identifier
                                      :member-name "eventTypeName")
                                     (event-timestamp :target-type time
                                      :member-name "eventTimestamp")
                                     (prediction-timestamp :target-type time
                                      :member-name "predictionTimestamp")
                                     (detector-id :target-type identifier
                                      :member-name "detectorId")
                                     (detector-version-id :target-type
                                      whole-number-version-string :member-name
                                      "detectorVersionId"))
                                    (:shape-name "EventPredictionSummary"))

(smithy/sdk/shapes:define-type event-predictions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure event-type common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (event-variables :target-type
                                      list-of-strings :member-name
                                      "eventVariables")
                                     (labels :target-type list-of-strings
                                      :member-name "labels")
                                     (entity-types :target-type
                                      non-empty-list-of-strings :member-name
                                      "entityTypes")
                                     (event-ingestion :target-type
                                      event-ingestion :member-name
                                      "eventIngestion")
                                     (ingested-event-statistics :target-type
                                      ingested-event-statistics :member-name
                                      "ingestedEventStatistics")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn")
                                     (event-orchestration :target-type
                                      event-orchestration :member-name
                                      "eventOrchestration"))
                                    (:shape-name "EventType"))

(smithy/sdk/shapes:define-map event-variable-map :key variable-name :value
                              variable-value)

(smithy/sdk/shapes:define-structure event-variable-summary common-lisp:nil
                                    ((name :target-type sensitive-string
                                      :member-name "name")
                                     (value :target-type sensitive-string
                                      :member-name "value")
                                     (source :target-type sensitive-string
                                      :member-name "source"))
                                    (:shape-name "EventVariableSummary"))

(smithy/sdk/shapes:define-structure external-events-detail common-lisp:nil
                                    ((data-location :target-type
                                      s3bucket-location :required common-lisp:t
                                      :member-name "dataLocation")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "dataAccessRoleArn"))
                                    (:shape-name "ExternalEventsDetail"))

(smithy/sdk/shapes:define-structure external-model common-lisp:nil
                                    ((model-endpoint :target-type string
                                      :member-name "modelEndpoint")
                                     (model-source :target-type model-source
                                      :member-name "modelSource")
                                     (invoke-model-endpoint-role-arn
                                      :target-type string :member-name
                                      "invokeModelEndpointRoleArn")
                                     (input-configuration :target-type
                                      model-input-configuration :member-name
                                      "inputConfiguration")
                                     (output-configuration :target-type
                                      model-output-configuration :member-name
                                      "outputConfiguration")
                                     (model-endpoint-status :target-type
                                      model-endpoint-status :member-name
                                      "modelEndpointStatus")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "ExternalModel"))

(smithy/sdk/shapes:define-map external-model-endpoint-data-blob-map :key
                              sage-maker-endpoint-identifier :value
                              model-endpoint-data-blob)

(smithy/sdk/shapes:define-list external-model-list :member external-model)

(smithy/sdk/shapes:define-structure external-model-outputs common-lisp:nil
                                    ((external-model :target-type
                                      external-model-summary :member-name
                                      "externalModel")
                                     (outputs :target-type
                                      external-model-prediction-map
                                      :member-name "outputs"))
                                    (:shape-name "ExternalModelOutputs"))

(smithy/sdk/shapes:define-map external-model-prediction-map :key string :value
                              string)

(smithy/sdk/shapes:define-structure external-model-summary common-lisp:nil
                                    ((model-endpoint :target-type string
                                      :member-name "modelEndpoint")
                                     (model-source :target-type model-source
                                      :member-name "modelSource"))
                                    (:shape-name "ExternalModelSummary"))

(smithy/sdk/shapes:define-type external-models-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure field-validation-message common-lisp:nil
                                    ((field-name :target-type string
                                      :member-name "fieldName")
                                     (identifier :target-type string
                                      :member-name "identifier")
                                     (title :target-type string :member-name
                                      "title")
                                     (content :target-type string :member-name
                                      "content")
                                     (type :target-type string :member-name
                                      "type"))
                                    (:shape-name "FieldValidationMessage"))

(smithy/sdk/shapes:define-structure file-validation-message common-lisp:nil
                                    ((title :target-type string :member-name
                                      "title")
                                     (content :target-type string :member-name
                                      "content")
                                     (type :target-type string :member-name
                                      "type"))
                                    (:shape-name "FileValidationMessage"))

(smithy/sdk/shapes:define-structure filter-condition common-lisp:nil
                                    ((value :target-type filter-string
                                      :member-name "value"))
                                    (:shape-name "FilterCondition"))

(smithy/sdk/shapes:define-input get-batch-import-jobs-request common-lisp:nil
                                ((job-id :target-type identifier :member-name
                                  "jobId")
                                 (max-results :target-type
                                  batch-imports-max-page-size :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "GetBatchImportJobsRequest"))

(smithy/sdk/shapes:define-output get-batch-import-jobs-result common-lisp:nil
                                 ((batch-imports :target-type batch-import-list
                                   :member-name "batchImports")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetBatchImportJobsResult"))

(smithy/sdk/shapes:define-input get-batch-prediction-jobs-request
                                common-lisp:nil
                                ((job-id :target-type identifier :member-name
                                  "jobId")
                                 (max-results :target-type
                                  batch-predictions-max-page-size :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "GetBatchPredictionJobsRequest"))

(smithy/sdk/shapes:define-output get-batch-prediction-jobs-result
                                 common-lisp:nil
                                 ((batch-predictions :target-type
                                   batch-prediction-list :member-name
                                   "batchPredictions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetBatchPredictionJobsResult"))

(smithy/sdk/shapes:define-input get-delete-events-by-event-type-status-request
                                common-lisp:nil
                                ((event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName"))
                                (:shape-name
                                 "GetDeleteEventsByEventTypeStatusRequest"))

(smithy/sdk/shapes:define-output get-delete-events-by-event-type-status-result
                                 common-lisp:nil
                                 ((event-type-name :target-type identifier
                                   :member-name "eventTypeName")
                                  (events-deletion-status :target-type
                                   async-job-status :member-name
                                   "eventsDeletionStatus"))
                                 (:shape-name
                                  "GetDeleteEventsByEventTypeStatusResult"))

(smithy/sdk/shapes:define-input get-detector-version-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId"))
                                (:shape-name "GetDetectorVersionRequest"))

(smithy/sdk/shapes:define-output get-detector-version-result common-lisp:nil
                                 ((detector-id :target-type identifier
                                   :member-name "detectorId")
                                  (detector-version-id :target-type
                                   whole-number-version-string :member-name
                                   "detectorVersionId")
                                  (description :target-type description
                                   :member-name "description")
                                  (external-model-endpoints :target-type
                                   list-of-strings :member-name
                                   "externalModelEndpoints")
                                  (model-versions :target-type
                                   list-of-model-versions :member-name
                                   "modelVersions")
                                  (rules :target-type rule-list :member-name
                                   "rules")
                                  (status :target-type detector-version-status
                                   :member-name "status")
                                  (last-updated-time :target-type time
                                   :member-name "lastUpdatedTime")
                                  (created-time :target-type time :member-name
                                   "createdTime")
                                  (rule-execution-mode :target-type
                                   rule-execution-mode :member-name
                                   "ruleExecutionMode")
                                  (arn :target-type fraud-detector-arn
                                   :member-name "arn"))
                                 (:shape-name "GetDetectorVersionResult"))

(smithy/sdk/shapes:define-input get-detectors-request common-lisp:nil
                                ((detector-id :target-type identifier
                                  :member-name "detectorId")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  detectors-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetDetectorsRequest"))

(smithy/sdk/shapes:define-output get-detectors-result common-lisp:nil
                                 ((detectors :target-type detector-list
                                   :member-name "detectors")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetDetectorsResult"))

(smithy/sdk/shapes:define-input get-entity-types-request common-lisp:nil
                                ((name :target-type identifier :member-name
                                  "name")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  entity-types-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetEntityTypesRequest"))

(smithy/sdk/shapes:define-output get-entity-types-result common-lisp:nil
                                 ((entity-types :target-type entity-type-list
                                   :member-name "entityTypes")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetEntityTypesResult"))

(smithy/sdk/shapes:define-input get-event-prediction-metadata-request
                                common-lisp:nil
                                ((event-id :target-type identifier :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId")
                                 (prediction-timestamp :target-type time
                                  :required common-lisp:t :member-name
                                  "predictionTimestamp"))
                                (:shape-name
                                 "GetEventPredictionMetadataRequest"))

(smithy/sdk/shapes:define-output get-event-prediction-metadata-result
                                 common-lisp:nil
                                 ((event-id :target-type identifier
                                   :member-name "eventId")
                                  (event-type-name :target-type identifier
                                   :member-name "eventTypeName")
                                  (entity-id :target-type string :member-name
                                   "entityId")
                                  (entity-type :target-type string :member-name
                                   "entityType")
                                  (event-timestamp :target-type time
                                   :member-name "eventTimestamp")
                                  (detector-id :target-type identifier
                                   :member-name "detectorId")
                                  (detector-version-id :target-type
                                   whole-number-version-string :member-name
                                   "detectorVersionId")
                                  (detector-version-status :target-type string
                                   :member-name "detectorVersionStatus")
                                  (event-variables :target-type
                                   list-of-event-variable-summaries
                                   :member-name "eventVariables")
                                  (rules :target-type evaluated-rule-list
                                   :member-name "rules")
                                  (rule-execution-mode :target-type
                                   rule-execution-mode :member-name
                                   "ruleExecutionMode")
                                  (outcomes :target-type list-of-strings
                                   :member-name "outcomes")
                                  (evaluated-model-versions :target-type
                                   list-of-evaluated-model-versions
                                   :member-name "evaluatedModelVersions")
                                  (evaluated-external-models :target-type
                                   list-of-evaluated-external-models
                                   :member-name "evaluatedExternalModels")
                                  (prediction-timestamp :target-type time
                                   :member-name "predictionTimestamp"))
                                 (:shape-name
                                  "GetEventPredictionMetadataResult"))

(smithy/sdk/shapes:define-input get-event-prediction-request common-lisp:nil
                                ((detector-id :target-type string :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :member-name
                                  "detectorVersionId")
                                 (event-id :target-type string :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type string :required
                                  common-lisp:t :member-name "eventTypeName")
                                 (entities :target-type list-of-entities
                                  :required common-lisp:t :member-name
                                  "entities")
                                 (event-timestamp :target-type
                                  utc-timestamp-iso8601 :required common-lisp:t
                                  :member-name "eventTimestamp")
                                 (event-variables :target-type
                                  event-variable-map :required common-lisp:t
                                  :member-name "eventVariables")
                                 (external-model-endpoint-data-blobs
                                  :target-type
                                  external-model-endpoint-data-blob-map
                                  :member-name
                                  "externalModelEndpointDataBlobs"))
                                (:shape-name "GetEventPredictionRequest"))

(smithy/sdk/shapes:define-output get-event-prediction-result common-lisp:nil
                                 ((model-scores :target-type
                                   list-of-model-scores :member-name
                                   "modelScores")
                                  (rule-results :target-type
                                   list-of-rule-results :member-name
                                   "ruleResults")
                                  (external-model-outputs :target-type
                                   list-of-external-model-outputs :member-name
                                   "externalModelOutputs"))
                                 (:shape-name "GetEventPredictionResult"))

(smithy/sdk/shapes:define-input get-event-request common-lisp:nil
                                ((event-id :target-type string :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type string :required
                                  common-lisp:t :member-name "eventTypeName"))
                                (:shape-name "GetEventRequest"))

(smithy/sdk/shapes:define-output get-event-result common-lisp:nil
                                 ((event :target-type event :member-name
                                   "event"))
                                 (:shape-name "GetEventResult"))

(smithy/sdk/shapes:define-input get-event-types-request common-lisp:nil
                                ((name :target-type identifier :member-name
                                  "name")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  event-types-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetEventTypesRequest"))

(smithy/sdk/shapes:define-output get-event-types-result common-lisp:nil
                                 ((event-types :target-type event-type-list
                                   :member-name "eventTypes")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetEventTypesResult"))

(smithy/sdk/shapes:define-input get-external-models-request common-lisp:nil
                                ((model-endpoint :target-type string
                                  :member-name "modelEndpoint")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  external-models-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetExternalModelsRequest"))

(smithy/sdk/shapes:define-output get-external-models-result common-lisp:nil
                                 ((external-models :target-type
                                   external-model-list :member-name
                                   "externalModels")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetExternalModelsResult"))

(smithy/sdk/shapes:define-output get-kmsencryption-key-result common-lisp:nil
                                 ((kms-key :target-type kmskey :member-name
                                   "kmsKey"))
                                 (:shape-name "GetKMSEncryptionKeyResult"))

(smithy/sdk/shapes:define-input get-labels-request common-lisp:nil
                                ((name :target-type identifier :member-name
                                  "name")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type labels-max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetLabelsRequest"))

(smithy/sdk/shapes:define-output get-labels-result common-lisp:nil
                                 ((labels :target-type label-list :member-name
                                   "labels")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetLabelsResult"))

(smithy/sdk/shapes:define-input get-list-elements-request common-lisp:nil
                                ((name :target-type no-dash-identifier
                                  :required common-lisp:t :member-name "name")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  lists-elements-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetListElementsRequest"))

(smithy/sdk/shapes:define-output get-list-elements-result common-lisp:nil
                                 ((elements :target-type elements-list
                                   :member-name "elements")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetListElementsResult"))

(smithy/sdk/shapes:define-input get-lists-metadata-request common-lisp:nil
                                ((name :target-type no-dash-identifier
                                  :member-name "name")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  lists-metadata-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetListsMetadataRequest"))

(smithy/sdk/shapes:define-output get-lists-metadata-result common-lisp:nil
                                 ((lists :target-type allow-deny-lists
                                   :member-name "lists")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetListsMetadataResult"))

(smithy/sdk/shapes:define-input get-model-version-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (model-version-number :target-type
                                  float-version-string :required common-lisp:t
                                  :member-name "modelVersionNumber"))
                                (:shape-name "GetModelVersionRequest"))

(smithy/sdk/shapes:define-output get-model-version-result common-lisp:nil
                                 ((model-id :target-type model-identifier
                                   :member-name "modelId")
                                  (model-type :target-type model-type-enum
                                   :member-name "modelType")
                                  (model-version-number :target-type
                                   float-version-string :member-name
                                   "modelVersionNumber")
                                  (training-data-source :target-type
                                   training-data-source-enum :member-name
                                   "trainingDataSource")
                                  (training-data-schema :target-type
                                   training-data-schema :member-name
                                   "trainingDataSchema")
                                  (external-events-detail :target-type
                                   external-events-detail :member-name
                                   "externalEventsDetail")
                                  (ingested-events-detail :target-type
                                   ingested-events-detail :member-name
                                   "ingestedEventsDetail")
                                  (status :target-type string :member-name
                                   "status")
                                  (arn :target-type fraud-detector-arn
                                   :member-name "arn"))
                                 (:shape-name "GetModelVersionResult"))

(smithy/sdk/shapes:define-input get-models-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :member-name "modelId")
                                 (model-type :target-type model-type-enum
                                  :member-name "modelType")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type models-max-page-size
                                  :member-name "maxResults"))
                                (:shape-name "GetModelsRequest"))

(smithy/sdk/shapes:define-output get-models-result common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (models :target-type model-list :member-name
                                   "models"))
                                 (:shape-name "GetModelsResult"))

(smithy/sdk/shapes:define-input get-outcomes-request common-lisp:nil
                                ((name :target-type identifier :member-name
                                  "name")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type outcomes-max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetOutcomesRequest"))

(smithy/sdk/shapes:define-output get-outcomes-result common-lisp:nil
                                 ((outcomes :target-type outcome-list
                                   :member-name "outcomes")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetOutcomesResult"))

(smithy/sdk/shapes:define-input get-rules-request common-lisp:nil
                                ((rule-id :target-type identifier :member-name
                                  "ruleId")
                                 (detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (rule-version :target-type
                                  whole-number-version-string :member-name
                                  "ruleVersion")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type rules-max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetRulesRequest"))

(smithy/sdk/shapes:define-output get-rules-result common-lisp:nil
                                 ((rule-details :target-type rule-detail-list
                                   :member-name "ruleDetails")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetRulesResult"))

(smithy/sdk/shapes:define-input get-variables-request common-lisp:nil
                                ((name :target-type string :member-name "name")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  variables-max-results :member-name
                                  "maxResults"))
                                (:shape-name "GetVariablesRequest"))

(smithy/sdk/shapes:define-output get-variables-result common-lisp:nil
                                 ((variables :target-type variable-list
                                   :member-name "variables")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "GetVariablesResult"))

(smithy/sdk/shapes:define-structure ingested-event-statistics common-lisp:nil
                                    ((number-of-events :target-type long
                                      :member-name "numberOfEvents")
                                     (event-data-size-in-bytes :target-type
                                      long :member-name "eventDataSizeInBytes")
                                     (least-recent-event :target-type time
                                      :member-name "leastRecentEvent")
                                     (most-recent-event :target-type time
                                      :member-name "mostRecentEvent")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime"))
                                    (:shape-name "IngestedEventStatistics"))

(smithy/sdk/shapes:define-structure ingested-events-detail common-lisp:nil
                                    ((ingested-events-time-window :target-type
                                      ingested-events-time-window :required
                                      common-lisp:t :member-name
                                      "ingestedEventsTimeWindow"))
                                    (:shape-name "IngestedEventsDetail"))

(smithy/sdk/shapes:define-structure ingested-events-time-window common-lisp:nil
                                    ((start-time :target-type time :required
                                      common-lisp:t :member-name "startTime")
                                     (end-time :target-type time :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name "IngestedEventsTimeWindow"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer2 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-map json-key-to-variable-map :key string :value
                              string)

(smithy/sdk/shapes:define-structure kmskey common-lisp:nil
                                    ((kms-encryption-key-arn :target-type
                                      kms-encryption-key-arn :member-name
                                      "kmsEncryptionKeyArn"))
                                    (:shape-name "KMSKey"))

(smithy/sdk/shapes:define-type kms-encryption-key-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure label common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "Label"))

(smithy/sdk/shapes:define-structure label-schema common-lisp:nil
                                    ((label-mapper :target-type label-mapper
                                      :member-name "labelMapper")
                                     (unlabeled-events-treatment :target-type
                                      unlabeled-events-treatment :member-name
                                      "unlabeledEventsTreatment"))
                                    (:shape-name "LabelSchema"))

(smithy/sdk/shapes:define-enum language
    common-lisp:nil
  (:detectorpl "DETECTORPL"))

(smithy/sdk/shapes:define-input list-event-predictions-request common-lisp:nil
                                ((event-id :target-type filter-condition
                                  :member-name "eventId")
                                 (event-type :target-type filter-condition
                                  :member-name "eventType")
                                 (detector-id :target-type filter-condition
                                  :member-name "detectorId")
                                 (detector-version-id :target-type
                                  filter-condition :member-name
                                  "detectorVersionId")
                                 (prediction-time-range :target-type
                                  prediction-time-range :member-name
                                  "predictionTimeRange")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  event-predictions-max-results :member-name
                                  "maxResults"))
                                (:shape-name "ListEventPredictionsRequest"))

(smithy/sdk/shapes:define-output list-event-predictions-result common-lisp:nil
                                 ((event-prediction-summaries :target-type
                                   list-of-event-prediction-summaries
                                   :member-name "eventPredictionSummaries")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListEventPredictionsResult"))

(smithy/sdk/shapes:define-list list-of-aggregated-log-odds-metrics :member
                               aggregated-log-odds-metric)

(smithy/sdk/shapes:define-list list-of-aggregated-variables-impact-explanations
                               :member aggregated-variables-impact-explanation)

(smithy/sdk/shapes:define-list list-of-evaluated-external-models :member
                               evaluated-external-model)

(smithy/sdk/shapes:define-list list-of-evaluated-model-versions :member
                               evaluated-model-version)

(smithy/sdk/shapes:define-list list-of-event-prediction-summaries :member
                               event-prediction-summary)

(smithy/sdk/shapes:define-list list-of-event-variable-summaries :member
                               event-variable-summary)

(smithy/sdk/shapes:define-list list-of-external-model-outputs :member
                               external-model-outputs)

(smithy/sdk/shapes:define-list list-of-log-odds-metrics :member log-odds-metric)

(smithy/sdk/shapes:define-list list-of-model-scores :member model-scores)

(smithy/sdk/shapes:define-list list-of-model-version-evaluations :member
                               model-version-evaluation)

(smithy/sdk/shapes:define-list list-of-model-versions :member model-version)

(smithy/sdk/shapes:define-list list-of-rule-results :member rule-result)

(smithy/sdk/shapes:define-list list-of-strings :member string)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type fraud-detector-arn
                                  :required common-lisp:t :member-name
                                  "resourceARN")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type tags-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-enum list-update-mode
    common-lisp:nil
  (:replace "REPLACE")
  (:append "APPEND")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-type lists-elements-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type lists-metadata-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure log-odds-metric common-lisp:nil
                                    ((variable-name :target-type string
                                      :required common-lisp:t :member-name
                                      "variableName")
                                     (variable-type :target-type string
                                      :required common-lisp:t :member-name
                                      "variableType")
                                     (variable-importance :target-type float
                                      :required common-lisp:t :member-name
                                      "variableImportance"))
                                    (:shape-name "LogOddsMetric"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-of-strings :key string :value string)

(smithy/sdk/shapes:define-structure metric-data-point common-lisp:nil
                                    ((fpr :target-type float :member-name
                                      "fpr")
                                     (precision :target-type float :member-name
                                      "precision")
                                     (tpr :target-type float :member-name
                                      "tpr")
                                     (threshold :target-type float :member-name
                                      "threshold"))
                                    (:shape-name "MetricDataPoint"))

(smithy/sdk/shapes:define-structure model common-lisp:nil
                                    ((model-id :target-type model-identifier
                                      :member-name "modelId")
                                     (model-type :target-type model-type-enum
                                      :member-name "modelType")
                                     (description :target-type description
                                      :member-name "description")
                                     (event-type-name :target-type string
                                      :member-name "eventTypeName")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "Model"))

(smithy/sdk/shapes:define-structure model-endpoint-data-blob common-lisp:nil
                                    ((byte-buffer :target-type blob
                                      :member-name "byteBuffer")
                                     (content-type :target-type content-type
                                      :member-name "contentType"))
                                    (:shape-name "ModelEndpointDataBlob"))

(smithy/sdk/shapes:define-enum model-endpoint-status
    common-lisp:nil
  (:associated "ASSOCIATED")
  (:dissociated "DISSOCIATED"))

(smithy/sdk/shapes:define-structure model-input-configuration common-lisp:nil
                                    ((event-type-name :target-type identifier
                                      :member-name "eventTypeName")
                                     (format :target-type
                                      model-input-data-format :member-name
                                      "format")
                                     (use-event-variables :target-type
                                      use-event-variables :required
                                      common-lisp:t :member-name
                                      "useEventVariables")
                                     (json-input-template :target-type
                                      model-input-template :member-name
                                      "jsonInputTemplate")
                                     (csv-input-template :target-type
                                      model-input-template :member-name
                                      "csvInputTemplate"))
                                    (:shape-name "ModelInputConfiguration"))

(smithy/sdk/shapes:define-enum model-input-data-format
    common-lisp:nil
  (:csv "TEXT_CSV")
  (:json "APPLICATION_JSON"))

(smithy/sdk/shapes:define-structure model-output-configuration common-lisp:nil
                                    ((format :target-type
                                      model-output-data-format :required
                                      common-lisp:t :member-name "format")
                                     (json-key-to-variable-map :target-type
                                      json-key-to-variable-map :member-name
                                      "jsonKeyToVariableMap")
                                     (csv-index-to-variable-map :target-type
                                      csv-index-to-variable-map :member-name
                                      "csvIndexToVariableMap"))
                                    (:shape-name "ModelOutputConfiguration"))

(smithy/sdk/shapes:define-enum model-output-data-format
    common-lisp:nil
  (:csv "TEXT_CSV")
  (:jsonlines "APPLICATION_JSONLINES"))

(smithy/sdk/shapes:define-map model-prediction-map :key string :value float)

(smithy/sdk/shapes:define-structure model-scores common-lisp:nil
                                    ((model-version :target-type model-version
                                      :member-name "modelVersion")
                                     (scores :target-type model-prediction-map
                                      :member-name "scores"))
                                    (:shape-name "ModelScores"))

(smithy/sdk/shapes:define-enum model-source
    common-lisp:nil
  (:sagemaker "SAGEMAKER"))

(smithy/sdk/shapes:define-enum model-type-enum
    common-lisp:nil
  (:online-fraud-insights "ONLINE_FRAUD_INSIGHTS")
  (:transaction-fraud-insights "TRANSACTION_FRAUD_INSIGHTS")
  (:account-takeover-insights "ACCOUNT_TAKEOVER_INSIGHTS"))

(smithy/sdk/shapes:define-structure model-version common-lisp:nil
                                    ((model-id :target-type model-identifier
                                      :required common-lisp:t :member-name
                                      "modelId")
                                     (model-type :target-type model-type-enum
                                      :required common-lisp:t :member-name
                                      "modelType")
                                     (model-version-number :target-type
                                      float-version-string :required
                                      common-lisp:t :member-name
                                      "modelVersionNumber")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "ModelVersion"))

(smithy/sdk/shapes:define-structure model-version-detail common-lisp:nil
                                    ((model-id :target-type model-identifier
                                      :member-name "modelId")
                                     (model-type :target-type model-type-enum
                                      :member-name "modelType")
                                     (model-version-number :target-type
                                      float-version-string :member-name
                                      "modelVersionNumber")
                                     (status :target-type string :member-name
                                      "status")
                                     (training-data-source :target-type
                                      training-data-source-enum :member-name
                                      "trainingDataSource")
                                     (training-data-schema :target-type
                                      training-data-schema :member-name
                                      "trainingDataSchema")
                                     (external-events-detail :target-type
                                      external-events-detail :member-name
                                      "externalEventsDetail")
                                     (ingested-events-detail :target-type
                                      ingested-events-detail :member-name
                                      "ingestedEventsDetail")
                                     (training-result :target-type
                                      training-result :member-name
                                      "trainingResult")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn")
                                     (training-result-v2 :target-type
                                      training-result-v2 :member-name
                                      "trainingResultV2"))
                                    (:shape-name "ModelVersionDetail"))

(smithy/sdk/shapes:define-structure model-version-evaluation common-lisp:nil
                                    ((output-variable-name :target-type string
                                      :member-name "outputVariableName")
                                     (evaluation-score :target-type string
                                      :member-name "evaluationScore")
                                     (prediction-explanations :target-type
                                      prediction-explanations :member-name
                                      "predictionExplanations"))
                                    (:shape-name "ModelVersionEvaluation"))

(smithy/sdk/shapes:define-enum model-version-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:training-cancelled "TRAINING_CANCELLED"))

(smithy/sdk/shapes:define-list name-list :member string)

(smithy/sdk/shapes:define-list non-empty-list-of-strings :member string)

(smithy/sdk/shapes:define-structure ofimetric-data-point common-lisp:nil
                                    ((fpr :target-type float :member-name
                                      "fpr")
                                     (precision :target-type float :member-name
                                      "precision")
                                     (tpr :target-type float :member-name
                                      "tpr")
                                     (threshold :target-type float :member-name
                                      "threshold"))
                                    (:shape-name "OFIMetricDataPoint"))

(smithy/sdk/shapes:define-list ofimetric-data-points-list :member
                               ofimetric-data-point)

(smithy/sdk/shapes:define-structure ofimodel-performance common-lisp:nil
                                    ((auc :target-type float :member-name
                                      "auc")
                                     (uncertainty-range :target-type
                                      uncertainty-range :member-name
                                      "uncertaintyRange"))
                                    (:shape-name "OFIModelPerformance"))

(smithy/sdk/shapes:define-structure ofitraining-metrics-value common-lisp:nil
                                    ((metric-data-points :target-type
                                      ofimetric-data-points-list :member-name
                                      "metricDataPoints")
                                     (model-performance :target-type
                                      ofimodel-performance :member-name
                                      "modelPerformance"))
                                    (:shape-name "OFITrainingMetricsValue"))

(smithy/sdk/shapes:define-structure outcome common-lisp:nil
                                    ((name :target-type identifier :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "Outcome"))

(smithy/sdk/shapes:define-list outcome-list :member outcome)

(smithy/sdk/shapes:define-type outcomes-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure prediction-explanations common-lisp:nil
                                    ((variable-impact-explanations :target-type
                                      list-of-variable-impact-explanations
                                      :member-name
                                      "variableImpactExplanations")
                                     (aggregated-variables-impact-explanations
                                      :target-type
                                      list-of-aggregated-variables-impact-explanations
                                      :member-name
                                      "aggregatedVariablesImpactExplanations"))
                                    (:shape-name "PredictionExplanations"))

(smithy/sdk/shapes:define-structure prediction-time-range common-lisp:nil
                                    ((start-time :target-type time :required
                                      common-lisp:t :member-name "startTime")
                                     (end-time :target-type time :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name "PredictionTimeRange"))

(smithy/sdk/shapes:define-input put-detector-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (description :target-type description
                                  :member-name "description")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutDetectorRequest"))

(smithy/sdk/shapes:define-output put-detector-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutDetectorResult"))

(smithy/sdk/shapes:define-input put-entity-type-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutEntityTypeRequest"))

(smithy/sdk/shapes:define-output put-entity-type-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutEntityTypeResult"))

(smithy/sdk/shapes:define-input put-event-type-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (event-variables :target-type
                                  non-empty-list-of-strings :required
                                  common-lisp:t :member-name "eventVariables")
                                 (labels :target-type list-of-strings
                                  :member-name "labels")
                                 (entity-types :target-type
                                  non-empty-list-of-strings :required
                                  common-lisp:t :member-name "entityTypes")
                                 (event-ingestion :target-type event-ingestion
                                  :member-name "eventIngestion")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (event-orchestration :target-type
                                  event-orchestration :member-name
                                  "eventOrchestration"))
                                (:shape-name "PutEventTypeRequest"))

(smithy/sdk/shapes:define-output put-event-type-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutEventTypeResult"))

(smithy/sdk/shapes:define-input put-external-model-request common-lisp:nil
                                ((model-endpoint :target-type
                                  sage-maker-endpoint-identifier :required
                                  common-lisp:t :member-name "modelEndpoint")
                                 (model-source :target-type model-source
                                  :required common-lisp:t :member-name
                                  "modelSource")
                                 (invoke-model-endpoint-role-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "invokeModelEndpointRoleArn")
                                 (input-configuration :target-type
                                  model-input-configuration :required
                                  common-lisp:t :member-name
                                  "inputConfiguration")
                                 (output-configuration :target-type
                                  model-output-configuration :required
                                  common-lisp:t :member-name
                                  "outputConfiguration")
                                 (model-endpoint-status :target-type
                                  model-endpoint-status :required common-lisp:t
                                  :member-name "modelEndpointStatus")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutExternalModelRequest"))

(smithy/sdk/shapes:define-output put-external-model-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutExternalModelResult"))

(smithy/sdk/shapes:define-input put-kmsencryption-key-request common-lisp:nil
                                ((kms-encryption-key-arn :target-type
                                  kms-encryption-key-arn :required
                                  common-lisp:t :member-name
                                  "kmsEncryptionKeyArn"))
                                (:shape-name "PutKMSEncryptionKeyRequest"))

(smithy/sdk/shapes:define-output put-kmsencryption-key-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutKMSEncryptionKeyResult"))

(smithy/sdk/shapes:define-input put-label-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutLabelRequest"))

(smithy/sdk/shapes:define-output put-label-result common-lisp:nil
                                 common-lisp:nil (:shape-name "PutLabelResult"))

(smithy/sdk/shapes:define-input put-outcome-request common-lisp:nil
                                ((name :target-type identifier :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutOutcomeRequest"))

(smithy/sdk/shapes:define-output put-outcome-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutOutcomeResult"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((detector-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "detectorId")
                                     (rule-id :target-type identifier :required
                                      common-lisp:t :member-name "ruleId")
                                     (rule-version :target-type
                                      whole-number-version-string :required
                                      common-lisp:t :member-name
                                      "ruleVersion"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-structure rule-detail common-lisp:nil
                                    ((rule-id :target-type identifier
                                      :member-name "ruleId")
                                     (description :target-type description
                                      :member-name "description")
                                     (detector-id :target-type identifier
                                      :member-name "detectorId")
                                     (rule-version :target-type
                                      whole-number-version-string :member-name
                                      "ruleVersion")
                                     (expression :target-type rule-expression
                                      :member-name "expression")
                                     (language :target-type language
                                      :member-name "language")
                                     (outcomes :target-type
                                      non-empty-list-of-strings :member-name
                                      "outcomes")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "RuleDetail"))

(smithy/sdk/shapes:define-list rule-detail-list :member rule-detail)

(smithy/sdk/shapes:define-enum rule-execution-mode
    common-lisp:nil
  (:all-matched "ALL_MATCHED")
  (:first-matched "FIRST_MATCHED"))

(smithy/sdk/shapes:define-list rule-list :member rule)

(smithy/sdk/shapes:define-structure rule-result common-lisp:nil
                                    ((rule-id :target-type string :member-name
                                      "ruleId")
                                     (outcomes :target-type list-of-strings
                                      :member-name "outcomes"))
                                    (:shape-name "RuleResult"))

(smithy/sdk/shapes:define-type rules-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input send-event-request common-lisp:nil
                                ((event-id :target-type identifier :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (event-timestamp :target-type
                                  utc-timestamp-iso8601 :required common-lisp:t
                                  :member-name "eventTimestamp")
                                 (event-variables :target-type
                                  event-variable-map :required common-lisp:t
                                  :member-name "eventVariables")
                                 (assigned-label :target-type identifier
                                  :member-name "assignedLabel")
                                 (label-timestamp :target-type
                                  utc-timestamp-iso8601 :member-name
                                  "labelTimestamp")
                                 (entities :target-type list-of-entities
                                  :required common-lisp:t :member-name
                                  "entities"))
                                (:shape-name "SendEventRequest"))

(smithy/sdk/shapes:define-output send-event-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendEventResult"))

(smithy/sdk/shapes:define-structure tfimetric-data-point common-lisp:nil
                                    ((fpr :target-type float :member-name
                                      "fpr")
                                     (precision :target-type float :member-name
                                      "precision")
                                     (tpr :target-type float :member-name
                                      "tpr")
                                     (threshold :target-type float :member-name
                                      "threshold"))
                                    (:shape-name "TFIMetricDataPoint"))

(smithy/sdk/shapes:define-list tfimetric-data-points-list :member
                               tfimetric-data-point)

(smithy/sdk/shapes:define-structure tfimodel-performance common-lisp:nil
                                    ((auc :target-type float :member-name
                                      "auc")
                                     (uncertainty-range :target-type
                                      uncertainty-range :member-name
                                      "uncertaintyRange"))
                                    (:shape-name "TFIModelPerformance"))

(smithy/sdk/shapes:define-structure tfitraining-metrics-value common-lisp:nil
                                    ((metric-data-points :target-type
                                      tfimetric-data-points-list :member-name
                                      "metricDataPoints")
                                     (model-performance :target-type
                                      tfimodel-performance :member-name
                                      "modelPerformance"))
                                    (:shape-name "TFITrainingMetricsValue"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type fraud-detector-arn
                                  :required common-lisp:t :member-name
                                  "resourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tags-max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure training-data-schema common-lisp:nil
                                    ((model-variables :target-type
                                      list-of-strings :required common-lisp:t
                                      :member-name "modelVariables")
                                     (label-schema :target-type label-schema
                                      :member-name "labelSchema"))
                                    (:shape-name "TrainingDataSchema"))

(smithy/sdk/shapes:define-enum training-data-source-enum
    common-lisp:nil
  (:external-events "EXTERNAL_EVENTS")
  (:ingested-events "INGESTED_EVENTS"))

(smithy/sdk/shapes:define-structure training-metrics common-lisp:nil
                                    ((auc :target-type float :member-name
                                      "auc")
                                     (metric-data-points :target-type
                                      metric-data-points-list :member-name
                                      "metricDataPoints"))
                                    (:shape-name "TrainingMetrics"))

(smithy/sdk/shapes:define-structure training-metrics-v2 common-lisp:nil
                                    ((ofi :target-type
                                      ofitraining-metrics-value :member-name
                                      "ofi")
                                     (tfi :target-type
                                      tfitraining-metrics-value :member-name
                                      "tfi")
                                     (ati :target-type
                                      atitraining-metrics-value :member-name
                                      "ati"))
                                    (:shape-name "TrainingMetricsV2"))

(smithy/sdk/shapes:define-structure training-result common-lisp:nil
                                    ((data-validation-metrics :target-type
                                      data-validation-metrics :member-name
                                      "dataValidationMetrics")
                                     (training-metrics :target-type
                                      training-metrics :member-name
                                      "trainingMetrics")
                                     (variable-importance-metrics :target-type
                                      variable-importance-metrics :member-name
                                      "variableImportanceMetrics"))
                                    (:shape-name "TrainingResult"))

(smithy/sdk/shapes:define-structure training-result-v2 common-lisp:nil
                                    ((data-validation-metrics :target-type
                                      data-validation-metrics :member-name
                                      "dataValidationMetrics")
                                     (training-metrics-v2 :target-type
                                      training-metrics-v2 :member-name
                                      "trainingMetricsV2")
                                     (variable-importance-metrics :target-type
                                      variable-importance-metrics :member-name
                                      "variableImportanceMetrics")
                                     (aggregated-variables-importance-metrics
                                      :target-type
                                      aggregated-variables-importance-metrics
                                      :member-name
                                      "aggregatedVariablesImportanceMetrics"))
                                    (:shape-name "TrainingResultV2"))

(smithy/sdk/shapes:define-structure uncertainty-range common-lisp:nil
                                    ((lower-bound-value :target-type float
                                      :required common-lisp:t :member-name
                                      "lowerBoundValue")
                                     (upper-bound-value :target-type float
                                      :required common-lisp:t :member-name
                                      "upperBoundValue"))
                                    (:shape-name "UncertaintyRange"))

(smithy/sdk/shapes:define-enum unlabeled-events-treatment
    common-lisp:nil
  (:ignore "IGNORE")
  (:fraud "FRAUD")
  (:legit "LEGIT")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type fraud-detector-arn
                                  :required common-lisp:t :member-name
                                  "resourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-detector-version-metadata-request
                                common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "description"))
                                (:shape-name
                                 "UpdateDetectorVersionMetadataRequest"))

(smithy/sdk/shapes:define-output update-detector-version-metadata-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateDetectorVersionMetadataResult"))

(smithy/sdk/shapes:define-input update-detector-version-request common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId")
                                 (external-model-endpoints :target-type
                                  list-of-strings :required common-lisp:t
                                  :member-name "externalModelEndpoints")
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "rules")
                                 (description :target-type description
                                  :member-name "description")
                                 (model-versions :target-type
                                  list-of-model-versions :member-name
                                  "modelVersions")
                                 (rule-execution-mode :target-type
                                  rule-execution-mode :member-name
                                  "ruleExecutionMode"))
                                (:shape-name "UpdateDetectorVersionRequest"))

(smithy/sdk/shapes:define-output update-detector-version-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDetectorVersionResult"))

(smithy/sdk/shapes:define-input update-detector-version-status-request
                                common-lisp:nil
                                ((detector-id :target-type identifier :required
                                  common-lisp:t :member-name "detectorId")
                                 (detector-version-id :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "detectorVersionId")
                                 (status :target-type detector-version-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name
                                 "UpdateDetectorVersionStatusRequest"))

(smithy/sdk/shapes:define-output update-detector-version-status-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateDetectorVersionStatusResult"))

(smithy/sdk/shapes:define-input update-event-label-request common-lisp:nil
                                ((event-id :target-type identifier :required
                                  common-lisp:t :member-name "eventId")
                                 (event-type-name :target-type identifier
                                  :required common-lisp:t :member-name
                                  "eventTypeName")
                                 (assigned-label :target-type identifier
                                  :required common-lisp:t :member-name
                                  "assignedLabel")
                                 (label-timestamp :target-type
                                  utc-timestamp-iso8601 :required common-lisp:t
                                  :member-name "labelTimestamp"))
                                (:shape-name "UpdateEventLabelRequest"))

(smithy/sdk/shapes:define-output update-event-label-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateEventLabelResult"))

(smithy/sdk/shapes:define-input update-list-request common-lisp:nil
                                ((name :target-type no-dash-identifier
                                  :required common-lisp:t :member-name "name")
                                 (elements :target-type elements-list
                                  :member-name "elements")
                                 (description :target-type description
                                  :member-name "description")
                                 (update-mode :target-type list-update-mode
                                  :member-name "updateMode")
                                 (variable-type :target-type variable-type
                                  :member-name "variableType"))
                                (:shape-name "UpdateListRequest"))

(smithy/sdk/shapes:define-output update-list-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateListResult"))

(smithy/sdk/shapes:define-input update-model-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateModelRequest"))

(smithy/sdk/shapes:define-output update-model-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateModelResult"))

(smithy/sdk/shapes:define-input update-model-version-request common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (major-version-number :target-type
                                  whole-number-version-string :required
                                  common-lisp:t :member-name
                                  "majorVersionNumber")
                                 (external-events-detail :target-type
                                  external-events-detail :member-name
                                  "externalEventsDetail")
                                 (ingested-events-detail :target-type
                                  ingested-events-detail :member-name
                                  "ingestedEventsDetail")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "UpdateModelVersionRequest"))

(smithy/sdk/shapes:define-output update-model-version-result common-lisp:nil
                                 ((model-id :target-type model-identifier
                                   :member-name "modelId")
                                  (model-type :target-type model-type-enum
                                   :member-name "modelType")
                                  (model-version-number :target-type
                                   float-version-string :member-name
                                   "modelVersionNumber")
                                  (status :target-type string :member-name
                                   "status"))
                                 (:shape-name "UpdateModelVersionResult"))

(smithy/sdk/shapes:define-input update-model-version-status-request
                                common-lisp:nil
                                ((model-id :target-type model-identifier
                                  :required common-lisp:t :member-name
                                  "modelId")
                                 (model-type :target-type model-type-enum
                                  :required common-lisp:t :member-name
                                  "modelType")
                                 (model-version-number :target-type
                                  float-version-string :required common-lisp:t
                                  :member-name "modelVersionNumber")
                                 (status :target-type model-version-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name "UpdateModelVersionStatusRequest"))

(smithy/sdk/shapes:define-output update-model-version-status-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateModelVersionStatusResult"))

(smithy/sdk/shapes:define-input update-rule-metadata-request common-lisp:nil
                                ((rule :target-type rule :required
                                  common-lisp:t :member-name "rule")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "description"))
                                (:shape-name "UpdateRuleMetadataRequest"))

(smithy/sdk/shapes:define-output update-rule-metadata-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRuleMetadataResult"))

(smithy/sdk/shapes:define-input update-rule-version-request common-lisp:nil
                                ((rule :target-type rule :required
                                  common-lisp:t :member-name "rule")
                                 (description :target-type description
                                  :member-name "description")
                                 (expression :target-type rule-expression
                                  :required common-lisp:t :member-name
                                  "expression")
                                 (language :target-type language :required
                                  common-lisp:t :member-name "language")
                                 (outcomes :target-type
                                  non-empty-list-of-strings :required
                                  common-lisp:t :member-name "outcomes")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "UpdateRuleVersionRequest"))

(smithy/sdk/shapes:define-output update-rule-version-result common-lisp:nil
                                 ((rule :target-type rule :member-name "rule"))
                                 (:shape-name "UpdateRuleVersionResult"))

(smithy/sdk/shapes:define-input update-variable-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (default-value :target-type string
                                  :member-name "defaultValue")
                                 (description :target-type string :member-name
                                  "description")
                                 (variable-type :target-type string
                                  :member-name "variableType"))
                                (:shape-name "UpdateVariableRequest"))

(smithy/sdk/shapes:define-output update-variable-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateVariableResult"))

(smithy/sdk/shapes:define-type use-event-variables
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure variable common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (data-type :target-type data-type
                                      :member-name "dataType")
                                     (data-source :target-type data-source
                                      :member-name "dataSource")
                                     (default-value :target-type string
                                      :member-name "defaultValue")
                                     (description :target-type string
                                      :member-name "description")
                                     (variable-type :target-type string
                                      :member-name "variableType")
                                     (last-updated-time :target-type time
                                      :member-name "lastUpdatedTime")
                                     (created-time :target-type time
                                      :member-name "createdTime")
                                     (arn :target-type fraud-detector-arn
                                      :member-name "arn"))
                                    (:shape-name "Variable"))

(smithy/sdk/shapes:define-structure variable-entry common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (data-type :target-type string
                                      :member-name "dataType")
                                     (data-source :target-type string
                                      :member-name "dataSource")
                                     (default-value :target-type string
                                      :member-name "defaultValue")
                                     (description :target-type string
                                      :member-name "description")
                                     (variable-type :target-type string
                                      :member-name "variableType"))
                                    (:shape-name "VariableEntry"))

(smithy/sdk/shapes:define-list variable-entry-list :member variable-entry)

(smithy/sdk/shapes:define-structure variable-impact-explanation common-lisp:nil
                                    ((event-variable-name :target-type string
                                      :member-name "eventVariableName")
                                     (relative-impact :target-type string
                                      :member-name "relativeImpact")
                                     (log-odds-impact :target-type float
                                      :member-name "logOddsImpact"))
                                    (:shape-name "VariableImpactExplanation"))

(smithy/sdk/shapes:define-structure variable-importance-metrics common-lisp:nil
                                    ((log-odds-metrics :target-type
                                      list-of-log-odds-metrics :member-name
                                      "logOddsMetrics"))
                                    (:shape-name "VariableImportanceMetrics"))

(smithy/sdk/shapes:define-list variable-list :member variable)

(smithy/sdk/shapes:define-type variables-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type batch-imports-max-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type batch-predictions-max-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-restricted-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-type-list :member entity-type)

(smithy/sdk/shapes:define-type entity-types-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list event-type-list :member event-type)

(smithy/sdk/shapes:define-type event-types-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list field-validation-message-list :member
                               field-validation-message)

(smithy/sdk/shapes:define-list file-validation-message-list :member
                               file-validation-message)

(smithy/sdk/shapes:define-type filter-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type float-version-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fraud-detector-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list label-list :member label)

(smithy/sdk/shapes:define-map label-mapper :key string :value list-of-strings)

(smithy/sdk/shapes:define-type labels-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-entities :member entity)

(smithy/sdk/shapes:define-list list-of-variable-impact-explanations :member
                               variable-impact-explanation)

(smithy/sdk/shapes:define-list metric-data-points-list :member
                               metric-data-point)

(smithy/sdk/shapes:define-type model-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-input-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list model-list :member model)

(smithy/sdk/shapes:define-list model-version-detail-list :member
                               model-version-detail)

(smithy/sdk/shapes:define-type models-max-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type no-dash-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sage-maker-endpoint-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type utc-timestamp-iso8601
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whole-number-version-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-create-variable :shape-name
                                       "BatchCreateVariable" :input
                                       batch-create-variable-request :output
                                       batch-create-variable-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-variable :shape-name
                                       "BatchGetVariable" :input
                                       batch-get-variable-request :output
                                       batch-get-variable-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-batch-import-job :shape-name
                                       "CancelBatchImportJob" :input
                                       cancel-batch-import-job-request :output
                                       cancel-batch-import-job-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-batch-prediction-job :shape-name
                                       "CancelBatchPredictionJob" :input
                                       cancel-batch-prediction-job-request
                                       :output
                                       cancel-batch-prediction-job-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-batch-import-job :shape-name
                                       "CreateBatchImportJob" :input
                                       create-batch-import-job-request :output
                                       create-batch-import-job-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-batch-prediction-job :shape-name
                                       "CreateBatchPredictionJob" :input
                                       create-batch-prediction-job-request
                                       :output
                                       create-batch-prediction-job-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-detector-version :shape-name
                                       "CreateDetectorVersion" :input
                                       create-detector-version-request :output
                                       create-detector-version-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-list :shape-name "CreateList"
                                       :input create-list-request :output
                                       create-list-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-model :shape-name "CreateModel"
                                       :input create-model-request :output
                                       create-model-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-model-version :shape-name
                                       "CreateModelVersion" :input
                                       create-model-version-request :output
                                       create-model-version-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-request :output
                                       create-rule-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-variable :shape-name
                                       "CreateVariable" :input
                                       create-variable-request :output
                                       create-variable-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-batch-import-job :shape-name
                                       "DeleteBatchImportJob" :input
                                       delete-batch-import-job-request :output
                                       delete-batch-import-job-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-batch-prediction-job :shape-name
                                       "DeleteBatchPredictionJob" :input
                                       delete-batch-prediction-job-request
                                       :output
                                       delete-batch-prediction-job-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-detector :shape-name
                                       "DeleteDetector" :input
                                       delete-detector-request :output
                                       delete-detector-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-detector-version :shape-name
                                       "DeleteDetectorVersion" :input
                                       delete-detector-version-request :output
                                       delete-detector-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-entity-type :shape-name
                                       "DeleteEntityType" :input
                                       delete-entity-type-request :output
                                       delete-entity-type-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-event :shape-name "DeleteEvent"
                                       :input delete-event-request :output
                                       delete-event-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-event-type :shape-name
                                       "DeleteEventType" :input
                                       delete-event-type-request :output
                                       delete-event-type-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-events-by-event-type :shape-name
                                       "DeleteEventsByEventType" :input
                                       delete-events-by-event-type-request
                                       :output
                                       delete-events-by-event-type-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-external-model :shape-name
                                       "DeleteExternalModel" :input
                                       delete-external-model-request :output
                                       delete-external-model-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-label :shape-name "DeleteLabel"
                                       :input delete-label-request :output
                                       delete-label-result :errors
                                       (conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-list :shape-name "DeleteList"
                                       :input delete-list-request :output
                                       delete-list-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-model :shape-name "DeleteModel"
                                       :input delete-model-request :output
                                       delete-model-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-model-version :shape-name
                                       "DeleteModelVersion" :input
                                       delete-model-version-request :output
                                       delete-model-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-outcome :shape-name
                                       "DeleteOutcome" :input
                                       delete-outcome-request :output
                                       delete-outcome-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-request :output
                                       delete-rule-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-variable :shape-name
                                       "DeleteVariable" :input
                                       delete-variable-request :output
                                       delete-variable-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-detector :shape-name
                                       "DescribeDetector" :input
                                       describe-detector-request :output
                                       describe-detector-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-model-versions :shape-name
                                       "DescribeModelVersions" :input
                                       describe-model-versions-request :output
                                       describe-model-versions-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-batch-import-jobs :shape-name
                                       "GetBatchImportJobs" :input
                                       get-batch-import-jobs-request :output
                                       get-batch-import-jobs-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-batch-prediction-jobs :shape-name
                                       "GetBatchPredictionJobs" :input
                                       get-batch-prediction-jobs-request
                                       :output get-batch-prediction-jobs-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-delete-events-by-event-type-status
                                       :shape-name
                                       "GetDeleteEventsByEventTypeStatus"
                                       :input
                                       get-delete-events-by-event-type-status-request
                                       :output
                                       get-delete-events-by-event-type-status-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-detector-version :shape-name
                                       "GetDetectorVersion" :input
                                       get-detector-version-request :output
                                       get-detector-version-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-detectors :shape-name "GetDetectors"
                                       :input get-detectors-request :output
                                       get-detectors-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-entity-types :shape-name
                                       "GetEntityTypes" :input
                                       get-entity-types-request :output
                                       get-entity-types-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-event :shape-name "GetEvent" :input
                                       get-event-request :output
                                       get-event-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-event-prediction :shape-name
                                       "GetEventPrediction" :input
                                       get-event-prediction-request :output
                                       get-event-prediction-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-event-prediction-metadata
                                       :shape-name "GetEventPredictionMetadata"
                                       :input
                                       get-event-prediction-metadata-request
                                       :output
                                       get-event-prediction-metadata-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-event-types :shape-name
                                       "GetEventTypes" :input
                                       get-event-types-request :output
                                       get-event-types-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-external-models :shape-name
                                       "GetExternalModels" :input
                                       get-external-models-request :output
                                       get-external-models-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-kmsencryption-key :shape-name
                                       "GetKMSEncryptionKey" :input
                                       common-lisp:null :output
                                       get-kmsencryption-key-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-labels :shape-name "GetLabels"
                                       :input get-labels-request :output
                                       get-labels-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-list-elements :shape-name
                                       "GetListElements" :input
                                       get-list-elements-request :output
                                       get-list-elements-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-lists-metadata :shape-name
                                       "GetListsMetadata" :input
                                       get-lists-metadata-request :output
                                       get-lists-metadata-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-model-version :shape-name
                                       "GetModelVersion" :input
                                       get-model-version-request :output
                                       get-model-version-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-models :shape-name "GetModels"
                                       :input get-models-request :output
                                       get-models-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-outcomes :shape-name "GetOutcomes"
                                       :input get-outcomes-request :output
                                       get-outcomes-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-rules :shape-name "GetRules" :input
                                       get-rules-request :output
                                       get-rules-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-variables :shape-name "GetVariables"
                                       :input get-variables-request :output
                                       get-variables-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-event-predictions :shape-name
                                       "ListEventPredictions" :input
                                       list-event-predictions-request :output
                                       list-event-predictions-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-detector :shape-name "PutDetector"
                                       :input put-detector-request :output
                                       put-detector-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-entity-type :shape-name
                                       "PutEntityType" :input
                                       put-entity-type-request :output
                                       put-entity-type-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-event-type :shape-name
                                       "PutEventType" :input
                                       put-event-type-request :output
                                       put-event-type-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-external-model :shape-name
                                       "PutExternalModel" :input
                                       put-external-model-request :output
                                       put-external-model-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-kmsencryption-key :shape-name
                                       "PutKMSEncryptionKey" :input
                                       put-kmsencryption-key-request :output
                                       put-kmsencryption-key-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-label :shape-name "PutLabel" :input
                                       put-label-request :output
                                       put-label-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-outcome :shape-name "PutOutcome"
                                       :input put-outcome-request :output
                                       put-outcome-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation send-event :shape-name "SendEvent"
                                       :input send-event-request :output
                                       send-event-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-detector-version :shape-name
                                       "UpdateDetectorVersion" :input
                                       update-detector-version-request :output
                                       update-detector-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-detector-version-metadata
                                       :shape-name
                                       "UpdateDetectorVersionMetadata" :input
                                       update-detector-version-metadata-request
                                       :output
                                       update-detector-version-metadata-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-detector-version-status
                                       :shape-name
                                       "UpdateDetectorVersionStatus" :input
                                       update-detector-version-status-request
                                       :output
                                       update-detector-version-status-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-event-label :shape-name
                                       "UpdateEventLabel" :input
                                       update-event-label-request :output
                                       update-event-label-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-list :shape-name "UpdateList"
                                       :input update-list-request :output
                                       update-list-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-model :shape-name "UpdateModel"
                                       :input update-model-request :output
                                       update-model-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-model-version :shape-name
                                       "UpdateModelVersion" :input
                                       update-model-version-request :output
                                       update-model-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-model-version-status :shape-name
                                       "UpdateModelVersionStatus" :input
                                       update-model-version-status-request
                                       :output
                                       update-model-version-status-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-rule-metadata :shape-name
                                       "UpdateRuleMetadata" :input
                                       update-rule-metadata-request :output
                                       update-rule-metadata-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-rule-version :shape-name
                                       "UpdateRuleVersion" :input
                                       update-rule-version-request :output
                                       update-rule-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-variable :shape-name
                                       "UpdateVariable" :input
                                       update-variable-request :output
                                       update-variable-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
