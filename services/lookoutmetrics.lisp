(uiop/package:define-package #:pira/lookoutmetrics (:use)
                             (:export #:access-denied-exception #:action
                              #:activate-anomaly-detector
                              #:aggregation-function #:alert
                              #:alert-description #:alert-filters #:alert-name
                              #:alert-status #:alert-summary
                              #:alert-summary-list #:alert-type
                              #:anomaly-detection-task-status
                              #:anomaly-detection-task-status-message
                              #:anomaly-detector-config
                              #:anomaly-detector-config-summary
                              #:anomaly-detector-data-quality-metric
                              #:anomaly-detector-data-quality-metric-list
                              #:anomaly-detector-description
                              #:anomaly-detector-failure-type
                              #:anomaly-detector-name #:anomaly-detector-status
                              #:anomaly-detector-summary
                              #:anomaly-detector-summary-list #:anomaly-group
                              #:anomaly-group-statistics
                              #:anomaly-group-summary
                              #:anomaly-group-summary-list
                              #:anomaly-group-time-series
                              #:anomaly-group-time-series-feedback
                              #:app-flow-config #:arn #:athena-data-catalog
                              #:athena-database-name #:athena-s3results-path
                              #:athena-source-config #:athena-table-name
                              #:athena-work-group-name #:attribute-value
                              #:auto-detection-metric-source
                              #:auto-detection-s3source-config
                              #:back-test-anomaly-detector
                              #:back-test-configuration
                              #:binary-attribute-value
                              #:binary-list-attribute-value #:boolean
                              #:csvfile-compression #:charset
                              #:cloud-watch-config #:column-name #:confidence
                              #:conflict-exception #:contribution-matrix
                              #:create-alert #:create-anomaly-detector
                              #:create-metric-set #:csv-format-descriptor
                              #:data-item #:data-quality-metric
                              #:data-quality-metric-description
                              #:data-quality-metric-list
                              #:data-quality-metric-type #:database-host
                              #:database-port #:date-time-format
                              #:deactivate-anomaly-detector #:delete-alert
                              #:delete-anomaly-detector #:delimiter
                              #:describe-alert
                              #:describe-anomaly-detection-executions
                              #:describe-anomaly-detector #:describe-metric-set
                              #:detect-metric-set-config
                              #:detected-csv-format-descriptor #:detected-field
                              #:detected-file-format-descriptor
                              #:detected-json-format-descriptor
                              #:detected-metric-set-config
                              #:detected-metric-source
                              #:detected-s3source-config
                              #:dimension-contribution
                              #:dimension-contribution-list #:dimension-filter
                              #:dimension-filter-list #:dimension-list
                              #:dimension-name-value
                              #:dimension-name-value-list #:dimension-value
                              #:dimension-value-contribution
                              #:dimension-value-contribution-list
                              #:dimension-value-list #:double #:error-message
                              #:execution-list #:execution-status #:field-name
                              #:file-format-descriptor #:filter #:filter-list
                              #:filter-operation #:flow-name #:frequency
                              #:get-anomaly-group #:get-data-quality-metrics
                              #:get-feedback #:get-sample-data #:header-list
                              #:header-value #:header-value-list
                              #:historical-data-path
                              #:historical-data-path-list #:integer
                              #:inter-metric-impact-details
                              #:inter-metric-impact-list
                              #:internal-server-exception
                              #:itemized-metric-stats
                              #:itemized-metric-stats-list
                              #:json-file-compression #:json-format-descriptor
                              #:kms-key-arn #:lambda-configuration
                              #:list-alerts #:list-anomaly-detectors
                              #:list-anomaly-group-related-metrics
                              #:list-anomaly-group-summaries
                              #:list-anomaly-group-time-series
                              #:list-metric-sets #:list-tags-for-resource
                              #:lookout-metrics #:max-results #:message
                              #:metric #:metric-change-percentage
                              #:metric-level-impact #:metric-level-impact-list
                              #:metric-list #:metric-name #:metric-name-list
                              #:metric-set-data-quality-metric
                              #:metric-set-data-quality-metric-list
                              #:metric-set-description
                              #:metric-set-dimension-filter
                              #:metric-set-dimension-filter-list
                              #:metric-set-name #:metric-set-summary
                              #:metric-set-summary-list #:metric-source
                              #:metric-value #:metric-value-list #:namespace
                              #:next-token #:number-attribute-value
                              #:number-list-attribute-value #:offset
                              #:poirot-secret-manager-arn #:put-feedback
                              #:quota-code #:quote-symbol
                              #:rdsdatabase-identifier #:rdsdatabase-name
                              #:rdssource-config #:redshift-cluster-identifier
                              #:redshift-database-name #:redshift-source-config
                              #:related-column-name #:relationship-type
                              #:resource-id #:resource-not-found-exception
                              #:resource-type #:s3source-config
                              #:snsconfiguration #:sample-data-s3source-config
                              #:sample-row #:sample-rows #:score
                              #:security-group-id #:security-group-id-list
                              #:sensitivity-threshold #:service-code
                              #:service-quota-exceeded-exception #:sns-format
                              #:string-attribute-value
                              #:string-list-attribute-value #:subnet-id
                              #:subnet-id-list #:table-name #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:templated-path
                              #:templated-path-list #:time-series
                              #:time-series-feedback
                              #:time-series-feedback-list #:time-series-id
                              #:time-series-list #:timestamp #:timestamp-column
                              #:timestamp-list #:timestamp-string #:timezone
                              #:too-many-requests-exception #:uuid
                              #:untag-resource #:update-alert
                              #:update-anomaly-detector #:update-metric-set
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vpc-configuration
                              #:lookoutmetrics-error))
(common-lisp:in-package #:pira/lookoutmetrics)

(common-lisp:define-condition lookoutmetrics-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service lookout-metrics :shape-name "LookoutMetrics"
                                   :version "2017-07-25" :title
                                   "Amazon Lookout for Metrics" :operations
                                   '(activate-anomaly-detector
                                     back-test-anomaly-detector create-alert
                                     create-anomaly-detector create-metric-set
                                     deactivate-anomaly-detector delete-alert
                                     delete-anomaly-detector describe-alert
                                     describe-anomaly-detection-executions
                                     describe-anomaly-detector
                                     describe-metric-set
                                     detect-metric-set-config get-anomaly-group
                                     get-data-quality-metrics get-feedback
                                     get-sample-data list-alerts
                                     list-anomaly-detectors
                                     list-anomaly-group-related-metrics
                                     list-anomaly-group-summaries
                                     list-anomaly-group-time-series
                                     list-metric-sets list-tags-for-resource
                                     put-feedback tag-resource untag-resource
                                     update-alert update-anomaly-detector
                                     update-metric-set)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "LookoutMetrics")
                                      ("arnNamespace" . "lookoutmetrics")
                                      ("cloudFormationName" . "LookoutMetrics")
                                      ("cloudTrailEventSource"
                                       . "lookoutmetrics.amazonaws.com")
                                      ("endpointPrefix" . "lookoutmetrics"))
                                     ("aws.auth#sigv4"
                                      ("name" . "lookoutmetrics"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((snsconfiguration :target-type
                                      snsconfiguration :member-name
                                      "SNSConfiguration")
                                     (lambda-configuration :target-type
                                      lambda-configuration :member-name
                                      "LambdaConfiguration"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-input activate-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name "ActivateAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output activate-anomaly-detector-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ActivateAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-enum aggregation-function
    common-lisp:nil
  (:avg "AVG")
  (:sum "SUM"))

(smithy/sdk/shapes:define-structure alert common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (alert-description :target-type
                                      alert-description :member-name
                                      "AlertDescription")
                                     (alert-arn :target-type arn :member-name
                                      "AlertArn")
                                     (anomaly-detector-arn :target-type arn
                                      :member-name "AnomalyDetectorArn")
                                     (alert-name :target-type alert-name
                                      :member-name "AlertName")
                                     (alert-sensitivity-threshold :target-type
                                      sensitivity-threshold :member-name
                                      "AlertSensitivityThreshold")
                                     (alert-type :target-type alert-type
                                      :member-name "AlertType")
                                     (alert-status :target-type alert-status
                                      :member-name "AlertStatus")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (alert-filters :target-type alert-filters
                                      :member-name "AlertFilters"))
                                    (:shape-name "Alert"))

(smithy/sdk/shapes:define-type alert-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alert-filters common-lisp:nil
                                    ((metric-list :target-type metric-name-list
                                      :member-name "MetricList")
                                     (dimension-filter-list :target-type
                                      dimension-filter-list :member-name
                                      "DimensionFilterList"))
                                    (:shape-name "AlertFilters"))

(smithy/sdk/shapes:define-type alert-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum alert-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure alert-summary common-lisp:nil
                                    ((alert-arn :target-type arn :member-name
                                      "AlertArn")
                                     (anomaly-detector-arn :target-type arn
                                      :member-name "AnomalyDetectorArn")
                                     (alert-name :target-type alert-name
                                      :member-name "AlertName")
                                     (alert-sensitivity-threshold :target-type
                                      sensitivity-threshold :member-name
                                      "AlertSensitivityThreshold")
                                     (alert-type :target-type alert-type
                                      :member-name "AlertType")
                                     (alert-status :target-type alert-status
                                      :member-name "AlertStatus")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "AlertSummary"))

(smithy/sdk/shapes:define-list alert-summary-list :member alert-summary)

(smithy/sdk/shapes:define-enum alert-type
    common-lisp:nil
  (:sns "SNS")
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-enum anomaly-detection-task-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:failed-to-schedule "FAILED_TO_SCHEDULE"))

(smithy/sdk/shapes:define-type anomaly-detection-task-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anomaly-detector-config common-lisp:nil
                                    ((anomaly-detector-frequency :target-type
                                      frequency :member-name
                                      "AnomalyDetectorFrequency"))
                                    (:shape-name "AnomalyDetectorConfig"))

(smithy/sdk/shapes:define-structure anomaly-detector-config-summary
                                    common-lisp:nil
                                    ((anomaly-detector-frequency :target-type
                                      frequency :member-name
                                      "AnomalyDetectorFrequency"))
                                    (:shape-name
                                     "AnomalyDetectorConfigSummary"))

(smithy/sdk/shapes:define-structure anomaly-detector-data-quality-metric
                                    common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :member-name "StartTimestamp")
                                     (metric-set-data-quality-metric-list
                                      :target-type
                                      metric-set-data-quality-metric-list
                                      :member-name
                                      "MetricSetDataQualityMetricList"))
                                    (:shape-name
                                     "AnomalyDetectorDataQualityMetric"))

(smithy/sdk/shapes:define-list anomaly-detector-data-quality-metric-list
                               :member anomaly-detector-data-quality-metric)

(smithy/sdk/shapes:define-type anomaly-detector-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum anomaly-detector-failure-type
    common-lisp:nil
  (:activation-failure "ACTIVATION_FAILURE")
  (:back-test-activation-failure "BACK_TEST_ACTIVATION_FAILURE")
  (:deletion-failure "DELETION_FAILURE")
  (:deactivation-failure "DEACTIVATION_FAILURE"))

(smithy/sdk/shapes:define-type anomaly-detector-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum anomaly-detector-status
    common-lisp:nil
  (:active "ACTIVE")
  (:activating "ACTIVATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:inactive "INACTIVE")
  (:learning "LEARNING")
  (:back-test-activating "BACK_TEST_ACTIVATING")
  (:back-test-active "BACK_TEST_ACTIVE")
  (:back-test-complete "BACK_TEST_COMPLETE")
  (:deactivated "DEACTIVATED")
  (:deactivating "DEACTIVATING"))

(smithy/sdk/shapes:define-structure anomaly-detector-summary common-lisp:nil
                                    ((anomaly-detector-arn :target-type arn
                                      :member-name "AnomalyDetectorArn")
                                     (anomaly-detector-name :target-type
                                      anomaly-detector-name :member-name
                                      "AnomalyDetectorName")
                                     (anomaly-detector-description :target-type
                                      anomaly-detector-description :member-name
                                      "AnomalyDetectorDescription")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime")
                                     (status :target-type
                                      anomaly-detector-status :member-name
                                      "Status")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "AnomalyDetectorSummary"))

(smithy/sdk/shapes:define-list anomaly-detector-summary-list :member
                               anomaly-detector-summary)

(smithy/sdk/shapes:define-structure anomaly-group common-lisp:nil
                                    ((start-time :target-type timestamp-string
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-string
                                      :member-name "EndTime")
                                     (anomaly-group-id :target-type uuid
                                      :member-name "AnomalyGroupId")
                                     (anomaly-group-score :target-type score
                                      :member-name "AnomalyGroupScore")
                                     (primary-metric-name :target-type
                                      metric-name :member-name
                                      "PrimaryMetricName")
                                     (metric-level-impact-list :target-type
                                      metric-level-impact-list :member-name
                                      "MetricLevelImpactList"))
                                    (:shape-name "AnomalyGroup"))

(smithy/sdk/shapes:define-structure anomaly-group-statistics common-lisp:nil
                                    ((evaluation-start-date :target-type
                                      timestamp-string :member-name
                                      "EvaluationStartDate")
                                     (total-count :target-type integer
                                      :member-name "TotalCount")
                                     (itemized-metric-stats-list :target-type
                                      itemized-metric-stats-list :member-name
                                      "ItemizedMetricStatsList"))
                                    (:shape-name "AnomalyGroupStatistics"))

(smithy/sdk/shapes:define-structure anomaly-group-summary common-lisp:nil
                                    ((start-time :target-type timestamp-string
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-string
                                      :member-name "EndTime")
                                     (anomaly-group-id :target-type uuid
                                      :member-name "AnomalyGroupId")
                                     (anomaly-group-score :target-type score
                                      :member-name "AnomalyGroupScore")
                                     (primary-metric-name :target-type
                                      metric-name :member-name
                                      "PrimaryMetricName"))
                                    (:shape-name "AnomalyGroupSummary"))

(smithy/sdk/shapes:define-list anomaly-group-summary-list :member
                               anomaly-group-summary)

(smithy/sdk/shapes:define-structure anomaly-group-time-series common-lisp:nil
                                    ((anomaly-group-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "AnomalyGroupId")
                                     (time-series-id :target-type
                                      time-series-id :member-name
                                      "TimeSeriesId"))
                                    (:shape-name "AnomalyGroupTimeSeries"))

(smithy/sdk/shapes:define-structure anomaly-group-time-series-feedback
                                    common-lisp:nil
                                    ((anomaly-group-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "AnomalyGroupId")
                                     (time-series-id :target-type
                                      time-series-id :required common-lisp:t
                                      :member-name "TimeSeriesId")
                                     (is-anomaly :target-type boolean :required
                                      common-lisp:t :member-name "IsAnomaly"))
                                    (:shape-name
                                     "AnomalyGroupTimeSeriesFeedback"))

(smithy/sdk/shapes:define-structure app-flow-config common-lisp:nil
                                    ((role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (flow-name :target-type flow-name
                                      :member-name "FlowName"))
                                    (:shape-name "AppFlowConfig"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-data-catalog
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-s3results-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure athena-source-config common-lisp:nil
                                    ((role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (database-name :target-type
                                      athena-database-name :member-name
                                      "DatabaseName")
                                     (data-catalog :target-type
                                      athena-data-catalog :member-name
                                      "DataCatalog")
                                     (table-name :target-type athena-table-name
                                      :member-name "TableName")
                                     (work-group-name :target-type
                                      athena-work-group-name :member-name
                                      "WorkGroupName")
                                     (s3results-path :target-type
                                      athena-s3results-path :member-name
                                      "S3ResultsPath")
                                     (back-test-configuration :target-type
                                      back-test-configuration :member-name
                                      "BackTestConfiguration"))
                                    (:shape-name "AthenaSourceConfig"))

(smithy/sdk/shapes:define-type athena-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-work-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-value common-lisp:nil
                                    ((s :target-type string-attribute-value
                                      :member-name "S")
                                     (n :target-type number-attribute-value
                                      :member-name "N")
                                     (b :target-type binary-attribute-value
                                      :member-name "B")
                                     (ss :target-type
                                      string-list-attribute-value :member-name
                                      "SS")
                                     (ns :target-type
                                      number-list-attribute-value :member-name
                                      "NS")
                                     (bs :target-type
                                      binary-list-attribute-value :member-name
                                      "BS"))
                                    (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-structure auto-detection-metric-source
                                    common-lisp:nil
                                    ((s3source-config :target-type
                                      auto-detection-s3source-config
                                      :member-name "S3SourceConfig"))
                                    (:shape-name "AutoDetectionMetricSource"))

(smithy/sdk/shapes:define-structure auto-detection-s3source-config
                                    common-lisp:nil
                                    ((templated-path-list :target-type
                                      templated-path-list :member-name
                                      "TemplatedPathList")
                                     (historical-data-path-list :target-type
                                      historical-data-path-list :member-name
                                      "HistoricalDataPathList"))
                                    (:shape-name "AutoDetectionS3SourceConfig"))

(smithy/sdk/shapes:define-input back-test-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name "BackTestAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output back-test-anomaly-detector-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "BackTestAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-structure back-test-configuration common-lisp:nil
                                    ((run-back-test-mode :target-type boolean
                                      :required common-lisp:t :member-name
                                      "RunBackTestMode"))
                                    (:shape-name "BackTestConfiguration"))

(smithy/sdk/shapes:define-type binary-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list binary-list-attribute-value :member
                               binary-attribute-value)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum csvfile-compression
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP"))

(smithy/sdk/shapes:define-type charset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-config common-lisp:nil
                                    ((role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (back-test-configuration :target-type
                                      back-test-configuration :member-name
                                      "BackTestConfiguration"))
                                    (:shape-name "CloudWatchConfig"))

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum confidence
    common-lisp:nil
  (:high "HIGH")
  (:low "LOW")
  (:none "NONE"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-structure contribution-matrix common-lisp:nil
                                    ((dimension-contribution-list :target-type
                                      dimension-contribution-list :member-name
                                      "DimensionContributionList"))
                                    (:shape-name "ContributionMatrix"))

(smithy/sdk/shapes:define-input create-alert-request common-lisp:nil
                                ((alert-name :target-type alert-name :required
                                  common-lisp:t :member-name "AlertName")
                                 (alert-sensitivity-threshold :target-type
                                  sensitivity-threshold :member-name
                                  "AlertSensitivityThreshold")
                                 (alert-description :target-type
                                  alert-description :member-name
                                  "AlertDescription")
                                 (anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (action :target-type action :required
                                  common-lisp:t :member-name "Action")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (alert-filters :target-type alert-filters
                                  :member-name "AlertFilters"))
                                (:shape-name "CreateAlertRequest"))

(smithy/sdk/shapes:define-output create-alert-response common-lisp:nil
                                 ((alert-arn :target-type arn :member-name
                                   "AlertArn"))
                                 (:shape-name "CreateAlertResponse"))

(smithy/sdk/shapes:define-input create-anomaly-detector-request common-lisp:nil
                                ((anomaly-detector-name :target-type
                                  anomaly-detector-name :required common-lisp:t
                                  :member-name "AnomalyDetectorName")
                                 (anomaly-detector-description :target-type
                                  anomaly-detector-description :member-name
                                  "AnomalyDetectorDescription")
                                 (anomaly-detector-config :target-type
                                  anomaly-detector-config :required
                                  common-lisp:t :member-name
                                  "AnomalyDetectorConfig")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output create-anomaly-detector-response
                                 common-lisp:nil
                                 ((anomaly-detector-arn :target-type arn
                                   :member-name "AnomalyDetectorArn"))
                                 (:shape-name "CreateAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input create-metric-set-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (metric-set-name :target-type metric-set-name
                                  :required common-lisp:t :member-name
                                  "MetricSetName")
                                 (metric-set-description :target-type
                                  metric-set-description :member-name
                                  "MetricSetDescription")
                                 (metric-list :target-type metric-list
                                  :required common-lisp:t :member-name
                                  "MetricList")
                                 (offset :target-type offset :member-name
                                  "Offset")
                                 (timestamp-column :target-type
                                  timestamp-column :member-name
                                  "TimestampColumn")
                                 (dimension-list :target-type dimension-list
                                  :member-name "DimensionList")
                                 (metric-set-frequency :target-type frequency
                                  :member-name "MetricSetFrequency")
                                 (metric-source :target-type metric-source
                                  :required common-lisp:t :member-name
                                  "MetricSource")
                                 (timezone :target-type timezone :member-name
                                  "Timezone")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (dimension-filter-list :target-type
                                  metric-set-dimension-filter-list :member-name
                                  "DimensionFilterList"))
                                (:shape-name "CreateMetricSetRequest"))

(smithy/sdk/shapes:define-output create-metric-set-response common-lisp:nil
                                 ((metric-set-arn :target-type arn :member-name
                                   "MetricSetArn"))
                                 (:shape-name "CreateMetricSetResponse"))

(smithy/sdk/shapes:define-structure csv-format-descriptor common-lisp:nil
                                    ((file-compression :target-type
                                      csvfile-compression :member-name
                                      "FileCompression")
                                     (charset :target-type charset :member-name
                                      "Charset")
                                     (contains-header :target-type boolean
                                      :member-name "ContainsHeader")
                                     (delimiter :target-type delimiter
                                      :member-name "Delimiter")
                                     (header-list :target-type header-list
                                      :member-name "HeaderList")
                                     (quote-symbol :target-type quote-symbol
                                      :member-name "QuoteSymbol"))
                                    (:shape-name "CsvFormatDescriptor"))

(smithy/sdk/shapes:define-type data-item smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-quality-metric common-lisp:nil
                                    ((metric-type :target-type
                                      data-quality-metric-type :member-name
                                      "MetricType")
                                     (metric-description :target-type
                                      data-quality-metric-description
                                      :member-name "MetricDescription")
                                     (related-column-name :target-type
                                      related-column-name :member-name
                                      "RelatedColumnName")
                                     (metric-value :target-type double
                                      :member-name "MetricValue"))
                                    (:shape-name "DataQualityMetric"))

(smithy/sdk/shapes:define-type data-quality-metric-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-quality-metric-list :member
                               data-quality-metric)

(smithy/sdk/shapes:define-enum data-quality-metric-type
    common-lisp:nil
  (:column-completeness "COLUMN_COMPLETENESS")
  (:dimension-uniqueness "DIMENSION_UNIQUENESS")
  (:time-series-count "TIME_SERIES_COUNT")
  (:rows-processed "ROWS_PROCESSED")
  (:rows-partial-compliance "ROWS_PARTIAL_COMPLIANCE")
  (:invalid-rows-compliance "INVALID_ROWS_COMPLIANCE")
  (:backtest-training-data-start-time-stamp
   "BACKTEST_TRAINING_DATA_START_TIME_STAMP")
  (:backtest-training-data-end-time-stamp
   "BACKTEST_TRAINING_DATA_END_TIME_STAMP")
  (:backtest-inference-data-start-time-stamp
   "BACKTEST_INFERENCE_DATA_START_TIME_STAMP")
  (:backtest-inference-data-end-time-stamp
   "BACKTEST_INFERENCE_DATA_END_TIME_STAMP"))

(smithy/sdk/shapes:define-type database-host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type date-time-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input deactivate-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name
                                 "DeactivateAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output deactivate-anomaly-detector-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeactivateAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input delete-alert-request common-lisp:nil
                                ((alert-arn :target-type arn :required
                                  common-lisp:t :member-name "AlertArn"))
                                (:shape-name "DeleteAlertRequest"))

(smithy/sdk/shapes:define-output delete-alert-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAlertResponse"))

(smithy/sdk/shapes:define-input delete-anomaly-detector-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name "DeleteAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output delete-anomaly-detector-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-type delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-alert-request common-lisp:nil
                                ((alert-arn :target-type arn :required
                                  common-lisp:t :member-name "AlertArn"))
                                (:shape-name "DescribeAlertRequest"))

(smithy/sdk/shapes:define-output describe-alert-response common-lisp:nil
                                 ((alert :target-type alert :member-name
                                   "Alert"))
                                 (:shape-name "DescribeAlertResponse"))

(smithy/sdk/shapes:define-input describe-anomaly-detection-executions-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (timestamp :target-type timestamp-string
                                  :member-name "Timestamp")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeAnomalyDetectionExecutionsRequest"))

(smithy/sdk/shapes:define-output describe-anomaly-detection-executions-response
                                 common-lisp:nil
                                 ((execution-list :target-type execution-list
                                   :member-name "ExecutionList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAnomalyDetectionExecutionsResponse"))

(smithy/sdk/shapes:define-input describe-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name "DescribeAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output describe-anomaly-detector-response
                                 common-lisp:nil
                                 ((anomaly-detector-arn :target-type arn
                                   :member-name "AnomalyDetectorArn")
                                  (anomaly-detector-name :target-type
                                   anomaly-detector-name :member-name
                                   "AnomalyDetectorName")
                                  (anomaly-detector-description :target-type
                                   anomaly-detector-description :member-name
                                   "AnomalyDetectorDescription")
                                  (anomaly-detector-config :target-type
                                   anomaly-detector-config-summary :member-name
                                   "AnomalyDetectorConfig")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (status :target-type anomaly-detector-status
                                   :member-name "Status")
                                  (failure-reason :target-type error-message
                                   :member-name "FailureReason")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "KmsKeyArn")
                                  (failure-type :target-type
                                   anomaly-detector-failure-type :member-name
                                   "FailureType"))
                                 (:shape-name
                                  "DescribeAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input describe-metric-set-request common-lisp:nil
                                ((metric-set-arn :target-type arn :required
                                  common-lisp:t :member-name "MetricSetArn"))
                                (:shape-name "DescribeMetricSetRequest"))

(smithy/sdk/shapes:define-output describe-metric-set-response common-lisp:nil
                                 ((metric-set-arn :target-type arn :member-name
                                   "MetricSetArn")
                                  (anomaly-detector-arn :target-type arn
                                   :member-name "AnomalyDetectorArn")
                                  (metric-set-name :target-type metric-set-name
                                   :member-name "MetricSetName")
                                  (metric-set-description :target-type
                                   metric-set-description :member-name
                                   "MetricSetDescription")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "LastModificationTime")
                                  (offset :target-type offset :member-name
                                   "Offset")
                                  (metric-list :target-type metric-list
                                   :member-name "MetricList")
                                  (timestamp-column :target-type
                                   timestamp-column :member-name
                                   "TimestampColumn")
                                  (dimension-list :target-type dimension-list
                                   :member-name "DimensionList")
                                  (metric-set-frequency :target-type frequency
                                   :member-name "MetricSetFrequency")
                                  (timezone :target-type timezone :member-name
                                   "Timezone")
                                  (metric-source :target-type metric-source
                                   :member-name "MetricSource")
                                  (dimension-filter-list :target-type
                                   metric-set-dimension-filter-list
                                   :member-name "DimensionFilterList"))
                                 (:shape-name "DescribeMetricSetResponse"))

(smithy/sdk/shapes:define-input detect-metric-set-config-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (auto-detection-metric-source :target-type
                                  auto-detection-metric-source :required
                                  common-lisp:t :member-name
                                  "AutoDetectionMetricSource"))
                                (:shape-name "DetectMetricSetConfigRequest"))

(smithy/sdk/shapes:define-output detect-metric-set-config-response
                                 common-lisp:nil
                                 ((detected-metric-set-config :target-type
                                   detected-metric-set-config :member-name
                                   "DetectedMetricSetConfig"))
                                 (:shape-name "DetectMetricSetConfigResponse"))

(smithy/sdk/shapes:define-structure detected-csv-format-descriptor
                                    common-lisp:nil
                                    ((file-compression :target-type
                                      detected-field :member-name
                                      "FileCompression")
                                     (charset :target-type detected-field
                                      :member-name "Charset")
                                     (contains-header :target-type
                                      detected-field :member-name
                                      "ContainsHeader")
                                     (delimiter :target-type detected-field
                                      :member-name "Delimiter")
                                     (header-list :target-type detected-field
                                      :member-name "HeaderList")
                                     (quote-symbol :target-type detected-field
                                      :member-name "QuoteSymbol"))
                                    (:shape-name "DetectedCsvFormatDescriptor"))

(smithy/sdk/shapes:define-structure detected-field common-lisp:nil
                                    ((value :target-type attribute-value
                                      :member-name "Value")
                                     (confidence :target-type confidence
                                      :member-name "Confidence")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "DetectedField"))

(smithy/sdk/shapes:define-structure detected-file-format-descriptor
                                    common-lisp:nil
                                    ((csv-format-descriptor :target-type
                                      detected-csv-format-descriptor
                                      :member-name "CsvFormatDescriptor")
                                     (json-format-descriptor :target-type
                                      detected-json-format-descriptor
                                      :member-name "JsonFormatDescriptor"))
                                    (:shape-name
                                     "DetectedFileFormatDescriptor"))

(smithy/sdk/shapes:define-structure detected-json-format-descriptor
                                    common-lisp:nil
                                    ((file-compression :target-type
                                      detected-field :member-name
                                      "FileCompression")
                                     (charset :target-type detected-field
                                      :member-name "Charset"))
                                    (:shape-name
                                     "DetectedJsonFormatDescriptor"))

(smithy/sdk/shapes:define-structure detected-metric-set-config common-lisp:nil
                                    ((offset :target-type detected-field
                                      :member-name "Offset")
                                     (metric-set-frequency :target-type
                                      detected-field :member-name
                                      "MetricSetFrequency")
                                     (metric-source :target-type
                                      detected-metric-source :member-name
                                      "MetricSource"))
                                    (:shape-name "DetectedMetricSetConfig"))

(smithy/sdk/shapes:define-structure detected-metric-source common-lisp:nil
                                    ((s3source-config :target-type
                                      detected-s3source-config :member-name
                                      "S3SourceConfig"))
                                    (:shape-name "DetectedMetricSource"))

(smithy/sdk/shapes:define-structure detected-s3source-config common-lisp:nil
                                    ((file-format-descriptor :target-type
                                      detected-file-format-descriptor
                                      :member-name "FileFormatDescriptor"))
                                    (:shape-name "DetectedS3SourceConfig"))

(smithy/sdk/shapes:define-structure dimension-contribution common-lisp:nil
                                    ((dimension-name :target-type column-name
                                      :member-name "DimensionName")
                                     (dimension-value-contribution-list
                                      :target-type
                                      dimension-value-contribution-list
                                      :member-name
                                      "DimensionValueContributionList"))
                                    (:shape-name "DimensionContribution"))

(smithy/sdk/shapes:define-list dimension-contribution-list :member
                               dimension-contribution)

(smithy/sdk/shapes:define-structure dimension-filter common-lisp:nil
                                    ((dimension-name :target-type column-name
                                      :member-name "DimensionName")
                                     (dimension-value-list :target-type
                                      dimension-value-list :member-name
                                      "DimensionValueList"))
                                    (:shape-name "DimensionFilter"))

(smithy/sdk/shapes:define-list dimension-filter-list :member dimension-filter)

(smithy/sdk/shapes:define-list dimension-list :member column-name)

(smithy/sdk/shapes:define-structure dimension-name-value common-lisp:nil
                                    ((dimension-name :target-type column-name
                                      :required common-lisp:t :member-name
                                      "DimensionName")
                                     (dimension-value :target-type
                                      dimension-value :required common-lisp:t
                                      :member-name "DimensionValue"))
                                    (:shape-name "DimensionNameValue"))

(smithy/sdk/shapes:define-list dimension-name-value-list :member
                               dimension-name-value)

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dimension-value-contribution
                                    common-lisp:nil
                                    ((dimension-value :target-type
                                      dimension-value :member-name
                                      "DimensionValue")
                                     (contribution-score :target-type score
                                      :member-name "ContributionScore"))
                                    (:shape-name "DimensionValueContribution"))

(smithy/sdk/shapes:define-list dimension-value-contribution-list :member
                               dimension-value-contribution)

(smithy/sdk/shapes:define-list dimension-value-list :member dimension-value)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list execution-list :member execution-status)

(smithy/sdk/shapes:define-structure execution-status common-lisp:nil
                                    ((timestamp :target-type timestamp-string
                                      :member-name "Timestamp")
                                     (status :target-type
                                      anomaly-detection-task-status
                                      :member-name "Status")
                                     (failure-reason :target-type
                                      anomaly-detection-task-status-message
                                      :member-name "FailureReason"))
                                    (:shape-name "ExecutionStatus"))

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-format-descriptor common-lisp:nil
                                    ((csv-format-descriptor :target-type
                                      csv-format-descriptor :member-name
                                      "CsvFormatDescriptor")
                                     (json-format-descriptor :target-type
                                      json-format-descriptor :member-name
                                      "JsonFormatDescriptor"))
                                    (:shape-name "FileFormatDescriptor"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((dimension-value :target-type
                                      dimension-value :member-name
                                      "DimensionValue")
                                     (filter-operation :target-type
                                      filter-operation :member-name
                                      "FilterOperation"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-enum filter-operation
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-type flow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum frequency
    common-lisp:nil
  (:p1d "P1D")
  (:pt1h "PT1H")
  (:pt10m "PT10M")
  (:pt5m "PT5M"))

(smithy/sdk/shapes:define-input get-anomaly-group-request common-lisp:nil
                                ((anomaly-group-id :target-type uuid :required
                                  common-lisp:t :member-name "AnomalyGroupId")
                                 (anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn"))
                                (:shape-name "GetAnomalyGroupRequest"))

(smithy/sdk/shapes:define-output get-anomaly-group-response common-lisp:nil
                                 ((anomaly-group :target-type anomaly-group
                                   :member-name "AnomalyGroup"))
                                 (:shape-name "GetAnomalyGroupResponse"))

(smithy/sdk/shapes:define-input get-data-quality-metrics-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (metric-set-arn :target-type arn :member-name
                                  "MetricSetArn"))
                                (:shape-name "GetDataQualityMetricsRequest"))

(smithy/sdk/shapes:define-output get-data-quality-metrics-response
                                 common-lisp:nil
                                 ((anomaly-detector-data-quality-metric-list
                                   :target-type
                                   anomaly-detector-data-quality-metric-list
                                   :member-name
                                   "AnomalyDetectorDataQualityMetricList"))
                                 (:shape-name "GetDataQualityMetricsResponse"))

(smithy/sdk/shapes:define-input get-feedback-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (anomaly-group-time-series-feedback
                                  :target-type anomaly-group-time-series
                                  :required common-lisp:t :member-name
                                  "AnomalyGroupTimeSeriesFeedback")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetFeedbackRequest"))

(smithy/sdk/shapes:define-output get-feedback-response common-lisp:nil
                                 ((anomaly-group-time-series-feedback
                                   :target-type time-series-feedback-list
                                   :member-name
                                   "AnomalyGroupTimeSeriesFeedback")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetFeedbackResponse"))

(smithy/sdk/shapes:define-input get-sample-data-request common-lisp:nil
                                ((s3source-config :target-type
                                  sample-data-s3source-config :member-name
                                  "S3SourceConfig"))
                                (:shape-name "GetSampleDataRequest"))

(smithy/sdk/shapes:define-output get-sample-data-response common-lisp:nil
                                 ((header-values :target-type header-value-list
                                   :member-name "HeaderValues")
                                  (sample-rows :target-type sample-rows
                                   :member-name "SampleRows"))
                                 (:shape-name "GetSampleDataResponse"))

(smithy/sdk/shapes:define-list header-list :member column-name)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list header-value-list :member header-value)

(smithy/sdk/shapes:define-type historical-data-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list historical-data-path-list :member
                               historical-data-path)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure inter-metric-impact-details common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (anomaly-group-id :target-type uuid
                                      :member-name "AnomalyGroupId")
                                     (relationship-type :target-type
                                      relationship-type :member-name
                                      "RelationshipType")
                                     (contribution-percentage :target-type
                                      metric-change-percentage :member-name
                                      "ContributionPercentage"))
                                    (:shape-name "InterMetricImpactDetails"))

(smithy/sdk/shapes:define-list inter-metric-impact-list :member
                               inter-metric-impact-details)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-structure itemized-metric-stats common-lisp:nil
                                    ((metric-name :target-type column-name
                                      :member-name "MetricName")
                                     (occurrence-count :target-type integer
                                      :member-name "OccurrenceCount"))
                                    (:shape-name "ItemizedMetricStats"))

(smithy/sdk/shapes:define-list itemized-metric-stats-list :member
                               itemized-metric-stats)

(smithy/sdk/shapes:define-enum json-file-compression
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP"))

(smithy/sdk/shapes:define-structure json-format-descriptor common-lisp:nil
                                    ((file-compression :target-type
                                      json-file-compression :member-name
                                      "FileCompression")
                                     (charset :target-type charset :member-name
                                      "Charset"))
                                    (:shape-name "JsonFormatDescriptor"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-configuration common-lisp:nil
                                    ((role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (lambda-arn :target-type arn :required
                                      common-lisp:t :member-name "LambdaArn"))
                                    (:shape-name "LambdaConfiguration"))

(smithy/sdk/shapes:define-input list-alerts-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :member-name "AnomalyDetectorArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAlertsRequest"))

(smithy/sdk/shapes:define-output list-alerts-response common-lisp:nil
                                 ((alert-summary-list :target-type
                                   alert-summary-list :member-name
                                   "AlertSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAlertsResponse"))

(smithy/sdk/shapes:define-input list-anomaly-detectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAnomalyDetectorsRequest"))

(smithy/sdk/shapes:define-output list-anomaly-detectors-response
                                 common-lisp:nil
                                 ((anomaly-detector-summary-list :target-type
                                   anomaly-detector-summary-list :member-name
                                   "AnomalyDetectorSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAnomalyDetectorsResponse"))

(smithy/sdk/shapes:define-input list-anomaly-group-related-metrics-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (anomaly-group-id :target-type uuid :required
                                  common-lisp:t :member-name "AnomalyGroupId")
                                 (relationship-type-filter :target-type
                                  relationship-type :member-name
                                  "RelationshipTypeFilter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAnomalyGroupRelatedMetricsRequest"))

(smithy/sdk/shapes:define-output list-anomaly-group-related-metrics-response
                                 common-lisp:nil
                                 ((inter-metric-impact-list :target-type
                                   inter-metric-impact-list :member-name
                                   "InterMetricImpactList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAnomalyGroupRelatedMetricsResponse"))

(smithy/sdk/shapes:define-input list-anomaly-group-summaries-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (sensitivity-threshold :target-type
                                  sensitivity-threshold :required common-lisp:t
                                  :member-name "SensitivityThreshold")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAnomalyGroupSummariesRequest"))

(smithy/sdk/shapes:define-output list-anomaly-group-summaries-response
                                 common-lisp:nil
                                 ((anomaly-group-summary-list :target-type
                                   anomaly-group-summary-list :member-name
                                   "AnomalyGroupSummaryList")
                                  (anomaly-group-statistics :target-type
                                   anomaly-group-statistics :member-name
                                   "AnomalyGroupStatistics")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAnomalyGroupSummariesResponse"))

(smithy/sdk/shapes:define-input list-anomaly-group-time-series-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (anomaly-group-id :target-type uuid :required
                                  common-lisp:t :member-name "AnomalyGroupId")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAnomalyGroupTimeSeriesRequest"))

(smithy/sdk/shapes:define-output list-anomaly-group-time-series-response
                                 common-lisp:nil
                                 ((anomaly-group-id :target-type uuid
                                   :member-name "AnomalyGroupId")
                                  (metric-name :target-type metric-name
                                   :member-name "MetricName")
                                  (timestamp-list :target-type timestamp-list
                                   :member-name "TimestampList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (time-series-list :target-type
                                   time-series-list :member-name
                                   "TimeSeriesList"))
                                 (:shape-name
                                  "ListAnomalyGroupTimeSeriesResponse"))

(smithy/sdk/shapes:define-input list-metric-sets-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :member-name "AnomalyDetectorArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListMetricSetsRequest"))

(smithy/sdk/shapes:define-output list-metric-sets-response common-lisp:nil
                                 ((metric-set-summary-list :target-type
                                   metric-set-summary-list :member-name
                                   "MetricSetSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMetricSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t :json-name
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags" :json-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((metric-name :target-type column-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (aggregation-function :target-type
                                      aggregation-function :required
                                      common-lisp:t :member-name
                                      "AggregationFunction")
                                     (namespace :target-type namespace
                                      :member-name "Namespace"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-type metric-change-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure metric-level-impact common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (num-time-series :target-type integer
                                      :member-name "NumTimeSeries")
                                     (contribution-matrix :target-type
                                      contribution-matrix :member-name
                                      "ContributionMatrix"))
                                    (:shape-name "MetricLevelImpact"))

(smithy/sdk/shapes:define-list metric-level-impact-list :member
                               metric-level-impact)

(smithy/sdk/shapes:define-list metric-list :member metric)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-name-list :member metric-name)

(smithy/sdk/shapes:define-structure metric-set-data-quality-metric
                                    common-lisp:nil
                                    ((metric-set-arn :target-type arn
                                      :member-name "MetricSetArn")
                                     (data-quality-metric-list :target-type
                                      data-quality-metric-list :member-name
                                      "DataQualityMetricList"))
                                    (:shape-name "MetricSetDataQualityMetric"))

(smithy/sdk/shapes:define-list metric-set-data-quality-metric-list :member
                               metric-set-data-quality-metric)

(smithy/sdk/shapes:define-type metric-set-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-set-dimension-filter common-lisp:nil
                                    ((name :target-type column-name
                                      :member-name "Name")
                                     (filter-list :target-type filter-list
                                      :member-name "FilterList"))
                                    (:shape-name "MetricSetDimensionFilter"))

(smithy/sdk/shapes:define-list metric-set-dimension-filter-list :member
                               metric-set-dimension-filter)

(smithy/sdk/shapes:define-type metric-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-set-summary common-lisp:nil
                                    ((metric-set-arn :target-type arn
                                      :member-name "MetricSetArn")
                                     (anomaly-detector-arn :target-type arn
                                      :member-name "AnomalyDetectorArn")
                                     (metric-set-description :target-type
                                      metric-set-description :member-name
                                      "MetricSetDescription")
                                     (metric-set-name :target-type
                                      metric-set-name :member-name
                                      "MetricSetName")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "LastModificationTime")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "MetricSetSummary"))

(smithy/sdk/shapes:define-list metric-set-summary-list :member
                               metric-set-summary)

(smithy/sdk/shapes:define-structure metric-source common-lisp:nil
                                    ((s3source-config :target-type
                                      s3source-config :member-name
                                      "S3SourceConfig")
                                     (app-flow-config :target-type
                                      app-flow-config :member-name
                                      "AppFlowConfig")
                                     (cloud-watch-config :target-type
                                      cloud-watch-config :member-name
                                      "CloudWatchConfig")
                                     (rdssource-config :target-type
                                      rdssource-config :member-name
                                      "RDSSourceConfig")
                                     (redshift-source-config :target-type
                                      redshift-source-config :member-name
                                      "RedshiftSourceConfig")
                                     (athena-source-config :target-type
                                      athena-source-config :member-name
                                      "AthenaSourceConfig"))
                                    (:shape-name "MetricSource"))

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list metric-value-list :member metric-value)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list number-list-attribute-value :member
                               number-attribute-value)

(smithy/sdk/shapes:define-type offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type poirot-secret-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-feedback-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (anomaly-group-time-series-feedback
                                  :target-type
                                  anomaly-group-time-series-feedback :required
                                  common-lisp:t :member-name
                                  "AnomalyGroupTimeSeriesFeedback"))
                                (:shape-name "PutFeedbackRequest"))

(smithy/sdk/shapes:define-output put-feedback-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutFeedbackResponse"))

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quote-symbol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rdsdatabase-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rdsdatabase-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rdssource-config common-lisp:nil
                                    ((dbinstance-identifier :target-type
                                      rdsdatabase-identifier :member-name
                                      "DBInstanceIdentifier")
                                     (database-host :target-type database-host
                                      :member-name "DatabaseHost")
                                     (database-port :target-type database-port
                                      :member-name "DatabasePort")
                                     (secret-manager-arn :target-type
                                      poirot-secret-manager-arn :member-name
                                      "SecretManagerArn")
                                     (database-name :target-type
                                      rdsdatabase-name :member-name
                                      "DatabaseName")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "VpcConfiguration"))
                                    (:shape-name "RDSSourceConfig"))

(smithy/sdk/shapes:define-type redshift-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redshift-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-source-config common-lisp:nil
                                    ((cluster-identifier :target-type
                                      redshift-cluster-identifier :member-name
                                      "ClusterIdentifier")
                                     (database-host :target-type database-host
                                      :member-name "DatabaseHost")
                                     (database-port :target-type database-port
                                      :member-name "DatabasePort")
                                     (secret-manager-arn :target-type
                                      poirot-secret-manager-arn :member-name
                                      "SecretManagerArn")
                                     (database-name :target-type
                                      redshift-database-name :member-name
                                      "DatabaseName")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "VpcConfiguration"))
                                    (:shape-name "RedshiftSourceConfig"))

(smithy/sdk/shapes:define-type related-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum relationship-type
    common-lisp:nil
  (:cause-of-input-anomaly-group "CAUSE_OF_INPUT_ANOMALY_GROUP")
  (:effect-of-input-anomaly-group "EFFECT_OF_INPUT_ANOMALY_GROUP"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3source-config common-lisp:nil
                                    ((role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (templated-path-list :target-type
                                      templated-path-list :member-name
                                      "TemplatedPathList")
                                     (historical-data-path-list :target-type
                                      historical-data-path-list :member-name
                                      "HistoricalDataPathList")
                                     (file-format-descriptor :target-type
                                      file-format-descriptor :member-name
                                      "FileFormatDescriptor"))
                                    (:shape-name "S3SourceConfig"))

(smithy/sdk/shapes:define-structure snsconfiguration common-lisp:nil
                                    ((role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (sns-topic-arn :target-type arn :required
                                      common-lisp:t :member-name "SnsTopicArn")
                                     (sns-format :target-type sns-format
                                      :member-name "SnsFormat"))
                                    (:shape-name "SNSConfiguration"))

(smithy/sdk/shapes:define-structure sample-data-s3source-config common-lisp:nil
                                    ((role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (templated-path-list :target-type
                                      templated-path-list :member-name
                                      "TemplatedPathList")
                                     (historical-data-path-list :target-type
                                      historical-data-path-list :member-name
                                      "HistoricalDataPathList")
                                     (file-format-descriptor :target-type
                                      file-format-descriptor :required
                                      common-lisp:t :member-name
                                      "FileFormatDescriptor"))
                                    (:shape-name "SampleDataS3SourceConfig"))

(smithy/sdk/shapes:define-list sample-row :member data-item)

(smithy/sdk/shapes:define-list sample-rows :member sample-row)

(smithy/sdk/shapes:define-type score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-type sensitivity-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (quota-code :target-type quota-code
                                  :member-name "QuotaCode")
                                 (service-code :target-type service-code
                                  :member-name "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-enum sns-format
    common-lisp:nil
  (:long-text "LONG_TEXT")
  (:short-text "SHORT_TEXT")
  (:json "JSON"))

(smithy/sdk/shapes:define-type string-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list-attribute-value :member
                               string-attribute-value)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t :json-name
                                  "resourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type templated-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list templated-path-list :member templated-path)

(smithy/sdk/shapes:define-structure time-series common-lisp:nil
                                    ((time-series-id :target-type
                                      time-series-id :required common-lisp:t
                                      :member-name "TimeSeriesId")
                                     (dimension-list :target-type
                                      dimension-name-value-list :required
                                      common-lisp:t :member-name
                                      "DimensionList")
                                     (metric-value-list :target-type
                                      metric-value-list :required common-lisp:t
                                      :member-name "MetricValueList"))
                                    (:shape-name "TimeSeries"))

(smithy/sdk/shapes:define-structure time-series-feedback common-lisp:nil
                                    ((time-series-id :target-type
                                      time-series-id :member-name
                                      "TimeSeriesId")
                                     (is-anomaly :target-type boolean
                                      :member-name "IsAnomaly"))
                                    (:shape-name "TimeSeriesFeedback"))

(smithy/sdk/shapes:define-list time-series-feedback-list :member
                               time-series-feedback)

(smithy/sdk/shapes:define-type time-series-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list time-series-list :member time-series)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-column common-lisp:nil
                                    ((column-name :target-type column-name
                                      :member-name "ColumnName")
                                     (column-format :target-type
                                      date-time-format :member-name
                                      "ColumnFormat"))
                                    (:shape-name "TimestampColumn"))

(smithy/sdk/shapes:define-list timestamp-list :member timestamp-string)

(smithy/sdk/shapes:define-type timestamp-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t :json-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys" :json-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-alert-request common-lisp:nil
                                ((alert-arn :target-type arn :required
                                  common-lisp:t :member-name "AlertArn")
                                 (alert-description :target-type
                                  alert-description :member-name
                                  "AlertDescription")
                                 (alert-sensitivity-threshold :target-type
                                  sensitivity-threshold :member-name
                                  "AlertSensitivityThreshold")
                                 (action :target-type action :member-name
                                  "Action")
                                 (alert-filters :target-type alert-filters
                                  :member-name "AlertFilters"))
                                (:shape-name "UpdateAlertRequest"))

(smithy/sdk/shapes:define-output update-alert-response common-lisp:nil
                                 ((alert-arn :target-type arn :member-name
                                   "AlertArn"))
                                 (:shape-name "UpdateAlertResponse"))

(smithy/sdk/shapes:define-input update-anomaly-detector-request common-lisp:nil
                                ((anomaly-detector-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "AnomalyDetectorArn")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyArn")
                                 (anomaly-detector-description :target-type
                                  anomaly-detector-description :member-name
                                  "AnomalyDetectorDescription")
                                 (anomaly-detector-config :target-type
                                  anomaly-detector-config :member-name
                                  "AnomalyDetectorConfig"))
                                (:shape-name "UpdateAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output update-anomaly-detector-response
                                 common-lisp:nil
                                 ((anomaly-detector-arn :target-type arn
                                   :member-name "AnomalyDetectorArn"))
                                 (:shape-name "UpdateAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input update-metric-set-request common-lisp:nil
                                ((metric-set-arn :target-type arn :required
                                  common-lisp:t :member-name "MetricSetArn")
                                 (metric-set-description :target-type
                                  metric-set-description :member-name
                                  "MetricSetDescription")
                                 (metric-list :target-type metric-list
                                  :member-name "MetricList")
                                 (offset :target-type offset :member-name
                                  "Offset")
                                 (timestamp-column :target-type
                                  timestamp-column :member-name
                                  "TimestampColumn")
                                 (dimension-list :target-type dimension-list
                                  :member-name "DimensionList")
                                 (metric-set-frequency :target-type frequency
                                  :member-name "MetricSetFrequency")
                                 (metric-source :target-type metric-source
                                  :member-name "MetricSource")
                                 (dimension-filter-list :target-type
                                  metric-set-dimension-filter-list :member-name
                                  "DimensionFilterList"))
                                (:shape-name "UpdateMetricSetRequest"))

(smithy/sdk/shapes:define-output update-metric-set-response common-lisp:nil
                                 ((metric-set-arn :target-type arn :member-name
                                   "MetricSetArn"))
                                 (:shape-name "UpdateMetricSetResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class lookoutmetrics-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((subnet-id-list :target-type
                                      subnet-id-list :required common-lisp:t
                                      :member-name "SubnetIdList")
                                     (security-group-id-list :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIdList"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/operation:define-operation activate-anomaly-detector :shape-name
                                       "ActivateAnomalyDetector" :input
                                       activate-anomaly-detector-request
                                       :output
                                       activate-anomaly-detector-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ActivateAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation back-test-anomaly-detector :shape-name
                                       "BackTestAnomalyDetector" :input
                                       back-test-anomaly-detector-request
                                       :output
                                       back-test-anomaly-detector-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BackTestAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation create-alert :shape-name "CreateAlert"
                                       :input create-alert-request :output
                                       create-alert-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateAlert" :code
                                       200)

(smithy/sdk/operation:define-operation create-anomaly-detector :shape-name
                                       "CreateAnomalyDetector" :input
                                       create-anomaly-detector-request :output
                                       create-anomaly-detector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation create-metric-set :shape-name
                                       "CreateMetricSet" :input
                                       create-metric-set-request :output
                                       create-metric-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateMetricSet"
                                       :code 200)

(smithy/sdk/operation:define-operation deactivate-anomaly-detector :shape-name
                                       "DeactivateAnomalyDetector" :input
                                       deactivate-anomaly-detector-request
                                       :output
                                       deactivate-anomaly-detector-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeactivateAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation delete-alert :shape-name "DeleteAlert"
                                       :input delete-alert-request :output
                                       delete-alert-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteAlert" :code
                                       200)

(smithy/sdk/operation:define-operation delete-anomaly-detector :shape-name
                                       "DeleteAnomalyDetector" :input
                                       delete-anomaly-detector-request :output
                                       delete-anomaly-detector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation describe-alert :shape-name
                                       "DescribeAlert" :input
                                       describe-alert-request :output
                                       describe-alert-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/DescribeAlert"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-anomaly-detection-executions
                                       :shape-name
                                       "DescribeAnomalyDetectionExecutions"
                                       :input
                                       describe-anomaly-detection-executions-request
                                       :output
                                       describe-anomaly-detection-executions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeAnomalyDetectionExecutions"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-anomaly-detector :shape-name
                                       "DescribeAnomalyDetector" :input
                                       describe-anomaly-detector-request
                                       :output
                                       describe-anomaly-detector-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation describe-metric-set :shape-name
                                       "DescribeMetricSet" :input
                                       describe-metric-set-request :output
                                       describe-metric-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/DescribeMetricSet"
                                       :code 200)

(smithy/sdk/operation:define-operation detect-metric-set-config :shape-name
                                       "DetectMetricSetConfig" :input
                                       detect-metric-set-config-request :output
                                       detect-metric-set-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DetectMetricSetConfig" :code 200)

(smithy/sdk/operation:define-operation get-anomaly-group :shape-name
                                       "GetAnomalyGroup" :input
                                       get-anomaly-group-request :output
                                       get-anomaly-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetAnomalyGroup"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-quality-metrics :shape-name
                                       "GetDataQualityMetrics" :input
                                       get-data-quality-metrics-request :output
                                       get-data-quality-metrics-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetDataQualityMetrics" :code 200)

(smithy/sdk/operation:define-operation get-feedback :shape-name "GetFeedback"
                                       :input get-feedback-request :output
                                       get-feedback-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetFeedback" :code
                                       200)

(smithy/sdk/operation:define-operation get-sample-data :shape-name
                                       "GetSampleData" :input
                                       get-sample-data-request :output
                                       get-sample-data-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetSampleData"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alerts :shape-name "ListAlerts"
                                       :input list-alerts-request :output
                                       list-alerts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListAlerts" :code
                                       200)

(smithy/sdk/operation:define-operation list-anomaly-detectors :shape-name
                                       "ListAnomalyDetectors" :input
                                       list-anomaly-detectors-request :output
                                       list-anomaly-detectors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListAnomalyDetectors" :code 200)

(smithy/sdk/operation:define-operation list-anomaly-group-related-metrics
                                       :shape-name
                                       "ListAnomalyGroupRelatedMetrics" :input
                                       list-anomaly-group-related-metrics-request
                                       :output
                                       list-anomaly-group-related-metrics-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListAnomalyGroupRelatedMetrics" :code
                                       200)

(smithy/sdk/operation:define-operation list-anomaly-group-summaries :shape-name
                                       "ListAnomalyGroupSummaries" :input
                                       list-anomaly-group-summaries-request
                                       :output
                                       list-anomaly-group-summaries-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListAnomalyGroupSummaries" :code 200)

(smithy/sdk/operation:define-operation list-anomaly-group-time-series
                                       :shape-name "ListAnomalyGroupTimeSeries"
                                       :input
                                       list-anomaly-group-time-series-request
                                       :output
                                       list-anomaly-group-time-series-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListAnomalyGroupTimeSeries" :code 200)

(smithy/sdk/operation:define-operation list-metric-sets :shape-name
                                       "ListMetricSets" :input
                                       list-metric-sets-request :output
                                       list-metric-sets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListMetricSets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-feedback :shape-name "PutFeedback"
                                       :input put-feedback-request :output
                                       put-feedback-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutFeedback" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-alert :shape-name "UpdateAlert"
                                       :input update-alert-request :output
                                       update-alert-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateAlert" :code
                                       200)

(smithy/sdk/operation:define-operation update-anomaly-detector :shape-name
                                       "UpdateAnomalyDetector" :input
                                       update-anomaly-detector-request :output
                                       update-anomaly-detector-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateAnomalyDetector" :code 200)

(smithy/sdk/operation:define-operation update-metric-set :shape-name
                                       "UpdateMetricSet" :input
                                       update-metric-set-request :output
                                       update-metric-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateMetricSet"
                                       :code 200)
