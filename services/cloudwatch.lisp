(uiop/package:define-package #:pira/cloudwatch (:use)
                             (:export #:account-id #:action-prefix
                              #:actions-enabled #:actions-suppressed-by
                              #:actions-suppressed-reason #:alarm-arn
                              #:alarm-description #:alarm-history-item
                              #:alarm-history-items #:alarm-name
                              #:alarm-name-prefix #:alarm-names #:alarm-rule
                              #:alarm-type #:alarm-types #:amazon-resource-name
                              #:anomaly-detector
                              #:anomaly-detector-configuration
                              #:anomaly-detector-excluded-time-ranges
                              #:anomaly-detector-metric-stat
                              #:anomaly-detector-metric-timezone
                              #:anomaly-detector-state-value
                              #:anomaly-detector-type #:anomaly-detector-types
                              #:anomaly-detectors #:aws-query-error-message
                              #:batch-failures #:comparison-operator
                              #:composite-alarm #:composite-alarms #:counts
                              #:dashboard-arn #:dashboard-body
                              #:dashboard-entries #:dashboard-entry
                              #:dashboard-error-message #:dashboard-name
                              #:dashboard-name-prefix #:dashboard-names
                              #:dashboard-validation-message
                              #:dashboard-validation-messages #:data-path
                              #:datapoint #:datapoint-value
                              #:datapoint-value-map #:datapoint-values
                              #:datapoints #:datapoints-to-alarm
                              #:delete-alarms #:delete-anomaly-detector
                              #:delete-dashboards #:delete-insight-rules
                              #:delete-metric-stream #:describe-alarm-history
                              #:describe-alarms #:describe-alarms-for-metric
                              #:describe-anomaly-detectors
                              #:describe-insight-rules #:dimension
                              #:dimension-filter #:dimension-filters
                              #:dimension-name #:dimension-value #:dimensions
                              #:disable-alarm-actions #:disable-insight-rules
                              #:enable-alarm-actions #:enable-insight-rules
                              #:entity #:entity-attributes-map
                              #:entity-attributes-map-key-string
                              #:entity-attributes-map-value-string
                              #:entity-key-attributes-map
                              #:entity-key-attributes-map-key-string
                              #:entity-key-attributes-map-value-string
                              #:entity-metric-data #:entity-metric-data-list
                              #:error-message
                              #:evaluate-low-sample-count-percentile
                              #:evaluation-periods #:evaluation-state
                              #:exception-type #:extended-statistic
                              #:extended-statistics #:failure-code
                              #:failure-description #:failure-resource
                              #:fault-description #:get-dashboard
                              #:get-insight-rule-report #:get-metric-data
                              #:get-metric-data-label-timezone
                              #:get-metric-data-max-datapoints
                              #:get-metric-statistics #:get-metric-stream
                              #:get-metric-widget-image
                              #:granite-service-version20100801 #:history-data
                              #:history-item-type #:history-summary
                              #:include-linked-accounts
                              #:include-linked-accounts-metrics #:insight-rule
                              #:insight-rule-aggregation-statistic
                              #:insight-rule-contributor
                              #:insight-rule-contributor-datapoint
                              #:insight-rule-contributor-datapoints
                              #:insight-rule-contributor-key
                              #:insight-rule-contributor-key-label
                              #:insight-rule-contributor-key-labels
                              #:insight-rule-contributor-keys
                              #:insight-rule-contributors
                              #:insight-rule-definition
                              #:insight-rule-is-managed
                              #:insight-rule-max-results
                              #:insight-rule-metric-datapoint
                              #:insight-rule-metric-datapoints
                              #:insight-rule-metric-list
                              #:insight-rule-metric-name #:insight-rule-name
                              #:insight-rule-names
                              #:insight-rule-on-transformed-logs
                              #:insight-rule-order-by #:insight-rule-schema
                              #:insight-rule-state
                              #:insight-rule-unbound-double
                              #:insight-rule-unbound-integer
                              #:insight-rule-unbound-long #:insight-rules
                              #:label-options #:last-modified #:list-dashboards
                              #:list-managed-insight-rules
                              #:list-metric-streams
                              #:list-metric-streams-max-results #:list-metrics
                              #:list-tags-for-resource #:managed-rule
                              #:managed-rule-description
                              #:managed-rule-descriptions #:managed-rule-state
                              #:managed-rules #:max-records
                              #:max-returned-results-count #:message
                              #:message-data #:message-data-code
                              #:message-data-value #:metric #:metric-alarm
                              #:metric-alarms #:metric-characteristics
                              #:metric-data #:metric-data-queries
                              #:metric-data-query #:metric-data-result
                              #:metric-data-result-messages
                              #:metric-data-results #:metric-datum
                              #:metric-expression #:metric-id #:metric-label
                              #:metric-math-anomaly-detector #:metric-name
                              #:metric-stat #:metric-stream-entries
                              #:metric-stream-entry #:metric-stream-filter
                              #:metric-stream-filter-metric-names
                              #:metric-stream-filters #:metric-stream-name
                              #:metric-stream-names
                              #:metric-stream-output-format
                              #:metric-stream-state #:metric-stream-statistic
                              #:metric-stream-statistics-additional-statistics
                              #:metric-stream-statistics-configuration
                              #:metric-stream-statistics-configurations
                              #:metric-stream-statistics-include-metrics
                              #:metric-stream-statistics-metric #:metric-widget
                              #:metric-widget-image #:metrics #:namespace
                              #:next-token #:output-format #:owning-accounts
                              #:partial-failure #:period #:periodic-spikes
                              #:put-anomaly-detector #:put-composite-alarm
                              #:put-dashboard #:put-insight-rule
                              #:put-managed-insight-rules #:put-metric-alarm
                              #:put-metric-data #:put-metric-stream #:range
                              #:recently-active #:resource-id #:resource-list
                              #:resource-name #:resource-type #:return-data
                              #:scan-by #:set-alarm-state
                              #:single-metric-anomaly-detector #:size
                              #:standard-unit #:start-metric-streams #:stat
                              #:state-reason #:state-reason-data #:state-value
                              #:statistic #:statistic-set #:statistics
                              #:status-code #:stop-metric-streams
                              #:storage-resolution #:strict-entity-validation
                              #:suppressor-period #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:template-name #:threshold
                              #:timestamp #:timestamps #:treat-missing-data
                              #:untag-resource #:values))
(common-lisp:in-package #:pira/cloudwatch)

(smithy/sdk/service:define-service granite-service-version20100801 :shape-name
                                   "GraniteServiceVersion20100801" :version
                                   "2010-08-01" :title "Amazon CloudWatch"
                                   :operations
                                   '(delete-alarms delete-anomaly-detector
                                     delete-dashboards delete-insight-rules
                                     delete-metric-stream
                                     describe-alarm-history describe-alarms
                                     describe-alarms-for-metric
                                     describe-anomaly-detectors
                                     describe-insight-rules
                                     disable-alarm-actions
                                     disable-insight-rules enable-alarm-actions
                                     enable-insight-rules get-dashboard
                                     get-insight-rule-report get-metric-data
                                     get-metric-statistics get-metric-stream
                                     get-metric-widget-image list-dashboards
                                     list-managed-insight-rules list-metrics
                                     list-metric-streams list-tags-for-resource
                                     put-anomaly-detector put-composite-alarm
                                     put-dashboard put-insight-rule
                                     put-managed-insight-rules put-metric-alarm
                                     put-metric-data put-metric-stream
                                     set-alarm-state start-metric-streams
                                     stop-metric-streams tag-resource
                                     untag-resource)
                                   :xml-namespace
                                   '(:uri
                                     "http://monitoring.amazonaws.com/doc/2010-08-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudWatch")
                                      ("arnNamespace" . "monitoring")
                                      ("cloudFormationName" . "CloudWatch")
                                      ("cloudTrailEventSource"
                                       . "monitoring.amazonaws.com")
                                      ("docId" . "monitoring-2010-08-01")
                                      ("endpointPrefix" . "monitoring"))
                                     ("aws.auth#sigv4" ("name" . "monitoring"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type actions-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum actions-suppressed-by
    common-lisp:nil
  (:wait-period "WaitPeriod")
  (:extension-period "ExtensionPeriod")
  (:alarm "Alarm"))

(smithy/sdk/shapes:define-type actions-suppressed-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alarm-history-item common-lisp:nil
                                    ((alarm-name :target-type alarm-name
                                      :member-name "AlarmName")
                                     (alarm-type :target-type alarm-type
                                      :member-name "AlarmType")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (history-item-type :target-type
                                      history-item-type :member-name
                                      "HistoryItemType")
                                     (history-summary :target-type
                                      history-summary :member-name
                                      "HistorySummary")
                                     (history-data :target-type history-data
                                      :member-name "HistoryData"))
                                    (:shape-name "AlarmHistoryItem"))

(smithy/sdk/shapes:define-list alarm-history-items :member alarm-history-item)

(smithy/sdk/shapes:define-type alarm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-name-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list alarm-names :member alarm-name)

(smithy/sdk/shapes:define-type alarm-rule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum alarm-type
    common-lisp:nil
  (:composite-alarm "CompositeAlarm")
  (:metric-alarm "MetricAlarm"))

(smithy/sdk/shapes:define-list alarm-types :member alarm-type)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anomaly-detector common-lisp:nil
                                    ((namespace :target-type namespace
                                      :member-name "Namespace")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (stat :target-type
                                      anomaly-detector-metric-stat :member-name
                                      "Stat")
                                     (configuration :target-type
                                      anomaly-detector-configuration
                                      :member-name "Configuration")
                                     (state-value :target-type
                                      anomaly-detector-state-value :member-name
                                      "StateValue")
                                     (metric-characteristics :target-type
                                      metric-characteristics :member-name
                                      "MetricCharacteristics")
                                     (single-metric-anomaly-detector
                                      :target-type
                                      single-metric-anomaly-detector
                                      :member-name
                                      "SingleMetricAnomalyDetector")
                                     (metric-math-anomaly-detector :target-type
                                      metric-math-anomaly-detector :member-name
                                      "MetricMathAnomalyDetector"))
                                    (:shape-name "AnomalyDetector"))

(smithy/sdk/shapes:define-structure anomaly-detector-configuration
                                    common-lisp:nil
                                    ((excluded-time-ranges :target-type
                                      anomaly-detector-excluded-time-ranges
                                      :member-name "ExcludedTimeRanges")
                                     (metric-timezone :target-type
                                      anomaly-detector-metric-timezone
                                      :member-name "MetricTimezone"))
                                    (:shape-name
                                     "AnomalyDetectorConfiguration"))

(smithy/sdk/shapes:define-list anomaly-detector-excluded-time-ranges :member
                               range)

(smithy/sdk/shapes:define-type anomaly-detector-metric-stat
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type anomaly-detector-metric-timezone
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum anomaly-detector-state-value
    common-lisp:nil
  (:pending-training "PENDING_TRAINING")
  (:trained-insufficient-data "TRAINED_INSUFFICIENT_DATA")
  (:trained "TRAINED"))

(smithy/sdk/shapes:define-enum anomaly-detector-type
    common-lisp:nil
  (:single-metric "SINGLE_METRIC")
  (:metric-math "METRIC_MATH"))

(smithy/sdk/shapes:define-list anomaly-detector-types :member
                               anomaly-detector-type)

(smithy/sdk/shapes:define-list anomaly-detectors :member anomaly-detector)

(smithy/sdk/shapes:define-type aws-query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batch-failures :member partial-failure)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater-than-or-equal-to-threshold "GreaterThanOrEqualToThreshold")
  (:greater-than-threshold "GreaterThanThreshold")
  (:less-than-threshold "LessThanThreshold")
  (:less-than-or-equal-to-threshold "LessThanOrEqualToThreshold")
  (:less-than-lower-or-greater-than-upper-threshold
   "LessThanLowerOrGreaterThanUpperThreshold")
  (:less-than-lower-threshold "LessThanLowerThreshold")
  (:greater-than-upper-threshold "GreaterThanUpperThreshold"))

(smithy/sdk/shapes:define-structure composite-alarm common-lisp:nil
                                    ((actions-enabled :target-type
                                      actions-enabled :member-name
                                      "ActionsEnabled")
                                     (alarm-actions :target-type resource-list
                                      :member-name "AlarmActions")
                                     (alarm-arn :target-type alarm-arn
                                      :member-name "AlarmArn")
                                     (alarm-configuration-updated-timestamp
                                      :target-type timestamp :member-name
                                      "AlarmConfigurationUpdatedTimestamp")
                                     (alarm-description :target-type
                                      alarm-description :member-name
                                      "AlarmDescription")
                                     (alarm-name :target-type alarm-name
                                      :member-name "AlarmName")
                                     (alarm-rule :target-type alarm-rule
                                      :member-name "AlarmRule")
                                     (insufficient-data-actions :target-type
                                      resource-list :member-name
                                      "InsufficientDataActions")
                                     (okactions :target-type resource-list
                                      :member-name "OKActions")
                                     (state-reason :target-type state-reason
                                      :member-name "StateReason")
                                     (state-reason-data :target-type
                                      state-reason-data :member-name
                                      "StateReasonData")
                                     (state-updated-timestamp :target-type
                                      timestamp :member-name
                                      "StateUpdatedTimestamp")
                                     (state-value :target-type state-value
                                      :member-name "StateValue")
                                     (state-transitioned-timestamp :target-type
                                      timestamp :member-name
                                      "StateTransitionedTimestamp")
                                     (actions-suppressed-by :target-type
                                      actions-suppressed-by :member-name
                                      "ActionsSuppressedBy")
                                     (actions-suppressed-reason :target-type
                                      actions-suppressed-reason :member-name
                                      "ActionsSuppressedReason")
                                     (actions-suppressor :target-type alarm-arn
                                      :member-name "ActionsSuppressor")
                                     (actions-suppressor-wait-period
                                      :target-type suppressor-period
                                      :member-name
                                      "ActionsSuppressorWaitPeriod")
                                     (actions-suppressor-extension-period
                                      :target-type suppressor-period
                                      :member-name
                                      "ActionsSuppressorExtensionPeriod"))
                                    (:shape-name "CompositeAlarm"))

(smithy/sdk/shapes:define-list composite-alarms :member composite-alarm)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type fault-description
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-name "ConcurrentModificationException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-list counts :member datapoint-value)

(smithy/sdk/shapes:define-type dashboard-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dashboard-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dashboard-entries :member dashboard-entry)

(smithy/sdk/shapes:define-structure dashboard-entry common-lisp:nil
                                    ((dashboard-name :target-type
                                      dashboard-name :member-name
                                      "DashboardName")
                                     (dashboard-arn :target-type dashboard-arn
                                      :member-name "DashboardArn")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (size :target-type size :member-name
                                      "Size"))
                                    (:shape-name "DashboardEntry"))

(smithy/sdk/shapes:define-type dashboard-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error dashboard-invalid-input-error common-lisp:nil
                                ((message :target-type dashboard-error-message
                                  :member-name "message")
                                 (dashboard-validation-messages :target-type
                                  dashboard-validation-messages :member-name
                                  "dashboardValidationMessages"))
                                (:shape-name "DashboardInvalidInputError")
                                (:error-name "InvalidParameterInput")
                                (:error-code 400))

(smithy/sdk/shapes:define-type dashboard-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dashboard-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dashboard-names :member dashboard-name)

(smithy/sdk/shapes:define-error dashboard-not-found-error common-lisp:nil
                                ((message :target-type dashboard-error-message
                                  :member-name "message"))
                                (:shape-name "DashboardNotFoundError")
                                (:error-name "ResourceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure dashboard-validation-message
                                    common-lisp:nil
                                    ((data-path :target-type data-path
                                      :member-name "DataPath")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "DashboardValidationMessage"))

(smithy/sdk/shapes:define-list dashboard-validation-messages :member
                               dashboard-validation-message)

(smithy/sdk/shapes:define-type data-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datapoint common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (sample-count :target-type datapoint-value
                                      :member-name "SampleCount")
                                     (average :target-type datapoint-value
                                      :member-name "Average")
                                     (sum :target-type datapoint-value
                                      :member-name "Sum")
                                     (minimum :target-type datapoint-value
                                      :member-name "Minimum")
                                     (maximum :target-type datapoint-value
                                      :member-name "Maximum")
                                     (unit :target-type standard-unit
                                      :member-name "Unit")
                                     (extended-statistics :target-type
                                      datapoint-value-map :member-name
                                      "ExtendedStatistics"))
                                    (:shape-name "Datapoint"))

(smithy/sdk/shapes:define-type datapoint-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-map datapoint-value-map :key extended-statistic
                              :value datapoint-value)

(smithy/sdk/shapes:define-list datapoint-values :member datapoint-value)

(smithy/sdk/shapes:define-list datapoints :member datapoint)

(smithy/sdk/shapes:define-type datapoints-to-alarm
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-alarms-input common-lisp:nil
                                ((alarm-names :target-type alarm-names
                                  :required common-lisp:t :member-name
                                  "AlarmNames"))
                                (:shape-name "DeleteAlarmsInput"))

(smithy/sdk/shapes:define-input delete-anomaly-detector-input common-lisp:nil
                                ((namespace :target-type namespace :member-name
                                  "Namespace")
                                 (metric-name :target-type metric-name
                                  :member-name "MetricName")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (stat :target-type
                                  anomaly-detector-metric-stat :member-name
                                  "Stat")
                                 (single-metric-anomaly-detector :target-type
                                  single-metric-anomaly-detector :member-name
                                  "SingleMetricAnomalyDetector")
                                 (metric-math-anomaly-detector :target-type
                                  metric-math-anomaly-detector :member-name
                                  "MetricMathAnomalyDetector"))
                                (:shape-name "DeleteAnomalyDetectorInput"))

(smithy/sdk/shapes:define-output delete-anomaly-detector-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAnomalyDetectorOutput"))

(smithy/sdk/shapes:define-input delete-dashboards-input common-lisp:nil
                                ((dashboard-names :target-type dashboard-names
                                  :required common-lisp:t :member-name
                                  "DashboardNames"))
                                (:shape-name "DeleteDashboardsInput"))

(smithy/sdk/shapes:define-output delete-dashboards-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDashboardsOutput"))

(smithy/sdk/shapes:define-input delete-insight-rules-input common-lisp:nil
                                ((rule-names :target-type insight-rule-names
                                  :required common-lisp:t :member-name
                                  "RuleNames"))
                                (:shape-name "DeleteInsightRulesInput"))

(smithy/sdk/shapes:define-output delete-insight-rules-output common-lisp:nil
                                 ((failures :target-type batch-failures
                                   :member-name "Failures"))
                                 (:shape-name "DeleteInsightRulesOutput"))

(smithy/sdk/shapes:define-input delete-metric-stream-input common-lisp:nil
                                ((name :target-type metric-stream-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteMetricStreamInput"))

(smithy/sdk/shapes:define-output delete-metric-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMetricStreamOutput"))

(smithy/sdk/shapes:define-input describe-alarm-history-input common-lisp:nil
                                ((alarm-name :target-type alarm-name
                                  :member-name "AlarmName")
                                 (alarm-types :target-type alarm-types
                                  :member-name "AlarmTypes")
                                 (history-item-type :target-type
                                  history-item-type :member-name
                                  "HistoryItemType")
                                 (start-date :target-type timestamp
                                  :member-name "StartDate")
                                 (end-date :target-type timestamp :member-name
                                  "EndDate")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (scan-by :target-type scan-by :member-name
                                  "ScanBy"))
                                (:shape-name "DescribeAlarmHistoryInput"))

(smithy/sdk/shapes:define-output describe-alarm-history-output common-lisp:nil
                                 ((alarm-history-items :target-type
                                   alarm-history-items :member-name
                                   "AlarmHistoryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAlarmHistoryOutput"))

(smithy/sdk/shapes:define-input describe-alarms-for-metric-input
                                common-lisp:nil
                                ((metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (namespace :target-type namespace :required
                                  common-lisp:t :member-name "Namespace")
                                 (statistic :target-type statistic :member-name
                                  "Statistic")
                                 (extended-statistic :target-type
                                  extended-statistic :member-name
                                  "ExtendedStatistic")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (period :target-type period :member-name
                                  "Period")
                                 (unit :target-type standard-unit :member-name
                                  "Unit"))
                                (:shape-name "DescribeAlarmsForMetricInput"))

(smithy/sdk/shapes:define-output describe-alarms-for-metric-output
                                 common-lisp:nil
                                 ((metric-alarms :target-type metric-alarms
                                   :member-name "MetricAlarms"))
                                 (:shape-name "DescribeAlarmsForMetricOutput"))

(smithy/sdk/shapes:define-input describe-alarms-input common-lisp:nil
                                ((alarm-names :target-type alarm-names
                                  :member-name "AlarmNames")
                                 (alarm-name-prefix :target-type
                                  alarm-name-prefix :member-name
                                  "AlarmNamePrefix")
                                 (alarm-types :target-type alarm-types
                                  :member-name "AlarmTypes")
                                 (children-of-alarm-name :target-type
                                  alarm-name :member-name
                                  "ChildrenOfAlarmName")
                                 (parents-of-alarm-name :target-type alarm-name
                                  :member-name "ParentsOfAlarmName")
                                 (state-value :target-type state-value
                                  :member-name "StateValue")
                                 (action-prefix :target-type action-prefix
                                  :member-name "ActionPrefix")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeAlarmsInput"))

(smithy/sdk/shapes:define-output describe-alarms-output common-lisp:nil
                                 ((composite-alarms :target-type
                                   composite-alarms :member-name
                                   "CompositeAlarms")
                                  (metric-alarms :target-type metric-alarms
                                   :member-name "MetricAlarms")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAlarmsOutput"))

(smithy/sdk/shapes:define-input describe-anomaly-detectors-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-returned-results-count :member-name
                                  "MaxResults")
                                 (namespace :target-type namespace :member-name
                                  "Namespace")
                                 (metric-name :target-type metric-name
                                  :member-name "MetricName")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (anomaly-detector-types :target-type
                                  anomaly-detector-types :member-name
                                  "AnomalyDetectorTypes"))
                                (:shape-name "DescribeAnomalyDetectorsInput"))

(smithy/sdk/shapes:define-output describe-anomaly-detectors-output
                                 common-lisp:nil
                                 ((anomaly-detectors :target-type
                                   anomaly-detectors :member-name
                                   "AnomalyDetectors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAnomalyDetectorsOutput"))

(smithy/sdk/shapes:define-input describe-insight-rules-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  insight-rule-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeInsightRulesInput"))

(smithy/sdk/shapes:define-output describe-insight-rules-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (insight-rules :target-type insight-rules
                                   :member-name "InsightRules"))
                                 (:shape-name "DescribeInsightRulesOutput"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-structure dimension-filter common-lisp:nil
                                    ((name :target-type dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type dimension-value
                                      :member-name "Value"))
                                    (:shape-name "DimensionFilter"))

(smithy/sdk/shapes:define-list dimension-filters :member dimension-filter)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-input disable-alarm-actions-input common-lisp:nil
                                ((alarm-names :target-type alarm-names
                                  :required common-lisp:t :member-name
                                  "AlarmNames"))
                                (:shape-name "DisableAlarmActionsInput"))

(smithy/sdk/shapes:define-input disable-insight-rules-input common-lisp:nil
                                ((rule-names :target-type insight-rule-names
                                  :required common-lisp:t :member-name
                                  "RuleNames"))
                                (:shape-name "DisableInsightRulesInput"))

(smithy/sdk/shapes:define-output disable-insight-rules-output common-lisp:nil
                                 ((failures :target-type batch-failures
                                   :member-name "Failures"))
                                 (:shape-name "DisableInsightRulesOutput"))

(smithy/sdk/shapes:define-input enable-alarm-actions-input common-lisp:nil
                                ((alarm-names :target-type alarm-names
                                  :required common-lisp:t :member-name
                                  "AlarmNames"))
                                (:shape-name "EnableAlarmActionsInput"))

(smithy/sdk/shapes:define-input enable-insight-rules-input common-lisp:nil
                                ((rule-names :target-type insight-rule-names
                                  :required common-lisp:t :member-name
                                  "RuleNames"))
                                (:shape-name "EnableInsightRulesInput"))

(smithy/sdk/shapes:define-output enable-insight-rules-output common-lisp:nil
                                 ((failures :target-type batch-failures
                                   :member-name "Failures"))
                                 (:shape-name "EnableInsightRulesOutput"))

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((key-attributes :target-type
                                      entity-key-attributes-map :member-name
                                      "KeyAttributes")
                                     (attributes :target-type
                                      entity-attributes-map :member-name
                                      "Attributes"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-map entity-attributes-map :key
                              entity-attributes-map-key-string :value
                              entity-attributes-map-value-string)

(smithy/sdk/shapes:define-type entity-attributes-map-key-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-attributes-map-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map entity-key-attributes-map :key
                              entity-key-attributes-map-key-string :value
                              entity-key-attributes-map-value-string)

(smithy/sdk/shapes:define-type entity-key-attributes-map-key-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-key-attributes-map-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-metric-data common-lisp:nil
                                    ((entity :target-type entity :member-name
                                      "Entity")
                                     (metric-data :target-type metric-data
                                      :member-name "MetricData"))
                                    (:shape-name "EntityMetricData"))

(smithy/sdk/shapes:define-list entity-metric-data-list :member
                               entity-metric-data)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluate-low-sample-count-percentile
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-periods
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum evaluation-state
    common-lisp:nil
  (:partial-data "PARTIAL_DATA"))

(smithy/sdk/shapes:define-type exception-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type extended-statistic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list extended-statistics :member extended-statistic)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fault-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-dashboard-input common-lisp:nil
                                ((dashboard-name :target-type dashboard-name
                                  :required common-lisp:t :member-name
                                  "DashboardName"))
                                (:shape-name "GetDashboardInput"))

(smithy/sdk/shapes:define-output get-dashboard-output common-lisp:nil
                                 ((dashboard-arn :target-type dashboard-arn
                                   :member-name "DashboardArn")
                                  (dashboard-body :target-type dashboard-body
                                   :member-name "DashboardBody")
                                  (dashboard-name :target-type dashboard-name
                                   :member-name "DashboardName"))
                                 (:shape-name "GetDashboardOutput"))

(smithy/sdk/shapes:define-input get-insight-rule-report-input common-lisp:nil
                                ((rule-name :target-type insight-rule-name
                                  :required common-lisp:t :member-name
                                  "RuleName")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (period :target-type period :required
                                  common-lisp:t :member-name "Period")
                                 (max-contributor-count :target-type
                                  insight-rule-unbound-integer :member-name
                                  "MaxContributorCount")
                                 (metrics :target-type insight-rule-metric-list
                                  :member-name "Metrics")
                                 (order-by :target-type insight-rule-order-by
                                  :member-name "OrderBy"))
                                (:shape-name "GetInsightRuleReportInput"))

(smithy/sdk/shapes:define-output get-insight-rule-report-output common-lisp:nil
                                 ((key-labels :target-type
                                   insight-rule-contributor-key-labels
                                   :member-name "KeyLabels")
                                  (aggregation-statistic :target-type
                                   insight-rule-aggregation-statistic
                                   :member-name "AggregationStatistic")
                                  (aggregate-value :target-type
                                   insight-rule-unbound-double :member-name
                                   "AggregateValue")
                                  (approximate-unique-count :target-type
                                   insight-rule-unbound-long :member-name
                                   "ApproximateUniqueCount")
                                  (contributors :target-type
                                   insight-rule-contributors :member-name
                                   "Contributors")
                                  (metric-datapoints :target-type
                                   insight-rule-metric-datapoints :member-name
                                   "MetricDatapoints"))
                                 (:shape-name "GetInsightRuleReportOutput"))

(smithy/sdk/shapes:define-input get-metric-data-input common-lisp:nil
                                ((metric-data-queries :target-type
                                  metric-data-queries :required common-lisp:t
                                  :member-name "MetricDataQueries")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (scan-by :target-type scan-by :member-name
                                  "ScanBy")
                                 (max-datapoints :target-type
                                  get-metric-data-max-datapoints :member-name
                                  "MaxDatapoints")
                                 (label-options :target-type label-options
                                  :member-name "LabelOptions"))
                                (:shape-name "GetMetricDataInput"))

(smithy/sdk/shapes:define-type get-metric-data-label-timezone
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type get-metric-data-max-datapoints
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output get-metric-data-output common-lisp:nil
                                 ((metric-data-results :target-type
                                   metric-data-results :member-name
                                   "MetricDataResults")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (messages :target-type
                                   metric-data-result-messages :member-name
                                   "Messages"))
                                 (:shape-name "GetMetricDataOutput"))

(smithy/sdk/shapes:define-input get-metric-statistics-input common-lisp:nil
                                ((namespace :target-type namespace :required
                                  common-lisp:t :member-name "Namespace")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (period :target-type period :required
                                  common-lisp:t :member-name "Period")
                                 (statistics :target-type statistics
                                  :member-name "Statistics")
                                 (extended-statistics :target-type
                                  extended-statistics :member-name
                                  "ExtendedStatistics")
                                 (unit :target-type standard-unit :member-name
                                  "Unit"))
                                (:shape-name "GetMetricStatisticsInput"))

(smithy/sdk/shapes:define-output get-metric-statistics-output common-lisp:nil
                                 ((label :target-type metric-label :member-name
                                   "Label")
                                  (datapoints :target-type datapoints
                                   :member-name "Datapoints"))
                                 (:shape-name "GetMetricStatisticsOutput"))

(smithy/sdk/shapes:define-input get-metric-stream-input common-lisp:nil
                                ((name :target-type metric-stream-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "GetMetricStreamInput"))

(smithy/sdk/shapes:define-output get-metric-stream-output common-lisp:nil
                                 ((arn :target-type amazon-resource-name
                                   :member-name "Arn")
                                  (name :target-type metric-stream-name
                                   :member-name "Name")
                                  (include-filters :target-type
                                   metric-stream-filters :member-name
                                   "IncludeFilters")
                                  (exclude-filters :target-type
                                   metric-stream-filters :member-name
                                   "ExcludeFilters")
                                  (firehose-arn :target-type
                                   amazon-resource-name :member-name
                                   "FirehoseArn")
                                  (role-arn :target-type amazon-resource-name
                                   :member-name "RoleArn")
                                  (state :target-type metric-stream-state
                                   :member-name "State")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (last-update-date :target-type timestamp
                                   :member-name "LastUpdateDate")
                                  (output-format :target-type
                                   metric-stream-output-format :member-name
                                   "OutputFormat")
                                  (statistics-configurations :target-type
                                   metric-stream-statistics-configurations
                                   :member-name "StatisticsConfigurations")
                                  (include-linked-accounts-metrics :target-type
                                   include-linked-accounts-metrics :member-name
                                   "IncludeLinkedAccountsMetrics"))
                                 (:shape-name "GetMetricStreamOutput"))

(smithy/sdk/shapes:define-input get-metric-widget-image-input common-lisp:nil
                                ((metric-widget :target-type metric-widget
                                  :required common-lisp:t :member-name
                                  "MetricWidget")
                                 (output-format :target-type output-format
                                  :member-name "OutputFormat"))
                                (:shape-name "GetMetricWidgetImageInput"))

(smithy/sdk/shapes:define-output get-metric-widget-image-output common-lisp:nil
                                 ((metric-widget-image :target-type
                                   metric-widget-image :member-name
                                   "MetricWidgetImage"))
                                 (:shape-name "GetMetricWidgetImageOutput"))

(smithy/sdk/shapes:define-type history-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum history-item-type
    common-lisp:nil
  (:configuration-update "ConfigurationUpdate")
  (:state-update "StateUpdate")
  (:action "Action"))

(smithy/sdk/shapes:define-type history-summary smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-linked-accounts
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-linked-accounts-metrics
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure insight-rule common-lisp:nil
                                    ((name :target-type insight-rule-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (state :target-type insight-rule-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (schema :target-type insight-rule-schema
                                      :required common-lisp:t :member-name
                                      "Schema")
                                     (definition :target-type
                                      insight-rule-definition :required
                                      common-lisp:t :member-name "Definition")
                                     (managed-rule :target-type
                                      insight-rule-is-managed :member-name
                                      "ManagedRule")
                                     (apply-on-transformed-logs :target-type
                                      insight-rule-on-transformed-logs
                                      :member-name "ApplyOnTransformedLogs"))
                                    (:shape-name "InsightRule"))

(smithy/sdk/shapes:define-type insight-rule-aggregation-statistic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insight-rule-contributor common-lisp:nil
                                    ((keys :target-type
                                      insight-rule-contributor-keys :required
                                      common-lisp:t :member-name "Keys")
                                     (approximate-aggregate-value :target-type
                                      insight-rule-unbound-double :required
                                      common-lisp:t :member-name
                                      "ApproximateAggregateValue")
                                     (datapoints :target-type
                                      insight-rule-contributor-datapoints
                                      :required common-lisp:t :member-name
                                      "Datapoints"))
                                    (:shape-name "InsightRuleContributor"))

(smithy/sdk/shapes:define-structure insight-rule-contributor-datapoint
                                    common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (approximate-value :target-type
                                      insight-rule-unbound-double :required
                                      common-lisp:t :member-name
                                      "ApproximateValue"))
                                    (:shape-name
                                     "InsightRuleContributorDatapoint"))

(smithy/sdk/shapes:define-list insight-rule-contributor-datapoints :member
                               insight-rule-contributor-datapoint)

(smithy/sdk/shapes:define-type insight-rule-contributor-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-contributor-key-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list insight-rule-contributor-key-labels :member
                               insight-rule-contributor-key-label)

(smithy/sdk/shapes:define-list insight-rule-contributor-keys :member
                               insight-rule-contributor-key)

(smithy/sdk/shapes:define-list insight-rule-contributors :member
                               insight-rule-contributor)

(smithy/sdk/shapes:define-type insight-rule-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-is-managed
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type insight-rule-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure insight-rule-metric-datapoint
                                    common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (unique-contributors :target-type
                                      insight-rule-unbound-double :member-name
                                      "UniqueContributors")
                                     (max-contributor-value :target-type
                                      insight-rule-unbound-double :member-name
                                      "MaxContributorValue")
                                     (sample-count :target-type
                                      insight-rule-unbound-double :member-name
                                      "SampleCount")
                                     (average :target-type
                                      insight-rule-unbound-double :member-name
                                      "Average")
                                     (sum :target-type
                                      insight-rule-unbound-double :member-name
                                      "Sum")
                                     (minimum :target-type
                                      insight-rule-unbound-double :member-name
                                      "Minimum")
                                     (maximum :target-type
                                      insight-rule-unbound-double :member-name
                                      "Maximum"))
                                    (:shape-name "InsightRuleMetricDatapoint"))

(smithy/sdk/shapes:define-list insight-rule-metric-datapoints :member
                               insight-rule-metric-datapoint)

(smithy/sdk/shapes:define-list insight-rule-metric-list :member
                               insight-rule-metric-name)

(smithy/sdk/shapes:define-type insight-rule-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list insight-rule-names :member insight-rule-name)

(smithy/sdk/shapes:define-type insight-rule-on-transformed-logs
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type insight-rule-order-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-schema
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-rule-unbound-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type insight-rule-unbound-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type insight-rule-unbound-long
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list insight-rules :member insight-rule)

(smithy/sdk/shapes:define-error internal-service-fault common-lisp:nil
                                ((message :target-type fault-description
                                  :member-name "Message"))
                                (:shape-name "InternalServiceFault")
                                (:error-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-format-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidFormatFault")
                                (:error-name "InvalidFormat") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidNextToken")
                                (:error-name "InvalidNextToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-name "InvalidParameterCombination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-name "InvalidParameterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure label-options common-lisp:nil
                                    ((timezone :target-type
                                      get-metric-data-label-timezone
                                      :member-name "Timezone"))
                                    (:shape-name "LabelOptions"))

(smithy/sdk/shapes:define-type last-modified smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type fault-description
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededFault")
                                (:error-name "LimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-input list-dashboards-input common-lisp:nil
                                ((dashboard-name-prefix :target-type
                                  dashboard-name-prefix :member-name
                                  "DashboardNamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListDashboardsInput"))

(smithy/sdk/shapes:define-output list-dashboards-output common-lisp:nil
                                 ((dashboard-entries :target-type
                                   dashboard-entries :member-name
                                   "DashboardEntries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDashboardsOutput"))

(smithy/sdk/shapes:define-input list-managed-insight-rules-input
                                common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  insight-rule-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListManagedInsightRulesInput"))

(smithy/sdk/shapes:define-output list-managed-insight-rules-output
                                 common-lisp:nil
                                 ((managed-rules :target-type
                                   managed-rule-descriptions :member-name
                                   "ManagedRules")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListManagedInsightRulesOutput"))

(smithy/sdk/shapes:define-input list-metric-streams-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-metric-streams-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListMetricStreamsInput"))

(smithy/sdk/shapes:define-type list-metric-streams-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-metric-streams-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (entries :target-type metric-stream-entries
                                   :member-name "Entries"))
                                 (:shape-name "ListMetricStreamsOutput"))

(smithy/sdk/shapes:define-input list-metrics-input common-lisp:nil
                                ((namespace :target-type namespace :member-name
                                  "Namespace")
                                 (metric-name :target-type metric-name
                                  :member-name "MetricName")
                                 (dimensions :target-type dimension-filters
                                  :member-name "Dimensions")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (recently-active :target-type recently-active
                                  :member-name "RecentlyActive")
                                 (include-linked-accounts :target-type
                                  include-linked-accounts :member-name
                                  "IncludeLinkedAccounts")
                                 (owning-account :target-type account-id
                                  :member-name "OwningAccount"))
                                (:shape-name "ListMetricsInput"))

(smithy/sdk/shapes:define-output list-metrics-output common-lisp:nil
                                 ((metrics :target-type metrics :member-name
                                   "Metrics")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (owning-accounts :target-type owning-accounts
                                   :member-name "OwningAccounts"))
                                 (:shape-name "ListMetricsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure managed-rule common-lisp:nil
                                    ((template-name :target-type template-name
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceARN")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ManagedRule"))

(smithy/sdk/shapes:define-structure managed-rule-description common-lisp:nil
                                    ((template-name :target-type template-name
                                      :member-name "TemplateName")
                                     (resource-arn :target-type
                                      amazon-resource-name :member-name
                                      "ResourceARN")
                                     (rule-state :target-type
                                      managed-rule-state :member-name
                                      "RuleState"))
                                    (:shape-name "ManagedRuleDescription"))

(smithy/sdk/shapes:define-list managed-rule-descriptions :member
                               managed-rule-description)

(smithy/sdk/shapes:define-structure managed-rule-state common-lisp:nil
                                    ((rule-name :target-type insight-rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (state :target-type insight-rule-state
                                      :required common-lisp:t :member-name
                                      "State"))
                                    (:shape-name "ManagedRuleState"))

(smithy/sdk/shapes:define-list managed-rules :member managed-rule)

(smithy/sdk/shapes:define-type max-records smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-returned-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-data common-lisp:nil
                                    ((code :target-type message-data-code
                                      :member-name "Code")
                                     (value :target-type message-data-value
                                      :member-name "Value"))
                                    (:shape-name "MessageData"))

(smithy/sdk/shapes:define-type message-data-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-data-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((namespace :target-type namespace
                                      :member-name "Namespace")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-structure metric-alarm common-lisp:nil
                                    ((alarm-name :target-type alarm-name
                                      :member-name "AlarmName")
                                     (alarm-arn :target-type alarm-arn
                                      :member-name "AlarmArn")
                                     (alarm-description :target-type
                                      alarm-description :member-name
                                      "AlarmDescription")
                                     (alarm-configuration-updated-timestamp
                                      :target-type timestamp :member-name
                                      "AlarmConfigurationUpdatedTimestamp")
                                     (actions-enabled :target-type
                                      actions-enabled :member-name
                                      "ActionsEnabled")
                                     (okactions :target-type resource-list
                                      :member-name "OKActions")
                                     (alarm-actions :target-type resource-list
                                      :member-name "AlarmActions")
                                     (insufficient-data-actions :target-type
                                      resource-list :member-name
                                      "InsufficientDataActions")
                                     (state-value :target-type state-value
                                      :member-name "StateValue")
                                     (state-reason :target-type state-reason
                                      :member-name "StateReason")
                                     (state-reason-data :target-type
                                      state-reason-data :member-name
                                      "StateReasonData")
                                     (state-updated-timestamp :target-type
                                      timestamp :member-name
                                      "StateUpdatedTimestamp")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (namespace :target-type namespace
                                      :member-name "Namespace")
                                     (statistic :target-type statistic
                                      :member-name "Statistic")
                                     (extended-statistic :target-type
                                      extended-statistic :member-name
                                      "ExtendedStatistic")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (period :target-type period :member-name
                                      "Period")
                                     (unit :target-type standard-unit
                                      :member-name "Unit")
                                     (evaluation-periods :target-type
                                      evaluation-periods :member-name
                                      "EvaluationPeriods")
                                     (datapoints-to-alarm :target-type
                                      datapoints-to-alarm :member-name
                                      "DatapointsToAlarm")
                                     (threshold :target-type threshold
                                      :member-name "Threshold")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator")
                                     (treat-missing-data :target-type
                                      treat-missing-data :member-name
                                      "TreatMissingData")
                                     (evaluate-low-sample-count-percentile
                                      :target-type
                                      evaluate-low-sample-count-percentile
                                      :member-name
                                      "EvaluateLowSampleCountPercentile")
                                     (metrics :target-type metric-data-queries
                                      :member-name "Metrics")
                                     (threshold-metric-id :target-type
                                      metric-id :member-name
                                      "ThresholdMetricId")
                                     (evaluation-state :target-type
                                      evaluation-state :member-name
                                      "EvaluationState")
                                     (state-transitioned-timestamp :target-type
                                      timestamp :member-name
                                      "StateTransitionedTimestamp"))
                                    (:shape-name "MetricAlarm"))

(smithy/sdk/shapes:define-list metric-alarms :member metric-alarm)

(smithy/sdk/shapes:define-structure metric-characteristics common-lisp:nil
                                    ((periodic-spikes :target-type
                                      periodic-spikes :member-name
                                      "PeriodicSpikes"))
                                    (:shape-name "MetricCharacteristics"))

(smithy/sdk/shapes:define-list metric-data :member metric-datum)

(smithy/sdk/shapes:define-list metric-data-queries :member metric-data-query)

(smithy/sdk/shapes:define-structure metric-data-query common-lisp:nil
                                    ((id :target-type metric-id :required
                                      common-lisp:t :member-name "Id")
                                     (metric-stat :target-type metric-stat
                                      :member-name "MetricStat")
                                     (expression :target-type metric-expression
                                      :member-name "Expression")
                                     (label :target-type metric-label
                                      :member-name "Label")
                                     (return-data :target-type return-data
                                      :member-name "ReturnData")
                                     (period :target-type period :member-name
                                      "Period")
                                     (account-id :target-type account-id
                                      :member-name "AccountId"))
                                    (:shape-name "MetricDataQuery"))

(smithy/sdk/shapes:define-structure metric-data-result common-lisp:nil
                                    ((id :target-type metric-id :member-name
                                      "Id")
                                     (label :target-type metric-label
                                      :member-name "Label")
                                     (timestamps :target-type timestamps
                                      :member-name "Timestamps")
                                     (values :target-type datapoint-values
                                      :member-name "Values")
                                     (status-code :target-type status-code
                                      :member-name "StatusCode")
                                     (messages :target-type
                                      metric-data-result-messages :member-name
                                      "Messages"))
                                    (:shape-name "MetricDataResult"))

(smithy/sdk/shapes:define-list metric-data-result-messages :member message-data)

(smithy/sdk/shapes:define-list metric-data-results :member metric-data-result)

(smithy/sdk/shapes:define-structure metric-datum common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (value :target-type datapoint-value
                                      :member-name "Value")
                                     (statistic-values :target-type
                                      statistic-set :member-name
                                      "StatisticValues")
                                     (values :target-type values :member-name
                                      "Values")
                                     (counts :target-type counts :member-name
                                      "Counts")
                                     (unit :target-type standard-unit
                                      :member-name "Unit")
                                     (storage-resolution :target-type
                                      storage-resolution :member-name
                                      "StorageResolution"))
                                    (:shape-name "MetricDatum"))

(smithy/sdk/shapes:define-type metric-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-math-anomaly-detector
                                    common-lisp:nil
                                    ((metric-data-queries :target-type
                                      metric-data-queries :member-name
                                      "MetricDataQueries"))
                                    (:shape-name "MetricMathAnomalyDetector"))

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-stat common-lisp:nil
                                    ((metric :target-type metric :required
                                      common-lisp:t :member-name "Metric")
                                     (period :target-type period :required
                                      common-lisp:t :member-name "Period")
                                     (stat :target-type stat :required
                                      common-lisp:t :member-name "Stat")
                                     (unit :target-type standard-unit
                                      :member-name "Unit"))
                                    (:shape-name "MetricStat"))

(smithy/sdk/shapes:define-list metric-stream-entries :member
                               metric-stream-entry)

(smithy/sdk/shapes:define-structure metric-stream-entry common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "Arn")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (last-update-date :target-type timestamp
                                      :member-name "LastUpdateDate")
                                     (name :target-type metric-stream-name
                                      :member-name "Name")
                                     (firehose-arn :target-type
                                      amazon-resource-name :member-name
                                      "FirehoseArn")
                                     (state :target-type metric-stream-state
                                      :member-name "State")
                                     (output-format :target-type
                                      metric-stream-output-format :member-name
                                      "OutputFormat"))
                                    (:shape-name "MetricStreamEntry"))

(smithy/sdk/shapes:define-structure metric-stream-filter common-lisp:nil
                                    ((namespace :target-type namespace
                                      :member-name "Namespace")
                                     (metric-names :target-type
                                      metric-stream-filter-metric-names
                                      :member-name "MetricNames"))
                                    (:shape-name "MetricStreamFilter"))

(smithy/sdk/shapes:define-list metric-stream-filter-metric-names :member
                               metric-name)

(smithy/sdk/shapes:define-list metric-stream-filters :member
                               metric-stream-filter)

(smithy/sdk/shapes:define-type metric-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-stream-names :member metric-stream-name)

(smithy/sdk/shapes:define-enum metric-stream-output-format
    common-lisp:nil
  (:json "json")
  (:open-telemetry-0-7 "opentelemetry0.7")
  (:open-telemetry-1-0 "opentelemetry1.0"))

(smithy/sdk/shapes:define-type metric-stream-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-stream-statistic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-stream-statistics-additional-statistics
                               :member metric-stream-statistic)

(smithy/sdk/shapes:define-structure metric-stream-statistics-configuration
                                    common-lisp:nil
                                    ((include-metrics :target-type
                                      metric-stream-statistics-include-metrics
                                      :required common-lisp:t :member-name
                                      "IncludeMetrics")
                                     (additional-statistics :target-type
                                      metric-stream-statistics-additional-statistics
                                      :required common-lisp:t :member-name
                                      "AdditionalStatistics"))
                                    (:shape-name
                                     "MetricStreamStatisticsConfiguration"))

(smithy/sdk/shapes:define-list metric-stream-statistics-configurations :member
                               metric-stream-statistics-configuration)

(smithy/sdk/shapes:define-list metric-stream-statistics-include-metrics :member
                               metric-stream-statistics-metric)

(smithy/sdk/shapes:define-structure metric-stream-statistics-metric
                                    common-lisp:nil
                                    ((namespace :target-type namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName"))
                                    (:shape-name
                                     "MetricStreamStatisticsMetric"))

(smithy/sdk/shapes:define-type metric-widget smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-widget-image smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list metrics :member metric)

(smithy/sdk/shapes:define-error missing-required-parameter-exception
                                common-lisp:nil
                                ((message :target-type aws-query-error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MissingRequiredParameterException")
                                (:error-name "MissingParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list owning-accounts :member account-id)

(smithy/sdk/shapes:define-structure partial-failure common-lisp:nil
                                    ((failure-resource :target-type
                                      failure-resource :member-name
                                      "FailureResource")
                                     (exception-type :target-type
                                      exception-type :member-name
                                      "ExceptionType")
                                     (failure-code :target-type failure-code
                                      :member-name "FailureCode")
                                     (failure-description :target-type
                                      failure-description :member-name
                                      "FailureDescription"))
                                    (:shape-name "PartialFailure"))

(smithy/sdk/shapes:define-type period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type periodic-spikes smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input put-anomaly-detector-input common-lisp:nil
                                ((namespace :target-type namespace :member-name
                                  "Namespace")
                                 (metric-name :target-type metric-name
                                  :member-name "MetricName")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (stat :target-type
                                  anomaly-detector-metric-stat :member-name
                                  "Stat")
                                 (configuration :target-type
                                  anomaly-detector-configuration :member-name
                                  "Configuration")
                                 (metric-characteristics :target-type
                                  metric-characteristics :member-name
                                  "MetricCharacteristics")
                                 (single-metric-anomaly-detector :target-type
                                  single-metric-anomaly-detector :member-name
                                  "SingleMetricAnomalyDetector")
                                 (metric-math-anomaly-detector :target-type
                                  metric-math-anomaly-detector :member-name
                                  "MetricMathAnomalyDetector"))
                                (:shape-name "PutAnomalyDetectorInput"))

(smithy/sdk/shapes:define-output put-anomaly-detector-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutAnomalyDetectorOutput"))

(smithy/sdk/shapes:define-input put-composite-alarm-input common-lisp:nil
                                ((actions-enabled :target-type actions-enabled
                                  :member-name "ActionsEnabled")
                                 (alarm-actions :target-type resource-list
                                  :member-name "AlarmActions")
                                 (alarm-description :target-type
                                  alarm-description :member-name
                                  "AlarmDescription")
                                 (alarm-name :target-type alarm-name :required
                                  common-lisp:t :member-name "AlarmName")
                                 (alarm-rule :target-type alarm-rule :required
                                  common-lisp:t :member-name "AlarmRule")
                                 (insufficient-data-actions :target-type
                                  resource-list :member-name
                                  "InsufficientDataActions")
                                 (okactions :target-type resource-list
                                  :member-name "OKActions")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (actions-suppressor :target-type alarm-arn
                                  :member-name "ActionsSuppressor")
                                 (actions-suppressor-wait-period :target-type
                                  suppressor-period :member-name
                                  "ActionsSuppressorWaitPeriod")
                                 (actions-suppressor-extension-period
                                  :target-type suppressor-period :member-name
                                  "ActionsSuppressorExtensionPeriod"))
                                (:shape-name "PutCompositeAlarmInput"))

(smithy/sdk/shapes:define-input put-dashboard-input common-lisp:nil
                                ((dashboard-name :target-type dashboard-name
                                  :required common-lisp:t :member-name
                                  "DashboardName")
                                 (dashboard-body :target-type dashboard-body
                                  :required common-lisp:t :member-name
                                  "DashboardBody"))
                                (:shape-name "PutDashboardInput"))

(smithy/sdk/shapes:define-output put-dashboard-output common-lisp:nil
                                 ((dashboard-validation-messages :target-type
                                   dashboard-validation-messages :member-name
                                   "DashboardValidationMessages"))
                                 (:shape-name "PutDashboardOutput"))

(smithy/sdk/shapes:define-input put-insight-rule-input common-lisp:nil
                                ((rule-name :target-type insight-rule-name
                                  :required common-lisp:t :member-name
                                  "RuleName")
                                 (rule-state :target-type insight-rule-state
                                  :member-name "RuleState")
                                 (rule-definition :target-type
                                  insight-rule-definition :required
                                  common-lisp:t :member-name "RuleDefinition")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (apply-on-transformed-logs :target-type
                                  insight-rule-on-transformed-logs :member-name
                                  "ApplyOnTransformedLogs"))
                                (:shape-name "PutInsightRuleInput"))

(smithy/sdk/shapes:define-output put-insight-rule-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutInsightRuleOutput"))

(smithy/sdk/shapes:define-input put-managed-insight-rules-input common-lisp:nil
                                ((managed-rules :target-type managed-rules
                                  :required common-lisp:t :member-name
                                  "ManagedRules"))
                                (:shape-name "PutManagedInsightRulesInput"))

(smithy/sdk/shapes:define-output put-managed-insight-rules-output
                                 common-lisp:nil
                                 ((failures :target-type batch-failures
                                   :member-name "Failures"))
                                 (:shape-name "PutManagedInsightRulesOutput"))

(smithy/sdk/shapes:define-input put-metric-alarm-input common-lisp:nil
                                ((alarm-name :target-type alarm-name :required
                                  common-lisp:t :member-name "AlarmName")
                                 (alarm-description :target-type
                                  alarm-description :member-name
                                  "AlarmDescription")
                                 (actions-enabled :target-type actions-enabled
                                  :member-name "ActionsEnabled")
                                 (okactions :target-type resource-list
                                  :member-name "OKActions")
                                 (alarm-actions :target-type resource-list
                                  :member-name "AlarmActions")
                                 (insufficient-data-actions :target-type
                                  resource-list :member-name
                                  "InsufficientDataActions")
                                 (metric-name :target-type metric-name
                                  :member-name "MetricName")
                                 (namespace :target-type namespace :member-name
                                  "Namespace")
                                 (statistic :target-type statistic :member-name
                                  "Statistic")
                                 (extended-statistic :target-type
                                  extended-statistic :member-name
                                  "ExtendedStatistic")
                                 (dimensions :target-type dimensions
                                  :member-name "Dimensions")
                                 (period :target-type period :member-name
                                  "Period")
                                 (unit :target-type standard-unit :member-name
                                  "Unit")
                                 (evaluation-periods :target-type
                                  evaluation-periods :required common-lisp:t
                                  :member-name "EvaluationPeriods")
                                 (datapoints-to-alarm :target-type
                                  datapoints-to-alarm :member-name
                                  "DatapointsToAlarm")
                                 (threshold :target-type threshold :member-name
                                  "Threshold")
                                 (comparison-operator :target-type
                                  comparison-operator :required common-lisp:t
                                  :member-name "ComparisonOperator")
                                 (treat-missing-data :target-type
                                  treat-missing-data :member-name
                                  "TreatMissingData")
                                 (evaluate-low-sample-count-percentile
                                  :target-type
                                  evaluate-low-sample-count-percentile
                                  :member-name
                                  "EvaluateLowSampleCountPercentile")
                                 (metrics :target-type metric-data-queries
                                  :member-name "Metrics")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (threshold-metric-id :target-type metric-id
                                  :member-name "ThresholdMetricId"))
                                (:shape-name "PutMetricAlarmInput"))

(smithy/sdk/shapes:define-input put-metric-data-input common-lisp:nil
                                ((namespace :target-type namespace :required
                                  common-lisp:t :member-name "Namespace")
                                 (metric-data :target-type metric-data
                                  :member-name "MetricData")
                                 (entity-metric-data :target-type
                                  entity-metric-data-list :member-name
                                  "EntityMetricData")
                                 (strict-entity-validation :target-type
                                  strict-entity-validation :member-name
                                  "StrictEntityValidation"))
                                (:shape-name "PutMetricDataInput"))

(smithy/sdk/shapes:define-input put-metric-stream-input common-lisp:nil
                                ((name :target-type metric-stream-name
                                  :required common-lisp:t :member-name "Name")
                                 (include-filters :target-type
                                  metric-stream-filters :member-name
                                  "IncludeFilters")
                                 (exclude-filters :target-type
                                  metric-stream-filters :member-name
                                  "ExcludeFilters")
                                 (firehose-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "FirehoseArn")
                                 (role-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "RoleArn")
                                 (output-format :target-type
                                  metric-stream-output-format :required
                                  common-lisp:t :member-name "OutputFormat")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (statistics-configurations :target-type
                                  metric-stream-statistics-configurations
                                  :member-name "StatisticsConfigurations")
                                 (include-linked-accounts-metrics :target-type
                                  include-linked-accounts-metrics :member-name
                                  "IncludeLinkedAccountsMetrics"))
                                (:shape-name "PutMetricStreamInput"))

(smithy/sdk/shapes:define-output put-metric-stream-output common-lisp:nil
                                 ((arn :target-type amazon-resource-name
                                   :member-name "Arn"))
                                 (:shape-name "PutMetricStreamOutput"))

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "EndTime"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-enum recently-active
    common-lisp:nil
  (:pt3h "PT3H"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-list :member resource-name)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFound")
                                (:error-name "ResourceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (message :target-type fault-description
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type return-data smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum scan-by
    common-lisp:nil
  (:timestamp-descending "TimestampDescending")
  (:timestamp-ascending "TimestampAscending"))

(smithy/sdk/shapes:define-input set-alarm-state-input common-lisp:nil
                                ((alarm-name :target-type alarm-name :required
                                  common-lisp:t :member-name "AlarmName")
                                 (state-value :target-type state-value
                                  :required common-lisp:t :member-name
                                  "StateValue")
                                 (state-reason :target-type state-reason
                                  :required common-lisp:t :member-name
                                  "StateReason")
                                 (state-reason-data :target-type
                                  state-reason-data :member-name
                                  "StateReasonData"))
                                (:shape-name "SetAlarmStateInput"))

(smithy/sdk/shapes:define-structure single-metric-anomaly-detector
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (namespace :target-type namespace
                                      :member-name "Namespace")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (stat :target-type
                                      anomaly-detector-metric-stat :member-name
                                      "Stat"))
                                    (:shape-name "SingleMetricAnomalyDetector"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum standard-unit
    common-lisp:nil
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:count "Count")
  (:bytes-second "Bytes/Second")
  (:kilobytes-second "Kilobytes/Second")
  (:megabytes-second "Megabytes/Second")
  (:gigabytes-second "Gigabytes/Second")
  (:terabytes-second "Terabytes/Second")
  (:bits-second "Bits/Second")
  (:kilobits-second "Kilobits/Second")
  (:megabits-second "Megabits/Second")
  (:gigabits-second "Gigabits/Second")
  (:terabits-second "Terabits/Second")
  (:count-second "Count/Second")
  (:none "None"))

(smithy/sdk/shapes:define-input start-metric-streams-input common-lisp:nil
                                ((names :target-type metric-stream-names
                                  :required common-lisp:t :member-name
                                  "Names"))
                                (:shape-name "StartMetricStreamsInput"))

(smithy/sdk/shapes:define-output start-metric-streams-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartMetricStreamsOutput"))

(smithy/sdk/shapes:define-type stat smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-reason-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum state-value
    common-lisp:nil
  (:ok "OK")
  (:alarm "ALARM")
  (:insufficient-data "INSUFFICIENT_DATA"))

(smithy/sdk/shapes:define-enum statistic
    common-lisp:nil
  (:sample-count "SampleCount")
  (:average "Average")
  (:sum "Sum")
  (:minimum "Minimum")
  (:maximum "Maximum"))

(smithy/sdk/shapes:define-structure statistic-set common-lisp:nil
                                    ((sample-count :target-type datapoint-value
                                      :required common-lisp:t :member-name
                                      "SampleCount")
                                     (sum :target-type datapoint-value
                                      :required common-lisp:t :member-name
                                      "Sum")
                                     (minimum :target-type datapoint-value
                                      :required common-lisp:t :member-name
                                      "Minimum")
                                     (maximum :target-type datapoint-value
                                      :required common-lisp:t :member-name
                                      "Maximum"))
                                    (:shape-name "StatisticSet"))

(smithy/sdk/shapes:define-list statistics :member statistic)

(smithy/sdk/shapes:define-enum status-code
    common-lisp:nil
  (:complete "Complete")
  (:internal-error "InternalError")
  (:partial-data "PartialData")
  (:forbidden "Forbidden"))

(smithy/sdk/shapes:define-input stop-metric-streams-input common-lisp:nil
                                ((names :target-type metric-stream-names
                                  :required common-lisp:t :member-name
                                  "Names"))
                                (:shape-name "StopMetricStreamsInput"))

(smithy/sdk/shapes:define-output stop-metric-streams-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopMetricStreamsOutput"))

(smithy/sdk/shapes:define-type storage-resolution
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type strict-entity-validation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type suppressor-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type threshold smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list timestamps :member timestamp)

(smithy/sdk/shapes:define-type treat-missing-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-list values :member datapoint-value)

(smithy/sdk/operation:define-operation delete-alarms :shape-name "DeleteAlarms"
                                       :input delete-alarms-input :output
                                       common-lisp:null :errors
                                       (resource-not-found))

(smithy/sdk/operation:define-operation delete-anomaly-detector :shape-name
                                       "DeleteAnomalyDetector" :input
                                       delete-anomaly-detector-input :output
                                       delete-anomaly-detector-output :errors
                                       (internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dashboards :shape-name
                                       "DeleteDashboards" :input
                                       delete-dashboards-input :output
                                       delete-dashboards-output :errors
                                       (conflict-exception
                                        dashboard-not-found-error
                                        internal-service-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-insight-rules :shape-name
                                       "DeleteInsightRules" :input
                                       delete-insight-rules-input :output
                                       delete-insight-rules-output :errors
                                       (invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation delete-metric-stream :shape-name
                                       "DeleteMetricStream" :input
                                       delete-metric-stream-input :output
                                       delete-metric-stream-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation describe-alarm-history :shape-name
                                       "DescribeAlarmHistory" :input
                                       describe-alarm-history-input :output
                                       describe-alarm-history-output :errors
                                       (invalid-next-token))

(smithy/sdk/operation:define-operation describe-alarms :shape-name
                                       "DescribeAlarms" :input
                                       describe-alarms-input :output
                                       describe-alarms-output :errors
                                       (invalid-next-token))

(smithy/sdk/operation:define-operation describe-alarms-for-metric :shape-name
                                       "DescribeAlarmsForMetric" :input
                                       describe-alarms-for-metric-input :output
                                       describe-alarms-for-metric-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-anomaly-detectors :shape-name
                                       "DescribeAnomalyDetectors" :input
                                       describe-anomaly-detectors-input :output
                                       describe-anomaly-detectors-output
                                       :errors
                                       (internal-service-fault
                                        invalid-next-token
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-insight-rules :shape-name
                                       "DescribeInsightRules" :input
                                       describe-insight-rules-input :output
                                       describe-insight-rules-output :errors
                                       (invalid-next-token))

(smithy/sdk/operation:define-operation disable-alarm-actions :shape-name
                                       "DisableAlarmActions" :input
                                       disable-alarm-actions-input :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation disable-insight-rules :shape-name
                                       "DisableInsightRules" :input
                                       disable-insight-rules-input :output
                                       disable-insight-rules-output :errors
                                       (invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation enable-alarm-actions :shape-name
                                       "EnableAlarmActions" :input
                                       enable-alarm-actions-input :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation enable-insight-rules :shape-name
                                       "EnableInsightRules" :input
                                       enable-insight-rules-input :output
                                       enable-insight-rules-output :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation get-dashboard :shape-name "GetDashboard"
                                       :input get-dashboard-input :output
                                       get-dashboard-output :errors
                                       (dashboard-not-found-error
                                        internal-service-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation get-insight-rule-report :shape-name
                                       "GetInsightRuleReport" :input
                                       get-insight-rule-report-input :output
                                       get-insight-rule-report-output :errors
                                       (invalid-parameter-value-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-metric-data :shape-name
                                       "GetMetricData" :input
                                       get-metric-data-input :output
                                       get-metric-data-output :errors
                                       (invalid-next-token))

(smithy/sdk/operation:define-operation get-metric-statistics :shape-name
                                       "GetMetricStatistics" :input
                                       get-metric-statistics-input :output
                                       get-metric-statistics-output :errors
                                       (internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation get-metric-stream :shape-name
                                       "GetMetricStream" :input
                                       get-metric-stream-input :output
                                       get-metric-stream-output :errors
                                       (internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-metric-widget-image :shape-name
                                       "GetMetricWidgetImage" :input
                                       get-metric-widget-image-input :output
                                       get-metric-widget-image-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-dashboards :shape-name
                                       "ListDashboards" :input
                                       list-dashboards-input :output
                                       list-dashboards-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation list-managed-insight-rules :shape-name
                                       "ListManagedInsightRules" :input
                                       list-managed-insight-rules-input :output
                                       list-managed-insight-rules-output
                                       :errors
                                       (invalid-next-token
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation list-metric-streams :shape-name
                                       "ListMetricStreams" :input
                                       list-metric-streams-input :output
                                       list-metric-streams-output :errors
                                       (internal-service-fault
                                        invalid-next-token
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation list-metrics :shape-name "ListMetrics"
                                       :input list-metrics-input :output
                                       list-metrics-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-anomaly-detector :shape-name
                                       "PutAnomalyDetector" :input
                                       put-anomaly-detector-input :output
                                       put-anomaly-detector-output :errors
                                       (internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation put-composite-alarm :shape-name
                                       "PutCompositeAlarm" :input
                                       put-composite-alarm-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault))

(smithy/sdk/operation:define-operation put-dashboard :shape-name "PutDashboard"
                                       :input put-dashboard-input :output
                                       put-dashboard-output :errors
                                       (conflict-exception
                                        dashboard-invalid-input-error
                                        internal-service-fault))

(smithy/sdk/operation:define-operation put-insight-rule :shape-name
                                       "PutInsightRule" :input
                                       put-insight-rule-input :output
                                       put-insight-rule-output :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation put-managed-insight-rules :shape-name
                                       "PutManagedInsightRules" :input
                                       put-managed-insight-rules-input :output
                                       put-managed-insight-rules-output :errors
                                       (invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation put-metric-alarm :shape-name
                                       "PutMetricAlarm" :input
                                       put-metric-alarm-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault))

(smithy/sdk/operation:define-operation put-metric-data :shape-name
                                       "PutMetricData" :input
                                       put-metric-data-input :output
                                       common-lisp:null :errors
                                       (internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation put-metric-stream :shape-name
                                       "PutMetricStream" :input
                                       put-metric-stream-input :output
                                       put-metric-stream-output :errors
                                       (concurrent-modification-exception
                                        internal-service-fault
                                        invalid-parameter-combination-exception
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation set-alarm-state :shape-name
                                       "SetAlarmState" :input
                                       set-alarm-state-input :output
                                       common-lisp:null :errors
                                       (invalid-format-fault
                                        resource-not-found))

(smithy/sdk/operation:define-operation start-metric-streams :shape-name
                                       "StartMetricStreams" :input
                                       start-metric-streams-input :output
                                       start-metric-streams-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation stop-metric-streams :shape-name
                                       "StopMetricStreams" :input
                                       stop-metric-streams-input :output
                                       stop-metric-streams-output :errors
                                       (internal-service-fault
                                        invalid-parameter-value-exception
                                        missing-required-parameter-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (concurrent-modification-exception
                                        conflict-exception
                                        internal-service-fault
                                        invalid-parameter-value-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (concurrent-modification-exception
                                        conflict-exception
                                        internal-service-fault
                                        invalid-parameter-value-exception
                                        resource-not-found-exception))
