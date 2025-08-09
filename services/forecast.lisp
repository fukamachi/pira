(uiop/package:define-package #:pira/forecast (:use)
                             (:export #:action #:additional-dataset
                              #:additional-datasets #:amazon-forecast #:arn
                              #:arn-list #:attribute-config #:attribute-configs
                              #:attribute-type #:attribute-value
                              #:auto-mloverride-strategy #:baseline
                              #:baseline-metric #:baseline-metrics #:boolean
                              #:categorical-parameter-range
                              #:categorical-parameter-ranges #:condition
                              #:configuration #:continuous-parameter-range
                              #:continuous-parameter-ranges
                              #:create-auto-predictor #:create-dataset
                              #:create-dataset-group
                              #:create-dataset-import-job
                              #:create-explainability
                              #:create-explainability-export #:create-forecast
                              #:create-forecast-export-job #:create-monitor
                              #:create-predictor
                              #:create-predictor-backtest-export-job
                              #:create-what-if-analysis
                              #:create-what-if-forecast
                              #:create-what-if-forecast-export #:data-config
                              #:data-destination #:data-source
                              #:dataset-group-summary #:dataset-groups
                              #:dataset-import-job-summary
                              #:dataset-import-jobs #:dataset-summary
                              #:dataset-type #:datasets #:day-of-month
                              #:day-of-week #:delete-dataset
                              #:delete-dataset-group
                              #:delete-dataset-import-job
                              #:delete-explainability
                              #:delete-explainability-export #:delete-forecast
                              #:delete-forecast-export-job #:delete-monitor
                              #:delete-predictor
                              #:delete-predictor-backtest-export-job
                              #:delete-resource-tree #:delete-what-if-analysis
                              #:delete-what-if-forecast
                              #:delete-what-if-forecast-export
                              #:describe-auto-predictor #:describe-dataset
                              #:describe-dataset-group
                              #:describe-dataset-import-job
                              #:describe-explainability
                              #:describe-explainability-export
                              #:describe-forecast
                              #:describe-forecast-export-job #:describe-monitor
                              #:describe-predictor
                              #:describe-predictor-backtest-export-job
                              #:describe-what-if-analysis
                              #:describe-what-if-forecast
                              #:describe-what-if-forecast-export #:detail
                              #:domain #:double #:encryption-config
                              #:error-message #:error-metric #:error-metrics
                              #:evaluation-parameters #:evaluation-result
                              #:evaluation-state #:evaluation-type
                              #:explainabilities #:explainability-config
                              #:explainability-export-summary
                              #:explainability-exports #:explainability-info
                              #:explainability-summary #:featurization
                              #:featurization-config #:featurization-method
                              #:featurization-method-name
                              #:featurization-method-parameters
                              #:featurization-pipeline #:featurizations
                              #:field-statistics #:filter
                              #:filter-condition-string #:filters
                              #:forecast-dimensions
                              #:forecast-export-job-summary
                              #:forecast-export-jobs #:forecast-summary
                              #:forecast-type #:forecast-types #:forecasts
                              #:format #:frequency #:geolocation-format
                              #:get-accuracy-metrics #:hour
                              #:hyper-parameter-tuning-job-config #:import-mode
                              #:input-data-config #:integer
                              #:integer-parameter-range
                              #:integer-parameter-ranges #:kmskey-arn
                              #:list-dataset-groups #:list-dataset-import-jobs
                              #:list-datasets #:list-explainabilities
                              #:list-explainability-exports
                              #:list-forecast-export-jobs #:list-forecasts
                              #:list-monitor-evaluations #:list-monitors
                              #:list-predictor-backtest-export-jobs
                              #:list-predictors #:list-tags-for-resource
                              #:list-what-if-analyses
                              #:list-what-if-forecast-exports
                              #:list-what-if-forecasts #:local-date-time #:long
                              #:long-arn #:long-arn-list #:max-results
                              #:message #:metric-name #:metric-result
                              #:metric-results #:metrics #:monitor-config
                              #:monitor-data-source #:monitor-info
                              #:monitor-summary #:monitors #:month #:name
                              #:next-token #:operation #:optimization-metric
                              #:parameter-key #:parameter-ranges
                              #:parameter-value
                              #:predictor-backtest-export-job-summary
                              #:predictor-backtest-export-jobs
                              #:predictor-baseline
                              #:predictor-evaluation-results #:predictor-event
                              #:predictor-execution
                              #:predictor-execution-details
                              #:predictor-executions
                              #:predictor-monitor-evaluation
                              #:predictor-monitor-evaluations
                              #:predictor-summary #:predictors
                              #:reference-predictor-summary #:resume-resource
                              #:s3config #:s3path #:scaling-type #:schema
                              #:schema-attribute #:schema-attributes #:state
                              #:statistics #:status #:stop-resource #:string
                              #:supplementary-feature #:supplementary-features
                              #:tag #:tag-key #:tag-keys #:tag-resource
                              #:tag-value #:tags #:test-window-details
                              #:test-window-summary #:test-windows
                              #:time-alignment-boundary
                              #:time-point-granularity #:time-series-condition
                              #:time-series-conditions
                              #:time-series-granularity
                              #:time-series-identifiers
                              #:time-series-replacements-data-source
                              #:time-series-selector
                              #:time-series-transformation
                              #:time-series-transformations #:time-zone
                              #:timestamp #:timestamp-format
                              #:training-parameters #:transformations
                              #:untag-resource #:update-dataset-group
                              #:use-geolocation-for-time-zone #:value #:values
                              #:weighted-quantile-loss
                              #:weighted-quantile-losses #:what-if-analyses
                              #:what-if-analysis-summary
                              #:what-if-forecast-arn-list-for-export
                              #:what-if-forecast-export-summary
                              #:what-if-forecast-exports
                              #:what-if-forecast-summary #:what-if-forecasts
                              #:window-summary))
(common-lisp:in-package #:pira/forecast)

(smithy/sdk/service:define-service amazon-forecast :shape-name "AmazonForecast"
                                   :version "2018-06-26" :title
                                   "Amazon Forecast Service" :traits
                                   '(("aws.api#service" ("sdkId" . "forecast")
                                      ("arnNamespace" . "forecast")
                                      ("cloudFormationName" . "Forecast")
                                      ("cloudTrailEventSource"
                                       . "forecast.amazonaws.com")
                                      ("endpointPrefix" . "forecast"))
                                     ("aws.auth#sigv4" ("name" . "forecast"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((attribute-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AttributeName")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "Operation")
                                     (value :target-type double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-structure additional-dataset common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (configuration :target-type configuration
                                      :member-name "Configuration"))
                                    (:shape-name "AdditionalDataset"))

(smithy/sdk/shapes:define-list additional-datasets :member additional-dataset)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-structure attribute-config common-lisp:nil
                                    ((attribute-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AttributeName")
                                     (transformations :target-type
                                      transformations :required common-lisp:t
                                      :member-name "Transformations"))
                                    (:shape-name "AttributeConfig"))

(smithy/sdk/shapes:define-list attribute-configs :member attribute-config)

(smithy/sdk/shapes:define-enum attribute-type
    common-lisp:nil
  (:string "string")
  (:integer "integer")
  (:float "float")
  (:timestamp "timestamp")
  (:geolocation "geolocation"))

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum auto-mloverride-strategy
    common-lisp:nil
  (:latency-optimized "LatencyOptimized")
  (:accuracy-optimized "AccuracyOptimized"))

(smithy/sdk/shapes:define-structure baseline common-lisp:nil
                                    ((predictor-baseline :target-type
                                      predictor-baseline :member-name
                                      "PredictorBaseline"))
                                    (:shape-name "Baseline"))

(smithy/sdk/shapes:define-structure baseline-metric common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (value :target-type double :member-name
                                      "Value"))
                                    (:shape-name "BaselineMetric"))

(smithy/sdk/shapes:define-list baseline-metrics :member baseline-metric)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure categorical-parameter-range common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "CategoricalParameterRange"))

(smithy/sdk/shapes:define-list categorical-parameter-ranges :member
                               categorical-parameter-range)

(smithy/sdk/shapes:define-enum condition
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN"))

(smithy/sdk/shapes:define-map configuration :key name :value values)

(smithy/sdk/shapes:define-structure continuous-parameter-range common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (max-value :target-type double :required
                                      common-lisp:t :member-name "MaxValue")
                                     (min-value :target-type double :required
                                      common-lisp:t :member-name "MinValue")
                                     (scaling-type :target-type scaling-type
                                      :member-name "ScalingType"))
                                    (:shape-name "ContinuousParameterRange"))

(smithy/sdk/shapes:define-list continuous-parameter-ranges :member
                               continuous-parameter-range)

(smithy/sdk/shapes:define-input create-auto-predictor-request common-lisp:nil
                                ((predictor-name :target-type name :required
                                  common-lisp:t :member-name "PredictorName")
                                 (forecast-horizon :target-type integer
                                  :member-name "ForecastHorizon")
                                 (forecast-types :target-type forecast-types
                                  :member-name "ForecastTypes")
                                 (forecast-dimensions :target-type
                                  forecast-dimensions :member-name
                                  "ForecastDimensions")
                                 (forecast-frequency :target-type frequency
                                  :member-name "ForecastFrequency")
                                 (data-config :target-type data-config
                                  :member-name "DataConfig")
                                 (encryption-config :target-type
                                  encryption-config :member-name
                                  "EncryptionConfig")
                                 (reference-predictor-arn :target-type arn
                                  :member-name "ReferencePredictorArn")
                                 (optimization-metric :target-type
                                  optimization-metric :member-name
                                  "OptimizationMetric")
                                 (explain-predictor :target-type boolean
                                  :member-name "ExplainPredictor")
                                 (tags :target-type tags :member-name "Tags")
                                 (monitor-config :target-type monitor-config
                                  :member-name "MonitorConfig")
                                 (time-alignment-boundary :target-type
                                  time-alignment-boundary :member-name
                                  "TimeAlignmentBoundary"))
                                (:shape-name "CreateAutoPredictorRequest"))

(smithy/sdk/shapes:define-output create-auto-predictor-response common-lisp:nil
                                 ((predictor-arn :target-type arn :member-name
                                   "PredictorArn"))
                                 (:shape-name "CreateAutoPredictorResponse"))

(smithy/sdk/shapes:define-input create-dataset-group-request common-lisp:nil
                                ((dataset-group-name :target-type name
                                  :required common-lisp:t :member-name
                                  "DatasetGroupName")
                                 (domain :target-type domain :required
                                  common-lisp:t :member-name "Domain")
                                 (dataset-arns :target-type arn-list
                                  :member-name "DatasetArns")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateDatasetGroupRequest"))

(smithy/sdk/shapes:define-output create-dataset-group-response common-lisp:nil
                                 ((dataset-group-arn :target-type arn
                                   :member-name "DatasetGroupArn"))
                                 (:shape-name "CreateDatasetGroupResponse"))

(smithy/sdk/shapes:define-input create-dataset-import-job-request
                                common-lisp:nil
                                ((dataset-import-job-name :target-type name
                                  :required common-lisp:t :member-name
                                  "DatasetImportJobName")
                                 (dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "DatasetArn")
                                 (data-source :target-type data-source
                                  :required common-lisp:t :member-name
                                  "DataSource")
                                 (timestamp-format :target-type
                                  timestamp-format :member-name
                                  "TimestampFormat")
                                 (time-zone :target-type time-zone :member-name
                                  "TimeZone")
                                 (use-geolocation-for-time-zone :target-type
                                  use-geolocation-for-time-zone :member-name
                                  "UseGeolocationForTimeZone")
                                 (geolocation-format :target-type
                                  geolocation-format :member-name
                                  "GeolocationFormat")
                                 (tags :target-type tags :member-name "Tags")
                                 (format :target-type format :member-name
                                  "Format")
                                 (import-mode :target-type import-mode
                                  :member-name "ImportMode"))
                                (:shape-name "CreateDatasetImportJobRequest"))

(smithy/sdk/shapes:define-output create-dataset-import-job-response
                                 common-lisp:nil
                                 ((dataset-import-job-arn :target-type arn
                                   :member-name "DatasetImportJobArn"))
                                 (:shape-name "CreateDatasetImportJobResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((dataset-name :target-type name :required
                                  common-lisp:t :member-name "DatasetName")
                                 (domain :target-type domain :required
                                  common-lisp:t :member-name "Domain")
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType")
                                 (data-frequency :target-type frequency
                                  :member-name "DataFrequency")
                                 (schema :target-type schema :required
                                  common-lisp:t :member-name "Schema")
                                 (encryption-config :target-type
                                  encryption-config :member-name
                                  "EncryptionConfig")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type arn :member-name
                                   "DatasetArn"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-explainability-export-request
                                common-lisp:nil
                                ((explainability-export-name :target-type name
                                  :required common-lisp:t :member-name
                                  "ExplainabilityExportName")
                                 (explainability-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "ExplainabilityArn")
                                 (destination :target-type data-destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (tags :target-type tags :member-name "Tags")
                                 (format :target-type format :member-name
                                  "Format"))
                                (:shape-name
                                 "CreateExplainabilityExportRequest"))

(smithy/sdk/shapes:define-output create-explainability-export-response
                                 common-lisp:nil
                                 ((explainability-export-arn :target-type arn
                                   :member-name "ExplainabilityExportArn"))
                                 (:shape-name
                                  "CreateExplainabilityExportResponse"))

(smithy/sdk/shapes:define-input create-explainability-request common-lisp:nil
                                ((explainability-name :target-type name
                                  :required common-lisp:t :member-name
                                  "ExplainabilityName")
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (explainability-config :target-type
                                  explainability-config :required common-lisp:t
                                  :member-name "ExplainabilityConfig")
                                 (data-source :target-type data-source
                                  :member-name "DataSource")
                                 (schema :target-type schema :member-name
                                  "Schema")
                                 (enable-visualization :target-type boolean
                                  :member-name "EnableVisualization")
                                 (start-date-time :target-type local-date-time
                                  :member-name "StartDateTime")
                                 (end-date-time :target-type local-date-time
                                  :member-name "EndDateTime")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateExplainabilityRequest"))

(smithy/sdk/shapes:define-output create-explainability-response common-lisp:nil
                                 ((explainability-arn :target-type arn
                                   :member-name "ExplainabilityArn"))
                                 (:shape-name "CreateExplainabilityResponse"))

(smithy/sdk/shapes:define-input create-forecast-export-job-request
                                common-lisp:nil
                                ((forecast-export-job-name :target-type name
                                  :required common-lisp:t :member-name
                                  "ForecastExportJobName")
                                 (forecast-arn :target-type arn :required
                                  common-lisp:t :member-name "ForecastArn")
                                 (destination :target-type data-destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (tags :target-type tags :member-name "Tags")
                                 (format :target-type format :member-name
                                  "Format"))
                                (:shape-name "CreateForecastExportJobRequest"))

(smithy/sdk/shapes:define-output create-forecast-export-job-response
                                 common-lisp:nil
                                 ((forecast-export-job-arn :target-type arn
                                   :member-name "ForecastExportJobArn"))
                                 (:shape-name
                                  "CreateForecastExportJobResponse"))

(smithy/sdk/shapes:define-input create-forecast-request common-lisp:nil
                                ((forecast-name :target-type name :required
                                  common-lisp:t :member-name "ForecastName")
                                 (predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn")
                                 (forecast-types :target-type forecast-types
                                  :member-name "ForecastTypes")
                                 (tags :target-type tags :member-name "Tags")
                                 (time-series-selector :target-type
                                  time-series-selector :member-name
                                  "TimeSeriesSelector"))
                                (:shape-name "CreateForecastRequest"))

(smithy/sdk/shapes:define-output create-forecast-response common-lisp:nil
                                 ((forecast-arn :target-type arn :member-name
                                   "ForecastArn"))
                                 (:shape-name "CreateForecastResponse"))

(smithy/sdk/shapes:define-input create-monitor-request common-lisp:nil
                                ((monitor-name :target-type name :required
                                  common-lisp:t :member-name "MonitorName")
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateMonitorRequest"))

(smithy/sdk/shapes:define-output create-monitor-response common-lisp:nil
                                 ((monitor-arn :target-type arn :member-name
                                   "MonitorArn"))
                                 (:shape-name "CreateMonitorResponse"))

(smithy/sdk/shapes:define-input create-predictor-backtest-export-job-request
                                common-lisp:nil
                                ((predictor-backtest-export-job-name
                                  :target-type name :required common-lisp:t
                                  :member-name
                                  "PredictorBacktestExportJobName")
                                 (predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn")
                                 (destination :target-type data-destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (tags :target-type tags :member-name "Tags")
                                 (format :target-type format :member-name
                                  "Format"))
                                (:shape-name
                                 "CreatePredictorBacktestExportJobRequest"))

(smithy/sdk/shapes:define-output create-predictor-backtest-export-job-response
                                 common-lisp:nil
                                 ((predictor-backtest-export-job-arn
                                   :target-type arn :member-name
                                   "PredictorBacktestExportJobArn"))
                                 (:shape-name
                                  "CreatePredictorBacktestExportJobResponse"))

(smithy/sdk/shapes:define-input create-predictor-request common-lisp:nil
                                ((predictor-name :target-type name :required
                                  common-lisp:t :member-name "PredictorName")
                                 (algorithm-arn :target-type arn :member-name
                                  "AlgorithmArn")
                                 (forecast-horizon :target-type integer
                                  :required common-lisp:t :member-name
                                  "ForecastHorizon")
                                 (forecast-types :target-type forecast-types
                                  :member-name "ForecastTypes")
                                 (perform-auto-ml :target-type boolean
                                  :member-name "PerformAutoML")
                                 (auto-mloverride-strategy :target-type
                                  auto-mloverride-strategy :member-name
                                  "AutoMLOverrideStrategy")
                                 (perform-hpo :target-type boolean :member-name
                                  "PerformHPO")
                                 (training-parameters :target-type
                                  training-parameters :member-name
                                  "TrainingParameters")
                                 (evaluation-parameters :target-type
                                  evaluation-parameters :member-name
                                  "EvaluationParameters")
                                 (hpoconfig :target-type
                                  hyper-parameter-tuning-job-config
                                  :member-name "HPOConfig")
                                 (input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (featurization-config :target-type
                                  featurization-config :required common-lisp:t
                                  :member-name "FeaturizationConfig")
                                 (encryption-config :target-type
                                  encryption-config :member-name
                                  "EncryptionConfig")
                                 (tags :target-type tags :member-name "Tags")
                                 (optimization-metric :target-type
                                  optimization-metric :member-name
                                  "OptimizationMetric"))
                                (:shape-name "CreatePredictorRequest"))

(smithy/sdk/shapes:define-output create-predictor-response common-lisp:nil
                                 ((predictor-arn :target-type arn :member-name
                                   "PredictorArn"))
                                 (:shape-name "CreatePredictorResponse"))

(smithy/sdk/shapes:define-input create-what-if-analysis-request common-lisp:nil
                                ((what-if-analysis-name :target-type name
                                  :required common-lisp:t :member-name
                                  "WhatIfAnalysisName")
                                 (forecast-arn :target-type arn :required
                                  common-lisp:t :member-name "ForecastArn")
                                 (time-series-selector :target-type
                                  time-series-selector :member-name
                                  "TimeSeriesSelector")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateWhatIfAnalysisRequest"))

(smithy/sdk/shapes:define-output create-what-if-analysis-response
                                 common-lisp:nil
                                 ((what-if-analysis-arn :target-type arn
                                   :member-name "WhatIfAnalysisArn"))
                                 (:shape-name "CreateWhatIfAnalysisResponse"))

(smithy/sdk/shapes:define-input create-what-if-forecast-export-request
                                common-lisp:nil
                                ((what-if-forecast-export-name :target-type
                                  name :required common-lisp:t :member-name
                                  "WhatIfForecastExportName")
                                 (what-if-forecast-arns :target-type
                                  what-if-forecast-arn-list-for-export
                                  :required common-lisp:t :member-name
                                  "WhatIfForecastArns")
                                 (destination :target-type data-destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (tags :target-type tags :member-name "Tags")
                                 (format :target-type format :member-name
                                  "Format"))
                                (:shape-name
                                 "CreateWhatIfForecastExportRequest"))

(smithy/sdk/shapes:define-output create-what-if-forecast-export-response
                                 common-lisp:nil
                                 ((what-if-forecast-export-arn :target-type
                                   long-arn :member-name
                                   "WhatIfForecastExportArn"))
                                 (:shape-name
                                  "CreateWhatIfForecastExportResponse"))

(smithy/sdk/shapes:define-input create-what-if-forecast-request common-lisp:nil
                                ((what-if-forecast-name :target-type name
                                  :required common-lisp:t :member-name
                                  "WhatIfForecastName")
                                 (what-if-analysis-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "WhatIfAnalysisArn")
                                 (time-series-transformations :target-type
                                  time-series-transformations :member-name
                                  "TimeSeriesTransformations")
                                 (time-series-replacements-data-source
                                  :target-type
                                  time-series-replacements-data-source
                                  :member-name
                                  "TimeSeriesReplacementsDataSource")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateWhatIfForecastRequest"))

(smithy/sdk/shapes:define-output create-what-if-forecast-response
                                 common-lisp:nil
                                 ((what-if-forecast-arn :target-type long-arn
                                   :member-name "WhatIfForecastArn"))
                                 (:shape-name "CreateWhatIfForecastResponse"))

(smithy/sdk/shapes:define-structure data-config common-lisp:nil
                                    ((dataset-group-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "DatasetGroupArn")
                                     (attribute-configs :target-type
                                      attribute-configs :member-name
                                      "AttributeConfigs")
                                     (additional-datasets :target-type
                                      additional-datasets :member-name
                                      "AdditionalDatasets"))
                                    (:shape-name "DataConfig"))

(smithy/sdk/shapes:define-structure data-destination common-lisp:nil
                                    ((s3config :target-type s3config :required
                                      common-lisp:t :member-name "S3Config"))
                                    (:shape-name "DataDestination"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((s3config :target-type s3config :required
                                      common-lisp:t :member-name "S3Config"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure dataset-group-summary common-lisp:nil
                                    ((dataset-group-arn :target-type arn
                                      :member-name "DatasetGroupArn")
                                     (dataset-group-name :target-type name
                                      :member-name "DatasetGroupName")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "DatasetGroupSummary"))

(smithy/sdk/shapes:define-list dataset-groups :member dataset-group-summary)

(smithy/sdk/shapes:define-structure dataset-import-job-summary common-lisp:nil
                                    ((dataset-import-job-arn :target-type arn
                                      :member-name "DatasetImportJobArn")
                                     (dataset-import-job-name :target-type name
                                      :member-name "DatasetImportJobName")
                                     (data-source :target-type data-source
                                      :member-name "DataSource")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime")
                                     (import-mode :target-type import-mode
                                      :member-name "ImportMode"))
                                    (:shape-name "DatasetImportJobSummary"))

(smithy/sdk/shapes:define-list dataset-import-jobs :member
                               dataset-import-job-summary)

(smithy/sdk/shapes:define-structure dataset-summary common-lisp:nil
                                    ((dataset-arn :target-type arn :member-name
                                      "DatasetArn")
                                     (dataset-name :target-type name
                                      :member-name "DatasetName")
                                     (dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (domain :target-type domain :member-name
                                      "Domain")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "DatasetSummary"))

(smithy/sdk/shapes:define-enum dataset-type
    common-lisp:nil
  (:target-time-series "TARGET_TIME_SERIES")
  (:related-time-series "RELATED_TIME_SERIES")
  (:item-metadata "ITEM_METADATA"))

(smithy/sdk/shapes:define-list datasets :member dataset-summary)

(smithy/sdk/shapes:define-type day-of-month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-input delete-dataset-group-request common-lisp:nil
                                ((dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "DatasetGroupArn"))
                                (:shape-name "DeleteDatasetGroupRequest"))

(smithy/sdk/shapes:define-input delete-dataset-import-job-request
                                common-lisp:nil
                                ((dataset-import-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "DatasetImportJobArn"))
                                (:shape-name "DeleteDatasetImportJobRequest"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "DatasetArn"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-input delete-explainability-export-request
                                common-lisp:nil
                                ((explainability-export-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ExplainabilityExportArn"))
                                (:shape-name
                                 "DeleteExplainabilityExportRequest"))

(smithy/sdk/shapes:define-input delete-explainability-request common-lisp:nil
                                ((explainability-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "ExplainabilityArn"))
                                (:shape-name "DeleteExplainabilityRequest"))

(smithy/sdk/shapes:define-input delete-forecast-export-job-request
                                common-lisp:nil
                                ((forecast-export-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ForecastExportJobArn"))
                                (:shape-name "DeleteForecastExportJobRequest"))

(smithy/sdk/shapes:define-input delete-forecast-request common-lisp:nil
                                ((forecast-arn :target-type arn :required
                                  common-lisp:t :member-name "ForecastArn"))
                                (:shape-name "DeleteForecastRequest"))

(smithy/sdk/shapes:define-input delete-monitor-request common-lisp:nil
                                ((monitor-arn :target-type arn :required
                                  common-lisp:t :member-name "MonitorArn"))
                                (:shape-name "DeleteMonitorRequest"))

(smithy/sdk/shapes:define-input delete-predictor-backtest-export-job-request
                                common-lisp:nil
                                ((predictor-backtest-export-job-arn
                                  :target-type arn :required common-lisp:t
                                  :member-name
                                  "PredictorBacktestExportJobArn"))
                                (:shape-name
                                 "DeletePredictorBacktestExportJobRequest"))

(smithy/sdk/shapes:define-input delete-predictor-request common-lisp:nil
                                ((predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn"))
                                (:shape-name "DeletePredictorRequest"))

(smithy/sdk/shapes:define-input delete-resource-tree-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "DeleteResourceTreeRequest"))

(smithy/sdk/shapes:define-input delete-what-if-analysis-request common-lisp:nil
                                ((what-if-analysis-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "WhatIfAnalysisArn"))
                                (:shape-name "DeleteWhatIfAnalysisRequest"))

(smithy/sdk/shapes:define-input delete-what-if-forecast-export-request
                                common-lisp:nil
                                ((what-if-forecast-export-arn :target-type
                                  long-arn :required common-lisp:t :member-name
                                  "WhatIfForecastExportArn"))
                                (:shape-name
                                 "DeleteWhatIfForecastExportRequest"))

(smithy/sdk/shapes:define-input delete-what-if-forecast-request common-lisp:nil
                                ((what-if-forecast-arn :target-type long-arn
                                  :required common-lisp:t :member-name
                                  "WhatIfForecastArn"))
                                (:shape-name "DeleteWhatIfForecastRequest"))

(smithy/sdk/shapes:define-input describe-auto-predictor-request common-lisp:nil
                                ((predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn"))
                                (:shape-name "DescribeAutoPredictorRequest"))

(smithy/sdk/shapes:define-output describe-auto-predictor-response
                                 common-lisp:nil
                                 ((predictor-arn :target-type arn :member-name
                                   "PredictorArn")
                                  (predictor-name :target-type name
                                   :member-name "PredictorName")
                                  (forecast-horizon :target-type integer
                                   :member-name "ForecastHorizon")
                                  (forecast-types :target-type forecast-types
                                   :member-name "ForecastTypes")
                                  (forecast-frequency :target-type frequency
                                   :member-name "ForecastFrequency")
                                  (forecast-dimensions :target-type
                                   forecast-dimensions :member-name
                                   "ForecastDimensions")
                                  (dataset-import-job-arns :target-type
                                   arn-list :member-name
                                   "DatasetImportJobArns")
                                  (data-config :target-type data-config
                                   :member-name "DataConfig")
                                  (encryption-config :target-type
                                   encryption-config :member-name
                                   "EncryptionConfig")
                                  (reference-predictor-summary :target-type
                                   reference-predictor-summary :member-name
                                   "ReferencePredictorSummary")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (status :target-type status :member-name
                                   "Status")
                                  (message :target-type message :member-name
                                   "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (optimization-metric :target-type
                                   optimization-metric :member-name
                                   "OptimizationMetric")
                                  (explainability-info :target-type
                                   explainability-info :member-name
                                   "ExplainabilityInfo")
                                  (monitor-info :target-type monitor-info
                                   :member-name "MonitorInfo")
                                  (time-alignment-boundary :target-type
                                   time-alignment-boundary :member-name
                                   "TimeAlignmentBoundary"))
                                 (:shape-name "DescribeAutoPredictorResponse"))

(smithy/sdk/shapes:define-input describe-dataset-group-request common-lisp:nil
                                ((dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "DatasetGroupArn"))
                                (:shape-name "DescribeDatasetGroupRequest"))

(smithy/sdk/shapes:define-output describe-dataset-group-response
                                 common-lisp:nil
                                 ((dataset-group-name :target-type name
                                   :member-name "DatasetGroupName")
                                  (dataset-group-arn :target-type arn
                                   :member-name "DatasetGroupArn")
                                  (dataset-arns :target-type arn-list
                                   :member-name "DatasetArns")
                                  (domain :target-type domain :member-name
                                   "Domain")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime"))
                                 (:shape-name "DescribeDatasetGroupResponse"))

(smithy/sdk/shapes:define-input describe-dataset-import-job-request
                                common-lisp:nil
                                ((dataset-import-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "DatasetImportJobArn"))
                                (:shape-name "DescribeDatasetImportJobRequest"))

(smithy/sdk/shapes:define-output describe-dataset-import-job-response
                                 common-lisp:nil
                                 ((dataset-import-job-name :target-type name
                                   :member-name "DatasetImportJobName")
                                  (dataset-import-job-arn :target-type arn
                                   :member-name "DatasetImportJobArn")
                                  (dataset-arn :target-type arn :member-name
                                   "DatasetArn")
                                  (timestamp-format :target-type
                                   timestamp-format :member-name
                                   "TimestampFormat")
                                  (time-zone :target-type time-zone
                                   :member-name "TimeZone")
                                  (use-geolocation-for-time-zone :target-type
                                   use-geolocation-for-time-zone :member-name
                                   "UseGeolocationForTimeZone")
                                  (geolocation-format :target-type
                                   geolocation-format :member-name
                                   "GeolocationFormat")
                                  (data-source :target-type data-source
                                   :member-name "DataSource")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (field-statistics :target-type
                                   field-statistics :member-name
                                   "FieldStatistics")
                                  (data-size :target-type double :member-name
                                   "DataSize")
                                  (status :target-type status :member-name
                                   "Status")
                                  (message :target-type message :member-name
                                   "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (format :target-type format :member-name
                                   "Format")
                                  (import-mode :target-type import-mode
                                   :member-name "ImportMode"))
                                 (:shape-name
                                  "DescribeDatasetImportJobResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "DatasetArn"))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type arn :member-name
                                   "DatasetArn")
                                  (dataset-name :target-type name :member-name
                                   "DatasetName")
                                  (domain :target-type domain :member-name
                                   "Domain")
                                  (dataset-type :target-type dataset-type
                                   :member-name "DatasetType")
                                  (data-frequency :target-type frequency
                                   :member-name "DataFrequency")
                                  (schema :target-type schema :member-name
                                   "Schema")
                                  (encryption-config :target-type
                                   encryption-config :member-name
                                   "EncryptionConfig")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-explainability-export-request
                                common-lisp:nil
                                ((explainability-export-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ExplainabilityExportArn"))
                                (:shape-name
                                 "DescribeExplainabilityExportRequest"))

(smithy/sdk/shapes:define-output describe-explainability-export-response
                                 common-lisp:nil
                                 ((explainability-export-arn :target-type arn
                                   :member-name "ExplainabilityExportArn")
                                  (explainability-export-name :target-type name
                                   :member-name "ExplainabilityExportName")
                                  (explainability-arn :target-type arn
                                   :member-name "ExplainabilityArn")
                                  (destination :target-type data-destination
                                   :member-name "Destination")
                                  (message :target-type message :member-name
                                   "Message")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (format :target-type format :member-name
                                   "Format"))
                                 (:shape-name
                                  "DescribeExplainabilityExportResponse"))

(smithy/sdk/shapes:define-input describe-explainability-request common-lisp:nil
                                ((explainability-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "ExplainabilityArn"))
                                (:shape-name "DescribeExplainabilityRequest"))

(smithy/sdk/shapes:define-output describe-explainability-response
                                 common-lisp:nil
                                 ((explainability-arn :target-type arn
                                   :member-name "ExplainabilityArn")
                                  (explainability-name :target-type name
                                   :member-name "ExplainabilityName")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (explainability-config :target-type
                                   explainability-config :member-name
                                   "ExplainabilityConfig")
                                  (enable-visualization :target-type boolean
                                   :member-name "EnableVisualization")
                                  (data-source :target-type data-source
                                   :member-name "DataSource")
                                  (schema :target-type schema :member-name
                                   "Schema")
                                  (start-date-time :target-type local-date-time
                                   :member-name "StartDateTime")
                                  (end-date-time :target-type local-date-time
                                   :member-name "EndDateTime")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (message :target-type message :member-name
                                   "Message")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime"))
                                 (:shape-name "DescribeExplainabilityResponse"))

(smithy/sdk/shapes:define-input describe-forecast-export-job-request
                                common-lisp:nil
                                ((forecast-export-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ForecastExportJobArn"))
                                (:shape-name
                                 "DescribeForecastExportJobRequest"))

(smithy/sdk/shapes:define-output describe-forecast-export-job-response
                                 common-lisp:nil
                                 ((forecast-export-job-arn :target-type arn
                                   :member-name "ForecastExportJobArn")
                                  (forecast-export-job-name :target-type name
                                   :member-name "ForecastExportJobName")
                                  (forecast-arn :target-type arn :member-name
                                   "ForecastArn")
                                  (destination :target-type data-destination
                                   :member-name "Destination")
                                  (message :target-type message :member-name
                                   "Message")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (format :target-type format :member-name
                                   "Format"))
                                 (:shape-name
                                  "DescribeForecastExportJobResponse"))

(smithy/sdk/shapes:define-input describe-forecast-request common-lisp:nil
                                ((forecast-arn :target-type arn :required
                                  common-lisp:t :member-name "ForecastArn"))
                                (:shape-name "DescribeForecastRequest"))

(smithy/sdk/shapes:define-output describe-forecast-response common-lisp:nil
                                 ((forecast-arn :target-type arn :member-name
                                   "ForecastArn")
                                  (forecast-name :target-type name :member-name
                                   "ForecastName")
                                  (forecast-types :target-type forecast-types
                                   :member-name "ForecastTypes")
                                  (predictor-arn :target-type arn :member-name
                                   "PredictorArn")
                                  (dataset-group-arn :target-type arn
                                   :member-name "DatasetGroupArn")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (status :target-type string :member-name
                                   "Status")
                                  (message :target-type error-message
                                   :member-name "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (time-series-selector :target-type
                                   time-series-selector :member-name
                                   "TimeSeriesSelector"))
                                 (:shape-name "DescribeForecastResponse"))

(smithy/sdk/shapes:define-input describe-monitor-request common-lisp:nil
                                ((monitor-arn :target-type arn :required
                                  common-lisp:t :member-name "MonitorArn"))
                                (:shape-name "DescribeMonitorRequest"))

(smithy/sdk/shapes:define-output describe-monitor-response common-lisp:nil
                                 ((monitor-name :target-type name :member-name
                                   "MonitorName")
                                  (monitor-arn :target-type arn :member-name
                                   "MonitorArn")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (status :target-type status :member-name
                                   "Status")
                                  (last-evaluation-time :target-type timestamp
                                   :member-name "LastEvaluationTime")
                                  (last-evaluation-state :target-type
                                   evaluation-state :member-name
                                   "LastEvaluationState")
                                  (baseline :target-type baseline :member-name
                                   "Baseline")
                                  (message :target-type message :member-name
                                   "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (estimated-evaluation-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedEvaluationTimeRemainingInMinutes"))
                                 (:shape-name "DescribeMonitorResponse"))

(smithy/sdk/shapes:define-input describe-predictor-backtest-export-job-request
                                common-lisp:nil
                                ((predictor-backtest-export-job-arn
                                  :target-type arn :required common-lisp:t
                                  :member-name
                                  "PredictorBacktestExportJobArn"))
                                (:shape-name
                                 "DescribePredictorBacktestExportJobRequest"))

(smithy/sdk/shapes:define-output
 describe-predictor-backtest-export-job-response common-lisp:nil
 ((predictor-backtest-export-job-arn :target-type arn :member-name
   "PredictorBacktestExportJobArn")
  (predictor-backtest-export-job-name :target-type name :member-name
   "PredictorBacktestExportJobName")
  (predictor-arn :target-type arn :member-name "PredictorArn")
  (destination :target-type data-destination :member-name "Destination")
  (message :target-type message :member-name "Message")
  (status :target-type status :member-name "Status")
  (creation-time :target-type timestamp :member-name "CreationTime")
  (last-modification-time :target-type timestamp :member-name
   "LastModificationTime")
  (format :target-type format :member-name "Format"))
 (:shape-name "DescribePredictorBacktestExportJobResponse"))

(smithy/sdk/shapes:define-input describe-predictor-request common-lisp:nil
                                ((predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn"))
                                (:shape-name "DescribePredictorRequest"))

(smithy/sdk/shapes:define-output describe-predictor-response common-lisp:nil
                                 ((predictor-arn :target-type name :member-name
                                   "PredictorArn")
                                  (predictor-name :target-type name
                                   :member-name "PredictorName")
                                  (algorithm-arn :target-type arn :member-name
                                   "AlgorithmArn")
                                  (auto-mlalgorithm-arns :target-type arn-list
                                   :member-name "AutoMLAlgorithmArns")
                                  (forecast-horizon :target-type integer
                                   :member-name "ForecastHorizon")
                                  (forecast-types :target-type forecast-types
                                   :member-name "ForecastTypes")
                                  (perform-auto-ml :target-type boolean
                                   :member-name "PerformAutoML")
                                  (auto-mloverride-strategy :target-type
                                   auto-mloverride-strategy :member-name
                                   "AutoMLOverrideStrategy")
                                  (perform-hpo :target-type boolean
                                   :member-name "PerformHPO")
                                  (training-parameters :target-type
                                   training-parameters :member-name
                                   "TrainingParameters")
                                  (evaluation-parameters :target-type
                                   evaluation-parameters :member-name
                                   "EvaluationParameters")
                                  (hpoconfig :target-type
                                   hyper-parameter-tuning-job-config
                                   :member-name "HPOConfig")
                                  (input-data-config :target-type
                                   input-data-config :member-name
                                   "InputDataConfig")
                                  (featurization-config :target-type
                                   featurization-config :member-name
                                   "FeaturizationConfig")
                                  (encryption-config :target-type
                                   encryption-config :member-name
                                   "EncryptionConfig")
                                  (predictor-execution-details :target-type
                                   predictor-execution-details :member-name
                                   "PredictorExecutionDetails")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (is-auto-predictor :target-type boolean
                                   :member-name "IsAutoPredictor")
                                  (dataset-import-job-arns :target-type
                                   arn-list :member-name
                                   "DatasetImportJobArns")
                                  (status :target-type status :member-name
                                   "Status")
                                  (message :target-type message :member-name
                                   "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (optimization-metric :target-type
                                   optimization-metric :member-name
                                   "OptimizationMetric"))
                                 (:shape-name "DescribePredictorResponse"))

(smithy/sdk/shapes:define-input describe-what-if-analysis-request
                                common-lisp:nil
                                ((what-if-analysis-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "WhatIfAnalysisArn"))
                                (:shape-name "DescribeWhatIfAnalysisRequest"))

(smithy/sdk/shapes:define-output describe-what-if-analysis-response
                                 common-lisp:nil
                                 ((what-if-analysis-name :target-type name
                                   :member-name "WhatIfAnalysisName")
                                  (what-if-analysis-arn :target-type arn
                                   :member-name "WhatIfAnalysisArn")
                                  (forecast-arn :target-type arn :member-name
                                   "ForecastArn")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (status :target-type string :member-name
                                   "Status")
                                  (message :target-type error-message
                                   :member-name "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (time-series-selector :target-type
                                   time-series-selector :member-name
                                   "TimeSeriesSelector"))
                                 (:shape-name "DescribeWhatIfAnalysisResponse"))

(smithy/sdk/shapes:define-input describe-what-if-forecast-export-request
                                common-lisp:nil
                                ((what-if-forecast-export-arn :target-type
                                  long-arn :required common-lisp:t :member-name
                                  "WhatIfForecastExportArn"))
                                (:shape-name
                                 "DescribeWhatIfForecastExportRequest"))

(smithy/sdk/shapes:define-output describe-what-if-forecast-export-response
                                 common-lisp:nil
                                 ((what-if-forecast-export-arn :target-type
                                   long-arn :member-name
                                   "WhatIfForecastExportArn")
                                  (what-if-forecast-export-name :target-type
                                   name :member-name
                                   "WhatIfForecastExportName")
                                  (what-if-forecast-arns :target-type
                                   long-arn-list :member-name
                                   "WhatIfForecastArns")
                                  (destination :target-type data-destination
                                   :member-name "Destination")
                                  (message :target-type message :member-name
                                   "Message")
                                  (status :target-type status :member-name
                                   "Status")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (format :target-type format :member-name
                                   "Format"))
                                 (:shape-name
                                  "DescribeWhatIfForecastExportResponse"))

(smithy/sdk/shapes:define-input describe-what-if-forecast-request
                                common-lisp:nil
                                ((what-if-forecast-arn :target-type long-arn
                                  :required common-lisp:t :member-name
                                  "WhatIfForecastArn"))
                                (:shape-name "DescribeWhatIfForecastRequest"))

(smithy/sdk/shapes:define-output describe-what-if-forecast-response
                                 common-lisp:nil
                                 ((what-if-forecast-name :target-type name
                                   :member-name "WhatIfForecastName")
                                  (what-if-forecast-arn :target-type long-arn
                                   :member-name "WhatIfForecastArn")
                                  (what-if-analysis-arn :target-type arn
                                   :member-name "WhatIfAnalysisArn")
                                  (estimated-time-remaining-in-minutes
                                   :target-type long :member-name
                                   "EstimatedTimeRemainingInMinutes")
                                  (status :target-type string :member-name
                                   "Status")
                                  (message :target-type error-message
                                   :member-name "Message")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (time-series-transformations :target-type
                                   time-series-transformations :member-name
                                   "TimeSeriesTransformations")
                                  (time-series-replacements-data-source
                                   :target-type
                                   time-series-replacements-data-source
                                   :member-name
                                   "TimeSeriesReplacementsDataSource")
                                  (forecast-types :target-type forecast-types
                                   :member-name "ForecastTypes"))
                                 (:shape-name "DescribeWhatIfForecastResponse"))

(smithy/sdk/shapes:define-type detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain
    common-lisp:nil
  (:retail "RETAIL")
  (:custom "CUSTOM")
  (:inventory-planning "INVENTORY_PLANNING")
  (:ec2-capacity "EC2_CAPACITY")
  (:work-force "WORK_FORCE")
  (:web-traffic "WEB_TRAFFIC")
  (:metrics "METRICS"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (kmskey-arn :target-type kmskey-arn
                                      :required common-lisp:t :member-name
                                      "KMSKeyArn"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-metric common-lisp:nil
                                    ((forecast-type :target-type forecast-type
                                      :member-name "ForecastType")
                                     (wape :target-type double :member-name
                                      "WAPE")
                                     (rmse :target-type double :member-name
                                      "RMSE")
                                     (mase :target-type double :member-name
                                      "MASE")
                                     (mape :target-type double :member-name
                                      "MAPE"))
                                    (:shape-name "ErrorMetric"))

(smithy/sdk/shapes:define-list error-metrics :member error-metric)

(smithy/sdk/shapes:define-structure evaluation-parameters common-lisp:nil
                                    ((number-of-backtest-windows :target-type
                                      integer :member-name
                                      "NumberOfBacktestWindows")
                                     (back-test-window-offset :target-type
                                      integer :member-name
                                      "BackTestWindowOffset"))
                                    (:shape-name "EvaluationParameters"))

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((algorithm-arn :target-type arn
                                      :member-name "AlgorithmArn")
                                     (test-windows :target-type test-windows
                                      :member-name "TestWindows"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-type evaluation-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum evaluation-type
    common-lisp:nil
  (:summary "SUMMARY")
  (:computed "COMPUTED"))

(smithy/sdk/shapes:define-list explainabilities :member explainability-summary)

(smithy/sdk/shapes:define-structure explainability-config common-lisp:nil
                                    ((time-series-granularity :target-type
                                      time-series-granularity :required
                                      common-lisp:t :member-name
                                      "TimeSeriesGranularity")
                                     (time-point-granularity :target-type
                                      time-point-granularity :required
                                      common-lisp:t :member-name
                                      "TimePointGranularity"))
                                    (:shape-name "ExplainabilityConfig"))

(smithy/sdk/shapes:define-structure explainability-export-summary
                                    common-lisp:nil
                                    ((explainability-export-arn :target-type
                                      arn :member-name
                                      "ExplainabilityExportArn")
                                     (explainability-export-name :target-type
                                      name :member-name
                                      "ExplainabilityExportName")
                                     (destination :target-type data-destination
                                      :member-name "Destination")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "ExplainabilityExportSummary"))

(smithy/sdk/shapes:define-list explainability-exports :member
                               explainability-export-summary)

(smithy/sdk/shapes:define-structure explainability-info common-lisp:nil
                                    ((explainability-arn :target-type arn
                                      :member-name "ExplainabilityArn")
                                     (status :target-type status :member-name
                                      "Status"))
                                    (:shape-name "ExplainabilityInfo"))

(smithy/sdk/shapes:define-structure explainability-summary common-lisp:nil
                                    ((explainability-arn :target-type arn
                                      :member-name "ExplainabilityArn")
                                     (explainability-name :target-type name
                                      :member-name "ExplainabilityName")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (explainability-config :target-type
                                      explainability-config :member-name
                                      "ExplainabilityConfig")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type message :member-name
                                      "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "ExplainabilitySummary"))

(smithy/sdk/shapes:define-structure featurization common-lisp:nil
                                    ((attribute-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AttributeName")
                                     (featurization-pipeline :target-type
                                      featurization-pipeline :member-name
                                      "FeaturizationPipeline"))
                                    (:shape-name "Featurization"))

(smithy/sdk/shapes:define-structure featurization-config common-lisp:nil
                                    ((forecast-frequency :target-type frequency
                                      :required common-lisp:t :member-name
                                      "ForecastFrequency")
                                     (forecast-dimensions :target-type
                                      forecast-dimensions :member-name
                                      "ForecastDimensions")
                                     (featurizations :target-type
                                      featurizations :member-name
                                      "Featurizations"))
                                    (:shape-name "FeaturizationConfig"))

(smithy/sdk/shapes:define-structure featurization-method common-lisp:nil
                                    ((featurization-method-name :target-type
                                      featurization-method-name :required
                                      common-lisp:t :member-name
                                      "FeaturizationMethodName")
                                     (featurization-method-parameters
                                      :target-type
                                      featurization-method-parameters
                                      :member-name
                                      "FeaturizationMethodParameters"))
                                    (:shape-name "FeaturizationMethod"))

(smithy/sdk/shapes:define-enum featurization-method-name
    common-lisp:nil
  (:filling "filling"))

(smithy/sdk/shapes:define-map featurization-method-parameters :key
                              parameter-key :value parameter-value)

(smithy/sdk/shapes:define-list featurization-pipeline :member
                               featurization-method)

(smithy/sdk/shapes:define-list featurizations :member featurization)

(smithy/sdk/shapes:define-map field-statistics :key string :value statistics)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type arn :required
                                      common-lisp:t :member-name "Value")
                                     (condition :target-type
                                      filter-condition-string :required
                                      common-lisp:t :member-name "Condition"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-condition-string
    common-lisp:nil
  (:is "IS")
  (:is-not "IS_NOT"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-list forecast-dimensions :member name)

(smithy/sdk/shapes:define-structure forecast-export-job-summary common-lisp:nil
                                    ((forecast-export-job-arn :target-type arn
                                      :member-name "ForecastExportJobArn")
                                     (forecast-export-job-name :target-type
                                      name :member-name
                                      "ForecastExportJobName")
                                     (destination :target-type data-destination
                                      :member-name "Destination")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "ForecastExportJobSummary"))

(smithy/sdk/shapes:define-list forecast-export-jobs :member
                               forecast-export-job-summary)

(smithy/sdk/shapes:define-structure forecast-summary common-lisp:nil
                                    ((forecast-arn :target-type arn
                                      :member-name "ForecastArn")
                                     (forecast-name :target-type name
                                      :member-name "ForecastName")
                                     (predictor-arn :target-type string
                                      :member-name "PredictorArn")
                                     (created-using-auto-predictor :target-type
                                      boolean :member-name
                                      "CreatedUsingAutoPredictor")
                                     (dataset-group-arn :target-type string
                                      :member-name "DatasetGroupArn")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "ForecastSummary"))

(smithy/sdk/shapes:define-type forecast-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list forecast-types :member forecast-type)

(smithy/sdk/shapes:define-list forecasts :member forecast-summary)

(smithy/sdk/shapes:define-type format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type frequency smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geolocation-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-accuracy-metrics-request common-lisp:nil
                                ((predictor-arn :target-type arn :required
                                  common-lisp:t :member-name "PredictorArn"))
                                (:shape-name "GetAccuracyMetricsRequest"))

(smithy/sdk/shapes:define-output get-accuracy-metrics-response common-lisp:nil
                                 ((predictor-evaluation-results :target-type
                                   predictor-evaluation-results :member-name
                                   "PredictorEvaluationResults")
                                  (is-auto-predictor :target-type boolean
                                   :member-name "IsAutoPredictor")
                                  (auto-mloverride-strategy :target-type
                                   auto-mloverride-strategy :member-name
                                   "AutoMLOverrideStrategy")
                                  (optimization-metric :target-type
                                   optimization-metric :member-name
                                   "OptimizationMetric"))
                                 (:shape-name "GetAccuracyMetricsResponse"))

(smithy/sdk/shapes:define-type hour smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure hyper-parameter-tuning-job-config
                                    common-lisp:nil
                                    ((parameter-ranges :target-type
                                      parameter-ranges :member-name
                                      "ParameterRanges"))
                                    (:shape-name
                                     "HyperParameterTuningJobConfig"))

(smithy/sdk/shapes:define-enum import-mode
    common-lisp:nil
  (:full "FULL")
  (:incremental "INCREMENTAL"))

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((dataset-group-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "DatasetGroupArn")
                                     (supplementary-features :target-type
                                      supplementary-features :member-name
                                      "SupplementaryFeatures"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integer-parameter-range common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (max-value :target-type integer :required
                                      common-lisp:t :member-name "MaxValue")
                                     (min-value :target-type integer :required
                                      common-lisp:t :member-name "MinValue")
                                     (scaling-type :target-type scaling-type
                                      :member-name "ScalingType"))
                                    (:shape-name "IntegerParameterRange"))

(smithy/sdk/shapes:define-list integer-parameter-ranges :member
                               integer-parameter-range)

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kmskey-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input list-dataset-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListDatasetGroupsRequest"))

(smithy/sdk/shapes:define-output list-dataset-groups-response common-lisp:nil
                                 ((dataset-groups :target-type dataset-groups
                                   :member-name "DatasetGroups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasetGroupsResponse"))

(smithy/sdk/shapes:define-input list-dataset-import-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListDatasetImportJobsRequest"))

(smithy/sdk/shapes:define-output list-dataset-import-jobs-response
                                 common-lisp:nil
                                 ((dataset-import-jobs :target-type
                                   dataset-import-jobs :member-name
                                   "DatasetImportJobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasetImportJobsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((datasets :target-type datasets :member-name
                                   "Datasets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-explainabilities-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListExplainabilitiesRequest"))

(smithy/sdk/shapes:define-output list-explainabilities-response common-lisp:nil
                                 ((explainabilities :target-type
                                   explainabilities :member-name
                                   "Explainabilities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExplainabilitiesResponse"))

(smithy/sdk/shapes:define-input list-explainability-exports-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListExplainabilityExportsRequest"))

(smithy/sdk/shapes:define-output list-explainability-exports-response
                                 common-lisp:nil
                                 ((explainability-exports :target-type
                                   explainability-exports :member-name
                                   "ExplainabilityExports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListExplainabilityExportsResponse"))

(smithy/sdk/shapes:define-input list-forecast-export-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListForecastExportJobsRequest"))

(smithy/sdk/shapes:define-output list-forecast-export-jobs-response
                                 common-lisp:nil
                                 ((forecast-export-jobs :target-type
                                   forecast-export-jobs :member-name
                                   "ForecastExportJobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListForecastExportJobsResponse"))

(smithy/sdk/shapes:define-input list-forecasts-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListForecastsRequest"))

(smithy/sdk/shapes:define-output list-forecasts-response common-lisp:nil
                                 ((forecasts :target-type forecasts
                                   :member-name "Forecasts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListForecastsResponse"))

(smithy/sdk/shapes:define-input list-monitor-evaluations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (monitor-arn :target-type arn :required
                                  common-lisp:t :member-name "MonitorArn")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListMonitorEvaluationsRequest"))

(smithy/sdk/shapes:define-output list-monitor-evaluations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (predictor-monitor-evaluations :target-type
                                   predictor-monitor-evaluations :member-name
                                   "PredictorMonitorEvaluations"))
                                 (:shape-name "ListMonitorEvaluationsResponse"))

(smithy/sdk/shapes:define-input list-monitors-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListMonitorsRequest"))

(smithy/sdk/shapes:define-output list-monitors-response common-lisp:nil
                                 ((monitors :target-type monitors :member-name
                                   "Monitors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMonitorsResponse"))

(smithy/sdk/shapes:define-input list-predictor-backtest-export-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListPredictorBacktestExportJobsRequest"))

(smithy/sdk/shapes:define-output list-predictor-backtest-export-jobs-response
                                 common-lisp:nil
                                 ((predictor-backtest-export-jobs :target-type
                                   predictor-backtest-export-jobs :member-name
                                   "PredictorBacktestExportJobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPredictorBacktestExportJobsResponse"))

(smithy/sdk/shapes:define-input list-predictors-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListPredictorsRequest"))

(smithy/sdk/shapes:define-output list-predictors-response common-lisp:nil
                                 ((predictors :target-type predictors
                                   :member-name "Predictors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPredictorsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-what-if-analyses-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListWhatIfAnalysesRequest"))

(smithy/sdk/shapes:define-output list-what-if-analyses-response common-lisp:nil
                                 ((what-if-analyses :target-type
                                   what-if-analyses :member-name
                                   "WhatIfAnalyses")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWhatIfAnalysesResponse"))

(smithy/sdk/shapes:define-input list-what-if-forecast-exports-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListWhatIfForecastExportsRequest"))

(smithy/sdk/shapes:define-output list-what-if-forecast-exports-response
                                 common-lisp:nil
                                 ((what-if-forecast-exports :target-type
                                   what-if-forecast-exports :member-name
                                   "WhatIfForecastExports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListWhatIfForecastExportsResponse"))

(smithy/sdk/shapes:define-input list-what-if-forecasts-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListWhatIfForecastsRequest"))

(smithy/sdk/shapes:define-output list-what-if-forecasts-response
                                 common-lisp:nil
                                 ((what-if-forecasts :target-type
                                   what-if-forecasts :member-name
                                   "WhatIfForecasts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWhatIfForecastsResponse"))

(smithy/sdk/shapes:define-type local-date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list long-arn-list :member long-arn)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-result common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (metric-value :target-type double
                                      :member-name "MetricValue"))
                                    (:shape-name "MetricResult"))

(smithy/sdk/shapes:define-list metric-results :member metric-result)

(smithy/sdk/shapes:define-structure metrics common-lisp:nil
                                    ((rmse :target-type double :member-name
                                      "RMSE")
                                     (weighted-quantile-losses :target-type
                                      weighted-quantile-losses :member-name
                                      "WeightedQuantileLosses")
                                     (error-metrics :target-type error-metrics
                                      :member-name "ErrorMetrics")
                                     (average-weighted-quantile-loss
                                      :target-type double :member-name
                                      "AverageWeightedQuantileLoss"))
                                    (:shape-name "Metrics"))

(smithy/sdk/shapes:define-structure monitor-config common-lisp:nil
                                    ((monitor-name :target-type name :required
                                      common-lisp:t :member-name
                                      "MonitorName"))
                                    (:shape-name "MonitorConfig"))

(smithy/sdk/shapes:define-structure monitor-data-source common-lisp:nil
                                    ((dataset-import-job-arn :target-type arn
                                      :member-name "DatasetImportJobArn")
                                     (forecast-arn :target-type arn
                                      :member-name "ForecastArn")
                                     (predictor-arn :target-type arn
                                      :member-name "PredictorArn"))
                                    (:shape-name "MonitorDataSource"))

(smithy/sdk/shapes:define-structure monitor-info common-lisp:nil
                                    ((monitor-arn :target-type arn :member-name
                                      "MonitorArn")
                                     (status :target-type status :member-name
                                      "Status"))
                                    (:shape-name "MonitorInfo"))

(smithy/sdk/shapes:define-structure monitor-summary common-lisp:nil
                                    ((monitor-arn :target-type arn :member-name
                                      "MonitorArn")
                                     (monitor-name :target-type name
                                      :member-name "MonitorName")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (status :target-type status :member-name
                                      "Status")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "MonitorSummary"))

(smithy/sdk/shapes:define-list monitors :member monitor-summary)

(smithy/sdk/shapes:define-enum month
    common-lisp:nil
  (:january "JANUARY")
  (:february "FEBRUARY")
  (:march "MARCH")
  (:april "APRIL")
  (:may "MAY")
  (:june "JUNE")
  (:july "JULY")
  (:august "AUGUST")
  (:september "SEPTEMBER")
  (:october "OCTOBER")
  (:november "NOVEMBER")
  (:december "DECEMBER"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operation
    common-lisp:nil
  (:add "ADD")
  (:subtract "SUBTRACT")
  (:multiply "MULTIPLY")
  (:divide "DIVIDE"))

(smithy/sdk/shapes:define-enum optimization-metric
    common-lisp:nil
  (:wape "WAPE")
  (:rmse "RMSE")
  (:average-weighted-quantile-loss "AverageWeightedQuantileLoss")
  (:mase "MASE")
  (:mape "MAPE"))

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-ranges common-lisp:nil
                                    ((categorical-parameter-ranges :target-type
                                      categorical-parameter-ranges :member-name
                                      "CategoricalParameterRanges")
                                     (continuous-parameter-ranges :target-type
                                      continuous-parameter-ranges :member-name
                                      "ContinuousParameterRanges")
                                     (integer-parameter-ranges :target-type
                                      integer-parameter-ranges :member-name
                                      "IntegerParameterRanges"))
                                    (:shape-name "ParameterRanges"))

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure predictor-backtest-export-job-summary
                                    common-lisp:nil
                                    ((predictor-backtest-export-job-arn
                                      :target-type arn :member-name
                                      "PredictorBacktestExportJobArn")
                                     (predictor-backtest-export-job-name
                                      :target-type name :member-name
                                      "PredictorBacktestExportJobName")
                                     (destination :target-type data-destination
                                      :member-name "Destination")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name
                                     "PredictorBacktestExportJobSummary"))

(smithy/sdk/shapes:define-list predictor-backtest-export-jobs :member
                               predictor-backtest-export-job-summary)

(smithy/sdk/shapes:define-structure predictor-baseline common-lisp:nil
                                    ((baseline-metrics :target-type
                                      baseline-metrics :member-name
                                      "BaselineMetrics"))
                                    (:shape-name "PredictorBaseline"))

(smithy/sdk/shapes:define-list predictor-evaluation-results :member
                               evaluation-result)

(smithy/sdk/shapes:define-structure predictor-event common-lisp:nil
                                    ((detail :target-type detail :member-name
                                      "Detail")
                                     (datetime :target-type timestamp
                                      :member-name "Datetime"))
                                    (:shape-name "PredictorEvent"))

(smithy/sdk/shapes:define-structure predictor-execution common-lisp:nil
                                    ((algorithm-arn :target-type arn
                                      :member-name "AlgorithmArn")
                                     (test-windows :target-type
                                      test-window-details :member-name
                                      "TestWindows"))
                                    (:shape-name "PredictorExecution"))

(smithy/sdk/shapes:define-structure predictor-execution-details common-lisp:nil
                                    ((predictor-executions :target-type
                                      predictor-executions :member-name
                                      "PredictorExecutions"))
                                    (:shape-name "PredictorExecutionDetails"))

(smithy/sdk/shapes:define-list predictor-executions :member predictor-execution)

(smithy/sdk/shapes:define-structure predictor-monitor-evaluation
                                    common-lisp:nil
                                    ((resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (monitor-arn :target-type arn :member-name
                                      "MonitorArn")
                                     (evaluation-time :target-type timestamp
                                      :member-name "EvaluationTime")
                                     (evaluation-state :target-type
                                      evaluation-state :member-name
                                      "EvaluationState")
                                     (window-start-datetime :target-type
                                      timestamp :member-name
                                      "WindowStartDatetime")
                                     (window-end-datetime :target-type
                                      timestamp :member-name
                                      "WindowEndDatetime")
                                     (predictor-event :target-type
                                      predictor-event :member-name
                                      "PredictorEvent")
                                     (monitor-data-source :target-type
                                      monitor-data-source :member-name
                                      "MonitorDataSource")
                                     (metric-results :target-type
                                      metric-results :member-name
                                      "MetricResults")
                                     (num-items-evaluated :target-type long
                                      :member-name "NumItemsEvaluated")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "PredictorMonitorEvaluation"))

(smithy/sdk/shapes:define-list predictor-monitor-evaluations :member
                               predictor-monitor-evaluation)

(smithy/sdk/shapes:define-structure predictor-summary common-lisp:nil
                                    ((predictor-arn :target-type arn
                                      :member-name "PredictorArn")
                                     (predictor-name :target-type name
                                      :member-name "PredictorName")
                                     (dataset-group-arn :target-type arn
                                      :member-name "DatasetGroupArn")
                                     (is-auto-predictor :target-type boolean
                                      :member-name "IsAutoPredictor")
                                     (reference-predictor-summary :target-type
                                      reference-predictor-summary :member-name
                                      "ReferencePredictorSummary")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "PredictorSummary"))

(smithy/sdk/shapes:define-list predictors :member predictor-summary)

(smithy/sdk/shapes:define-structure reference-predictor-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (state :target-type state :member-name
                                      "State"))
                                    (:shape-name "ReferencePredictorSummary"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input resume-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ResumeResourceRequest"))

(smithy/sdk/shapes:define-structure s3config common-lisp:nil
                                    ((path :target-type s3path :required
                                      common-lisp:t :member-name "Path")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (kmskey-arn :target-type kmskey-arn
                                      :member-name "KMSKeyArn"))
                                    (:shape-name "S3Config"))

(smithy/sdk/shapes:define-type s3path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scaling-type
    common-lisp:nil
  (:auto "Auto")
  (:linear "Linear")
  (:logarithmic "Logarithmic")
  (:reverse-logarithmic "ReverseLogarithmic"))

(smithy/sdk/shapes:define-structure schema common-lisp:nil
                                    ((attributes :target-type schema-attributes
                                      :member-name "Attributes"))
                                    (:shape-name "Schema"))

(smithy/sdk/shapes:define-structure schema-attribute common-lisp:nil
                                    ((attribute-name :target-type name
                                      :member-name "AttributeName")
                                     (attribute-type :target-type
                                      attribute-type :member-name
                                      "AttributeType"))
                                    (:shape-name "SchemaAttribute"))

(smithy/sdk/shapes:define-list schema-attributes :member schema-attribute)

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:active "Active")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-structure statistics common-lisp:nil
                                    ((count :target-type integer :member-name
                                      "Count")
                                     (count-distinct :target-type integer
                                      :member-name "CountDistinct")
                                     (count-null :target-type integer
                                      :member-name "CountNull")
                                     (count-nan :target-type integer
                                      :member-name "CountNan")
                                     (min :target-type string :member-name
                                      "Min")
                                     (max :target-type string :member-name
                                      "Max")
                                     (avg :target-type double :member-name
                                      "Avg")
                                     (stddev :target-type double :member-name
                                      "Stddev")
                                     (count-long :target-type long :member-name
                                      "CountLong")
                                     (count-distinct-long :target-type long
                                      :member-name "CountDistinctLong")
                                     (count-null-long :target-type long
                                      :member-name "CountNullLong")
                                     (count-nan-long :target-type long
                                      :member-name "CountNanLong"))
                                    (:shape-name "Statistics"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "StopResourceRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure supplementary-feature common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "SupplementaryFeature"))

(smithy/sdk/shapes:define-list supplementary-features :member
                               supplementary-feature)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-list test-window-details :member test-window-summary)

(smithy/sdk/shapes:define-structure test-window-summary common-lisp:nil
                                    ((test-window-start :target-type timestamp
                                      :member-name "TestWindowStart")
                                     (test-window-end :target-type timestamp
                                      :member-name "TestWindowEnd")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "TestWindowSummary"))

(smithy/sdk/shapes:define-list test-windows :member window-summary)

(smithy/sdk/shapes:define-structure time-alignment-boundary common-lisp:nil
                                    ((month :target-type month :member-name
                                      "Month")
                                     (day-of-month :target-type day-of-month
                                      :member-name "DayOfMonth")
                                     (day-of-week :target-type day-of-week
                                      :member-name "DayOfWeek")
                                     (hour :target-type hour :member-name
                                      "Hour"))
                                    (:shape-name "TimeAlignmentBoundary"))

(smithy/sdk/shapes:define-enum time-point-granularity
    common-lisp:nil
  (:all "ALL")
  (:specific "SPECIFIC"))

(smithy/sdk/shapes:define-structure time-series-condition common-lisp:nil
                                    ((attribute-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AttributeName")
                                     (attribute-value :target-type
                                      attribute-value :required common-lisp:t
                                      :member-name "AttributeValue")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "Condition"))
                                    (:shape-name "TimeSeriesCondition"))

(smithy/sdk/shapes:define-list time-series-conditions :member
                               time-series-condition)

(smithy/sdk/shapes:define-enum time-series-granularity
    common-lisp:nil
  (:all "ALL")
  (:specific "SPECIFIC"))

(smithy/sdk/shapes:define-structure time-series-identifiers common-lisp:nil
                                    ((data-source :target-type data-source
                                      :member-name "DataSource")
                                     (schema :target-type schema :member-name
                                      "Schema")
                                     (format :target-type format :member-name
                                      "Format"))
                                    (:shape-name "TimeSeriesIdentifiers"))

(smithy/sdk/shapes:define-structure time-series-replacements-data-source
                                    common-lisp:nil
                                    ((s3config :target-type s3config :required
                                      common-lisp:t :member-name "S3Config")
                                     (schema :target-type schema :required
                                      common-lisp:t :member-name "Schema")
                                     (format :target-type format :member-name
                                      "Format")
                                     (timestamp-format :target-type
                                      timestamp-format :member-name
                                      "TimestampFormat"))
                                    (:shape-name
                                     "TimeSeriesReplacementsDataSource"))

(smithy/sdk/shapes:define-structure time-series-selector common-lisp:nil
                                    ((time-series-identifiers :target-type
                                      time-series-identifiers :member-name
                                      "TimeSeriesIdentifiers"))
                                    (:shape-name "TimeSeriesSelector"))

(smithy/sdk/shapes:define-structure time-series-transformation common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (time-series-conditions :target-type
                                      time-series-conditions :member-name
                                      "TimeSeriesConditions"))
                                    (:shape-name "TimeSeriesTransformation"))

(smithy/sdk/shapes:define-list time-series-transformations :member
                               time-series-transformation)

(smithy/sdk/shapes:define-type time-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map training-parameters :key parameter-key :value
                              parameter-value)

(smithy/sdk/shapes:define-map transformations :key name :value value)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-dataset-group-request common-lisp:nil
                                ((dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "DatasetGroupArn")
                                 (dataset-arns :target-type arn-list :required
                                  common-lisp:t :member-name "DatasetArns"))
                                (:shape-name "UpdateDatasetGroupRequest"))

(smithy/sdk/shapes:define-output update-dataset-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDatasetGroupResponse"))

(smithy/sdk/shapes:define-type use-geolocation-for-time-zone
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/shapes:define-structure weighted-quantile-loss common-lisp:nil
                                    ((quantile :target-type double :member-name
                                      "Quantile")
                                     (loss-value :target-type double
                                      :member-name "LossValue"))
                                    (:shape-name "WeightedQuantileLoss"))

(smithy/sdk/shapes:define-list weighted-quantile-losses :member
                               weighted-quantile-loss)

(smithy/sdk/shapes:define-list what-if-analyses :member
                               what-if-analysis-summary)

(smithy/sdk/shapes:define-structure what-if-analysis-summary common-lisp:nil
                                    ((what-if-analysis-arn :target-type arn
                                      :member-name "WhatIfAnalysisArn")
                                     (what-if-analysis-name :target-type name
                                      :member-name "WhatIfAnalysisName")
                                     (forecast-arn :target-type arn
                                      :member-name "ForecastArn")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "WhatIfAnalysisSummary"))

(smithy/sdk/shapes:define-list what-if-forecast-arn-list-for-export :member
                               long-arn)

(smithy/sdk/shapes:define-structure what-if-forecast-export-summary
                                    common-lisp:nil
                                    ((what-if-forecast-export-arn :target-type
                                      long-arn :member-name
                                      "WhatIfForecastExportArn")
                                     (what-if-forecast-arns :target-type
                                      what-if-forecast-arn-list-for-export
                                      :member-name "WhatIfForecastArns")
                                     (what-if-forecast-export-name :target-type
                                      name :member-name
                                      "WhatIfForecastExportName")
                                     (destination :target-type data-destination
                                      :member-name "Destination")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "WhatIfForecastExportSummary"))

(smithy/sdk/shapes:define-list what-if-forecast-exports :member
                               what-if-forecast-export-summary)

(smithy/sdk/shapes:define-structure what-if-forecast-summary common-lisp:nil
                                    ((what-if-forecast-arn :target-type
                                      long-arn :member-name
                                      "WhatIfForecastArn")
                                     (what-if-forecast-name :target-type name
                                      :member-name "WhatIfForecastName")
                                     (what-if-analysis-arn :target-type arn
                                      :member-name "WhatIfAnalysisArn")
                                     (status :target-type status :member-name
                                      "Status")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime"))
                                    (:shape-name "WhatIfForecastSummary"))

(smithy/sdk/shapes:define-list what-if-forecasts :member
                               what-if-forecast-summary)

(smithy/sdk/shapes:define-structure window-summary common-lisp:nil
                                    ((test-window-start :target-type timestamp
                                      :member-name "TestWindowStart")
                                     (test-window-end :target-type timestamp
                                      :member-name "TestWindowEnd")
                                     (item-count :target-type integer
                                      :member-name "ItemCount")
                                     (evaluation-type :target-type
                                      evaluation-type :member-name
                                      "EvaluationType")
                                     (metrics :target-type metrics :member-name
                                      "Metrics"))
                                    (:shape-name "WindowSummary"))

(smithy/sdk/operation:define-operation create-auto-predictor :shape-name
                                       "CreateAutoPredictor" :input
                                       create-auto-predictor-request :output
                                       create-auto-predictor-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-dataset-group :shape-name
                                       "CreateDatasetGroup" :input
                                       create-dataset-group-request :output
                                       create-dataset-group-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-dataset-import-job :shape-name
                                       "CreateDatasetImportJob" :input
                                       create-dataset-import-job-request
                                       :output
                                       create-dataset-import-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-explainability :shape-name
                                       "CreateExplainability" :input
                                       create-explainability-request :output
                                       create-explainability-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-explainability-export :shape-name
                                       "CreateExplainabilityExport" :input
                                       create-explainability-export-request
                                       :output
                                       create-explainability-export-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-forecast :shape-name
                                       "CreateForecast" :input
                                       create-forecast-request :output
                                       create-forecast-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-forecast-export-job :shape-name
                                       "CreateForecastExportJob" :input
                                       create-forecast-export-job-request
                                       :output
                                       create-forecast-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-monitor :shape-name
                                       "CreateMonitor" :input
                                       create-monitor-request :output
                                       create-monitor-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-predictor :shape-name
                                       "CreatePredictor" :input
                                       create-predictor-request :output
                                       create-predictor-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-predictor-backtest-export-job
                                       :shape-name
                                       "CreatePredictorBacktestExportJob"
                                       :input
                                       create-predictor-backtest-export-job-request
                                       :output
                                       create-predictor-backtest-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-what-if-analysis :shape-name
                                       "CreateWhatIfAnalysis" :input
                                       create-what-if-analysis-request :output
                                       create-what-if-analysis-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-what-if-forecast :shape-name
                                       "CreateWhatIfForecast" :input
                                       create-what-if-forecast-request :output
                                       create-what-if-forecast-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-what-if-forecast-export
                                       :shape-name "CreateWhatIfForecastExport"
                                       :input
                                       create-what-if-forecast-export-request
                                       :output
                                       create-what-if-forecast-export-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dataset-group :shape-name
                                       "DeleteDatasetGroup" :input
                                       delete-dataset-group-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dataset-import-job :shape-name
                                       "DeleteDatasetImportJob" :input
                                       delete-dataset-import-job-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-explainability :shape-name
                                       "DeleteExplainability" :input
                                       delete-explainability-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-explainability-export :shape-name
                                       "DeleteExplainabilityExport" :input
                                       delete-explainability-export-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-forecast :shape-name
                                       "DeleteForecast" :input
                                       delete-forecast-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-forecast-export-job :shape-name
                                       "DeleteForecastExportJob" :input
                                       delete-forecast-export-job-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-monitor :shape-name
                                       "DeleteMonitor" :input
                                       delete-monitor-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-predictor :shape-name
                                       "DeletePredictor" :input
                                       delete-predictor-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-predictor-backtest-export-job
                                       :shape-name
                                       "DeletePredictorBacktestExportJob"
                                       :input
                                       delete-predictor-backtest-export-job-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-resource-tree :shape-name
                                       "DeleteResourceTree" :input
                                       delete-resource-tree-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-what-if-analysis :shape-name
                                       "DeleteWhatIfAnalysis" :input
                                       delete-what-if-analysis-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-what-if-forecast :shape-name
                                       "DeleteWhatIfForecast" :input
                                       delete-what-if-forecast-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-what-if-forecast-export
                                       :shape-name "DeleteWhatIfForecastExport"
                                       :input
                                       delete-what-if-forecast-export-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-auto-predictor :shape-name
                                       "DescribeAutoPredictor" :input
                                       describe-auto-predictor-request :output
                                       describe-auto-predictor-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset-group :shape-name
                                       "DescribeDatasetGroup" :input
                                       describe-dataset-group-request :output
                                       describe-dataset-group-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset-import-job :shape-name
                                       "DescribeDatasetImportJob" :input
                                       describe-dataset-import-job-request
                                       :output
                                       describe-dataset-import-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-explainability :shape-name
                                       "DescribeExplainability" :input
                                       describe-explainability-request :output
                                       describe-explainability-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-explainability-export
                                       :shape-name
                                       "DescribeExplainabilityExport" :input
                                       describe-explainability-export-request
                                       :output
                                       describe-explainability-export-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-forecast :shape-name
                                       "DescribeForecast" :input
                                       describe-forecast-request :output
                                       describe-forecast-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-forecast-export-job :shape-name
                                       "DescribeForecastExportJob" :input
                                       describe-forecast-export-job-request
                                       :output
                                       describe-forecast-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-monitor :shape-name
                                       "DescribeMonitor" :input
                                       describe-monitor-request :output
                                       describe-monitor-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-predictor :shape-name
                                       "DescribePredictor" :input
                                       describe-predictor-request :output
                                       describe-predictor-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-predictor-backtest-export-job
                                       :shape-name
                                       "DescribePredictorBacktestExportJob"
                                       :input
                                       describe-predictor-backtest-export-job-request
                                       :output
                                       describe-predictor-backtest-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-what-if-analysis :shape-name
                                       "DescribeWhatIfAnalysis" :input
                                       describe-what-if-analysis-request
                                       :output
                                       describe-what-if-analysis-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-what-if-forecast :shape-name
                                       "DescribeWhatIfForecast" :input
                                       describe-what-if-forecast-request
                                       :output
                                       describe-what-if-forecast-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-what-if-forecast-export
                                       :shape-name
                                       "DescribeWhatIfForecastExport" :input
                                       describe-what-if-forecast-export-request
                                       :output
                                       describe-what-if-forecast-export-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-accuracy-metrics :shape-name
                                       "GetAccuracyMetrics" :input
                                       get-accuracy-metrics-request :output
                                       get-accuracy-metrics-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-dataset-groups :shape-name
                                       "ListDatasetGroups" :input
                                       list-dataset-groups-request :output
                                       list-dataset-groups-response :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-dataset-import-jobs :shape-name
                                       "ListDatasetImportJobs" :input
                                       list-dataset-import-jobs-request :output
                                       list-dataset-import-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-explainabilities :shape-name
                                       "ListExplainabilities" :input
                                       list-explainabilities-request :output
                                       list-explainabilities-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-explainability-exports :shape-name
                                       "ListExplainabilityExports" :input
                                       list-explainability-exports-request
                                       :output
                                       list-explainability-exports-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-forecast-export-jobs :shape-name
                                       "ListForecastExportJobs" :input
                                       list-forecast-export-jobs-request
                                       :output
                                       list-forecast-export-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-forecasts :shape-name
                                       "ListForecasts" :input
                                       list-forecasts-request :output
                                       list-forecasts-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-monitor-evaluations :shape-name
                                       "ListMonitorEvaluations" :input
                                       list-monitor-evaluations-request :output
                                       list-monitor-evaluations-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-monitors :shape-name "ListMonitors"
                                       :input list-monitors-request :output
                                       list-monitors-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-predictor-backtest-export-jobs
                                       :shape-name
                                       "ListPredictorBacktestExportJobs" :input
                                       list-predictor-backtest-export-jobs-request
                                       :output
                                       list-predictor-backtest-export-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-predictors :shape-name
                                       "ListPredictors" :input
                                       list-predictors-request :output
                                       list-predictors-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-what-if-analyses :shape-name
                                       "ListWhatIfAnalyses" :input
                                       list-what-if-analyses-request :output
                                       list-what-if-analyses-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-what-if-forecast-exports
                                       :shape-name "ListWhatIfForecastExports"
                                       :input
                                       list-what-if-forecast-exports-request
                                       :output
                                       list-what-if-forecast-exports-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-what-if-forecasts :shape-name
                                       "ListWhatIfForecasts" :input
                                       list-what-if-forecasts-request :output
                                       list-what-if-forecasts-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation resume-resource :shape-name
                                       "ResumeResource" :input
                                       resume-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-resource :shape-name "StopResource"
                                       :input stop-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-dataset-group :shape-name
                                       "UpdateDatasetGroup" :input
                                       update-dataset-group-request :output
                                       update-dataset-group-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
